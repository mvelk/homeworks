def sum_to(n)
  return nil if n < 1
  return 1 if n == 1
  n + sum_to(n-1)
end

def add_numbers(nums_array)
  return 0 if nums_array.length == 0
  nums_array.pop + add_numbers(nums_array)
end

def gamma_fnc(n)
  return nil if n <= 0
  return 1 if n == 1
  (n-1) * gamma_fnc(n-1)
end
