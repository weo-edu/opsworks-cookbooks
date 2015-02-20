node[:deploy].each do |application, deploy|
  Chef::Log.info("TEST TEST #{application} asdf #{deploy}")
  Chef::Log.info(OpsWorks::ShellOut.shellout("echo $MONGO_URL"))
end