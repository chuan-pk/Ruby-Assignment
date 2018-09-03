# Metaprogramming 
# Project 3.5

class Fixnum
  def day ; self * 24 * 3600 ; end    # day in second
end


class Time
  def at_beginning_of_year
      Time.local(self.year)
    end
end

puts Time.now.at_beginning_of_year + 1.day