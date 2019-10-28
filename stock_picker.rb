def stock_picker(array)
  hash = Hash.new
  buy = 0
  while buy < array.length
    for sell in buy...array.length do
      hash[[buy,sell]] = array[sell]-array[buy]
    end
    buy += 1
  end
  return hash.key(hash.values.max)
end

stock_picker([17,3,6,9,15,8,6,1,10])
