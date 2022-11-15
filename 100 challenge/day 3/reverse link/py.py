class Solution(object):
    def reverseList(self, head):
    # Initialize prev pointer as NULL...
    prev = None
    #Initialize the curr pointer as the head...
    curr = head
    # Run a loop till curr points Null..
    while curr:
      # Initialize next pointer as the next pointer of curr...
      next=curr.next
      # now assingn the prev pointer to curr's next pointer
      curr.next=prev
      #Assign curr to prev, next to curr...
      prev=curr
      curr= next
    return prev
