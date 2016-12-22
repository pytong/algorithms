def inorder_traversal(root)

  # empty tree
  if !parent
    return
  end

  # prev = nil
  # next = nil
  curr = root

  while curr
    if !prev || prev.left == curr || prev.right == curr # at root or at child nodes
      if curr.left # has left nodes
        next = curr.left
      else
        puts curr.value
        next = (curr.right ? curr.right : curr.parent) # go to right node if any
      end
    elsif curr.left == prev # at parent node, just traversed left node
      puts curr.value
      next = (curr.right ? curr.right : current.parent) # go to right node if any
    else # curr.right == prev # at parent node, just traversed right node
      next = curr.parent
    end

    prev = curr
    curr = next
  end

end