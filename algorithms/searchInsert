#https://leetcode.com/problems/search-insert-position
class Solution{
    public int searchInsert(int[] nums, int target) {
        int result = 0;
        if(target <= nums[0]) return 0;
        if(target > nums[nums.length-1]) return nums.length;
        for(int i =0; i < nums.length-1; i++){
            if(nums[i] == target){
                result = i;
                break;
            }else if(nums[i] < target && target <= nums[i+1]){
                result = i+1; 
                break;
            }
        }
        return result;
    } 
}
/** Fail Solution
class Solution {
    public int searchInsert(int[] nums, int target) {
        int log = (int)(Math.log((double)nums.length) / Math.log((double)2));
        return searchHalfInsert(nums, target, nums.length/2, 0, log);
    }
    public int searchHalfInsert(int[] nums, int target, int index, int run, int log) {
        if(log == run){
            return nums[index] >= target ? index : index+1;
        }
        else if(nums[index] == target){
            return index;
        }else if(nums[index] < target){
            int left = (nums.length - index)/2-1;
            index += left == 0 ? 1 :left;
        }else {
            index = index/2;
        }
        return searchHalfInsert(nums, target, index, run+1, log);
    }
}
**/
