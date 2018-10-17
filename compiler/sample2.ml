let a = Array.create 0 2 in
let b = a.(0) in
let c = (a.(0) <- 1; 0) in
let d = (a.(0) <- 1; 0) in
let e = a.(0) in
let f = (b + d) + (c + e) in
()
