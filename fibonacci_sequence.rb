def fibs(number)
    new_array = []
    0.upto(number) do |i|
        if i == 0
            new_array << 0
        elsif i == 1
            new_array << 1
        else
            fib = new_array[i - 1] + new_array[i - 2]
            new_array << fib
        end        
    end
    new_array
end

FIB_ARRAY = []
def fibs_rec(a, b, n)
  if (n <= 0)
    return
  end
  # Find fibonacci series using recursion
  self.fibs_rec(b, a + b, n - 1)
  #Display fibonacci number
  print(" ", a)
  FIB_ARRAY << a 
  
end

def main()
    n = 20
    print("\n Reversal fibonacci series of size ", n ," is\n")
    fibs_rec(0, 1, n)      

end

main()

p FIB_ARRAY

p fibs(10)


