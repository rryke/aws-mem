#
# Cookbook Name:: aws-mem
# Recipe:: default
#
# Copyright (C) 2015 Ryan Ryke
#
# All rights reserved - Do Not Redistribute
#dependent packages
package "libwww-perl"
package "libdatetime-perl"
package "unzip"

#create install directory
directory "#{node["aws-mem"]["localpath"]}"  do
	action :create
end


#unzip package when called
execute "unzip" do
	cwd "#{node["aws-mem"]["localpath"]}"
	command "unzip #{node["aws-mem"]["filename"]}"
    action :nothing

end	


#download remote package
remote_file "#{node["aws-mem"]["localpath"]}""#{node["aws-mem"]["filename"]}" do
	source "#{node["aws-mem"]["remotepath"]}""#{node["aws-mem"]["filename"]}"
    notifies :run, "execute[unzip]", :immediately 
end

#create cron job to send info every 5 minutes
cron "aws-mem" do
	minute "*/5"
	command "#{node["aws-mem"]["localpath"]}aws-scripts-mon/mon-put-instance-data.pl --mem-util --mem-used --mem-avail --disk-space-util --disk-path=/ --from-cron"
end	