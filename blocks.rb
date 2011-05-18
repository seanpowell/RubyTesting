def say_hello
  puts "hello"
end

say_hello

def say_hello_to(name)
  puts "hello #{name}!"
end

say_hello_to "jim"

def greet
  puts "hello"
  puts yield
  puts "goodbye"
end

greet do
  "something from the code block"
end