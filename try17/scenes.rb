# 一段階目
def first_question(mark,mark_str,num,score,c_10,c_1)
    puts "******チップ枚数とカード******"
    mark,mark_str,num = decide_card
    card = "%s %d"%[mark_str,num]
    print "総計: %d "%score
    puts "([10]:%d枚, [1]:%d枚)"%[c_10,c_1]
    puts "現在のカード: %s"%[card]
    puts "*************************"
    return [mark,mark_str,num,card]
end

# # scene = 0
# puts "******チップ枚数とカード******"
# mark,mark_str,num = decide_card
# card = "%s %d"%[mark_str,num]
# print "総計: %d "%score
# puts "([10]:%d枚, [1]:%d枚)"%[c_10,c_1]
# puts "現在のカード: %s"%[card]
# puts "*************************"


def now_situation(bet_count,choice,card,card2,judge)
    puts "******Big or Small******"
    puts "BET数: %d"%[bet_count]
    puts "あなたの選択: %s"%[choice]
    puts "現在のカード: %s"%[card]
    puts "引いたカード: %s"%[card2]
    puts "%s は %s より %s"%[card,card2,judge]
    puts "************************"
end

# #BigorSmall---scene = 2
# puts "******Big or Small******"
# puts "BET数: %d"%[bet_count]
# puts "あなたの選択: %s"%[choice]
# puts "現在のカード: %s"%[card]
# puts "引いたカード: %s"%[card2]
# puts "%s は %s より %s"%[card,card2,judge]
# puts "************************"


    # mark,mark_str,num,card = [mark2,mark_str2,num2,card2]
    # mark2,mark_str2,num2 = [mark,mark_str,num] #次のカードの用意(同じ値で初期化)
    # mark2,mark_str2,num2,card2 = decide_card2(mark,num,mark2,mark_str2,num2,card2)
    # ans = select01(card) #0:Big 1:Small で戻り値
    # choice = ans_to_choice(ans) #ansをBigかSmallに直す
    # judge = compare_num(num,num2,judge)