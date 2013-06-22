git "#{node[:skyline][:dir]}" do
  repository node[:skyline][:repository]
  action :sync
  notifies :run
end
