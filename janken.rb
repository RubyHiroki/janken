puts "じゃんけんをします"
puts "1がグー、2がチョキ、3がパー"
# 改行
print "\n" 
print "1, 2, 3のどれかを入力してください : "

<<<<<<< .mine
# ウィンドウの大きさ
Window.width=470
Window.height=470
||||||| .r4
# 背景画像の準備
background = Image.load("image/syogiita.jpg")
=======
# 入力させる
user_select = gets.to_i
>>>>>>> .r5

<<<<<<< .mine
# 背景画像読み込み
image = Image.load('image/syogi.jpg')
# ユーザー画像読み込み
user_image = Image.load('image/user.jpg')
# 敵画像読み込み
admin_image = Image.load('image/admin.jpg')

# ここからゲームの処理
Window.loop do
# 背景画像出力
  Window.drawScale(100, 100, image, 2.5, 2.5)
# ユーザー画像出力
  Window.drawScale(-220, 10, user_image, 0.2, 0.2)
# 敵画像出力
  Window.drawScale(290, 230, admin_image, 0.65, 0.65)

  
end||||||| .r4
# ウィンドウの生成
Window.loop do
# 背景画像の出力
  Window.draw_scale(0, 0, background, 5, 3.5)
end=======
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

aaa>>>>>>> .r5
