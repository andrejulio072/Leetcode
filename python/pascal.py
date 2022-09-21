class Solution:
    def generate(self, numRows: int) -> List[List[int]]:
        a=[]

        for i in range(0,numRows):
            a.append([0 for x in range(i+1)])
        for i in range(0,numRows):
            for j in range(0,i+1):
                if(i==0):
                    a[i][j]=1
                elif(i==1):
                    a[i][j]=1
                elif( i>1 and ((j==i) or (j==0))):
                     a[i][j]=1
                else:
                     a[i][j]=a[i-1][j-1]+a[i-1][j]

        return (a)
