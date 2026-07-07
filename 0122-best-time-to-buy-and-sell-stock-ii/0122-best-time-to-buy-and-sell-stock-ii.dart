class Solution {
  int maxProfit(List<int> prices) {
    // Return 0 if there are less than 2 prices
    if (prices.length <= 1) return 0;

    // Variable to keep track of the total maximum profit
    int totalProfit = 0;

    // Iterate through the prices from the first day to the second-to-last day
    for (int i = 0; i < prices.length - 1; i++) {
      // If the next day's price is higher than the current day's price
      if (prices[i] < prices[i + 1]) {
        // Add the difference to the total profit
        totalProfit += prices[i + 1] - prices[i];
      }
    }

    // Return the total accumulated profit
    return totalProfit;
  }
}