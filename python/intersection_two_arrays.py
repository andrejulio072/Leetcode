 def intersect(self, nums1: List[int], nums2: List[int]) -> List[int]:
        i=0
        j=0
        l=[]
        nums1.sort()
        nums2.sort()
        while(i<len(nums1) and j<len(nums2)):
            if(i>0 and nums1[i]==nums1[i-1] and nums2[j]==nums2[j-1] and nums1[i]==nums2[j]):
                l.append(nums1[i])
                j+=1
                i+=1
                continue
            if(nums1[i]<nums2[j]):
                i+=1
            elif(nums1[i]>nums2[j]):
                j+=1
            else:
                l.append(nums1[i])
                i+=1
                j+=1
        return l
