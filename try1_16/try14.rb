#Dateオブジェクトの生成
require "date" #import
dt=Date.today
# puts dt
puts dt.strftime("%Y年%m月%d日")
puts dt.strftime("%Y/%m/%d")
puts dt.strftime("%m/%d")