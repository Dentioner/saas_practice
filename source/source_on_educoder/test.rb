class HelloWorld # class 关键字
  #def initialize(myname = "Ruby") # initialize 方法
 #   @name = myname # 初始化实例变量
 # end
  def hello(myname) # 实例方法
    @name = myname
    puts "Hello, world. I am #{@name}."
  end
end
#bob = HelloWorld.new("Bob")
#alice = HelloWorld.new("Alice")
#ruby = HelloWorld.new
bob = HelloWorld.new
bob.hello("ruby")
