def reverse_list(head)
  return head if head.nil? || head.next.nil?

  original_head = head
  new_head = reverse_two_nodes(head)
  original_head.next = nil
  new_head
end

def reverse_two_nodes(head)
  new_head =  if head.next.next.nil?
                head.next
              else
                reverse_two_nodes(head.next)
              end
  head.next.next = head
  new_head
end
