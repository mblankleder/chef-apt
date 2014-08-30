execute "apt clean and update" do
  command "apt-get clean && apt-get update"
  action :nothing
end

cookbook_file "/etc/apt/sources.list" do
  source  "sources.list"
  mode    00644
  owner   "root"
  group   "root"
  notifies :run, "execute[apt clean and update]", :immediately
end

