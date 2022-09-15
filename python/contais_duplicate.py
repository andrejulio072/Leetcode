class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        Map=dict()
        for i in range(len(nums)) :
            if nums[i] in Map:
                return True
            else:
                Map[nums[i]]=1
        return False
