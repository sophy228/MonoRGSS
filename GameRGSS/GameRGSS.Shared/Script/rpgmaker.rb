#==============================================================================
# ■ Cache
#------------------------------------------------------------------------------
#  本模组载入所有图像，建立并保存Bitmap物件。为加快载入速度并节省内存，
#  本模组将以建立的bitmap物件保存在内部哈希表中，使得程序在需求已存在
#  的图像时能快速读取bitmap物件。
#==============================================================================

module Cache
  #--------------------------------------------------------------------------
  # * 获取动画图档
  #     filename : 文件名
  #     hue      : 色调
  #--------------------------------------------------------------------------
  def self.animation(filename, hue)
    load_bitmap("Graphics/Animations/", filename, hue)
  end
  #--------------------------------------------------------------------------
  # * 获取战斗图图档
  #     filename : 文件名
  #     hue      : 色调
  #--------------------------------------------------------------------------
  def self.battler(filename, hue)
    load_bitmap("Graphics/Battlers/", filename, hue)
  end
  #--------------------------------------------------------------------------
  # * 获取角色行走图图档
  #     filename : 文件名
  #--------------------------------------------------------------------------
  def self.character(filename)
    load_bitmap("Graphics/Characters/", filename)
  end
  #--------------------------------------------------------------------------
  # * 获取头像图档
  #     filename : 文件名
  #--------------------------------------------------------------------------
  def self.face(filename)
    load_bitmap("Graphics/Faces/", filename)
  end
  #--------------------------------------------------------------------------
  # * 获取远景图档
  #     filename : 文件名
  #--------------------------------------------------------------------------
  def self.parallax(filename)
    load_bitmap("Graphics/Parallaxes/", filename)
  end
  #--------------------------------------------------------------------------
  # * 获取图片图档
  #     filename : 文件名
  #--------------------------------------------------------------------------
  def self.picture(filename)
    load_bitmap("Graphics/Pictures/", filename)
  end
  #--------------------------------------------------------------------------
  # * 获取系统图档
  #     filename : 文件名
  #--------------------------------------------------------------------------
  def self.system(filename)
    load_bitmap("Graphics/System/", filename)
  end
  #--------------------------------------------------------------------------
  # * 清除Cache
  #--------------------------------------------------------------------------
  def self.clear
    @cache = {} if @cache == nil
    @cache.clear
    GC.start
  end
  #--------------------------------------------------------------------------
  # * 载入图档
  #--------------------------------------------------------------------------
  def self.load_bitmap(folder_name, filename, hue = 0)
    @cache = {} if @cache == nil
    path = folder_name + filename
    if not @cache.include?(path) or @cache[path].disposed?
      if filename.empty?
        @cache[path] = Bitmap.new(32, 32)
      else
        @cache[path] = Bitmap.new(path)
      end
    end
    if hue == 0
      return @cache[path]
    else
      key = [path, hue]
      if not @cache.include?(key) or @cache[key].disposed?
        @cache[key] = @cache[path].clone
        @cache[key].hue_change(hue)
      end
      return @cache[key]
    end
  end
end

class Window_Base < Window
  #--------------------------------------------------------------------------
  # ● 常量
  #--------------------------------------------------------------------------
  WLH = 24                  # 窗口行高（Window Line Height）
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     x      : 窗口 X 座标
  #     y      : 窗口 Y 座标
  #     width  : 窗口宽度
  #     height : 窗口高度
  #--------------------------------------------------------------------------
  def initialize(x, y, width, height)
    super()
    self.windowskin = Cache.system("Window")
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.z = 100
    self.back_opacity = 200
    self.openness = 255
    create_contents
    @opening = false
    @closing = false
  end
  #--------------------------------------------------------------------------
  # ● 释放
  #--------------------------------------------------------------------------
  def dispose
    self.contents.dispose
    super
  end
  #--------------------------------------------------------------------------
  # ● 生成窗口内容
  #--------------------------------------------------------------------------
  def create_contents
    self.contents.dispose
    self.contents = Bitmap.new(width - 32, height - 32)
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    if @opening
      self.openness += 48
      @opening = false if self.openness == 255
    elsif @closing
      self.openness -= 48
      @closing = false if self.openness == 0
    end
  end
  #--------------------------------------------------------------------------
  # ● 打开窗口
  #--------------------------------------------------------------------------
  def open
    @opening = true if self.openness < 255
    @closing = false
  end
  #--------------------------------------------------------------------------
  # ● 关闭窗口
  #--------------------------------------------------------------------------
  def close
    @closing = true if self.openness > 0
    @opening = false
  end
  #--------------------------------------------------------------------------
  # ● 获取文字颜色
  #     n : 文字颜色色号（0-31）
  #--------------------------------------------------------------------------
  def text_color(n)
    x = 64 + (n % 8) * 8
    y = 96 + (n / 8) * 8
    return windowskin.get_pixel(x, y)
  end
  #--------------------------------------------------------------------------
  # ● 获取一般文字颜色
  #--------------------------------------------------------------------------
  def normal_color
    return text_color(0)
  end
  #--------------------------------------------------------------------------
  # ● 获取系统文字颜色
  #--------------------------------------------------------------------------
  def system_color
    return text_color(16)
  end
  #--------------------------------------------------------------------------
  # ● 获取危机文字颜色
  #--------------------------------------------------------------------------
  def crisis_color
    return text_color(17)
  end
  #--------------------------------------------------------------------------
  # ● 获取战斗不能文字颜色
  #--------------------------------------------------------------------------
  def knockout_color
    return text_color(18)
  end
  #--------------------------------------------------------------------------
  # ● 获取变量条背景颜色
  #--------------------------------------------------------------------------
  def gauge_back_color
    return text_color(19)
  end
  #--------------------------------------------------------------------------
  # ● 获取体力值槽颜色1
  #--------------------------------------------------------------------------
  def hp_gauge_color1
    return text_color(20)
  end
  #--------------------------------------------------------------------------
  # ● 获取体力值槽颜色2
  #--------------------------------------------------------------------------
  def hp_gauge_color2
    return text_color(21)
  end
  #--------------------------------------------------------------------------
  # ● 获取魔力值槽颜色1
  #--------------------------------------------------------------------------
  def mp_gauge_color1
    return text_color(22)
  end
  #--------------------------------------------------------------------------
  # ● 获取魔力值槽颜色2
  #--------------------------------------------------------------------------
  def mp_gauge_color2
    return text_color(23)
  end
  #--------------------------------------------------------------------------
  # ● 获取装备画面能力值上升颜色
  #--------------------------------------------------------------------------
  def power_up_color
    return text_color(24)
  end
  #--------------------------------------------------------------------------
  # ● 获取装备画面能力值下降颜色
  #--------------------------------------------------------------------------
  def power_down_color
    return text_color(25)
  end
  #--------------------------------------------------------------------------
  # ● 会制图标
  #     icon_index : 图标号
  #     x     : 描画目标 X 坐标
  #     y     : 描画目标 Y 坐标
  #     enabled    : 有效化标志，为 false 时则图标半透明化。
  #--------------------------------------------------------------------------
  def draw_icon(icon_index, x, y, enabled = true)
    bitmap = Cache.system("Iconset")
    rect = Rect.new(icon_index % 16 * 24, icon_index / 16 * 24, 24, 24)
    self.contents.blt(x, y, bitmap, rect, enabled ? 255 : 128)
  end
  #--------------------------------------------------------------------------
  # ● 绘制头像
  #     face_name  : 头像文件名
  #     face_index : 头像号码
  #     x     : 描画目标 X 坐标
  #     y     : 描画目标 Y 坐标
  #     size       : 显示大小
  #--------------------------------------------------------------------------
  def draw_face(face_name, face_index, x, y, size = 96)
    bitmap = Cache.face(face_name)
    rect = Rect.new(0, 0, 0, 0)
    rect.x = face_index % 4 * 96 + (96 - size) / 2
    rect.y = face_index / 4 * 96 + (96 - size) / 2
    rect.width = size
    rect.height = size
    self.contents.blt(x, y, bitmap, rect)
    bitmap.dispose
  end
  #--------------------------------------------------------------------------
  # ● 绘制行走图
  #     character_name  : 行走图文件名
  #     character_index : 行走图号码
  #     x     : 描画目标 X 坐标
  #     y     : 描画目标 Y 坐标
  #--------------------------------------------------------------------------
  def draw_character(character_name, character_index, x, y)
    return if character_name == nil
    bitmap = Cache.character(character_name)
    sign = character_name[/^[\!\$]./]
    if sign != nil and sign.include?('$')
      cw = bitmap.width / 3
      ch = bitmap.height / 4
    else
      cw = bitmap.width / 12
      ch = bitmap.height / 8
    end
    n = character_index
    src_rect = Rect.new((n%4*3+1)*cw, (n/4*4)*ch, cw, ch)
    self.contents.blt(x - cw / 2, y - ch, bitmap, src_rect)
  end
  #--------------------------------------------------------------------------
  # ● 绘制物品
  #     item    : 物品（技能、武器、防具也合用）
  #     x       : 描画目标 X 坐标
  #     y       : 描画目标 Y 坐标
  #     enabled : 有效化标志，为 false 时则物品半透明化。
  #--------------------------------------------------------------------------
  def draw_item_name(item, x, y, enabled = true)
    if item != nil
      p item
      draw_icon(item.icon_index, x, y, enabled)
      #self.contents.font.color = normal_color
      #self.contents.font.color.alpha = enabled ? 255 : 128
      self.contents.draw_text(x + 24, y, 172, WLH, item.name)
    end
  end
end
#==============================================================================
# ■ Window_Selectable
#------------------------------------------------------------------------------
# 　拥有光标的移动以及滚动功能的窗口类。
#==============================================================================

class Window_Selectable < Window_Base
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_reader   :item_max                 # 选项数
  attr_reader   :column_max               # 行数
  attr_reader   :index                    # 光标位置
  attr_reader   :help_window              # 帮助窗口
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     x      : 窗口 X 座标
  #     y      : 窗口 Y 座标
  #     width  : 窗口宽度
  #     height : 窗口高度
  #     spacing : 横向排列时栏间空格
  #--------------------------------------------------------------------------
  def initialize(x, y, width, height, spacing = 32)
    @item_max = 1
    @column_max = 1
    @index = -1
    @spacing = spacing
    super(x, y, width, height)
  end
  #--------------------------------------------------------------------------
  # ● 生成窗口内容
  #--------------------------------------------------------------------------
  def create_contents
    self.contents.dispose
    self.contents = Bitmap.new(width - 32, [height - 32, row_max * WLH].max)
  end
  #--------------------------------------------------------------------------
  # ● 设置光标位置
  #     index : 新光标位置
  #--------------------------------------------------------------------------
  def index=(index)
    @index = index
    update_cursor
    call_update_help
  end
  #--------------------------------------------------------------------------
  # ● 计算行数
  #--------------------------------------------------------------------------
  def row_max
    return (@item_max + @column_max - 1) / @column_max
  end
  #--------------------------------------------------------------------------
  # ● 获取首行
  #--------------------------------------------------------------------------
  def top_row
    return self.oy / WLH
  end
  #--------------------------------------------------------------------------
  # ● 设置首行
  #     row : 显示在最上的行
  #--------------------------------------------------------------------------
  def top_row=(row)
    row = 0 if row < 0
    row = row_max - 1 if row > row_max - 1
    self.oy = row * WLH
  end
  #--------------------------------------------------------------------------
  # ● 获取一页能显示的行数
  #--------------------------------------------------------------------------
  def page_row_max
    return (self.height - 32) / WLH
  end
  #--------------------------------------------------------------------------
  # ● 获取一页能显示的选项
  #--------------------------------------------------------------------------
  def page_item_max
    return page_row_max * @column_max
  end
  #--------------------------------------------------------------------------
  # ● 获取末行
  #--------------------------------------------------------------------------
  def bottom_row
    return top_row + page_row_max - 1
  end
  #--------------------------------------------------------------------------
  # ● 设置末行
  #     row : 显示在最底的行
  #--------------------------------------------------------------------------
  def bottom_row=(row)
    self.top_row = row - (page_row_max - 1)
  end
  #--------------------------------------------------------------------------
  # ● 设置选项矩形
  #     index : 项目编号
  #--------------------------------------------------------------------------
  def item_rect(index)
    rect = Rect.new(0, 0, 0, 0)
    rect.width = (contents.width + @spacing) / @column_max - @spacing
    rect.height = WLH
    rect.x = index % @column_max * (rect.width + @spacing)
    rect.y = index / @column_max * WLH
    return rect
  end
  #--------------------------------------------------------------------------
  # ● 设置帮助窗口
  #     help_window : 新帮助窗口
  #--------------------------------------------------------------------------
  def help_window=(help_window)
    @help_window = help_window
    call_update_help
  end
  #--------------------------------------------------------------------------
  # ● 判断光标是否能够移动
  #--------------------------------------------------------------------------
  def cursor_movable?
    return false if (not visible or not active)
    return false if (index < 0 or index > @item_max or @item_max == 0)
    return false if (@opening or @closing)
    return true
  end
  #--------------------------------------------------------------------------
  # ● 光标下移
  #     wrap : 允许循环
  #--------------------------------------------------------------------------
  def cursor_down(wrap = false)
    if (@index < @item_max - @column_max) or (wrap and @column_max == 1)
      @index = (@index + @column_max) % @item_max
    end
  end
  #--------------------------------------------------------------------------
  # ● 光标上移
  #     wrap : 允许循环
  #--------------------------------------------------------------------------
  def cursor_up(wrap = false)
    if (@index >= @column_max) or (wrap and @column_max == 1)
      @index = (@index - @column_max + @item_max) % @item_max
    end
  end
  #--------------------------------------------------------------------------
  # ● 光标右移
  #     wrap : 允许循环
  #--------------------------------------------------------------------------
  def cursor_right(wrap = false)
    if (@column_max >= 2) and
        (@index < @item_max - 1 or (wrap and page_row_max == 1))
      @index = (@index + 1) % @item_max
    end
  end
  #--------------------------------------------------------------------------
  # ● 光标左移
  #     wrap : 允许循环
  #--------------------------------------------------------------------------
  def cursor_left(wrap = false)
    if (@column_max >= 2) and
        (@index > 0 or (wrap and page_row_max == 1))
      @index = (@index - 1 + @item_max) % @item_max
    end
  end
  #--------------------------------------------------------------------------
  # ● 光标移至下一页
  #--------------------------------------------------------------------------
  def cursor_pagedown
    if top_row + page_row_max < row_max
      @index = [@index + page_item_max, @item_max - 1].min
      self.top_row += page_row_max
    end
  end
  #--------------------------------------------------------------------------
  # ● 光标移至上一页
  #--------------------------------------------------------------------------
  def cursor_pageup
    if top_row > 0
      @index = [@index - page_item_max, 0].max
      self.top_row -= page_row_max
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    if cursor_movable?
      last_index = @index
      if Input.repeat?(Input::DOWN)
        cursor_down(Input.trigger?(Input::DOWN))
      end
      if Input.repeat?(Input::UP)
        cursor_up(Input.trigger?(Input::UP))
      end
      if Input.repeat?(Input::RIGHT)
        cursor_right(Input.trigger?(Input::RIGHT))
      end
      if Input.repeat?(Input::LEFT)
        cursor_left(Input.trigger?(Input::LEFT))
      end
=begin
      if Input.repeat?(Input::R)
        cursor_pagedown
      end
      if Input.repeat?(Input::L)
        cursor_pageup
      end
      if @index != last_index
        Sound.play_cursor
      end
=end
    end
    update_cursor
    call_update_help
  end
  #--------------------------------------------------------------------------
  # ● 更新光标
  #--------------------------------------------------------------------------
  def update_cursor
    if @index < 0                   # 当光标位置小于0
      self.cursor_rect.empty        # 隐藏光标
    else                            # 当光标位置为0或大于
      row = @index / @column_max    # 获取当前行
      if row < top_row              # 若先于首行
        self.top_row = row          # 向上滚动
      end
      if row > bottom_row           # 若後于末行
        self.bottom_row = row       # 向下滚动
      end
      rect = item_rect(@index)      # 获取所选项目矩形
      rect.y -= self.oy             # 设矩形为滚动位置
      self.cursor_rect = rect       # 更新光标矩形
    end
  end
  #--------------------------------------------------------------------------
  # ● 呼叫更新帮助窗口
  #--------------------------------------------------------------------------
  def call_update_help
    if self.active and @help_window != nil
      update_help
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新帮助窗口（子类定义）
  #--------------------------------------------------------------------------
  def update_help
  end
end

#==============================================================================
# ■ Window_Command
#------------------------------------------------------------------------------
# 　一般的命令选择行窗口。
#==============================================================================

class Window_Command < Window_Selectable
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_reader   :commands                 # 命令
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     x      : 窗口 X 座标
  #     y      : 窗口 Y 座标
  #     width  : 窗口宽度
  #     height : 窗口高度
  #     spacing : 横向排列时栏间空格
  #--------------------------------------------------------------------------
  def initialize(width, commands, column_max = 1, row_max = 0, spacing = 32)
    if row_max == 0
      row_max = (commands.size + column_max - 1) / column_max
    end
    super(0, 0, width, row_max * WLH + 32, spacing)

    @commands = commands
    @item_max = commands.size
    @column_max = column_max
    refresh
    self.index = 0

  end
  #--------------------------------------------------------------------------
  # ● 刷新
  #--------------------------------------------------------------------------
  def refresh
    self.contents.clear
    for i in 0...@item_max
     draw_item(i)
    end
  end
  #--------------------------------------------------------------------------
  # ● 绘制项目
  #     index   : 项目位置
  #     enabled : 有效标志，false时项目半透明化
  #--------------------------------------------------------------------------
  def draw_item(index, enabled = true)
    rect = item_rect(index)
    rect.x += 4
    rect.width -= 8
    self.contents.clear_rect(rect)
    #self.contents.font.color = normal_color
    #self.contents.font.color.alpha = enabled ? 255 : 128
    debugp(@commands[index])
    self.contents.draw_text(rect, @commands[index])
  end
end

s1 = "abc"
s2 = "bbb"
s3 = "ccc"
s4 = "ddd"
s5 = "eee"
s6 = "fff"


command_window = Window_Command.new(160, [s1, s2, s3, s4, s5, s6])
command_window.draw_item(1, false)
command_window.openness=0
command_window.open
begin
  command_window.update
  Graphics.update
end until command_window.openness == 255
#command_window.draw_item(0, false)     # 无效化物品选项
#command_window.draw_item(1, false)     # 无效化技能选项
#command_window.draw_item(2, false)     # 无效化装备选项
#command_window.draw_item(3, false)     # 无效化状态选项
Graphics.freeze
Input.update
while true do
  Graphics.update
  Input.update
  command_window.update
end
