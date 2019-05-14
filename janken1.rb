require 'dxruby'

font = Font.new(24)

# 背景画像読み込み
image = Image.load('image/syogi.jpg')
# ユーザー画像読み込み
user_image = Image.load('image/user.jpg')
# 敵画像読み込み
admin_image = Image.load('image/admin.jpg')
# パーの画像読み込みと位置
pa = Sprite.new(40, 150, Image.load('image/pa-.jpg'))
# グーの画像読み込みと位置
gu = Sprite.new(40, 230, Image.load('image/gu-.jpg'))
# チョキの画像読み込みと位置
tyoki = Sprite.new(40, 310, Image.load('image/tyoki.jpg'))

# パー,グー,チョキを一番前面に表示
pa.z = 999
gu.z = 998
tyoki.z = 997
# ここからゲームの処理
Window.loop do
  # パーの大きさ
  pa.draw
  pa.scale_x=0.2
  pa.scale_y=0.2
   # グーの大きさ
   gu.draw
   gu.scale_x=0.2
   gu.scale_y=0.2
    # チョキの大きさ
  tyoki.draw
  tyoki.scale_x=0.2
  tyoki.scale_y=0.2
# 背景画像出力
  Window.drawScale(100, 100, image, 2.5, 2.5)
# ユーザー画像出力
  Window.drawScale(-220, 10, user_image, 0.2, 0.2)
# 敵画像出力
  Window.drawScale(290, 230, admin_image, 0.65, 0.65)


end