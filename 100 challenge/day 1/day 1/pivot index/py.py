class Solution:
    def pivotIndex(self, nums: List[int]) -> int:
        leftsum=0
        rightsum=sum(nums)
        for i, number in enumerate(nums):
            rightsum -= number
            # If the sum of all the numbers strictly to the left of the index is equal to the sum of all the numbers strictly to the index's right...
            if leftsum == rightsum:
                return i      # Return the pivot index...
            leftsum += number
        return -1
