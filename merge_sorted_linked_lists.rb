class node
  attr_accessor :next
  attr_accessor :value
end

# node1 is the head of list1
# node2 is the head of list2
def merge_sorted_linked_lists(node1, node2)

  # head = nil
  # tail = nil

  while node1 && node2
    if node1.value < node2.value
      head ? tail.next = node1 : head = node1
      tail = node1
      node1 = node1.next
    else
      head ? tail.next = node2 : head = node2
      tail = node2
      node2 = node2.next
    end
  end

  if node1
    head ? tail.next = node1 : head = node1
  end

  if node2
    head ? tail.next = node2 : header = node2
  end

  head
end