/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var result = ListNode(0)
        var node: ListNode? = result
        var firstList = l1
        var secondList = l2
        var carry = 0
        while firstList != nil || secondList != nil || carry != 0 {
            var sum = 0
            if firstList != nil {
                sum = sum + firstList!.val
                firstList = firstList!.next
            }
            if secondList != nil {
                sum = sum + secondList!.val
                secondList = secondList!.next
            }
            sum = sum + carry
            if sum >= 10 {
                carry = 1
                sum = sum - 10
            } else {
                carry = 0
            }
            node?.next = ListNode(sum)
            node = node?.next
        }
        return result.next
    }
}