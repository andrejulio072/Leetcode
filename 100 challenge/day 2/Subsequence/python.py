class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        if len(s) > len(t):return False
        if len(s) == 0:return True
        subsequence=0
        for i in range(0,len(t)):
            if subsequence <= len(s) -1:
                print(s[subsequence])
                if s[subsequence]==t[i]:

                    subsequence+=1
        return  subsequence == len(s)


 def isSubsequence(self, s, t):
        """
        :type s: str
        :type t: str
        :rtype: bool
        """
        i=j=c = 0
        while i<len(s)and j<len(t):
            if (s[i]==t[j]):
                i+=1
                j+=1
                c+=1
            else:
                j+=1
        return True if c==len(s) else False
