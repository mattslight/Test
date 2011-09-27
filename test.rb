#!/usr/bin/env ruby
class Greeter
  attr_accessor :name
  
  def initialize(name = "World")
    @name = name
  end
  
  def say_hi
    if @name.nil?
      puts "..."
    elsif @name.respond_to?("each")
      @name.each do |name|
        puts "Hello #{name}"
      end
    else
      puts "Hi #{@name}!"
    end
  end
  
  def say_bye
    if @name.nil?
      puts "..."
    elsif @name.respond_to?("join")
      puts "Goodbye #{@name.join(", ")}"
    else
      puts "Bye #{@name}, come back soon."
    end
  end

end

g = Greeter.new
g.say_hi
g.say_bye

puts "==="

g.name = "Matthew"
g.say_hi
g.say_bye

puts "==="

g.name = ["Sarah", "Charlotte"]
g.say_hi
g.say_bye

puts "==="

g.name = nil
g.say_hi
g.say_bye