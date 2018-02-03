sum = 0
index=0
while sum < 100 do
    index+=1
    sum += index
    puts "数値:"+index.to_s
end
puts "合計:"+sum.to_s