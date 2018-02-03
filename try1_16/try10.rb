classmates = ["鈴木", "佐藤", "斎藤", "伊藤", "杉内"]
classmates.unshift("池田") #先頭に追加
classmates.push("米田") #末尾に追加
classmates.shift() #先頭の要素を削除
classmates[3]="高橋" #書き換え

classmates = classmates.reverse #逆順
puts classmates