node[:deploy].each do |application, deploy|
  cmd = "source #{deploy[:deploy_to]}/shared/app.env && cd #{deploy[:current_path]} && npm run sync"
  Chef::Log.info(OpsWorks::ShellOut.shellout(cmd))
end