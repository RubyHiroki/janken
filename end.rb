# 終了画面
require 'dxruby'
require 'scene_switcher'

font = Font.new(24)

end_image = Image.load('image/end.jpg')
Window.loop do
  Window.drawScale(110, 10, end_image, 0.5, 0.5)
  Window.draw_font(180, 100, "おしまい", font, color:[225, 121, 164])
  if Input.key_push?(K_ESCAPE)
    Window.close
  end
end