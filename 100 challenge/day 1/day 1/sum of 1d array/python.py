class Solution:
    def runningSum(self, nums: List[int]) -> List[int]:
        arr_new=[]
        sum=0
        for i in range(len(nums)):
            sum+=nums[i]
            arr_new.append(sum)
        return arr_new

        