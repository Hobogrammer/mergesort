require 'test_helper'
require 'merge'

describe "Merge sort" do
  it "should return [1,2,3,4,5,6,7,8] for [8,5,3,2,7,5,6,1,4]" do
    sorted = MergeSort.merge_sort([8,5,3,2,7,6,1,4])

    sorted.must_equal [1,2,3,4,5,6,7,8]
  end

  it "it should return [2,10,14,17,25,30,35,38,42] for [10,30,42,38,2,17,25,14,35]" do
    sorted = MergeSort.merge_sort([10,30,42,38,2,17,25,14,35])

    sorted.must_equal [2,10,14,17,25,30,35,38,42]
  end
end
