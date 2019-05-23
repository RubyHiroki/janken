# 1ページ目の画面
require 'dxruby'
require 'scene_switcher'

font = Font.new(24)

Window.loop do
  Window.draw_font(100, 100, "SPACEキーでスタート！！", font, color:[39, 198, 201])
  if Input.key_push?(K_SPACE)
    switch_to "janken.rb"
  end
end