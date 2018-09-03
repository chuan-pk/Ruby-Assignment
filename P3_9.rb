=begin
  Implement an iterator each_with_flattening that behaves as
  follows:
  http://pastebin.com/t79i1ZNu
  1 [1, [2, 3], 4, [[5, 6], 7]].each_with_flattening { |s| print "#{s}," }
  2 >> 1, 2, 3, 4, 5, 6, 7

  What assumption(s) must your iterator make about its receiver?
  What assumption(s) must it make about the elements of its receiver?
=end
