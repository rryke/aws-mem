#
# Cookbook Name:: aws-mem
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
package "libwww-perl"
package "libdatetime-perl"
package "unzip"

directory "#{node["aws-mem"]["localpath"]}"  do
	action :create
end



execute "unzip" do
	cwd "#{node["aws-mem"]["localpath"]}"
	command "unzip #{node["aws-mem"]["filename"]}"
    action :nothing

end	



remote_file "#{node["aws-mem"]["localpath"]}""#{node["aws-mem"]["filename"]}" do
	source "#{node["aws-mem"]["remotepath"]}""#{node["aws-mem"]["filename"]}"
    notifies :run, "execute[unzip]", :immediately 
end


cron "aws-mem" do
	minute "*/5"
	command "#{node["aws-mem"]["localpath"]}aws-scripts-mon/mon-put-instance-data.pl --mem-util --mem-used --mem-avail --disk-space-util --disk-path=/ --from-cron"
end	