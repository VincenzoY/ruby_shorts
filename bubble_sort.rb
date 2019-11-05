def bubble_sort(array)
 iterations = 0
 while iterations < (array.length*5)
   array.each_with_index do |num, index|
     if num.to_i > array[index+1].to_i
       array[index, 2] = [array[index+1], array[index]]
       break
     end
   end
   iterations += 1
 end
 array.reject { |c| c.to_s.empty? }
end
 
bubble_sort([4,3,78,2,0,2,1,2,45,1,3,4])
