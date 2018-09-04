=begin
  Define a method attr_accessor_with_history that provides the same
functionality as attr_accessor but also tracks every value the attribute has
ever had:
=end
# https://medium.com/@amliving/diving-into-rubys-attr-accessor-d34e2ccc5477

class Class
  def attr_accessor_with_history(*attrs)
    attrs.each do |attr_name|
      define_method(attr_name) { instance_variable_get("@"+attr_name.to_s) }
      define_method("#{attr_name}=") do |value|
        instance_variable_set("@"+attr_name.to_s, value)
        if @history[attr_name.to_sym].empty? ; @history[attr_name.to_sym] = Array.new end
        @history[attr_name.to_sym] << value
      end
    end
  end
end

class Foo
  attr_accessor_with_history :bar, :bar2
  def initialize
    super
    @history = Hash.new(Array.new)
  end
  def history
    @history
  end
end

f = Foo.new
f.bar = "bar 1"
f.bar = "bar 2"
f.bar2 = "bar2 1"
f.bar2 = "bar2 2"
puts f.history