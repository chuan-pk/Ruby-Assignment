# https://stackoverflow.com/questions/12178642/fibonacci-sequence-in-ruby-recursion

class FibSequence
  attr_reader :sequence
  def initialize(n)
    @sequence = self.fib_sequence(n)
  end
  def fib_sequence(n)
    # create fibonacci list
    return (n-2).times.each_with_object([1,1]) { |num, obj| obj << obj[-2] + obj[-1] }
  end
  def each
    @sequence.each do |f| yield f end
  end
  def reject
    @sequence.reject do |f| yield f end
  end
  def map
    @sequence.map do |f| yield f end
  end
end

fib = FibSequence.new(6)
puts fib.sequence
fib.each { |e| print("#{e}:") }
puts
print fib.reject { |e| e.odd? }
puts
print fib.map { |x| 2*x }