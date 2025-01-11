class GreeterService < Hello::Greeter::Service
  def say_hello(request, _call)
    Hello::HelloReply.new(message: "Hello, #{request.name}!")
  end
end
