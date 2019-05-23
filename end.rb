# 終了画面
require 'dxruby'
require 'scene_switcher'

font = Font.new(24)

Window.loop do
  Window.draw_font(180, 100, "おしまい", font, color:[225, 121, 164])
  if Input.key_push?(K_ESCAPE)
    Window.close
  end
end