class Solution:
    def hammingWeight(self, n: int) -> int:
        return bin(n).count('1')


# class Solution:
#     def hammingWeight(self, n: int) -> int:
# 1st method
        c = 0
        b = bin(n)[2:]
        for i in b:
            if i == '1':
                c = c + 1
        return c

# 2nd method

        res = 0
        for i in range(32):
            res += n & 1
            n = n >> 1

        return res

# 3rd method

        res = 0
        while n:
            n = n & (n-1)
            res += 1

        return res
