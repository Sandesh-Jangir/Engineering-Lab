def twoSum(nums: List[int], target: int) -> List[int]:
        result = []
        for i in range(len(nums)):
            j = i+1
            while j < len(nums):
                if nums[i]+nums[j] == target:
                    result.append(i)
                    result.append(j)
                    return result
                else:
                    j+=1

if __name__ == "__main__":
    nums = [2, 7, 11, 15]
    target = 9
    print(twoSum(nums, target))