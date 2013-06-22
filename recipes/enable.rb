template "#{node[:skyline][:dir]}/src/settings.py" do
  owner node[:skyline][:user]
  group node[:skyline][:user]
  mode "0554"
  cookbook "skyline"
  source "settings.erb"
end

execute "start horizon" do
  cwd "#{node[:skyline][:dir]}/bin"
  user 'root'
  command "./horizon.d start"
end

execute "start analyzer" do
  cwd "#{node[:skyline][:dir]}/bin"
  user 'root'
  command "./analyzer.d start"
end

execute "start webapp" do
  cwd "#{node[:skyline][:dir]}/bin"
  user 'root'
  command "./webapp.d start"
end
