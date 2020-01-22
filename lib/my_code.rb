def map(array)
new_array = []

  array.each do |i|
    new_array << yield(i)
  end  
  new_array
end  
 
def reduce(array, starting_value = nil)
  if starting_value
    sum = starting_value
    i = 0
  else
    sum = array[0]
    i = 1
  end 
  
  array.each do |i|
    sum = yield(sum, array[i])
  end  
  sum
end  
