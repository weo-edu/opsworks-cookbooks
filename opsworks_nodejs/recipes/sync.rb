node[:deploy].each do |application, deploy|
  cmd = "source #{deploy[:deploy_to]}/shared/app.env; cd #{deploy[:current_path]}; /usr/local/bin/npm run sync"
  Chef::Log.info(OpsWorks::ShellOut.shellout(cmd))
end