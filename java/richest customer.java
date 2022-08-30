class Solution {
  public int maximumWealth(int[][] accounts) {
    int maxWealtSoFar = 0;
    for(int[] customer : accounts)) {
      int currentCustomerWealth = 0;
      for(int bank : customer) {
        currentCustomerWealth += bank;
      }
      maximumWealth = Math.max(maximumWealth, currentCustomerWealth;
    }
    return maxWealtSoFar;
  }
}
