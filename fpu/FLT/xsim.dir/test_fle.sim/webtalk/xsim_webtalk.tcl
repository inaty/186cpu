webtalk_init -webtalk_dir /home/tansei/Desktop/186cpu/fpu/FLE/xsim.dir/test_fle.sim/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Tue Dec 11 13:51:44 2018" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "XSIM v2017.4 (64-bit)" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2086221" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "LIN64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "211142045_1777515821_210661532_022" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "xsim" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "488fec07-86c7-460e-9363-4e70332449c1" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "67e38160-c35c-48ea-8695-a8f1adf3a128" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "38" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Ubuntu" -context "user_environment"
webtalk_add_data -client project -key os_release -value "Ubuntu 16.04.5 LTS" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i7-4610M CPU @ 3.00GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "3659.882 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "16.000 GB" -context "user_environment"
webtalk_register_client -client xsim
webtalk_add_data -client xsim -key runall -value "true" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key Command -value "xsim" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key runtime -value "2926199 ns" -context "xsim\\usage"
webtalk_add_data -client xsim -key iteration -value "0" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Time -value "2.02_sec" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Memory -value "132840_KB" -context "xsim\\usage"
webtalk_transmit -clientid 2250244766 -regid "211142045_1777515821_210661532_022" -xml /home/tansei/Desktop/186cpu/fpu/FLE/xsim.dir/test_fle.sim/webtalk/usage_statistics_ext_xsim.xml -html /home/tansei/Desktop/186cpu/fpu/FLE/xsim.dir/test_fle.sim/webtalk/usage_statistics_ext_xsim.html -wdm /home/tansei/Desktop/186cpu/fpu/FLE/xsim.dir/test_fle.sim/webtalk/usage_statistics_ext_xsim.wdm -intro "<H3>XSIM Usage Report</H3><BR>"
webtalk_terminate
