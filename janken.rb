require 'dxruby'

# 背景画像の準備
background = Image.load("image/syogiita.jpg")

# ウィンドウの生成
Window.loop do
# 背景画像の出力
  Window.draw_scale(0, 0, background, 5, 3.5)
end