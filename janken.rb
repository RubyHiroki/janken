puts "じゃんけんをします"
puts "1がグー、2がチョキ、3がパー"
# 改行
print "\n" 
print "1, 2, 3のどれかを入力してください : "

# 入力させる
user_select = gets.to_i

# aという配列に1, 2, 3を準備
a = [1, 2, 3]

# sampleメソッドを使って配列の中身をランダムに取得
com_select = a.sample

# case式でそれぞれ判定させる
case user_select
when 1
  case com_select
  when 1
    puts "あいこ"
  when 2
    puts "あなたの勝ち"
  when 3
    puts "あなたの負け"
  end

when 2
  case com_select
  when 1
    puts "負け"
  when 2
    puts "あなたのあいこ"
  when 3
    puts "あなたの勝ち"
  end

when 3
  case com_select
  when 1
    puts "あなたの勝ち"
  when 2
    puts "あなたの負け"
  when 3
    puts "あいこ"
  end

#   1, 2, 3以外の値が入力されたときの出力
else
    puts "判定できません"
end

aaa