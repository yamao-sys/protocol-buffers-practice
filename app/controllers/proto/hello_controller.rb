class Proto::HelloController < ApplicationController
	def index
		stub = Hello::Greeter::Stub.new('localhost:50051', :this_channel_is_insecure)
		response = stub.say_hello(Hello::HelloRequest.new(name: 'Rails'))
		render plain: response
  end
end
