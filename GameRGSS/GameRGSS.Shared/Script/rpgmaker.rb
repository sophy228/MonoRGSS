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
items = load_data("Data/Items.rvdata")
wd = Window_Base.new(10,10,400,200)
wd.draw_character("Actor1",2,10,30)
wd.draw_item_name(items[1],30,30,false)
Graphics.freeze
while true do
  wd.update
  Graphics.update
end
