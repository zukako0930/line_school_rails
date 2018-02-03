file = File.open("try16.txt","r")
str = ""
a_c,b_c,c_c,d_c,e_c=0,0,0,0,0 #大文字で宣言するとconstant扱いで警告が出る
file.each do |text|
    str = text
    strAry = str.split(//)
    strAry.each do |alpha|
        if alpha == "A" then
            a_c += 1
        elsif alpha == "B" then
            b_c += 1
        elsif alpha == "C" then
            c_c +=1
        elsif alpha == "D" then
            d_c +=1
        elsif alpha == "E" then
            e_c += 1
        end
    end
end
file.close
puts "A[%d]回、B[%d]回、C[%d]回、D[%d]回、E[%d]回"%[a_c,b_c,c_c,d_c,e_c]