# グーの画面
require 'dxruby'
require 'scene_switcher'

font = Font.new(24)

# 背景画像読み込み
image = Image.load('image/syogi.jpg')
# ユーザー画像読み込み
user_image = Image.load('image/user.jpg')
# 敵画像読み込み
admin_image = Image.load('image/admin.jpg')
# グーの画像読み込みと位置
gu = Sprite.new(40, 230, Image.load('image/gu-.jpg'))

# 敵パーの画像読み込みと位置
pa1 = Sprite.new(130, 114, Image.load('image/pa-1.jpg'))
# 敵グーの画像読み込みと位置
gu1 = Sprite.new(130, 194, Image.load('image/gu-1.jpg'))
# 敵チョキの画像読み込みと位置
tyoki1 = Sprite.new(130, 274, Image.load('image/tyoki-1.jpg'))

# 配列に敵の一手を入れる
admin_selects = pa1, gu1, tyoki1
# 配列から一手をランダムに取ってくる
admin_select = admin_selects.sample
# 敵に一手を前面表示
admin_select.z = 998

# グーを一番前面に表示
gu.z = 998

Window.loop do
  # 画像の準備
  # グーの大きさ
   gu.draw
   gu.scale_x=0.2
   gu.scale_y=0.2

   # 敵の一手の大きさ
  admin_select.draw
  admin_select.scale_x=0.155
  admin_select.scale_y=0.155
  
# 背景画像出力
  Window.drawScale(100, 100, image, 2.5, 2.5)
# ユーザー画像出力
  Window.drawScale(-220, 10, user_image, 0.2, 0.2)
# 敵画像出力
  Window.drawScale(290, 230, admin_image, 0.65, 0.65)
  # 文字出力
  Window.draw_font(150, 100, "ぽん！！！！！", font)
end