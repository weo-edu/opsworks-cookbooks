app = params[:app]

Chef::Log.info("TEST TEST #{app}")
Chef::Log.info(OpsWorks::ShellOut.shellout("echo $MONGO_URL"))
