def merge_sort(arr)
  if arr.length < 2
    return arr
  else
    lhs = merge_sort(arr[0...arr.length / 2])
    rhs = merge_sort(arr[arr.length / 2..])

    merged_array = []
    loop do
      if lhs.empty?
        merged_array.concat(rhs).flatten
        break
      end

      if rhs.empty?
        merged_array.concat(lhs).flatten
        break
      end

      if lhs[0] < rhs[0]
        merged_array << lhs.shift
      else
        merged_array << rhs.shift
      end
    end
  end
  merged_array
end


p merge_sort([4, 6, 2, 1, 8, 7])
p merge_sort([4, 8 , 6, 2, 1, 7, 5, 3])
