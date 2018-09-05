class Node
  attr_accessor :left, :right
  attr_reader :val
  def initialize(val=nil)
    @val = val
    @left = nil
    @right = nil
  end
end


class BinaryTree
  attr_accessor :left_node, :right_node, :this_node

  def initialize(this_value)
    @this_node = Node.new(this_value)
  end

  def << (node)
    # child node can be BinaryTree obj or number
    (node.class == BinaryTree) ? val = (node.this_node).val : val = node
    (@this_node.left == nil) ? @this_node.left = val : @this_node.right = val
    swap      # swap left and right to order child node
  end

  def swap
    if (@this_node.left).to_f > (@this_node.right).to_f
      @this_node.left, @this_node.right = @this_node.right, @this_node.left
    end
  end

  def empty?
    !(@this_node.left or @this_node.right)
  end

  def node_detail
    {this: @this_node.val, left: @this_node.left, right: @this_node.right}
  end

  def each
    node_detail.each do |key, val|
      yield key, val
    end
  end

end

=begin
            10
      12          42
  2       21    -2    67
=end

b = BinaryTree.new(10)
c = BinaryTree.new(12)
d = BinaryTree.new(42)
b << c ; b << d
puts b.node_detail
c << 2 ; c << 21
puts c.node_detail
d << -26 ; d << 436
puts d.node_detail

b.each do |key, val|
  puts"#{key} 2*val=#{2*val}"
end