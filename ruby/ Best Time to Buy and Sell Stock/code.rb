# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  left = 0
  right = 1
  max_gain = 0
  i = 1
  while i < prices.length
    price_difference = prices[right] - prices[left]

    if price_difference < 0
      left = right
      right += 1
      i += 1
    else
      max_gain = price_difference if price_difference > max_gain
      right += 1
      i += 1
    end
  end

  max_gain
end
