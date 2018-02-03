#カードを決めるメソッド
def decide_card
    num = [*1..10].sample
    mark = [*1..4].sample
    #switch文？
    if mark == 1 then
        mark_str = "ハート"
    elsif mark == 2 then
        mark_str = "ダイヤ"
    elsif mark == 3 then
        mark_str = "クローバー"
    elsif mark == 4 then
        mark_str = "スペード"
    end
    return [mark,mark_str,num]
end

#入力をチェックするメソッド
def check_input(input)
    if input <= 20 && input >=1 then 
        return true
    else 
        return false
    end
end

#整数判定
def check_num(input)
    return input !~ /^[0-9]+$/
end 

#正しくBETするまで聞き返す
def betting_validation(c_10,c_1)
    puts "■BET枚数選択"
    puts "BETするチップ数を選択してください(最低1~最大20)"
    count = gets.to_i
    iter = 0
    while !(check_input(count) or count > 10*c_10+c_1) do
        if iter > 0 then
            puts "■BET枚数選択"
            puts "BETするチップ数を選択してください(最低1~最大20)"
            count = gets.to_i
        end
        if check_input(count) then
        else
            puts "範囲内の数字を入力してください"
        end
        if count > 10*c_10+c_1 then
            puts "所持ポイントが不足しています"
        end
        iter += 1
    end
    return count
end

#Big or Small
def select01()
    # puts "◆Big or Small選択"
    # puts "現在のカード: %s"%[card]
    # puts "[Big or Small]: 0:Big 1:Small"
    ans = gets
    while (check_num(ans)) do
        # ans = ans.to_i
        if !(ans == "0" or ans == "1") then #文字として比較
            puts "0か1を入力してください"
            # puts "◆Big or Small選択"
            # puts "現在のカード: %s"%[card]
            # puts "[Big or Small]: 0:Big 1:Small"
            ans = gets
        end
    end
    return ans.to_i
end



def ans_to_choice(ans)
    if ans == 0 then
    choice = "Big"
    else choice = "Small"
    end
    return choice
end

def decide_card2(mark,num,mark2,mark_str2,num2,card2)
    while mark2 == mark && num2 == num do
        mark2,mark_str2,num2=decide_card
    end
    card2 = "%s %d"%[mark_str2,num2]
    return [mark2,mark_str2,num2,card2]
end

def compare_num(num,num2,judge)
    if num > num2 then
        judge = "Big"
    elsif  num <= num2 then
        judge = "Small"
    end
    return judge
end

