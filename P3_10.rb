module Enumerable
  def each_permuted
    self.length.times do 
      rand_num = rand(self.length)
      yield self.slice!(rand_num)
    end
  end
end

a = [1, 2, 3, 4, 5]
a.each_permuted { |i| print("#{i}, ") }