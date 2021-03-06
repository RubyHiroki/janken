# 2ページ目
require 'dxruby'
require 'scene_switcher'
font = Font.new(24)

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

  Window.draw_font(100, 100, "じゃんけんで勝負！！\n\nSPACEキーでスタート！！", font, color:[255, 235, 56])
  if Input.key_push?(K_SPACE)
    switch_to "janken1.rb"
  end
end

