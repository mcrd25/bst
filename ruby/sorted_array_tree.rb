def sorted_to_binary_tree(sorted_array)
  root = sorted_array.length/2
  return nil if sorted_array == nil or sorted_array == []
  node = Node.new(sorted_array[root])
  node.left = sorted_to_binary_tree(sorted_array[0...root])
  node.right = sorted_to_binary_tree(sorted_array[root+1...sorted_array.length])
  node
end
