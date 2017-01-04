def even_next(n)
  (n/2)
end

def odd_next(n)
  (3*n + 1)
end

def next_value(n)
  if n % 2 == 0
    even_next(n)
  else 
    odd_next(n)
  end
end

def collatz(n)
  array = []

  while array.last != 1
    array << n
    n = next_value(n)
  end 
  array
end

def longest_collatz
  length = 0
  final = 0
  (500000..1000000).each do |number|
    array = collatz(number)
    if array.length > length
      length = array.length
      final = number
    end
  end
  final
end