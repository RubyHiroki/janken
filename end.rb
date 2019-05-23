# 終了画面
require 'dxruby'
require 'scene_switcher'

font = Font.new(24)

Window.loop do
  Window.draw_font(180, 100, "おしまい", font)
  if Input.key_push?(K_SPACE)
    Window.close
  end
end