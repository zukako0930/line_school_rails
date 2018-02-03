while true 
    puts "年齢を入力してください"
    age=gets.to_i
    if age < 10 then
        puts "10歳よりも小さいです"
    elsif age >= 10 && age < 20 then
        puts "10代です"
    elsif age >=20 && age < 30 then
        puts "20代です"
    elsif age >=30 && age < 40 then
        puts "30代です"
    elsif age >=40 && age < 50 then
        puts "40代です"
    else
        puts "50歳以上です"
    end
end