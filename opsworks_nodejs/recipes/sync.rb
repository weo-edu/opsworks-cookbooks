node[:deploy].each do |application, deploy|
  Chef::Log.info("TEST TEST #{application} asdf #{deploy}")
  Chef::Log.info(OpsWorks::ShellOut.shellout("source #{deploy[:deploy_to]}/shared/app.env; echo $MONGO_URL"))
end