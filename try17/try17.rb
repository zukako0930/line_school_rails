#メソッドの読み込み
require "./methods.rb"
require "./scenes.rb"

#Big or Small
def b_or_s(ans,card,choice,mark2,mark_str2,num2,mark,mark_str,num,judge)
        puts "◆Big or Small選択"
        puts "現在のカード: %s"%[card]
        puts "[Big or Small]: 0:Big 1:Small"
        ans = select01() #0:Big 1:Small で戻り値
        choice = ans_to_choice(ans) #ansをBigかSmallに直す
        mark2,mark_str2,num2 = [mark,mark_str,num] #次のカードの用意(同じ値で初期化)
        mark2,mark_str2,num2,card2 = decide_card2(mark,num,mark2,mark_str2,num2,card2)
        judge = compare_num(num,num2,judge)
        return [ans,card,choice,mark2,mark_str2,num2,card2,judge]
end

#初期化
score = 100
c_10 = 10
c_1 = 0
mark, num = 0, 0
mark_str=""
bet_count = 0
ans = 0
card=""
choice = ""
judge = ""
card2 = ""
get_score = 0

#BET
while score>0 do
    # continue_game = 0
    mark,num,mark2,mark_str2 = 0,0,0,0
    mark_str,mark_str2="",""
    bet_count = 0
    ans = 0
    card=""
    choice = ""
    judge = ""
    card2 = ""
    get_score = 0
    mark,mark_str,num,card = first_question(mark,mark_str,num,score,c_10,c_1)
    bet_count = betting_validation(c_10,c_1) #BETするチップ数の代入
    score -= bet_count #BET分だけ引いておく
    
    ans,card,choice,mark2,mark_str2,num2,card2,judge=b_or_s(ans,card,choice,mark2,mark_str2,num2,mark,mark_str,num,judge)
    now_situation(bet_count,choice,card,card2,judge)
    
    #引き分けの場合に負ける
    if judge == choice then 
        # get_score = 2*bet_count
        puts "Win!!"
        puts "チップ %d 枚を獲得しました"%[2*bet_count]
        enum = 0
    else 
        puts "Lose!!"
        enum = 1    
    end
    continue_bet = 0
    # さらにbetする場合
    while(enum == 0 && continue_bet == 0)
        puts "[獲得したチップ %d 枚でBigorSmallを続けますか？\n失敗した場合獲得したチップは失われます] 0:Yes 1:No"%[2*bet_count]
        continue_bet = select01()
        if continue_bet == 0 then
            bet_count *= 2 
            mark,mark_str,num,card = [mark2,mark_str2,num2,card2]
            ans,card,choice,mark2,mark_str2,num2,card2,judge=b_or_s(ans,card,choice,mark2,mark_str2,num2,mark,mark_str,num,judge)
            now_situation(bet_count,choice,card,card2,judge)
        end
        if judge == choice then 
            get_score = 2*bet_count
            puts "Win!!"
            puts "チップ %d 枚を獲得しました"%[2*bet_count]
            enum = 0
        else 
            puts "Lose!!"
            enum = 1    
        end
    end
    
    #負け or 勝っても続けない場合
    if enum == 1 or continue_bet == 1 then
        if enum == 1 then get_score = 0 end
        score += get_score
        puts "******現在のチップ数******"
        c_10 = score / 10
        c_1 = score % 10
        puts "総計: %d ([10]:%d枚, [1]:%d枚)"%[score,c_10,c_1]
        puts "[ゲームを続けますか？] 0:Yes 1:No"
        continue_game = select01()
        if continue_game == 1 then break end
    end
end

puts "\nゲーム終了"