
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xcku0402default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xcku0402default:defaultZ17-349h px� 
�
�The version limit for your license is '%s' and has expired for new software. A version limit expiration means that, although you may be able to continue to use the current version of tools or IP with this license, you will not be eligible for any updates or new releases.
710*common2
2018.072default:defaultZ17-1540h px� 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
42default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
B
-Phase 1 Build RT Design | Checksum: 0809e739
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:53 ; elapsed = 00:00:34 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3743 ; free virtual = 201212default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px� 
A
,Phase 2.1 Create Timer | Checksum: 7cb64ea0
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:54 ; elapsed = 00:00:35 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3735 ; free virtual = 201142default:defaulth px� 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 1419adb3b
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:58 ; elapsed = 00:00:39 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3704 ; free virtual = 200832default:defaulth px� 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 23b9421ec
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:58 ; elapsed = 00:00:39 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3704 ; free virtual = 200832default:defaulth px� 
{

Phase %s%s
101*constraints2
2.4 2default:default2,
Global Clock Net Routing2default:defaultZ18-101h px� 
N
9Phase 2.4 Global Clock Net Routing | Checksum: 171702f51
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:01 ; elapsed = 00:00:42 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3597 ; free virtual = 199772default:defaulth px� 
p

Phase %s%s
101*constraints2
2.5 2default:default2!
Update Timing2default:defaultZ18-101h px� 
C
.Phase 2.5 Update Timing | Checksum: 31281e663
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:35 ; elapsed = 00:00:57 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3599 ; free virtual = 199792default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.062 | TNS=-0.076 | WHS=-0.061 | THS=-0.428 |
2default:defaultZ35-416h px� 
I
4Phase 2 Router Initialization | Checksum: 2e41421d8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:46 ; elapsed = 00:01:01 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3624 ; free virtual = 199772default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
C
.Phase 3 Initial Routing | Checksum: 20519bbec
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:56 ; elapsed = 00:01:26 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3585 ; free virtual = 199392default:defaulth px� 
=
Initial Estimated Congestion179*routeZ35-449h px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
�
�CLB routing congestion detected. Several CLBs have high routing utilization, which can impact timing closure. Top ten most congested CLBs are: %s180*route2�
�CLE_M_X17Y171 CLEL_R_X17Y171 CLE_M_X21Y149 CLEL_R_X21Y149 CLE_M_X24Y157 CLEL_R_X24Y157 CLE_M_X26Y143 CLEL_R_X26Y143 CLE_M_X17Y151 CLEL_R_X17Y151 2default:defaultZ35-443h px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.649 | TNS=-41.116| WHS=0.013  | THS=0.000  |
2default:defaultZ35-416h px� 
H
3Phase 4.1 Global Iteration 0 | Checksum: 21a6bbb34
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:35 ; elapsed = 00:02:34 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3588 ; free virtual = 199432default:defaulth px� 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.395 | TNS=-26.489| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.2 Global Iteration 1 | Checksum: 1c8e68dd5
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:06:04 ; elapsed = 00:02:55 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3580 ; free virtual = 199342default:defaulth px� 
u

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.168 | TNS=-16.340| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.3 Global Iteration 2 | Checksum: 31d3bd083
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:06:46 ; elapsed = 00:03:32 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3578 ; free virtual = 199322default:defaulth px� 
u

Phase %s%s
101*constraints2
4.4 2default:default2&
Global Iteration 32default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.048 | TNS=-0.837 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.4 Global Iteration 3 | Checksum: 1f06340f4
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:04 ; elapsed = 00:04:18 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3575 ; free virtual = 199302default:defaulth px� 
F
1Phase 4 Rip-up And Reroute | Checksum: 1f06340f4
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:04 ; elapsed = 00:04:18 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3575 ; free virtual = 199302default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 5.1.1 Update Timing | Checksum: 1a2b7e0b6
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:16 ; elapsed = 00:04:25 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3579 ; free virtual = 199332default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.048 | TNS=-0.837 | WHS=0.013  | THS=0.000  |
2default:defaultZ35-416h px� 
C
.Phase 5.1 Delay CleanUp | Checksum: 28ab08b45
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:23 ; elapsed = 00:04:29 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3556 ; free virtual = 199102default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 28ab08b45
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:23 ; elapsed = 00:04:29 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3556 ; free virtual = 199102default:defaulth px� 
O
:Phase 5 Delay and Skew Optimization | Checksum: 28ab08b45
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:24 ; elapsed = 00:04:29 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3556 ; free virtual = 199112default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 6.1.1 Update Timing | Checksum: 1dfae937f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:37 ; elapsed = 00:04:36 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3565 ; free virtual = 199202default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.040 | TNS=-0.092 | WHS=0.013  | THS=0.000  |
2default:defaultZ35-416h px� 
C
.Phase 6.1 Hold Fix Iter | Checksum: 225415039
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:37 ; elapsed = 00:04:36 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3565 ; free virtual = 199202default:defaulth px� 
A
,Phase 6 Post Hold Fix | Checksum: 225415039
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:37 ; elapsed = 00:04:37 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3565 ; free virtual = 199202default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
B
-Phase 7 Route finalize | Checksum: 187643955
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:42 ; elapsed = 00:04:39 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3563 ; free virtual = 199172default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
I
4Phase 8 Verifying routed nets | Checksum: 187643955
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:43 ; elapsed = 00:04:39 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3562 ; free virtual = 199162default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
E
0Phase 9 Depositing Routes | Checksum: 187643955
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:45 ; elapsed = 00:04:42 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3557 ; free virtual = 199122default:defaulth px� 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
�
Estimated Timing Summary %s
57*route2J
6| WNS=-0.040 | TNS=-0.092 | WHS=0.013  | THS=0.000  |
2default:defaultZ35-57h px� 
B
!Router estimated timing not met.
128*routeZ35-328h px� 
G
2Phase 10 Post Router Timing | Checksum: 187643955
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:46 ; elapsed = 00:04:42 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3560 ; free virtual = 199142default:defaulth px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:46 ; elapsed = 00:04:42 . Memory (MB): peak = 3914.621 ; gain = 0.000 ; free physical = 3634 ; free virtual = 199892default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
932default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:08:542default:default2
00:05:062default:default2
3914.6212default:default2
0.0002default:default2
36342default:default2
199892default:defaultZ17-722h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:082default:default2
00:00:032default:default2
3914.6212default:default2
0.0002default:default2
35572default:default2
199802default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2o
[/home/tansei/Desktop/cpu_jikken/project_7/project_7.runs/impl_1/design_1_wrapper_routed.dcp2default:defaultZ17-1381h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:152default:default2
00:00:132default:default2
3914.6212default:default2
0.0002default:default2
36182default:default2
199912default:defaultZ17-722h px� 
�
%s4*runtcl2�
�Executing : report_drc -file design_1_wrapper_drc_routed.rpt -pb design_1_wrapper_drc_routed.pb -rpx design_1_wrapper_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
xreport_drc -file design_1_wrapper_drc_routed.rpt -pb design_1_wrapper_drc_routed.pb -rpx design_1_wrapper_drc_routed.rpx2default:defaultZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
_/home/tansei/Desktop/cpu_jikken/project_7/project_7.runs/impl_1/design_1_wrapper_drc_routed.rpt_/home/tansei/Desktop/cpu_jikken/project_7/project_7.runs/impl_1/design_1_wrapper_drc_routed.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
report_drc: 2default:default2
00:00:162default:default2
00:00:072default:default2
3931.6332default:default2
17.0122default:default2
35872default:default2
199612default:defaultZ17-722h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file design_1_wrapper_methodology_drc_routed.rpt -pb design_1_wrapper_methodology_drc_routed.pb -rpx design_1_wrapper_methodology_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_methodology -file design_1_wrapper_methodology_drc_routed.rpt -pb design_1_wrapper_methodology_drc_routed.pb -rpx design_1_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
Y
$Running Methodology with %s threads
74*drc2
42default:defaultZ23-133h px� 
�
2The results of Report Methodology are in file %s.
450*coretcl2�
k/home/tansei/Desktop/cpu_jikken/project_7/project_7.runs/impl_1/design_1_wrapper_methodology_drc_routed.rptk/home/tansei/Desktop/cpu_jikken/project_7/project_7.runs/impl_1/design_1_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px� 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2(
report_methodology: 2default:default2
00:00:512default:default2
00:00:252default:default2
3931.6332default:default2
0.0002default:default2
33542default:default2
197922default:defaultZ17-722h px� 
�
%s4*runtcl2�
�Executing : report_power -file design_1_wrapper_power_routed.rpt -pb design_1_wrapper_power_summary_routed.pb -rpx design_1_wrapper_power_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_power -file design_1_wrapper_power_routed.rpt -pb design_1_wrapper_power_summary_routed.pb -rpx design_1_wrapper_power_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
�Detected over-assertion of set/reset/preset/clear net with high fanouts, power estimation might not be accurate. Please run Tool - Power Constraint Wizard to set proper switching activities for control signals.282*powerZ33-332h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1052default:default2
32default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
report_power: 2default:default2
00:00:422default:default2
00:00:272default:default2
3931.6332default:default2
0.0002default:default2
33462default:default2
197572default:defaultZ17-722h px� 
�
%s4*runtcl2�
mExecuting : report_route_status -file design_1_wrapper_route_status.rpt -pb design_1_wrapper_route_status.pb
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -file design_1_wrapper_timing_summary_routed.rpt -rpx design_1_wrapper_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px� 
�
UpdateTimingParams:%s.
91*timing2O
; Speed grade: -2, Temperature grade: E, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
42default:defaultZ38-191h px� 
�
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px� 
�
%s4*runtcl2m
YExecuting : report_incremental_reuse -file design_1_wrapper_incremental_reuse_routed.rpt
2default:defaulth px� 
x
TNo incremental reuse to report, no incremental placement and routing data was found.278*	vivadotclZ4-545h px� 
�
%s4*runtcl2m
YExecuting : report_clock_utilization -file design_1_wrapper_clock_utilization_routed.rpt
2default:defaulth px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
report_clock_utilization: 2default:default2
00:00:072default:default2
00:00:072default:default2
3931.6332default:default2
0.0002default:default2
33692default:default2
197542default:defaultZ17-722h px� 


End Record