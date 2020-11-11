# frozen_string_literal: true

def buble(arr)
  n = arr.length
  loop do
    (n - 1).times { |i| arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i] > arr[i + 1] }
    n -= 1
    break if n == 1
  end
  arr
end

# p buble([1, 4, 2, 1, 3])

class Array
  def quick_sort
    return [] if empty?

    p = delete_at(rand(size))
    l, r = partition(&p.method(:>))

    [*l.quick_sort, p, *r.quick_sort]
  end
end

# p [1, 4, 2, 1, 3].quick_sort

def merge_sort(list)
  list_len = list.length
  if list_len <= 1
    list
  else
    mid = (list_len / 2).floor
    merge(merge_sort(list[0..mid - 1]), merge_sort(list[mid..list_len]))
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end

p merge_sort([1, 4, 2, 1, 3])
