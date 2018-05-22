class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hm = [Int: Int]()
        for (i, number) in nums.enumerated() {
            hm[number] = i
        }
        for i in 0...(nums.count - 1) {
            let firstNum = nums[i]
            if let lastIndex = hm[target - firstNum], lastIndex != i {
                return [i, lastIndex]
            }
        }
        return []
    }
}