class Solution:
    def backspaceCompare(self, s: str, t: str) -> bool:
        def stacks(string,stack):
            for i in string:
                if i == '#' and len(stack) == 0: pass
                elif i != "#": stack.append(i)
                else: stack.pop()
            return stack
        return stacks(s, []) == stacks(t, [])
