# 1ページ目の画面
require 'dxruby'
require 'scene_switcher'

font = Font.new(24)

title = Image.load('image/title.jpg') 
title1 = Image.load('image/title1.jpg') 

Window.loop do
  Window.draw_font(100, 100, "SPACEキーでスタート！！", font, color:[39, 198, 201])
  Window.drawScale(10, 150, title, 0.8, 0.8)
  Window.drawScale(50, 220, title1, 1.1, 1.1)
  if Input.key_push?(K_SPACE)
    switch_to "janken.rb"
  end
end