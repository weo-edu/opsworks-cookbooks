node[:deploy].each do |application, deploy|
  cmd = "source #{deploy[:deploy_to]}/shared/app.env; cd #{deploy[:current_path]}; sudo /usr/local/bin/node ./bin/sync.js"
  Chef::Log.info(OpsWorks::ShellOut.shellout(cmd))
end