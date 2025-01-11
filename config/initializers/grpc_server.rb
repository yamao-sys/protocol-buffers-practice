require 'grpc'
require 'hello_services_pb'

Dir.glob("app/services/**/*.rb") do |file|
  require_dependency Rails.root.join(file)
end

Thread.new do
  server = GRPC::RpcServer.new
  server.add_http2_port('0.0.0.0:50051', :this_port_is_insecure)
  server.handle(GreeterService)
  Rails.logger.info "gRPC server running on 0.0.0.0:50051"
  server.run_till_terminated_or_interrupted([1, 'int', 'SIGQUIT'])
end
