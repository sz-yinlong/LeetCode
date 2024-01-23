func twoSum(nums []int, target int) []int {
    
    numsMap := make(map[int]int)    

    for i, num := range nums {
        complement := target - num
        if j, ok := numsMap[complement]; ok {
            return []int {j,i}
        }
        numsMap[num] = i
    }
    return []int{-1,-1}
}