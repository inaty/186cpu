#include <ctype.h>
#include <memory.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
/* PPM header information */
typedef struct {
  int version; /* must be 3 or 6 */
  int width;
  int height;
  int max; /* defined but not used */
} ppm_info;

/* for SLD tata stream */
typedef union {
  int i;
  float f;
} fi_union;

/* Application parameters */
typedef struct {
  const char *ppm_filename;
  const char *sld_filename;
  bool sld_big_endian;

} app_settings;

/* the binary image of the input SLD data */
#define MAX_N_WORDS 4096
static fi_union sld_words[MAX_N_WORDS];
static unsigned sld_n_words = 0;
static float read_float(FILE *fp) {
  float f;

  if (sld_n_words >= MAX_N_WORDS) {
    fprintf(stderr, "read_float : too many sld words.\n");
    exit(1);
  }

  if (fscanf(fp, "%f", &f) != 1) {
    fprintf(stderr, "failed to read a float\n");
    exit(1);
  }

  return (sld_words[sld_n_words++].f = f);
}
static int read_int(FILE *fp) {
  int i;
  if (sld_n_words >= MAX_N_WORDS) {
    fprintf(stderr, "read_int : too many sld words.\n");
    exit(1);
  }

  if (fscanf(fp, "%d", &i) != 1) {
    fprintf(stderr, "failed to read an int\n");
    exit(1);
  }

  return (sld_words[sld_n_words++].i = i);
}

/*-----------------------------------------------------------------------------
 * read a 3D float vector and append it to the array sld_words.
 * fp : input SLD file stream
 */
static void read_vec3(FILE *fp) {
  read_float(fp);
  read_float(fp);
  read_float(fp);
}

/*-----------------------------------------------------------------------------
 * read the scene environments
 * fp : input SLD file stream
 */
static void read_sld_env(FILE *fp) {
  /* screen pos */
  read_vec3(fp);
  /* screen rotation */
  read_float(fp);
  read_float(fp);
  /* n_lights : Actually, it should be an int value ! */
  read_float(fp);
  /* light rotation */
  read_float(fp);
  read_float(fp);
  /* beam  */
  read_float(fp);
}

/*-----------------------------------------------------------------------------
 * read all the objects
 * fp : input SLD file stream
 */
static void read_objects(FILE *fp) {

  while (read_int(fp) != -1) { /* texture : -1 -> end */
    /* form */
    read_int(fp);
    /* refltype */
    read_int(fp);
    /* isrot_p*/
    int is_rot = read_int(fp);
    /* abc */
    read_vec3(fp);
    /* xyz */
    read_vec3(fp);
    /* is_invert */
    read_float(fp);
    /* refl_param */
    read_float(fp);
    read_float(fp);
    /* color */
    read_vec3(fp);
    /* rot */
    if (is_rot) {
      read_vec3(fp);
    }
  }
}

/*-----------------------------------------------------------------------------
 * read the AND-network
 * fp : input SLD file stream
 */
static void read_and_network(FILE *fp) {
  while (read_int(fp) != -1) {
    while (read_int(fp) != -1)
      ;
  }
}

/*-----------------------------------------------------------------------------
 * read the OR-network
 * fp : input SLD file stream
 */
static void read_or_network(FILE *fp) {
  while (read_int(fp) != -1) {
    while (read_int(fp) != -1)
      ;
  }
}

/*-----------------------------------------------------------------------------
 * read the SLD file
 * fp : input SLD file stream
 */
static void read_sld(FILE *fp, bool conv_to_big_endian) {
  read_sld_env(fp);
  read_objects(fp);
  read_and_network(fp);
  read_or_network(fp);
  if (conv_to_big_endian) {
    unsigned u;
    for (u = 0; u < sld_n_words; u++) {
      int i = sld_words[u].i;
      sld_words[u].i = ((i & 0xff) << 24) | ((i & 0xff00) << 8) |
                       ((i >> 8) & 0xff00) | ((i >> 24) & 0xff);
    }
  }
}

/*****************************************************************************
 * Each step of the server
 *****************************************************************************/

/*-----------------------------------------------------------------------------
 * read the SLD file and convert into a binary format.
 * sld_file_name : name of the SLD data file
 */
static void load_sld_file(const char *sld_file_name, bool conv_to_big_endian) {
  FILE *fp = sld_file_name ? fopen(sld_file_name, "rb") : stdin;
  if (fp == NULL) {
    fprintf(stderr, "cannot open SLD file %s\n", sld_file_name);
    exit(1);
  }
  read_sld(fp, conv_to_big_endian);

  fclose(fp);
}

void write_sld_text(const char *out) {
  if (out == NULL)
    return;

  FILE *fp;
  fp = fopen(out, "wb");

  size_t i = 0;
  for (i = 0; i < sld_n_words; i++) {
    unsigned int tmp = *(unsigned int *)(&sld_words[i]);
    fprintf(fp, "%d\n", tmp & 0xff);
    fprintf(fp, "%d\n", (tmp >> 8) & 0xff);
    fprintf(fp, "%d\n", (tmp >> 16) & 0xff);
    fprintf(fp, "%d\n", (tmp >> 24) & 0xff);
  }
  fclose(fp);
  return;
}
void write_sld_binary(const char *out) {
  if (out == NULL)
    return;

  FILE *fp;
  fp = fopen(out, "wb");

  size_t i = 0;
  for (i = 0; i < sld_n_words; i++) {
    unsigned int tmp = *(unsigned int *)(&sld_words[i]);
    char t[4];

    t[0] = tmp & 0xff;
    t[1] = (tmp >> 8) & 0xff;
    t[2] = (tmp >> 16) & 0xff;
    t[3] = (tmp >> 24) & 0xff;
    fwrite(t, 1, 4, fp);
  }
  fclose(fp);
}

int main(int argc, char *argv[]) {
  if (argc < 4) {
    printf(
        "argc should be >= 4\nusage: ./a.out input.sld ouput.txt output.bin\n");
  }
  // 入力. 第2引数がtrueだとビックエンディアンでfalseだとリトル.
  load_sld_file(argv[1], true);
  // text
  write_sld_text(argv[2]);
  // bin
  write_sld_binary(argv[3]);
  return 0;
}
