for num in 1..100 do
    if num % 5 == 0 && num % 3 == 0 then
        puts num.to_s+":FizzBuzz"
    elsif num % 5 == 0 then
        puts num.to_s+":Buzz"
    elsif num % 3 == 0 then 
        puts num.to_s+":Fizz"
    end
end