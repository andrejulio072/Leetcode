class Solution:
    def subtractProductAndSum(self, n: int) -> int:
        x = [int(a) for a in str(n)]

        sum = 0
        product =1
        for num in x:
            sum+=num
            product*=num

        difference = product - sum
        return difference

