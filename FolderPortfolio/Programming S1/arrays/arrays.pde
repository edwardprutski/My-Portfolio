/*int[] randoms = new int[100];
for (int i=0; i<randoms.length; i++) {
  randoms[i] = int(random(101));
  println(randoms[i]);
}*/

int[] nums = {5,4,2,7,6,8,5,2,8,14};
// Square each number ((i.e., multiply each by itself) 
for (int i = 0; i<nums.length; i++)  {   
  //nums[i] = nums[i]*nums[i];
  nums[i] *= nums[i];
  println(nums[i]);
}