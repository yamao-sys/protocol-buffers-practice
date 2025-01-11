require 'grpc'
require 'hello_services_pb'

stub = Hello::Greeter::Stub.new('localhost:50051', :this_channel_is_insecure)
response = stub.say_hello(Hello::HelloRequest.new(name: 'Rails'))
puts "Greeting: #{response.message}"
