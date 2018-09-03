=begin
  Project 3.1. How many class ancestors does the object 5 have? (Hint: use
method chaining to follow the superclass chain all the way up to
BasicObject)
=end


puts(5.class.ancestors)

# puts(5.class)   # >> Interger
# puts(5.ancestors) # >> NoMethodError