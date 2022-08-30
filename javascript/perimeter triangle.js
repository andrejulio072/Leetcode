var largestPerimeter = function(nums) {
    nums.sort((a,b) => b - a);
    // sort the array in a descending order
    // nums.sort((a,b) => a - b); // sort the array in an ascending order

    for(let i=0; i < nums.length-2; i++) {
        let a = nums[i], b = nums[i+1], c = nums[i+2];
        if(a < b + c) return a + b + c;
    }

    return 0;
};
