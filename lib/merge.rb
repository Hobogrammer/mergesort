class MergeSort

  def merge_sort(numbers)
    return numbers if numbers.size <= 1

    half = number.slice!((numbers.size/2).round, numbers.size)
    return merge(merge_sort(numbers), merge_sort(half))
  end

  def merge(left,right)

  end
end
