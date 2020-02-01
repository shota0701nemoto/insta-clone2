module Fog
  module XenServer
    class Compute
      class Real
        def hard_reboot_server(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.hard_reboot" }, ref)
        end

        alias_method :hard_reboot_vm, :hard_reboot_server
      end
    end
  end
end
