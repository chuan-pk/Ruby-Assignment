module Enumerable
  def each_with_custom_index(start, step)
    i = start
    self.each do |e|
      yield e, i
      i += step
    end
  end
end

a = ["alice", "bob", "carol"]

a.each_with_index do |e, index|
  puts "#{e} is number #{index}"
end
puts
a.each_with_custom_index(3, 2) do |e, index|
  puts "#{e} is number #{index}"
end