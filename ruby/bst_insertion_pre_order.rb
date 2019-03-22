class Node
  attr_reader :data
  attr_accessor :left, :right
  def initialize(data)
    @data = data
  end
end
class BinarySearchTree
	attr_accessor :root

	def initialize(data = nil)
		@root = Node.new(data)
	end
	
	def add_to_search_tree(node = @root, data)
	  return @root = Node.new(data) if node.data.nil?
	  if data < node.data
      if node.left == nil 
        node.left = Node.new(data)
        return
      elsif node.left != nil 
        return add_to_search_tree(node.left, data)
      end
    elsif data > node.data 
      if node.right == nil
        node.right = Node.new(data)
        return
      elsif node.right != nil
        return add_to_search_tree(node.right, data);
      end
    else
      return nil
    end
  end

end
def pre_order(node)
  if node == nil
    return ''
  end
  result = "#{node.data} "
  result += pre_order(node.left)
  result += pre_order(node.right)
end

def post_order(node)
  # your code here
  if node == nil
    return ''
  end
  result = post_order(node.left)
  result += post_order(node.right)
  result += "#{node.data} "
end
def binary_search_tree(array)
  # your code here
  tree = insert_array(array)
  pre_order(tree.root).strip
end

def insert_array(array)
  tree = BinarySearchTree.new
	array.each do |num|
		tree.add_to_search_tree(num)
	end
	return tree
end



puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"
