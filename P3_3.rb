=begin
  Ben Bitdiddle asks: “If i is an integer and f is a floating point
number in Ruby, and I write i+f, does i get converted to a float or does f get
converted to an integer to do the addition?” Explain why Ben’s question is
ill-formed when applied to Ruby.
=end

i = 13    # i is Integer
f = 1.25  # f is Float

# page 148
# ruby is dynamic type?
# operation = method call
# type casting
# In contrast, in Ruby + is just like any other method that can be defined
# differently by each class, so its behavior depends entirely on the receiver’s
# implementation of the method
puts("#{i} (#{i.class}) + #{f} (#{f.class}) = #{i+f} (#{(i+f).class})")