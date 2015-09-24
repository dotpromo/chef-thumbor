if platform_family?('rhel')
  include_recipe 'thumbor::init_redhat'
else
  include_recipe 'thumbor::init_debian'
end

directory node['thumbor']['work_dir'] do
  mode '0775'
  owner 'root'
  group 'root'
  action :create
  recursive true
end
