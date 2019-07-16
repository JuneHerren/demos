#include"demo.hpp"

using namespace std;

vector<int> Solution::twoSum(vector<int>& numbers, int target) {
        if(numbers.empty()) return {};
        int left = 0, length = numbers.size(), right = length - 1;
        if(length == 1) return {};
        while(left < right){
            if(numbers[left] + numbers[right] == target) return {left + 1, right + 1};
            else if(numbers[left] + numbers[right] > target) right--;
            else left++;
        }
        if(numbers[left] + numbers[right] == target) return {left + 1, right + 1};
        return {};
}
