def merge_sort(array)
  if array.length < 2
    array
  else
    left = merge_sort(array[0...(array.length/2)])
    right = merge_sort(array[(array.length/2)..-1])
    merge(left, right)
  end
end

def merge (left, right, array = [])
  (left.length + right.length).times do
    if left.empty?
      array << right.shift
    elsif right.empty?
      array << left.shift
    elsif left[0] < right[0]
      array << left.shift
    elsif left[0] > right[0]
      array << right.shift
    else
      array << left.shift
    end
  end
  array
end

p merge_sort([7,5,1,3,4,6,2])