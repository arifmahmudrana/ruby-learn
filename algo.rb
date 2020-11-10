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

p buble([1, 4, 2, 1, 3])

class Array
  def quick_sort
    return [] if empty?

    p = delete_at(rand(size))
    l, r = partition(&p.method(:>))

    [*l.quick_sort, p, *r.quick_sort]
  end
end

p [1, 4, 2, 1, 3].quick_sort
