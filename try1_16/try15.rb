File.open('try15.txt','w') do |file|
    for num in 1..100 do
       file.print num.to_s+" "
        if num % 10 == 0 then
           file.print "\n" 
        end
    end
end
