
tbl = Table.new(17,17,3)
tbl[0,0,0] = 1
items = load_data("Data/Items.rvdata")
#wd = Window.new(10, 10, 500, 200)
wd = Window.new()
wd.x = 10
wd.y = 10
wd.width = 500
wd.height = 200
bp = Cache.face("Actor1")
wd.contents.dispose
wd.contents = Bitmap.new(500, 200)
wd.contents.draw_text(100, 30, 200, 20, "莉果大人是我们必要的人才啊！")
rect = Rect.new(0, 0, 96, 96)
wd.contents.blt(0, 0, bp, rect)
wd.cursor_rect = Rect.new(100, 30, 400, 30)
wd.contents.draw_text(10, 130, 200, 20, "不愧是莉果sama~！")
rect = Rect.new(96, 0, 96, 96)
wd.contents.blt(300, 120, bp, rect)
wd.test(items[1].name)
Graphics.freeze
while true do
  Graphics.update
end