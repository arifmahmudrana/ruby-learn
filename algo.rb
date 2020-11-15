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

# p merge_sort([1, 4, 2, 1, 3])

# require 'prime'

# prime_array = Prime.take_while { |p| p < 2_000_000 }
# total_count = prime_array.inject { |sum, x| sum + x }
# p total_count # 142913828922

# p(2**1000).to_s.split('').map(&:to_i).inject(:+)

# (5..10).inject(2) do |product, n|
#   print 'product ', product
#   puts ''
#   print 'n ', n
#   puts ''
#   product * n
# end

# { |sum, x| sum + x.delete(' ').delete('-').length }
# require 'humanize'
# p((57..60).to_a.map(&:humanize).inject(0) { |sum, x| sum + x.delete(' ').delete('-').length })

# require 'date'

# start_date = Time.local(1901)
# end_date = Time.local(2000, 12)
# sundays = 0

# while start_date < end_date
#   year = start_date.year
#   month = start_date.month + 1

#   sundays += 1 if start_date.sunday?
#   if month > 12
#     year += 1
#     month = 1
#   end

#   start_date = Time.local(year, month)
# end

# puts sundays

def fib_digit_counter
  # num1, num2, i = -1, 0, 1
  num1 = -1
  num2 = 0
  i = 1
  while i.to_s.length < 1000
    num1 += 1

    i, num2 = num2, num2 + i
  end

  num1
end

# puts fib_digit_counter

# p((0..9).to_a.permutation.to_a.last.join)

require 'prime'

class Integer
  def dsum
    return 1 if self < 2

    pd = Prime.prime_division(self).flat_map { |n, p| [n] * p }

    # Returns the sum of all the numbers that be divided
    # e.g 8 can be divided by 1, 2, 4
    # or e.g 15 can be divided by 1, 3, 5
    # Now for 15 this function returns 1 + 3 + 5 = 9
    ([1] + (1...pd.size).flat_map { |e| pd.combination(e).map { |f| f.reduce(:*) } }).uniq.inject(:+)
  end
end

# Sum of all amicable pairs
# Amicable pairs are thoose numbers whoose sum of all divisors are same
# but sum of all divisors and number will not be same
# e.g 6 has three divisors [1, 2, 3] so it's sum of divisors is 6 so this number can't be paired
# but e.g 220 sum of divisors is 284 & 284 sum of divisors is 220 so can are pair of amicable numbers
def find_d_sum(n)
  n.times.inject do |sum, cur|
    other = cur.dsum
    # puts "cur = '#{cur}' other = '#{other}'" if cur == other
    # if cur != other && other.dsum == cur
    #   puts "cur != cur.dsum && cur.dsum.dsum == cur => sum = '#{sum}' cur = '#{cur}'"
    #   sum + cur
    # else
    #   sum
    # end
    cur != other && other.dsum == cur ? sum + cur : sum
  end
end

# p 220.dsum
# p 284.dsum
# p find_d_sum(10_000)

def fac_val_sum(fac)
  (1..fac).to_a.reverse.each { |i| fac += fac * (i - 1) }
  fac.to_s.split('').map(&:to_i).inject(:+)
end

# p fac_val_sum(100)

class EvenFib
  def initialize(max)
    @num1 = 0
    @i = 0
    @sum = 0
    @num2 = 1
    @max = max
  end

  def sum
    while @i <= @max
      @i = @num1 + @num2
      @sum += @i if @i.even?
      @num1 = @num2
      @num2 = @i
    end

    @sum
  end
end

# p(EvenFib.new(4_000_000).sum)

p((1..20).to_a.reduce(:lcm))
