ruby_block "curl_standalone_ack" do
  block do
    unless File.exists?("/usr/local/bin/ack")
      curl = Chef::ShellOut.new("curl http://betterthangrep.com/ack-standalone > /usr/local/bin/ack && chmod 0755 /usr/local/bin/ack")
      curl.run_command
    end
  end
  action :create
end
