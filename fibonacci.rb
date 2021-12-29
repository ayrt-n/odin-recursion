# Fibonacci method using iteration
def fibs(num)
  fib_nums = []
  (0..num).each do |fib_num|
    if [0, 1].include?(fib_num)
      fib_nums << fib_num
    else
      fib_nums << (fib_nums[-1] + fib_nums[-2])
    end
  end
  fib_nums
end

puts "Non-recursive fib(4): #{fibs(4)}"
puts "Non-recursive fib(8): #{fibs(8)}"

# Fibonacci method using recursion
def fibs_rec(num, fib_arr = [])
  fib_arr[num] = if [0, 1].include?(num)
                   num
                 else
                   fibs_rec(num - 1, fib_arr)[num - 1] + fibs_rec(num - 2, fib_arr)[num - 2]
                 end
  fib_arr
end

puts "Recursive fib(4): #{fibs_rec(4)}"
puts "Recursive fib(8): #{fibs_rec(8)}"
