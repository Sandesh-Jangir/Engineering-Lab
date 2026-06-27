def isPalindrome(x: int) -> bool:
        if x < 0:
            return False
        else:
            y = str(x)
            for i in range(len(y)):
                j = -1*(i+1)
                if y[i] != y[j]:
                    return False
        return True
if __name__ == "__main__":
    x = 121
    print(isPalindrome(x)) 