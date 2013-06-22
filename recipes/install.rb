
git "#{node[:skyline][:dir]}" do
  repository node[:skyline][:repository]
  action :sync
end

directory "/var/log/skyline" do
  owner node[:skyline][:user]
  group node[:skyline][:user]
  mode "0755"
end

directory "/var/run/skyline" do
  owner node[:skyline][:user]
  group node[:skyline][:user]
  mode "0755"
end

directory "/var/log/redis" do
  owner node[:skyline][:user]
  group node[:skyline][:user]
  mode "0755"
end

execute "install python requirements" do
  cwd node[:skyline][:dir]
  user 'root'
  command "sudo pip install -r ./requirements.txt"
end

package "python-numpy" do
  # version "1.6.1"
  action :install
end

# execute "install python numpy" do
#   user 'root'
#   command "sudo pip install numpy"
# end

package "python-scipy" do
  # version "0.12.0"
  action :install
end

# execute "install python scipy" do
#   user 'root'
#   command "sudo pip install scipy"
# end

execute "install python pandas" do
  user 'root'
  command "pip install pandas"
end

execute "install python patsy" do
  user 'root'
  command "pip install patsy"
end

execute "install python statsmodels" do
  user 'root'
  command "pip install statsmodels"
end

execute "install python msgpack_python" do
  user 'root'
  command "pip install msgpack_python"
end
