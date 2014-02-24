class MergeSort

  def self.merge_sort(numbers)
    return numbers if numbers.size  == 1

    half = numbers.slice!((numbers.size/2).round, numbers.size)
    return merge(merge_sort(numbers), merge_sort(half))
  end

  def self.merge(left,right)
    result = Array.new
    until (left.empty? || right.empty?)
      if left.first <= right.first
        result << left.shift
      else
        result << right.shift
      end
    end
    return (result + left + right)
  end
end

unsorted_array = [2, 36, 1, 34, 13, 15, 24, 7, 4, 49, 31, 26, 33, 30, 35]
sorted_array = MergeSort.merge_sort(unsorted_array)
puts sorted_array
