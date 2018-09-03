=begin
  Define a method attr_accessor_with_history that provides the same
functionality as attr_accessor but also tracks every value the attribute has
ever had:
=end

# https://medium.com/@amliving/diving-into-rubys-attr-accessor-d34e2ccc5477

class Class
  def attr_accessor_with_history(*arg)
    arg.each do |a|
      attr_reader a.to_sym
      attr_writer a.to_sym
    end
  end
end

class Foo
  attr_accessor_with_history :bar
  def initialize
    @history = {}
  end
end

f = Foo.new
f.bar = "bar1"
puts f.bar
f.bar = "bar2"
puts f.bar