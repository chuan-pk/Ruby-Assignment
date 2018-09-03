=begin
  Given that superclass returns nil when called on BasicObject
but a non-nil value otherwise, write a Ruby method that, 
if passed anyobject, will print the object’s class and its ancestor classes all the way up to
BasicObject.
=end

def foo(obj)
  puts("#{obj} is instance of class #{obj.class}")
  puts("Ancestors of #{obj}: ")
  puts(obj.class.ancestors)
end

foo(5)
foo('bar')
foo(true)
foo([1, 2, '3'])