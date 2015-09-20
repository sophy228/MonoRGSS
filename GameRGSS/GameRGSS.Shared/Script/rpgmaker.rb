#==============================================================================
# ■ Vocab
#------------------------------------------------------------------------------
#  定义了用语和信息。将部分资料定义为常量。用语部分来自于$data_system。
#==============================================================================

module Vocab

  # 商店画面
  ShopBuy         = "购买"
  ShopSell        = "贩卖"
  ShopCancel      = "取消"
  Possession      = "拥有数量"

  # 状态画面
  ExpTotal        = "当前经验"
  ExpNext         = "下一%s"

  # 存/取档画面
  SaveMessage     = "储存到第几个档位？"
  LoadMessage     = "从第几个档位载入？"
  File            = "档案"

  # 当多人存在于队伍中时
  # 友情提示：%s 代表主角名称
  PartyName       = "%s的队伍"

  # 基本战斗信息
  Emerge          = "%s 出现！"
  Preemptive      = "%s 先下手为强！"
  Surprise        = "%s 被偷袭！"
  EscapeStart     = "%s 准备逃跑！"
  EscapeFailure   = "但是，逃跑失败！"

  # 战斗结束信息
  Victory         = "%s 胜利"
  Defeat          = "%s 被击败了。"
  ObtainExp       = "获得%s 点经验值"
  ObtainGold      = "获得%s%s 的金钱！"
  ObtainItem      = "找到%s ！"
  LevelUp         = "%s 已经是 %s %s！"
  ObtainSkill     = "领悟%s ！"

  # 战斗行动
  DoAttack        = "%s 出手攻击！"
  DoGuard         = "%s 护住身上弱点。"
  DoEscape        = "%s 逃跑了。"
  DoWait          = "%s 正在等待时机。"
  UseItem         = "%s 使用了 %s！"

  # 会心一击
  CriticalToEnemy = "会心一击！！"
  CriticalToActor = "痛恨一击！！"

  # 对于角色的行动
  # 友情提示： %1$s 代表角色
  #            %2$s 代表HP/MP
  #            %3$s 代表数量

  ActorDamage     = "%s 受到 %s 点伤害！"
  ActorLoss       = "%1$s 失去了 %3$s 点的 %2$s！"
  ActorDrain      = "%1$s 的 %3$s 被吸收了%2$s点！"
  ActorNoDamage   = "%s 毫发无伤！"
  ActorNoHit      = "攻击落空! %s 毫发无伤！"
  ActorEvasion    = "%s 闪开了攻击！"
  ActorRecovery   = "%1$s 的 %2$s 回复了%3$s点！"

  # 对于敌人的行动
  EnemyDamage     = "%s 受到 %s 点伤害！"
  EnemyLoss       = "%1$s 失去了 %3$s 点的 %2$s！"
  EnemyDrain      = "%1$s 的 %3$s 被吸收了%2$s点！"
  EnemyNoDamage   = "%s 毫发无伤！"
  EnemyNoHit      = "攻击落空! %s 毫发无伤！"
  EnemyEvasion    = "%s 闪开了攻击！"
  EnemyRecovery   = "%1$s 的 %2$s 回复了%3$s点！"

  # 当非物理技能和物品使用无效时。
  ActionFailure   = "对%s 无效！"


  # 等级
  def self.level
    return $data_system.terms.level
  end

  # 等级（略）
  def self.level_a
    return $data_system.terms.level_a
  end

  # 体力
  def self.hp
    return $data_system.terms.hp
  end

  # 体力（略）
  def self.hp_a
    return $data_system.terms.hp_a
  end

  # 魔力
  def self.mp
    return $data_system.terms.mp
  end

  # 魔力（略）
  def self.mp_a
    return $data_system.terms.mp_a
  end

  # 攻击力
  def self.atk
    return $data_system.terms.atk
  end

  # 防御力
  def self.def
    return $data_system.terms.def
  end

  # 精神力
  def self.spi
    return $data_system.terms.spi
  end

  # 敏捷
  def self.agi
    return $data_system.terms.agi
  end

  # 武器
  def self.weapon
    return $data_system.terms.weapon
  end

  # 盾
  def self.armor1
    return $data_system.terms.armor1
  end

  # 头部防具
  def self.armor2
    return $data_system.terms.armor2
  end

  # 身体防具
  def self.armor3
    return $data_system.terms.armor3
  end

  # 装饰品
  def self.armor4
    return $data_system.terms.armor4
  end

  # 武器 1
  def self.weapon1
    return $data_system.terms.weapon1
  end

  # 武器 2
  def self.weapon2
    return $data_system.terms.weapon2
  end

  # 攻击
  def self.attack
    return $data_system.terms.attack
  end

  # 技能
  def self.skill
    return $data_system.terms.skill
  end

  # 防御
  def self.guard
    return $data_system.terms.guard
  end

  # 物品
  def self.item
    return $data_system.terms.item
  end

  # 装备
  def self.equip
    return $data_system.terms.equip
  end

  # 状态
  def self.status
    return $data_system.terms.status
  end

  # 存档
  def self.save
    return $data_system.terms.save
  end

  # 游戏结束
  def self.game_end
    return $data_system.terms.game_end
  end

  # 战斗
  def self.fight
    return $data_system.terms.fight
  end

  # 逃走
  def self.escape
    return $data_system.terms.escape
  end

  # 新的游戏
  def self.new_game
    return $data_system.terms.new_game
  end

  # 继续游戏
  def self.continue
    return $data_system.terms.continue
  end

  # 离开游戏
  def self.shutdown
    return $data_system.terms.shutdown
  end

  # 回到标题画面
  def self.to_title
    return $data_system.terms.to_title
  end

  # 取消
  def self.cancel
    return $data_system.terms.cancel
  end

  # G（通货单位）
  def self.gold
    return $data_system.terms.gold
  end
end

#==============================================================================
# ■ Cache
#------------------------------------------------------------------------------
#  本模组载入所有图像，建立并保存Bitmap物件。为加快载入速度并节省内存，
#  本模组将以建立的bitmap物件保存在内部哈希表中，使得程序在需求已存在
#  的图像时能快速读取bitmap物件。
#==============================================================================

#==============================================================================
# ■ Sound
#------------------------------------------------------------------------------
#  本模组用于播放音效。它从数据库中的$data_system获取设置好的音效并播放。
#==============================================================================

module Sound

  # 游标
  def self.play_cursor
    # $data_system.sounds[0].play
  end

  # 确定键
  def self.play_decision
    $data_system.sounds[1].play
  end

  # 取消键
  def self.play_cancel
    $data_system.sounds[2].play
  end

  # 冻结
  def self.play_buzzer
    $data_system.sounds[3].play
  end

  # 装备
  def self.play_equip
    $data_system.sounds[4].play
  end

  # 存档
  def self.play_save
    $data_system.sounds[5].play
  end

  # 读档
  def self.play_load
    $data_system.sounds[6].play
  end

  # 战斗开始
  def self.play_battle_start
    $data_system.sounds[7].play
  end

  # 逃跑
  def self.play_escape
    $data_system.sounds[8].play
  end

  # 敌人攻击
  def self.play_enemy_attack
    $data_system.sounds[9].play
  end

  # 敌人被伤害
  def self.play_enemy_damage
    $data_system.sounds[10].play
  end

  # 敌人被击败
  def self.play_enemy_collapse
    $data_system.sounds[11].play
  end

  # 角色被伤害
  def self.play_actor_damage
    $data_system.sounds[12].play
  end

  # 角色无法战斗
  def self.play_actor_collapse
    $data_system.sounds[13].play
  end

  # 回复
  def self.play_recovery
    $data_system.sounds[14].play
  end

  # 攻击落空
  def self.play_miss
    $data_system.sounds[15].play
  end

  # 闪避
  def self.play_evasion
    $data_system.sounds[16].play
  end

  # 商店
  def self.play_shop
    $data_system.sounds[17].play
  end

  # 使用物品
  def self.play_use_item
    $data_system.sounds[18].play
  end

  # 使用技能
  def self.play_use_skill
    $data_system.sounds[19].play
  end

end

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

#==============================================================================
# ■ Game_Temp
#------------------------------------------------------------------------------
# 　在没有存档的情况下，处理临时数据的类。这个类的实例请参考 $game_temp 。
#==============================================================================

class Game_Temp
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_accessor :next_scene               # 切换待机中的画面 (文字列)
  attr_accessor :map_bgm                  # 地图画面 BGM (战斗时候记忆用)
  attr_accessor :map_bgs                  # 地图画面 BGS (战斗时候记忆用)
  attr_accessor :common_event_id          # 公用事件 ID
  attr_accessor :in_battle                # 战斗中标记
  attr_accessor :battle_proc              # 战斗 返回调用 (Proc)
  attr_accessor :shop_goods               # 商店商品列表
  attr_accessor :shop_purchase_only       # 仅从商店买入的标记
  attr_accessor :name_actor_id            # 名称输入 角色 ID
  attr_accessor :name_max_char            # 名称输入 最大文字数
  attr_accessor :menu_beep                # 菜单 SE 演奏标记
  attr_accessor :last_file_index          # 最后保存的文件编号
  attr_accessor :debug_top_row            # Debug画面 状态保存用
  attr_accessor :debug_index              # Debug画面 状态保存用
  attr_accessor :background_bitmap        # 背景位图
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    @next_scene = nil
    @map_bgm = nil
    @map_bgs = nil
    @common_event_id = 0
    @in_battle = false
    @battle_proc = nil
    @shop_goods = nil
    @shop_purchase_only = false
    @name_actor_id = 0
    @name_max_char = 0
    @menu_beep = false
    @last_file_index = 0
    @debug_top_row = 0
    @debug_index = 0
    @background_bitmap = Bitmap.new(1, 1)
  end
end

#==============================================================================
# ■ Game_System
#------------------------------------------------------------------------------
# 　处理系统附属数据的类。也可执行诸如交通工具、 BGM 等管理之类的功能。
# 本类的实例请参考$game_system 。
#==============================================================================

class Game_System
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_accessor :timer                    # 计时器
  attr_accessor :timer_working            # 计时器执行中的标志
  attr_accessor :save_disabled            # 禁止存档
  attr_accessor :menu_disabled            # 禁止菜单
  attr_accessor :encounter_disabled       # 禁止遇敌
  attr_accessor :save_count               # 存档次数
  attr_accessor :version_id               # 游戏版本 ID
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    @timer = 0
    @timer_working = false
    @save_disabled = false
    @menu_disabled = false
    @encounter_disabled = false
    @save_count = 0
    @version_id = 0
  end
  #--------------------------------------------------------------------------
  # ● 获取战斗 BGM
  #--------------------------------------------------------------------------
  def battle_bgm
    if @battle_bgm == nil
      return $data_system.battle_bgm
    else
      return @battle_bgm
    end
  end
  #--------------------------------------------------------------------------
  # ● 设置战斗 BGM
  #     battle_bgm : 新的战斗 BGM
  #--------------------------------------------------------------------------
  def battle_bgm=(battle_bgm)
    @battle_bgm = battle_bgm
  end
  #--------------------------------------------------------------------------
  # ● 获取战斗结束的 ME
  #--------------------------------------------------------------------------
  def battle_end_me
    if @battle_end_me == nil
      return $data_system.battle_end_me
    else
      return @battle_end_me
    end
  end
  #--------------------------------------------------------------------------
  # ● 设置战斗结束的 ME
  #     battle_end_me : 新的战斗结束 ME
  #--------------------------------------------------------------------------
  def battle_end_me=(battle_end_me)
    @battle_end_me = battle_end_me
  end
  #--------------------------------------------------------------------------
  # ● 刷新画面
  #--------------------------------------------------------------------------
  def update
    if @timer_working and @timer > 0
      @timer -= 1
      if @timer == 0 and $game_temp.in_battle     # 如果战斗中计时器为 0
        $game_temp.next_scene = "map"             # 那么就中断战斗
      end
    end
  end
end

#==============================================================================
# ■ Game_Message
#------------------------------------------------------------------------------
# 　处理讯息窗口状态、执行文字显示、选项等的类。 本类的实例请参考 $game_message。
#==============================================================================

class Game_Message
  #--------------------------------------------------------------------------
  # ● 常量
  #--------------------------------------------------------------------------
  MAX_LINE = 4                            # 最大行数
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_accessor :texts                    # 文章的排列 (行单位)
  attr_accessor :face_name                # 头像 文件名
  attr_accessor :face_index               # 头像 索引
  attr_accessor :background               # 背景类型
  attr_accessor :position                 # 表示位置
  attr_accessor :main_proc                # Main 返回调用 (Proc)
  attr_accessor :choice_proc              # 选择项 返回调用 (Proc)
  attr_accessor :choice_start             # 选择项 开始行
  attr_accessor :choice_max               # 选择项 项目数
  attr_accessor :choice_cancel_type       # 选择项 取消的情况
  attr_accessor :num_input_variable_id    # 数值输入 变量 ID
  attr_accessor :num_input_digits_max     # 数值输入 行数
  attr_accessor :visible                  # 信息表示中
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    clear
    @visible = false
  end
  #--------------------------------------------------------------------------
  # ● 清除
  #--------------------------------------------------------------------------
  def clear
    @texts = []
    @face_name = ""
    @face_index = 0
    @background = 0
    @position = 2
    @main_proc = nil
    @choice_start = 99
    @choice_max = 0
    @choice_cancel_type = 0
    @choice_proc = nil
    @num_input_variable_id = 0
    @num_input_digits_max = 0
  end
  #--------------------------------------------------------------------------
  # ● 确认忙碌状态
  #--------------------------------------------------------------------------
  def busy
    return @texts.size > 0
  end
  #--------------------------------------------------------------------------
  # ● 下一页
  #--------------------------------------------------------------------------
  def new_page
    while @texts.size % MAX_LINE > 0
      @texts.push("")
    end
  end
end

#==============================================================================
# ■ Game_Switches
#------------------------------------------------------------------------------
# 　处理开关的类。编入的是类 Array 的外壳。本类的实例请参考 $game_switches。
#==============================================================================

class Game_Switches
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    @data = []
  end
  #--------------------------------------------------------------------------
  # ● 获取开关
  #     switch_id : 开关 ID
  #--------------------------------------------------------------------------
  def [](switch_id)
    if @data[switch_id] == nil
      return false
    else
      return @data[switch_id]
    end
  end
  #--------------------------------------------------------------------------
  # ● 设置开关
  #     switch_id : 开关 ID
  #     value     : ON (true) / OFF (false)
  #--------------------------------------------------------------------------
  def []=(switch_id, value)
    if switch_id <= 5000
      @data[switch_id] = value
    end
  end
end

#==============================================================================
# ■ Game_Variables
#------------------------------------------------------------------------------
# 　处理变量的类。编入的是类 Array 的外壳。本类的实例请参考 $game_variables。
#==============================================================================

class Game_Variables
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    @data = []
  end
  #--------------------------------------------------------------------------
  # ● 获取变量
  #     variable_id : 变量 ID
  #--------------------------------------------------------------------------
  def [](variable_id)
    if @data[variable_id] == nil
      return 0
    else
      return @data[variable_id]
    end
  end
  #--------------------------------------------------------------------------
  # ● 设置变量
  #     variable_id : 变量 ID
  #     value       : 变量的值
  #--------------------------------------------------------------------------
  def []=(variable_id, value)
    if variable_id <= 5000
      @data[variable_id] = value
    end
  end
end

#==============================================================================
# ■ Game_SelfSwitches
#------------------------------------------------------------------------------
# 　处理独立开关的类。编入的是类 Hash 的外壳。本类的实例请参考 $game_self_switches。
#==============================================================================

class Game_SelfSwitches
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    @data = {}
  end
  #--------------------------------------------------------------------------
  # ● 获取独立开关
  #     key : 键
  #--------------------------------------------------------------------------
  def [](key)
    return @data[key] == true ? true : false
  end
  #--------------------------------------------------------------------------
  # ● 设置独立开关
  #     key   : 键
  #     value : ON (true) / OFF (false)
  #--------------------------------------------------------------------------
  def []=(key, value)
    @data[key] = value
  end
end

#==============================================================================
# ■ Game_Screen
#------------------------------------------------------------------------------
# 　更改色调以及画面闪烁、保存画面全体关系处理数据的类。
#   使用于 Game_Map 和 Game_Troop 类.
#==============================================================================

class Game_Screen
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_reader   :brightness               # 亮度
  attr_reader   :tone                     # 色调
  attr_reader   :flash_color              # 闪光颜色
  attr_reader   :shake                    # 震动
  attr_reader   :pictures                 # 图片
  attr_reader   :weather_type             # 天候类型
  attr_reader   :weather_max              # 天候活动块最大数
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    clear
  end
  #--------------------------------------------------------------------------
  # ● 清除
  #--------------------------------------------------------------------------
  def clear
    @brightness = 255
    @fadeout_duration = 0
    @fadein_duration = 0
    @tone = Tone.new(0, 0, 0, 0)
    @tone_target = Tone.new(0, 0, 0, 0)
    @tone_duration = 0
    @flash_color = Color.new(0, 0, 0, 0)
    @flash_duration = 0
    @shake_power = 0
    @shake_speed = 0
    @shake_duration = 0
    @shake_direction = 1
    @shake = 0
    @pictures = []
    for i in 0..20
      @pictures.push(Game_Picture.new(i))
    end
    @weather_type = 0
    @weather_max = 0.0
    @weather_type_target = 0
    @weather_max_target = 0.0
    @weather_duration = 0
  end
  #--------------------------------------------------------------------------
  # ● 开始淡出
  #     duration : 时间
  #--------------------------------------------------------------------------
  def start_fadeout(duration)
    @fadeout_duration = duration
    @fadein_duration = 0
  end
  #--------------------------------------------------------------------------
  # ● 开始淡入
  #     duration : 时间
  #--------------------------------------------------------------------------
  def start_fadein(duration)
    @fadein_duration = duration
    @fadeout_duration = 0
  end
  #--------------------------------------------------------------------------
  # ● 开始更改色调
  #     tone     : 色调
  #     duration : 时间
  #--------------------------------------------------------------------------
  def start_tone_change(tone, duration)
    @tone_target = tone.clone
    @tone_duration = duration
    if @tone_duration == 0
      @tone = @tone_target.clone
    end
  end
  #--------------------------------------------------------------------------
  # ● 开始画面闪烁
  #     color    : 色
  #     duration : 时间
  #--------------------------------------------------------------------------
  def start_flash(color, duration)
    @flash_color = color.clone
    @flash_duration = duration
  end
  #--------------------------------------------------------------------------
  # ● 开始震动
  #     power    : 强度
  #     speed    : 速度
  #     duration : 时间
  #--------------------------------------------------------------------------
  def start_shake(power, speed, duration)
    @shake_power = power
    @shake_speed = speed
    @shake_duration = duration
  end
  #--------------------------------------------------------------------------
  # ● 设置天候
  #     type     : 类型
  #     power    : 强度
  #     duration : 时间
  #--------------------------------------------------------------------------
  def weather(type, power, duration)
    @weather_type_target = type
    if @weather_type_target != 0
      @weather_type = @weather_type_target
    end
    if @weather_type_target == 0
      @weather_max_target = 0.0
    else
      @weather_max_target = (power + 1) * 4.0
    end
    @weather_duration = duration
    if @weather_duration == 0
      @weather_type = @weather_type_target
      @weather_max = @weather_max_target
    end
  end
  #--------------------------------------------------------------------------
  # ● 刷新画面
  #--------------------------------------------------------------------------
  def update
    update_fadeout
    update_fadein
    update_tone
    update_flash
    update_shake
    update_weather
    update_pictures
  end
  #--------------------------------------------------------------------------
  # ● 更新淡出
  #--------------------------------------------------------------------------
  def update_fadeout
    if @fadeout_duration >= 1
      d = @fadeout_duration
      @brightness = (@brightness * (d - 1)) / d
      @fadeout_duration -= 1
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新淡入
  #--------------------------------------------------------------------------
  def update_fadein
    if @fadein_duration >= 1
      d = @fadein_duration
      @brightness = (@brightness * (d - 1) + 255) / d
      @fadein_duration -= 1
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新色调
  #--------------------------------------------------------------------------
  def update_tone
    if @tone_duration >= 1
      d = @tone_duration
      @tone.red = (@tone.red * (d - 1) + @tone_target.red) / d
      @tone.green = (@tone.green * (d - 1) + @tone_target.green) / d
      @tone.blue = (@tone.blue * (d - 1) + @tone_target.blue) / d
      @tone.gray = (@tone.gray * (d - 1) + @tone_target.gray) / d
      @tone_duration -= 1
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新画面闪烁
  #--------------------------------------------------------------------------
  def update_flash
    if @flash_duration >= 1
      d = @flash_duration
      @flash_color.alpha = @flash_color.alpha * (d - 1) / d
      @flash_duration -= 1
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新震动
  #--------------------------------------------------------------------------
  def update_shake
    if @shake_duration >= 1 or @shake != 0
      delta = (@shake_power * @shake_speed * @shake_direction) / 10.0
      if @shake_duration <= 1 and @shake * (@shake + delta) < 0
        @shake = 0
      else
        @shake += delta
      end
      if @shake > @shake_power * 2
        @shake_direction = -1
      end
      if @shake < - @shake_power * 2
        @shake_direction = 1
      end
      if @shake_duration >= 1
        @shake_duration -= 1
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新天候
  #--------------------------------------------------------------------------
  def update_weather
    if @weather_duration >= 1
      d = @weather_duration
      @weather_max = (@weather_max * (d - 1) + @weather_max_target) / d
      @weather_duration -= 1
      if @weather_duration == 0
        @weather_type = @weather_type_target
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新图片
  #--------------------------------------------------------------------------
  def update_pictures
    for picture in @pictures
      picture.update
    end
  end
end

#==============================================================================
# ■ Game_Picture
#------------------------------------------------------------------------------
# 　处理图片的类。本类在类 Game_Screen 的内部使用。
# 地图画面图片和战斗图片另行处理。
#==============================================================================

class Game_Picture
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_reader   :number                   # 图片编号
  attr_reader   :name                     # 图片文件名
  attr_reader   :origin                   # 原点
  attr_reader   :x                        # X 座标
  attr_reader   :y                        # Y 座标
  attr_reader   :zoom_x                   # 横向放大率
  attr_reader   :zoom_y                   # 纵向放大率
  attr_reader   :opacity                  # 不透明度
  attr_reader   :blend_type               # 合成方式
  attr_reader   :tone                     # 色调
  attr_reader   :angle                    # 旋转角度
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     number : 图片编号
  #--------------------------------------------------------------------------
  def initialize(number)
    @number = number
    @name = ""
    @origin = 0
    @x = 0.0
    @y = 0.0
    @zoom_x = 100.0
    @zoom_y = 100.0
    @opacity = 255.0
    @blend_type = 1
    @duration = 0
    @target_x = @x
    @target_y = @y
    @target_zoom_x = @zoom_x
    @target_zoom_y = @zoom_y
    @target_opacity = @opacity
    @tone = Tone.new(0, 0, 0, 0)
    @tone_target = Tone.new(0, 0, 0, 0)
    @tone_duration = 0
    @angle = 0
    @rotate_speed = 0
  end
  #--------------------------------------------------------------------------
  # ● 显示图片
  #     name         : 文件名
  #     origin       : 原点
  #     x            : X 坐标
  #     y            : Y 坐标
  #     zoom_x       : X 方向放大率
  #     zoom_y       : Y 方向放大率
  #     opacity      : 不透明度
  #     blend_type   : 合成方式
  #--------------------------------------------------------------------------
  def show(name, origin, x, y, zoom_x, zoom_y, opacity, blend_type)
    @name = name
    @origin = origin
    @x = x.to_f
    @y = y.to_f
    @zoom_x = zoom_x.to_f
    @zoom_y = zoom_y.to_f
    @opacity = opacity.to_f
    @blend_type = blend_type
    @duration = 0
    @target_x = @x
    @target_y = @y
    @target_zoom_x = @zoom_x
    @target_zoom_y = @zoom_y
    @target_opacity = @opacity
    @tone = Tone.new(0, 0, 0, 0)
    @tone_target = Tone.new(0, 0, 0, 0)
    @tone_duration = 0
    @angle = 0
    @rotate_speed = 0
  end
  #--------------------------------------------------------------------------
  # ● 移动图片
  #     origin       : 原点
  #     x            : X 坐标
  #     y            : Y 坐标
  #     zoom_x       : X 方向放大率
  #     zoom_y       : Y 方向放大率
  #     opacity      : 不透明度
  #     blend_type   : 合成方式
  #     duration     : 时间
  #--------------------------------------------------------------------------
  def move(origin, x, y, zoom_x, zoom_y, opacity, blend_type, duration)
    @origin = origin
    @target_x = x.to_f
    @target_y = y.to_f
    @target_zoom_x = zoom_x.to_f
    @target_zoom_y = zoom_y.to_f
    @target_opacity = opacity.to_f
    @blend_type = blend_type
    @duration = duration
  end
  #--------------------------------------------------------------------------
  # ● 更改旋转速度
  #     speed : 旋转速度
  #--------------------------------------------------------------------------
  def rotate(speed)
    @rotate_speed = speed
  end
  #--------------------------------------------------------------------------
  # ● 开始更改色调
  #     tone     : 色调
  #     duration : 时间
  #--------------------------------------------------------------------------
  def start_tone_change(tone, duration)
    @tone_target = tone.clone
    @tone_duration = duration
    if @tone_duration == 0
      @tone = @tone_target.clone
    end
  end
  #--------------------------------------------------------------------------
  # ● 消除图片
  #--------------------------------------------------------------------------
  def erase
    @name = ""
  end
  #--------------------------------------------------------------------------
  # ● 刷新画面
  #--------------------------------------------------------------------------
  def update
    if @duration >= 1
      d = @duration
      @x = (@x * (d - 1) + @target_x) / d
      @y = (@y * (d - 1) + @target_y) / d
      @zoom_x = (@zoom_x * (d - 1) + @target_zoom_x) / d
      @zoom_y = (@zoom_y * (d - 1) + @target_zoom_y) / d
      @opacity = (@opacity * (d - 1) + @target_opacity) / d
      @duration -= 1
    end
    if @tone_duration >= 1
      d = @tone_duration
      @tone.red = (@tone.red * (d - 1) + @tone_target.red) / d
      @tone.green = (@tone.green * (d - 1) + @tone_target.green) / d
      @tone.blue = (@tone.blue * (d - 1) + @tone_target.blue) / d
      @tone.gray = (@tone.gray * (d - 1) + @tone_target.gray) / d
      @tone_duration -= 1
    end
    if @rotate_speed != 0
      @angle += @rotate_speed / 2.0
      while @angle < 0
        @angle += 360
      end
      @angle %= 360
    end
  end
end

#==============================================================================
# ■ Game_Battler
#------------------------------------------------------------------------------
# 　处理战斗者的类。这个类作为 Game_Actor 类与 Game_Enemy 类的
# 超级类来使用。
#==============================================================================

class Game_Battler
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_reader   :battler_name             # 战斗图文件名称
  attr_reader   :battler_hue              # 战斗图色调
  attr_reader   :hp                       # 体力值
  attr_reader   :mp                       # 魔力值
  attr_reader   :action                   # 战斗行动
  attr_accessor :hidden                   # 隐藏标志
  attr_accessor :immortal                 # 不死身标志
  attr_accessor :animation_id             # 动画 ID
  attr_accessor :animation_mirror         # 动画纵向翻转标志
  attr_accessor :white_flash              # 白色屏幕闪烁标志
  attr_accessor :blink                    # 闪烁标志
  attr_accessor :collapse                 # 倒下标志
  attr_reader   :skipped                  # 行动结果：跳过标志
  attr_reader   :missed                   # 行动结果：落空标志
  attr_reader   :evaded                   # 行动结果：闪躲标志
  attr_reader   :critical                 # 行动结果：会心一击标志
  attr_reader   :absorbed                 # 行动结果：吸收标志
  attr_reader   :hp_damage                # 行动结果：体力伤害标志
  attr_reader   :mp_damage                # 行动结果：魔力伤害标志
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    @battler_name = ""
    @battler_hue = 0
    @hp = 0
    @mp = 0
    @action = Game_BattleAction.new(self)
    @states = []                    # 状态（ID数组）
    @state_turns = {}               # 状态剩馀回合（哈希表）
    @hidden = false
    @immortal = false
    clear_extra_values
    clear_sprite_effects
    clear_action_results
  end
  #--------------------------------------------------------------------------
  # ● 清除能力值变量
  #--------------------------------------------------------------------------
  def clear_extra_values
    @maxhp_plus = 0
    @maxmp_plus = 0
    @atk_plus = 0
    @def_plus = 0
    @spi_plus = 0
    @agi_plus = 0
  end
  #--------------------------------------------------------------------------
  # ● 清除精灵效果变量
  #--------------------------------------------------------------------------
  def clear_sprite_effects
    @animation_id = 0
    @animation_mirror = false
    @white_flash = false
    @blink = false
    @collapse = false
  end
  #--------------------------------------------------------------------------
  # ● 清除行动结果变数
  #--------------------------------------------------------------------------
  def clear_action_results
    @skipped = false
    @missed = false
    @evaded = false
    @critical = false
    @absorbed = false
    @hp_damage = 0
    @mp_damage = 0
    @added_states = []              # 附加状态（ID数组）
    @removed_states = []            # 移除状态（ID数组）
    @remained_states = []           # 剩馀状态（ID数组）
  end
  #--------------------------------------------------------------------------
  # ● 获取状态对象数组
  #--------------------------------------------------------------------------
  def states
    result = []
    for i in @states
      result.push($data_states[i])
    end
    return result
  end
  #--------------------------------------------------------------------------
  # ● 获取先前行动所附加的状态
  #--------------------------------------------------------------------------
  def added_states
    result = []
    for i in @added_states
      result.push($data_states[i])
    end
    return result
  end
  #--------------------------------------------------------------------------
  # ● 获取先前行动所移除的状态
  #--------------------------------------------------------------------------
  def removed_states
    result = []
    for i in @removed_states
      result.push($data_states[i])
    end
    return result
  end
  #--------------------------------------------------------------------------
  # ● 获取先前行动後所剩馀的状态
  #    已用过的，例如：尝试把以睡着的角色附加睡眠状态
  #--------------------------------------------------------------------------
  def remained_states
    result = []
    for i in @remained_states
      result.push($data_states[i])
    end
    return result
  end
  #--------------------------------------------------------------------------
  # ● 判断先前行动是否对状态有效果
  #--------------------------------------------------------------------------
  def states_active?
    return true unless @added_states.empty?
    return true unless @removed_states.empty?
    return true unless @remained_states.empty?
    return false
  end
  #--------------------------------------------------------------------------
  # ● 获取 最大体力值 上限
  #--------------------------------------------------------------------------
  def maxhp_limit
    return 999999
  end
  #--------------------------------------------------------------------------
  # ● 获取 最大体力值
  #--------------------------------------------------------------------------
  def maxhp
    return [[base_maxhp + @maxhp_plus, 1].max, maxhp_limit].min
  end
  #--------------------------------------------------------------------------
  # ● 获取 最大魔力值
  #--------------------------------------------------------------------------
  def maxmp
    return [[base_maxmp + @maxmp_plus, 0].max, 9999].min
  end
  #--------------------------------------------------------------------------
  # ● 获取 攻击力
  #--------------------------------------------------------------------------
  def atk
    n = [[base_atk + @atk_plus, 1].max, 999].min
    for state in states do n *= state.atk_rate / 100.0 end
    n = [[Integer(n), 1].max, 999].min
    return n
  end
  #--------------------------------------------------------------------------
  # ● 获取 防御力
  #--------------------------------------------------------------------------
  def def
    n = [[base_def + @def_plus, 1].max, 999].min
    for state in states do n *= state.def_rate / 100.0 end
    n = [[Integer(n), 1].max, 999].min
    return n
  end
  #--------------------------------------------------------------------------
  # ● 获取 精神力
  #--------------------------------------------------------------------------
  def spi
    n = [[base_spi + @spi_plus, 1].max, 999].min
    for state in states do n *= state.spi_rate / 100.0 end
    n = [[Integer(n), 1].max, 999].min
    return n
  end
  #--------------------------------------------------------------------------
  # ● 获取 敏捷
  #--------------------------------------------------------------------------
  def agi
    n = [[base_agi + @agi_plus, 1].max, 999].min
    for state in states do n *= state.agi_rate / 100.0 end
    n = [[Integer(n), 1].max, 999].min
    return n
  end
  #--------------------------------------------------------------------------
  # ● 获取「强力防御」选项
  #--------------------------------------------------------------------------
  def super_guard
    return false
  end
  #--------------------------------------------------------------------------
  # ● 获取「快速攻击」武器选项
  #--------------------------------------------------------------------------
  def fast_attack
    return false
  end
  #--------------------------------------------------------------------------
  # ● 获取「双重攻击」武器选项
  #--------------------------------------------------------------------------
  def dual_attack
    return false
  end
  #--------------------------------------------------------------------------
  # ● 获取「防止会心一击」防具选项
  #--------------------------------------------------------------------------
  def prevent_critical
    return false
  end
  #--------------------------------------------------------------------------
  # ● 获取「消耗一半魔力」防具选项
  #--------------------------------------------------------------------------
  def half_mp_cost
    return false
  end
  #--------------------------------------------------------------------------
  # ● 设置 MaxHP
  #     new_maxhp : 新的 MaxHP
  #--------------------------------------------------------------------------
  def maxhp=(new_maxhp)
    @maxhp_plus += new_maxhp - self.maxhp
    @maxhp_plus = [[@maxhp_plus, -9999].max, 9999].min
    @hp = [@hp, self.maxhp].min
  end
  #--------------------------------------------------------------------------
  # ● 设置 MaxMP
  #     new_maxmp : 新的 MaxMP
  #--------------------------------------------------------------------------
  def maxmp=(new_maxmp)
    @maxmp_plus += new_maxmp - self.maxmp
    @maxmp_plus = [[@maxmp_plus, -9999].max, 9999].min
    @mp = [@mp, self.maxmp].min
  end
  #--------------------------------------------------------------------------
  # ● 设置攻击力
  #     new_atk : 新的 攻击力
  #--------------------------------------------------------------------------
  def atk=(new_atk)
    @atk_plus += new_atk - self.atk
    @atk_plus = [[@atk_plus, -999].max, 999].min
  end
  #--------------------------------------------------------------------------
  # ● 设置防御力
  #     new_def : 新的 防御力
  #--------------------------------------------------------------------------
  def def=(new_def)
    @def_plus += new_def - self.def
    @def_plus = [[@def_plus, -999].max, 999].min
  end
  #--------------------------------------------------------------------------
  # ● 设置精神力
  #     new_spi : 新的 精神力
  #--------------------------------------------------------------------------
  def spi=(new_spi)
    @spi_plus += new_spi - self.spi
    @spi_plus = [[@spi_plus, -999].max, 999].min
  end
  #--------------------------------------------------------------------------
  # ● 设置敏捷
  #     new_agi : 新的 敏捷
  #--------------------------------------------------------------------------
  def agi=(new_agi)
    @agi_plus += new_agi - self.agi
    @agi_plus = [[@agi_plus, -999].max, 999].min
  end
  #--------------------------------------------------------------------------
  # ● 更改 HP
  #     hp : 新的 HP
  #--------------------------------------------------------------------------
  def hp=(hp)
    @hp = [[hp, maxhp].min, 0].max
    if @hp == 0 and not state?(1) and not @immortal
      add_state(1)                # 附加「无法战斗」状态（1号状态）
      @added_states.push(1)
    elsif @hp > 0 and state?(1)
      remove_state(1)             # 移除「无法战斗」状态（1号状态）
      @removed_states.push(1)
    end
  end
  #--------------------------------------------------------------------------
  # ● 更改 MP
  #     mp : 新的 MP
  #--------------------------------------------------------------------------
  def mp=(mp)
    @mp = [[mp, maxmp].min, 0].max
  end
  #--------------------------------------------------------------------------
  # ● 全回复
  #--------------------------------------------------------------------------
  def recover_all
    @hp = maxhp
    @mp = maxmp
    for i in @states.clone do remove_state(i) end
  end
  #--------------------------------------------------------------------------
  # ● 战斗不能判定
  #--------------------------------------------------------------------------
  def dead?
    return (not @hidden and @hp == 0 and not @immortal)
  end
  #--------------------------------------------------------------------------
  # ● 存在判定
  #--------------------------------------------------------------------------
  def exist?
    return (not @hidden and not dead?)
  end
  #--------------------------------------------------------------------------
  # ● 可以输入命令判定
  #--------------------------------------------------------------------------
  def inputable?
    return (not @hidden and restriction <= 1)
  end
  #--------------------------------------------------------------------------
  # ● 可以行动判定
  #--------------------------------------------------------------------------
  def movable?
    return (not @hidden and restriction < 4)
  end
  #--------------------------------------------------------------------------
  # ● 回避可能判定
  #--------------------------------------------------------------------------
  def parriable?
    return (not @hidden and restriction < 5)
  end
  #--------------------------------------------------------------------------
  # ● 沈默状态判断
  #--------------------------------------------------------------------------
  def silent?
    return (not @hidden and restriction == 1)
  end
  #--------------------------------------------------------------------------
  # ● 暴走状态判定
  #--------------------------------------------------------------------------
  def berserker?
    return (not @hidden and restriction == 2)
  end
  #--------------------------------------------------------------------------
  # ● 丧乱状态判定
  #--------------------------------------------------------------------------
  def confusion?
    return (not @hidden and restriction == 3)
  end
  #--------------------------------------------------------------------------
  # ● 防御中判定
  #--------------------------------------------------------------------------
  def guarding?
    return @action.guard?
  end
  #--------------------------------------------------------------------------
  # ● 获取属性修正值
  #     element_id : 属性ID
  #--------------------------------------------------------------------------
  def element_rate(element_id)
    return 100
  end
  #--------------------------------------------------------------------------
  # ● 附加状态成功率
  #--------------------------------------------------------------------------
  def state_probability(state_id)
    return 0
  end
  #--------------------------------------------------------------------------
  # ● 状态无效判定
  #     state_id : 状态ID
  #--------------------------------------------------------------------------
  def state_resist?(state_id)
    return false
  end
  #--------------------------------------------------------------------------
  # ● 获取普通攻击属性
  #--------------------------------------------------------------------------
  def element_set
    return []
  end
  #--------------------------------------------------------------------------
  # ● 获取普通攻击状态变化(+)
  #--------------------------------------------------------------------------
  def plus_state_set
    return []
  end
  #--------------------------------------------------------------------------
  # ● 获取普通攻击状态变化(-)
  #--------------------------------------------------------------------------
  def minus_state_set
    return []
  end
  #--------------------------------------------------------------------------
  # ● 检查状态
  #     state_id : 状态ID
  #    如该状态存在则返回true。
  #--------------------------------------------------------------------------
  def state?(state_id)
    return @states.include?(state_id)
  end
  #--------------------------------------------------------------------------
  # ● 判断状态是否已满
  #     state_id : 状态ID
  #    如该状态的剩余回合数等于该状态自动移除的回合数则返回true
  #--------------------------------------------------------------------------
  def state_full?(state_id)
    return false unless state?(state_id)
    return @state_turns[state_id] == $data_states[state_id].hold_turn
  end
  #--------------------------------------------------------------------------
  # ● 判断状态无视
  #     state_id : 状态ID
  #    当下列条件符合时返回true
  #     ● 如即将附加的 A 状态存在于 B 状态的「解除状态」列表中
  #     ● 如 B 状态不存在于即将附加的 A 状态的「解除状态」列表中
  #    例如：尝试使已经 无法战斗 的角色附加 中毒 状态
  #     然而并不适用于附加 攻击提升 状态于已中 攻击低下 状态的角色
  #--------------------------------------------------------------------------
  def state_ignore?(state_id)
    for state in states
      if state.state_set.include?(state_id) and
          not $data_states[state_id].state_set.include?(state.id)
        return true
      end
    end
    return false
  end
  #--------------------------------------------------------------------------
  # ● 判断状态抵销
  #     state_id : 状态ID
  #    当下列条件符合时返回true
  #     * 新状态的「与反效果状态抵销」的选项钩上时
  #     * 新状态的「解除状态」列表中含有目前已经有的状态之一
  #    例如：附加 攻击提升 状态于已中 攻击低下 状态的角色
  #--------------------------------------------------------------------------
  def state_offset?(state_id)
    return false unless $data_states[state_id].offset_by_opposite
    for i in @states
      return true if $data_states[state_id].state_set.include?(i)
    end
    return false
  end
  #--------------------------------------------------------------------------
  # ● 状态排列
  #    将状态列表依照优先度排列，高优先度的状态排在前面。
  #--------------------------------------------------------------------------
  def sort_states
    @states.sort! do |a, b|
      state_a = $data_states[a]
      state_b = $data_states[b]
      if state_a.priority != state_b.priority
        state_b.priority <=> state_a.priority
      else
        a <=> b
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 附加状态
  #     state_id : 状态 ID
  #--------------------------------------------------------------------------
  def add_state(state_id)
    state = $data_states[state_id]        # 获取状态资料
    return if state == nil                # 资料是否为空？
    return if state_ignore?(state_id)     # 状态是否无视？
    unless state?(state_id)               # 状态是否存在？
      unless state_offset?(state_id)      # 状态是否抵销？
        @states.push(state_id)            # 加入状态
      end
      if state_id == 1                    # 如状态是「无法战斗」（1号状态）
        @hp = 0                           # 设体力为0
      end
      unless inputable?                   # 除非角色无法输入命令
        @action.clear                     # 清除所有行动
      end
      for i in state.state_set            # 获取「移除状态」列表
        remove_state(i)                   # 移除状态
        @removed_states.delete(i)         # 清除
      end
      sort_states                         # 依照优先度排列状态
    end
    @state_turns[state_id] = state.hold_turn    # 设置回合数
  end
  #--------------------------------------------------------------------------
  # ● 解除状态
  #     state_id : 状态 ID
  #--------------------------------------------------------------------------
  def remove_state(state_id)
    return unless state?(state_id)        # 状态是否存在？
    if state_id == 1 and @hp == 0         # 状态是否为「无法战斗」
      @hp = 1                             # 设置体力为1
    end
    @states.delete(state_id)              # 从 @states 移除
    @state_turns.delete(state_id)         # 从 @state_turns 移除
  end
  #--------------------------------------------------------------------------
  # ● 获取限制
  #    从当前附加的状态中获取最大的限制
  #--------------------------------------------------------------------------
  def restriction
    restriction_max = 0
    for state in states
      if state.restriction >= restriction_max
        restriction_max = state.restriction
      end
    end
    return restriction_max
  end
  #--------------------------------------------------------------------------
  # ● 判断状态 [连续伤害]
  #--------------------------------------------------------------------------
  def slip_damage?
    for state in states
      return true if state.slip_damage
    end
    return false
  end
  #--------------------------------------------------------------------------
  # ● 判断状态 [减少命中率]
  #--------------------------------------------------------------------------
  def reduce_hit_ratio?
    for state in states
      return true if state.reduce_hit_ratio
    end
    return false
  end
  #--------------------------------------------------------------------------
  # ● 获取最重要的状态存在讯息
  #--------------------------------------------------------------------------
  def most_important_state_text
    for state in states
      return state.message3 unless state.message3.empty?
    end
    return ""
  end
  #--------------------------------------------------------------------------
  # ● 解除战斗用状态 (战斗结束时调用)
  #--------------------------------------------------------------------------
  def remove_states_battle
    for state in states
      remove_state(state.id) if state.battle_only
    end
  end
  #--------------------------------------------------------------------------
  # ● 状态自然解除 (回合改变时调用)
  #--------------------------------------------------------------------------
  def remove_states_auto
    clear_action_results
    for i in @state_turns.keys.clone
      if @state_turns[i] > 0
        @state_turns[i] -= 1
      elsif rand(100) < $data_states[i].auto_release_prob
        remove_state(i)
        @removed_states.push(i)
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 状态攻击解除 (受到物理伤害时调用)
  #--------------------------------------------------------------------------
  def remove_states_shock
    for state in states
      if state.release_by_damage
        remove_state(state.id)
        @removed_states.push(state.id)
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 计算技能消耗魔力
  #     skill : 技能
  #--------------------------------------------------------------------------
  def calc_mp_cost(skill)
    if half_mp_cost
      return skill.mp_cost / 2
    else
      return skill.mp_cost
    end
  end
  #--------------------------------------------------------------------------
  # ● 可以使用技能的判定
  #     skill : 技能
  #--------------------------------------------------------------------------
  def skill_can_use?(skill)
    return false unless skill.is_a?(RPG::Skill)
    return false unless movable?
    return false if silent? and skill.spi_f > 0
    return false if calc_mp_cost(skill) > mp
    if $game_temp.in_battle
      return skill.battle_ok?
    else
      return skill.menu_ok?
    end
  end
  #--------------------------------------------------------------------------
  # ● 计算最後命中率
  #     user : 攻击者，技能或物品的使用者
  #     obj  : 使用的技能或物品(普通攻击时为nil)
  #--------------------------------------------------------------------------
  def calc_hit(user, obj = nil)
    if obj == nil                           # 普通攻击
      hit = user.hit                        # 获取命中率
      physical = true
    elsif obj.is_a?(RPG::Skill)             # 技能攻击
      hit = obj.hit                         # 获取命中率
      physical = obj.physical_attack
    else                                    # 物品攻击
      hit = 100                             # 设命中率为100％
      physical = obj.physical_attack
    end
    if physical                             # 物理攻击
      hit /= 4 if user.reduce_hit_ratio?    # 中了暗黑状态时命中率降低为25％
    end
    return hit
  end
  #--------------------------------------------------------------------------
  # ● 计算最後闪躲率
  #     user : 攻击者，技能或物品的使用者
  #     obj  : 使用的技能或物品(普通攻击时为nil)
  #--------------------------------------------------------------------------
  def calc_eva(user, obj = nil)
    eva = self.eva
    unless obj == nil                       # 当obj为物品或技能
      eva = 0 unless obj.physical_attack    # 非物理攻击时闪躲率 0%
    end
    unless parriable?                       # 无法闪躲的场合
      eva = 0                               # 闪躲率为 0%
    end
    return eva
  end
  #--------------------------------------------------------------------------
  # ● 计算普通攻击伤害
  #     attacker : 攻击者
  #    计算结果赋值入 @hp_damage
  #--------------------------------------------------------------------------
  def make_attack_damage_value(attacker)
    damage = attacker.atk * 4 - self.def * 2        # 基础计算
    damage = 0 if damage < 0                        # 设负数伤害为 0
    damage *= elements_max_rate(attacker.element_set)   # 属性校正
    damage /= 100
    if damage == 0                                  # 若伤害为 0
      damage = rand(2)                              # 一半机率伤害为1
    elsif damage > 0                                # 若伤害为正数
      @critical = (rand(100) < attacker.cri)        # 会心一击判断
      @critical = false if prevent_critical         # 防止会心一击判断
      damage *= 3 if @critical                      # 会心一击校正
    end
    damage = apply_variance(damage, 20)             # 分散度
    damage = apply_guard(damage)                    # 防御校正
    @hp_damage = damage                             # 体力伤害
  end
  #--------------------------------------------------------------------------
  # ● 计算技能/物品伤害
  #     user : 技能或物品的使用者
  #     obj  : 使用的技能或物品
  #    计算结果赋值入 @hp_damage
  #--------------------------------------------------------------------------
  def make_obj_damage_value(user, obj)
    damage = obj.base_damage                        # 基础计算
    if damage > 0                                   # 若伤害为正
      damage += user.atk * 4 * obj.atk_f / 100      # 使用者攻击力关系度
      damage += user.spi * 2 * obj.spi_f / 100      # 使用者精神力关系度
      unless obj.ignore_defense                     # 除非无视防御力
        damage -= self.def * 2 * obj.atk_f / 100    # 目标攻击力关系度
        damage -= self.spi * 1 * obj.spi_f / 100    # 目标精神力关系度
      end
      damage = 0 if damage < 0                      # 设负数伤害为0
    elsif damage < 0                                # 若伤害为负
      damage -= user.atk * 4 * obj.atk_f / 100      # 使用者攻击力关系度
      damage -= user.spi * 2 * obj.spi_f / 100      # 使用者精神力关系度
    end
    damage *= elements_max_rate(obj.element_set)    # 属性校正
    damage /= 100
    damage = apply_variance(damage, obj.variance)   # 分散度
    damage = apply_guard(damage)                    # 防御校正
    if obj.damage_to_mp
      @mp_damage = damage                           # 伤害魔力
    else
      @hp_damage = damage                           # 伤害体力
    end
  end
  #--------------------------------------------------------------------------
  # ● 计算吸收效果
  #     user : 技能或物品的使用者
  #     obj  : 使用的技能或物品
  #    @hp_damage 和 @mp_damage 必须先在此之前计算好。
  #--------------------------------------------------------------------------
  def make_obj_absorb_effect(user, obj)
    if obj.absorb_damage                        # 若「吸收伤害」
      @hp_damage = [self.hp, @hp_damage].min    # 体力伤害范围校正
      @mp_damage = [self.mp, @mp_damage].min    # 魔力伤害范围校正
      if @hp_damage > 0 or @mp_damage > 0       # 伤害为正数？
        @absorbed = true                        # 打开吸收标志
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 计算使用物品的体力回复量
  #--------------------------------------------------------------------------
  def calc_hp_recovery(user, item)
    result = maxhp * item.hp_recovery_rate / 100 + item.hp_recovery
    result *= 2 if user.pharmacology    # 「药物知识」效果加成2倍
    return result
  end
  #--------------------------------------------------------------------------
  # ● 计算使用物品的魔力回复量
  #--------------------------------------------------------------------------
  def calc_mp_recovery(user, item)
    result = maxmp * item.mp_recovery_rate / 100 + item.mp_recovery
    result *= 2 if user.pharmacology    # 「药物知识」效果加成2倍
    return result
  end
  #--------------------------------------------------------------------------
  # ● 获取最大属性调整量
  #     element_set : 属性列表
  #    返回效果最大的属性
  #--------------------------------------------------------------------------
  def elements_max_rate(element_set)
    return 100 if element_set.empty?                # 判断是否有属性列表
    rate_list = []
    for i in element_set
      rate_list.push(element_rate(i))
    end
    return rate_list.max
  end
  #--------------------------------------------------------------------------
  # ● 计算分散度
  #     damage   : 伤害
  #     variance : 分散度
  #--------------------------------------------------------------------------
  def apply_variance(damage, variance)
    if damage != 0                                  # 若伤害不为0
      amp = [damage.abs * variance / 100, 0].max    # 计算极差
      damage += rand(amp+1) + rand(amp+1) - amp     # 执行分散度
    end
    return damage
  end
  #--------------------------------------------------------------------------
  # ● 计算防御校正
  #     damage : 伤害
  #--------------------------------------------------------------------------
  def apply_guard(damage)
    if damage > 0 and guarding?                     # 判断是否防御中
      damage /= super_guard ? 4 : 2                 # 降低伤害
    end
    return damage
  end
  #--------------------------------------------------------------------------
  # ● 伤害效果
  #     user : 技能或物品使用者
  #    @hp_damage、@mp_damage、或@absorbed需要在此之前计算完毕。
  #--------------------------------------------------------------------------
  def execute_damage(user)
    if @hp_damage > 0           # 若伤害为正数
      remove_states_shock       # 攻击移除状态
    end
    self.hp -= @hp_damage
    self.mp -= @mp_damage
    if @absorbed                # 若吸收
      user.hp += @hp_damage
      user.mp += @mp_damage
    end
  end
  #--------------------------------------------------------------------------
  # ● 计算状态变化
  #     obj : 技能、物品或攻击者
  #--------------------------------------------------------------------------
  def apply_state_changes(obj)
    plus = obj.plus_state_set             # 获取状态变化(+)
    minus = obj.minus_state_set           # 获取状态变化(-)
    for i in plus                         # 状态变化(+)
      next if state_resist?(i)            # 判断状态是否无效
      next if dead?                       # 判断是否无法战斗
      next if i == 1 and @immortal        # 判断是否为不死身
      if state?(i)                        # 判断状态是否已存在
        @remained_states.push(i)          # 记录为变更状态
        next
      end
      if rand(100) < state_probability(i) # 计算状态机率
        add_state(i)                      # 附加状态
        @added_states.push(i)             # 记录已附加状态
      end
    end
    for i in minus                        # 状态变化(-)
      next unless state?(i)               # 判断状态是否已存在
      remove_state(i)                     # 移除状态
      @removed_states.push(i)             # 记录以移除状态
    end
    for i in @added_states & @removed_states  # 清除附加和移除状态
      @added_states.delete(i)
      @removed_states.delete(i)
    end
  end
  #--------------------------------------------------------------------------
  # ● 判断是否普通攻击
  #     attacker : 攻击者
  #--------------------------------------------------------------------------
  def attack_effective?(attacker)
    if dead?
      return false
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 发动普通攻击
  #     attacker : 攻击者
  #--------------------------------------------------------------------------
  def attack_effect(attacker)
    clear_action_results
    unless attack_effective?(attacker)
      @skipped = true
      return
    end
    if rand(100) >= calc_hit(attacker)            # 计算命中率
      @missed = true
      return
    end
    if rand(100) < calc_eva(attacker)             # 计算闪躲率
      @evaded = true
      return
    end
    make_attack_damage_value(attacker)            # 计算伤害
    execute_damage(attacker)                      # 伤害效果
    if @hp_damage == 0                            # 判断是否有物理伤害
      return
    end
    apply_state_changes(attacker)                 # 增减状态
  end
  #--------------------------------------------------------------------------
  # ● 判断技能攻击
  #     user  : 技能使用者
  #     skill : 技能
  #--------------------------------------------------------------------------
  def skill_effective?(user, skill)
    if skill.for_dead_friend? != dead?
      return false
    end
    if not $game_temp.in_battle and skill.for_friend?
      return skill_test(user, skill)
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 技能使用测试
  #     user  : 技能使用者
  #     skill : 技能
  #    用来判断如：角色是否已经补满体力而不能再使用回复技能。
  #--------------------------------------------------------------------------
  def skill_test(user, skill)
    tester = self.clone
    tester.make_obj_damage_value(user, skill)
    tester.apply_state_changes(skill)
    if tester.hp_damage < 0
      return true if tester.hp < tester.maxhp
    end
    if tester.mp_damage < 0
      return true if tester.mp < tester.maxmp
    end
    return true unless tester.added_states.empty?
    return true unless tester.removed_states.empty?
    return false
  end
  #--------------------------------------------------------------------------
  # ● 技能效果发动
  #     user  : 技能使用者
  #     skill : 技能
  #--------------------------------------------------------------------------
  def skill_effect(user, skill)
    clear_action_results
    unless skill_effective?(user, skill)
      @skipped = true
      return
    end
    if rand(100) >= calc_hit(user, skill)         # 计算命中率
      @missed = true
      return
    end
    if rand(100) < calc_eva(user, skill)          # 计算闪躲率
      @evaded = true
      return
    end
    make_obj_damage_value(user, skill)            # 计算伤害
    make_obj_absorb_effect(user, skill)           # 计算吸收效果
    execute_damage(user)                          # 伤害效果
    if skill.physical_attack and @hp_damage == 0  # 判断是否物理伤害
      return
    end
    apply_state_changes(skill)                    # 增减状态
  end
  #--------------------------------------------------------------------------
  # ● 判断物品能否使用
  #     user : 物品使用者
  #     item : 物品
  #--------------------------------------------------------------------------
  def item_effective?(user, item)
    if item.for_dead_friend? != dead?
      return false
    end
    if not $game_temp.in_battle and item.for_friend?
      return item_test(user, item)
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 物品使用测试
  #     user : 物品使用者
  #     item : 物品
  #    用来判断如：角色是否已经补满体力而不能再使用回复物品。
  #--------------------------------------------------------------------------
  def item_test(user, item)
    tester = self.clone
    tester.make_obj_damage_value(user, item)
    tester.apply_state_changes(item)
    if tester.hp_damage < 0 or tester.calc_hp_recovery(user, item) > 0
      return true if tester.hp < tester.maxhp
    end
    if tester.mp_damage < 0 or tester.calc_mp_recovery(user, item) > 0
      return true if tester.mp < tester.maxmp
    end
    return true unless tester.added_states.empty?
    return true unless tester.removed_states.empty?
    return true if item.parameter_type > 0
    return false
  end
  #--------------------------------------------------------------------------
  # ● 发动物品效果
  #     user : 物品使用者
  #     item : 物品
  #--------------------------------------------------------------------------
  def item_effect(user, item)
    clear_action_results
    unless item_effective?(user, item)
      @skipped = true
      return
    end
    if rand(100) >= calc_hit(user, item)          # 计算命中率
      @missed = true
      return
    end
    if rand(100) < calc_eva(user, item)           # 计算闪躲率
      @evaded = true
      return
    end
    hp_recovery = calc_hp_recovery(user, item)    # 计算体力回复量
    mp_recovery = calc_mp_recovery(user, item)    # 计算魔力回复量
    make_obj_damage_value(user, item)             # 计算伤害
    @hp_damage -= hp_recovery                     # 体力伤害减去回复量
    @mp_damage -= mp_recovery                     # 魔力伤害减去回复量
    make_obj_absorb_effect(user, item)            # 计算吸收效果
    execute_damage(user)                          # 伤害效果
    item_growth_effect(user, item)                # 能力值提升效果
    if item.physical_attack and @hp_damage == 0   # 判断是否物理伤害
      return
    end
    apply_state_changes(item)                     # 增减状态
  end
  #--------------------------------------------------------------------------
  # ● 发动能力值提升效果
  #     user : 物品使用者
  #     item : 物品
  #--------------------------------------------------------------------------
  def item_growth_effect(user, item)
    if item.parameter_type > 0 and item.parameter_points != 0
      case item.parameter_type
        when 1  # 体力最大值
          @maxhp_plus += item.parameter_points
        when 2  # 魔力最大值
          @maxmp_plus += item.parameter_points
        when 3  # 攻击力
          @atk_plus += item.parameter_points
        when 4  # 防御力
          @def_plus += item.parameter_points
        when 5  # 精神力
          @spi_plus += item.parameter_points
        when 6  # 敏捷
          @agi_plus += item.parameter_points
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 发动连续伤害效果
  #--------------------------------------------------------------------------
  def slip_damage_effect
    if slip_damage? and @hp > 0
      @hp_damage = apply_variance(maxhp / 10, 10)
      @hp_damage = @hp - 1 if @hp_damage >= @hp
      self.hp -= @hp_damage
    end
  end
end

#==============================================================================
# ■ Game_BattleAction
#------------------------------------------------------------------------------
# 　处理战斗中的行动的类。这个类在 Game_Battler 类 的内部使用。
#==============================================================================

class Game_BattleAction
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_accessor :battler                  # 战斗者
  attr_accessor :speed                    # 速度
  attr_accessor :kind                     # 类型（普通/技能/物品）
  attr_accessor :basic                    # 普通（攻击/防御/逃走/等待）
  attr_accessor :skill_id                 # 技能 ID
  attr_accessor :item_id                  # 物品 ID
  attr_accessor :target_index             # 目标索引
  attr_accessor :forcing                  # 强制标志
  attr_accessor :value                    # 自动战斗评价值
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     battler : 战斗者
  #--------------------------------------------------------------------------
  def initialize(battler)
    Debug.test(battler)
    @battler = battler
    clear
  end
  #--------------------------------------------------------------------------
  # ● 清除
  #--------------------------------------------------------------------------
  def clear
    @speed = 0
    @kind = 0
    @basic = -1
    @skill_id = 0
    @item_id = 0
    @target_index = -1
    @forcing = false
    @value = 0
  end
  #--------------------------------------------------------------------------
  # ● 获取队伍同伴
  #--------------------------------------------------------------------------
  def friends_unit
    if battler.actor?
      return $game_party
    else
      return $game_troop
    end
  end
  #--------------------------------------------------------------------------
  # ● 获取敌人同伴
  #--------------------------------------------------------------------------
  def opponents_unit
    if battler.actor?
      return $game_troop
    else
      return $game_party
    end
  end
  #--------------------------------------------------------------------------
  # ● 设置普通攻击
  #--------------------------------------------------------------------------
  def set_attack
    @kind = 0
    @basic = 0
  end
  #--------------------------------------------------------------------------
  # ● 设置防御
  #--------------------------------------------------------------------------
  def set_guard
    @kind = 0
    @basic = 1
  end
  #--------------------------------------------------------------------------
  # ● 设置技能
  #     skill_id : 技能 ID
  #--------------------------------------------------------------------------
  def set_skill(skill_id)
    @kind = 1
    @skill_id = skill_id
  end
  #--------------------------------------------------------------------------
  # ● 设置物品
  #     item_id : 物品 ID
  #--------------------------------------------------------------------------
  def set_item(item_id)
    @kind = 2
    @item_id = item_id
  end
  #--------------------------------------------------------------------------
  # ● 普通攻击判定
  #--------------------------------------------------------------------------
  def attack?
    return (@kind == 0 and @basic == 0)
  end
  #--------------------------------------------------------------------------
  # ● 防御判定
  #--------------------------------------------------------------------------
  def guard?
    return (@kind == 0 and @basic == 1)
  end
  #--------------------------------------------------------------------------
  # ● 无动作判定
  #--------------------------------------------------------------------------
  def nothing?
    return (@kind == 0 and @basic < 0)
  end
  #--------------------------------------------------------------------------
  # ● 技能判定
  #--------------------------------------------------------------------------
  def skill?
    return @kind == 1
  end
  #--------------------------------------------------------------------------
  # ● 获取技能对象
  #--------------------------------------------------------------------------
  def skill
    return skill? ? $data_skills[@skill_id] : nil
  end
  #--------------------------------------------------------------------------
  # ● 物品判定
  #--------------------------------------------------------------------------
  def item?
    return @kind == 2
  end
  #--------------------------------------------------------------------------
  # ● 获取物品对象
  #--------------------------------------------------------------------------
  def item
    return item? ? $data_items[@item_id] : nil
  end
  #--------------------------------------------------------------------------
  # ● 己方单体使用判定
  #--------------------------------------------------------------------------
  def for_friend?
    return true if skill? and skill.for_friend?
    return true if item? and item.for_friend?
    return false
  end
  #--------------------------------------------------------------------------
  # ● 己方单体用 (无法战斗) 判定
  #--------------------------------------------------------------------------
  def for_dead_friend?
    return true if skill? and skill.for_dead_friend?
    return true if item? and item.for_dead_friend?
    return false
  end
  #--------------------------------------------------------------------------
  # ● 随机目标
  #--------------------------------------------------------------------------
  def decide_random_target
    if for_friend?
      target = friends_unit.random_target
    elsif for_dead_friend?
      target = friends_unit.random_dead_target
    else
      target = opponents_unit.random_target
    end
    if target == nil
      clear
    else
      @target_index = target.index
    end
  end
  #--------------------------------------------------------------------------
  # ● 最终目标判定
  #--------------------------------------------------------------------------
  def decide_last_target
    if @target_index == -1
      target = nil
    elsif for_friend?
      target = friends_unit.members[@target_index]
    else
      target = opponents_unit.members[@target_index]
    end
    if target == nil or not target.exist?
      clear
    end
  end
  #--------------------------------------------------------------------------
  # ● 准备行动
  #--------------------------------------------------------------------------
  def prepare
    if battler.berserker? or battler.confusion?   # 暴走或丧乱的场合
      set_attack                                  # 改变成普通攻击
    end
  end
  #--------------------------------------------------------------------------
  # ● 判断行动有效度
  #    在事件命令并不造成强制性战斗行动时，因状态限制或缺少物品而导致
  #    无法行动，则返回 false.
  #--------------------------------------------------------------------------
  def valid?
    return false if nothing?                      # 什麽都不做
    return true if @forcing                       # 强制行动
    return false unless battler.movable?          # 无法行动
    if skill?                                     # 技能
      return false unless battler.skill_can_use?(skill)
    elsif item?                                   # 物品
      return false unless friends_unit.item_can_use?(item)
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 确认行动速度
  #--------------------------------------------------------------------------
  def make_speed
   Debug.test(battler)
    @speed = battler.agi + rand(5 + battler.agi / 4)
    @speed += skill.speed if skill?
    @speed += item.speed if item?
    @speed += 2000 if guard?
    @speed += 1000 if attack? and battler.fast_attack
  end
  #--------------------------------------------------------------------------
  # ● 生成目标数组
  #--------------------------------------------------------------------------
  def make_targets
    if attack?
      return make_attack_targets
    elsif skill?
      return make_obj_targets(skill)
    elsif item?
      return make_obj_targets(item)
    end
  end
  #--------------------------------------------------------------------------
  # ● 生成普通攻击目标
  #--------------------------------------------------------------------------
  def make_attack_targets
    targets = []
    if battler.confusion?
      targets.push(friends_unit.random_target)
    elsif battler.berserker?
      targets.push(opponents_unit.random_target)
    else
      targets.push(opponents_unit.smooth_target(@target_index))
    end
    if battler.dual_attack      # 连续攻击
      targets += targets
    end
    return targets.compact
  end
  #--------------------------------------------------------------------------
  # ● 生成技能或物品目标
  #     obj : 技能或物品
  #--------------------------------------------------------------------------
  def make_obj_targets(obj)
    targets = []
    if obj.for_opponent?
      if obj.for_random?
        if obj.for_one?         # 敌随机单体
          number_of_targets = 1
        elsif obj.for_two?      # 敌随机二体
          number_of_targets = 2
        else                    # 敌随机三体
          number_of_targets = 3
        end
        number_of_targets.times do
          targets.push(opponents_unit.random_target)
        end
      elsif obj.dual?           # 敌单体连续
        targets.push(opponents_unit.smooth_target(@target_index))
        targets += targets
      elsif obj.for_one?        # 敌单体
        targets.push(opponents_unit.smooth_target(@target_index))
      else                      # 敌全体
        targets += opponents_unit.existing_members
      end
    elsif obj.for_user?         # 使用者
      targets.push(battler)
    elsif obj.for_dead_friend?
      if obj.for_one?           # 我方单体（无法行动）
        targets.push(friends_unit.smooth_dead_target(@target_index))
      else                      # 我方全体（无法行动）
        targets += friends_unit.dead_members
      end
    elsif obj.for_friend?
      if obj.for_one?           # 我方单体
        targets.push(friends_unit.smooth_target(@target_index))
      else                      # 我方全体
        targets += friends_unit.existing_members
      end
    end
    return targets.compact
  end
  #--------------------------------------------------------------------------
  # ● 行动值评价（自动战斗用）
  #    @value 和 @target_index 为自动设置。
  #--------------------------------------------------------------------------
  def evaluate
    if attack?
      evaluate_attack
    elsif skill?
      evaluate_skill
    else
      @value = 0
    end
    if @value > 0
      @value + rand(nil)
    end
  end
  #--------------------------------------------------------------------------
  # ● 普通攻击评价
  #--------------------------------------------------------------------------
  def evaluate_attack
    @value = 0
    for target in opponents_unit.existing_members
      value = evaluate_attack_with_target(target)
      if value > @value
        @value = value
        @target_index = target.index
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 普通攻击评价（指定目标）
  #     target : 目标战斗者
  #--------------------------------------------------------------------------
  def evaluate_attack_with_target(target)
    target.clear_action_results
    target.make_attack_damage_value(battler)
    return target.hp_damage.to_f / [target.hp, 1].max
  end
  #--------------------------------------------------------------------------
  # ● 技能评价
  #--------------------------------------------------------------------------
  def evaluate_skill
    @value = 0
    unless battler.skill_can_use?(skill)
      return
    end
    if skill.for_opponent?
      targets = opponents_unit.existing_members
    elsif skill.for_user?
      targets = [battler]
    elsif skill.for_dead_friend?
      targets = friends_unit.dead_members
    else
      targets = friends_unit.existing_members
    end
    for target in targets
      value = evaluate_skill_with_target(target)
      if skill.for_all?
        @value += value
      elsif value > @value
        @value = value
        @target_index = target.index
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 技能评价（指定目标）
  #     target : 目标战斗者
  #--------------------------------------------------------------------------
  def evaluate_skill_with_target(target)
    target.clear_action_results
    target.make_obj_damage_value(battler, skill)
    if skill.for_opponent?
      return target.hp_damage.to_f / [target.hp, 1].max
    else
      recovery = [-target.hp_damage, target.maxhp - target.hp].min
      return recovery.to_f / target.maxhp
    end
  end
end

#==============================================================================
# ■ Game_Actor
#------------------------------------------------------------------------------
# 　处理角色的类。本类在 Game_Actors 类 ($game_actors) 的内部使用、
# Game_Party 类请参考 ($game_party) 。
#==============================================================================

class Game_Actor < Game_Battler
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_reader   :name                     # 名称
  attr_reader   :character_name           # 角色行走图文件名
  attr_reader   :character_index          # 角色行走图索引
  attr_reader   :face_name                # 角色头像文件名
  attr_reader   :face_index               # 角色头像索引
  attr_reader   :class_id                 # 职业 ID
  attr_reader   :weapon_id                # 武器 ID
  attr_reader   :armor1_id                # 盾 ID
  attr_reader   :armor2_id                # 头部防具 ID
  attr_reader   :armor3_id                # 身体防具 ID
  attr_reader   :armor4_id                # 装饰品 ID
  attr_reader   :level                    # 等级
  attr_reader   :exp                      # 经验值
  attr_accessor :last_skill_id            # 光标记忆用：技能
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     actor_id : 角色 ID
  #--------------------------------------------------------------------------
  def initialize(actor_id)
    super()
    setup(actor_id)
    @last_skill_id = 0
  end
  #--------------------------------------------------------------------------
  # ● 设置
  #     actor_id : 角色 ID
  #--------------------------------------------------------------------------
  def setup(actor_id)
    actor = $data_actors[actor_id]
    @actor_id = actor_id
    @name = actor.name
    @character_name = actor.character_name
    @character_index = actor.character_index
    @face_name = actor.face_name
    @face_index = actor.face_index
    @class_id = actor.class_id
    @weapon_id = actor.weapon_id
    @armor1_id = actor.armor1_id
    @armor2_id = actor.armor2_id
    @armor3_id = actor.armor3_id
    @armor4_id = actor.armor4_id
    @level = actor.initial_level
    @exp_list = Array.new(101)
    make_exp_list
    @exp = @exp_list[@level]
    @skills = []
    for i in self.class.learnings
      learn_skill(i.skill_id) if i.level <= @level
    end
    clear_extra_values
    recover_all
  end
  #--------------------------------------------------------------------------
  # ● 角色判断
  #--------------------------------------------------------------------------
  def actor?
    return true
  end
  #--------------------------------------------------------------------------
  # ● 获取角色 ID
  #--------------------------------------------------------------------------
  def id
    return @actor_id
  end
  #--------------------------------------------------------------------------
  # ● 获取在队伍里的位置
  #--------------------------------------------------------------------------
  def index
    return $game_party.members.index(self)
  end
  #--------------------------------------------------------------------------
  # ● 获取角色对象
  #--------------------------------------------------------------------------
  def actor
    return $data_actors[@actor_id]
  end
  #--------------------------------------------------------------------------
  # ● 获取职业对象
  #--------------------------------------------------------------------------
  def class
    return $data_classes[@class_id]
  end
  #--------------------------------------------------------------------------
  # ● 获取技能对象数组
  #--------------------------------------------------------------------------
  def skills
    result = []
    for i in @skills
      result.push($data_skills[i])
    end
    return result
  end
  #--------------------------------------------------------------------------
  # ● 获取武器对象数组
  #--------------------------------------------------------------------------
  def weapons
    result = []
    result.push($data_weapons[@weapon_id])
    if two_swords_style
      result.push($data_weapons[@armor1_id])
    end
    return result
  end
  #--------------------------------------------------------------------------
  # ● 获取防具对象数组
  #--------------------------------------------------------------------------
  def armors
    result = []
    unless two_swords_style
      result.push($data_armors[@armor1_id])
    end
    result.push($data_armors[@armor2_id])
    result.push($data_armors[@armor3_id])
    result.push($data_armors[@armor4_id])
    return result
  end
  #--------------------------------------------------------------------------
  # ● 获取身上装备对象数组
  #--------------------------------------------------------------------------
  def equips
    return weapons + armors
  end
  #--------------------------------------------------------------------------
  # ● 计算经验值
  #--------------------------------------------------------------------------
  def make_exp_list
    @exp_list[1] = @exp_list[100] = 0
    m = actor.exp_basis
    n = 0.75 + actor.exp_inflation / 200.0;
    for i in 2..99
      @exp_list[i] = @exp_list[i-1] + Integer(m)
      m *= 1 + n;
      n *= 0.9;
    end
  end
  #--------------------------------------------------------------------------
  # ● 取得属性修正值
  #     element_id : 属性 ID
  #--------------------------------------------------------------------------
  def element_rate(element_id)
    rank = self.class.element_ranks[element_id]
    result = [0,200,150,100,50,0,-100][rank]
    for armor in armors.compact
      result /= 2 if armor.element_set.include?(element_id)
    end
    for state in states
      result /= 2 if state.element_set.include?(element_id)
    end
    return result
  end
  #--------------------------------------------------------------------------
  # ● 获取状态有效度
  #     state_id : 状态 ID
  #--------------------------------------------------------------------------
  def state_probability(state_id)
    if $data_states[state_id].nonresistance
      return 100
    else
      rank = self.class.state_ranks[state_id]
      return [0,100,80,60,40,20,0][rank]
    end
  end
  #--------------------------------------------------------------------------
  # ● 判断防御状态
  #     state_id : 状态 ID
  #--------------------------------------------------------------------------
  def state_resist?(state_id)
    for armor in armors.compact
      return true if armor.state_set.include?(state_id)
    end
    return false
  end
  #--------------------------------------------------------------------------
  # ● 获取普通攻击属性
  #--------------------------------------------------------------------------
  def element_set
    result = []
    if weapons.compact == []
      return [1]                  # 空手：设为格斗属性
    end
    for weapon in weapons.compact
      result |= weapon == nil ? [] : weapon.element_set
    end
    return result
  end
  #--------------------------------------------------------------------------
  # ● 获取普通攻击附加效果（状态变化）
  #--------------------------------------------------------------------------
  def plus_state_set
    result = []
    for weapon in weapons.compact
      result |= weapon == nil ? [] : weapon.state_set
    end
    return result
  end
  #--------------------------------------------------------------------------
  # ● 获取体力最大值上限
  #--------------------------------------------------------------------------
  def maxhp_limit
    return 9999
  end
  #--------------------------------------------------------------------------
  # ● 获取基本体力最大值
  #--------------------------------------------------------------------------
  def base_maxhp
    return actor.parameters[0, @level]
  end
  #--------------------------------------------------------------------------
  # ● 获取基本体力最大值
  #--------------------------------------------------------------------------
  def base_maxmp
    return actor.parameters[1, @level]
  end
  #--------------------------------------------------------------------------
  # ● 获取基本攻击力
  #--------------------------------------------------------------------------
  def base_atk
    n = actor.parameters[2, @level]
    for item in equips.compact do n += item.atk end
    return n
  end
  #--------------------------------------------------------------------------
  # ● 获取基本防御力
  #--------------------------------------------------------------------------
  def base_def
    n = actor.parameters[3, @level]
    for item in equips.compact do n += item.def end
    return n
  end
  #--------------------------------------------------------------------------
  # ● 获取基本精神力
  #--------------------------------------------------------------------------
  def base_spi
    n = actor.parameters[4, @level]
    for item in equips.compact do n += item.spi end
    return n
  end
  #--------------------------------------------------------------------------
  # ● 获取基本敏捷
  #--------------------------------------------------------------------------
  def base_agi
    n = actor.parameters[5, @level]
    for item in equips.compact do n += item.agi end
    return n
  end
  #--------------------------------------------------------------------------
  # ● 获取命中率
  #--------------------------------------------------------------------------
  def hit
    if two_swords_style
      n1 = weapons[0] == nil ? 95 : weapons[0].hit
      n2 = weapons[1] == nil ? 95 : weapons[1].hit
      n = [n1, n2].min
    else
      n = weapons[0] == nil ? 95 : weapons[0].hit
    end
    return n
  end
  #--------------------------------------------------------------------------
  # ● 获取闪躲率
  #--------------------------------------------------------------------------
  def eva
    n = 5
    for item in armors.compact do n += item.eva end
    return n
  end
  #--------------------------------------------------------------------------
  # ● 获取会心一击率
  #--------------------------------------------------------------------------
  def cri
    n = 4
    n += 4 if actor.critical_bonus
    for weapon in weapons.compact
      n += 4 if weapon.critical_bonus
    end
    return n
  end
  #--------------------------------------------------------------------------
  # ● 获取受击率
  #--------------------------------------------------------------------------
  def odds
    return 4 - self.class.position
  end
  #--------------------------------------------------------------------------
  # ● 获取「双刀派」选项
  #--------------------------------------------------------------------------
  def two_swords_style
    return actor.two_swords_style
  end
  #--------------------------------------------------------------------------
  # ● 获取「锁死装备」选项
  #--------------------------------------------------------------------------
  def fix_equipment
    return actor.fix_equipment
  end
  #--------------------------------------------------------------------------
  # ● 获取「AI自动战斗」选项
  #--------------------------------------------------------------------------
  def auto_battle
    return actor.auto_battle
  end
  #--------------------------------------------------------------------------
  # ● 获取「2-4倍强力防御」选项
  #--------------------------------------------------------------------------
  def super_guard
    return actor.super_guard
  end
  #--------------------------------------------------------------------------
  # ● 获取「用药双倍恢复效果」选项
  #--------------------------------------------------------------------------
  def pharmacology
    return actor.pharmacology
  end
  #--------------------------------------------------------------------------
  # ● 获取武器「回合内先制」选项
  #--------------------------------------------------------------------------
  def fast_attack
    for weapon in weapons.compact
      return true if weapon.fast_attack
    end
    return false
  end
  #--------------------------------------------------------------------------
  # ● 获取武器「连续攻击」选项
  #--------------------------------------------------------------------------
  def dual_attack
    for weapon in weapons.compact
      return true if weapon.dual_attack
    end
    return false
  end
  #--------------------------------------------------------------------------
  # ● 获取防具「防止会心一击」选项
  #--------------------------------------------------------------------------
  def prevent_critical
    for armor in armors.compact
      return true if armor.prevent_critical
    end
    return false
  end
  #--------------------------------------------------------------------------
  # ● 获取防具「魔力消耗减半」选项
  #--------------------------------------------------------------------------
  def half_mp_cost
    for armor in armors.compact
      return true if armor.half_mp_cost
    end
    return false
  end
  #--------------------------------------------------------------------------
  # ● 获取方具「双倍经验值」选项
  #--------------------------------------------------------------------------
  def double_exp_gain
    for armor in armors.compact
      return true if armor.double_exp_gain
    end
    return false
  end
  #--------------------------------------------------------------------------
  # ● 获取防具「体力自动回复」选项
  #--------------------------------------------------------------------------
  def auto_hp_recover
    for armor in armors.compact
      return true if armor.auto_hp_recover
    end
    return false
  end
  #--------------------------------------------------------------------------
  # ● 获取普通攻击动画 ID
  #--------------------------------------------------------------------------
  def atk_animation_id
    if two_swords_style
      return weapons[0].animation_id if weapons[0] != nil
      return weapons[1] == nil ? 1 : 0
    else
      return weapons[0] == nil ? 1 : weapons[0].animation_id
    end
  end
  #--------------------------------------------------------------------------
  # ● 获取普通攻击动画 ID（双刀派：右手）  注：此时weapon[0]是左手
  #--------------------------------------------------------------------------
  def atk_animation_id2
    if two_swords_style
      return weapons[1] == nil ? 0 : weapons[1].animation_id
    else
      return 0
    end
  end
  #--------------------------------------------------------------------------
  # ● 获取经验值字符串
  #--------------------------------------------------------------------------
  def exp_s
    return @exp_list[@level+1] > 0 ? @exp : "-------"
  end
  #--------------------------------------------------------------------------
  # ● 获取下一级经验值字符串
  #--------------------------------------------------------------------------
  def next_exp_s
    return @exp_list[@level+1] > 0 ? @exp_list[@level+1] : "-------"
  end
  #--------------------------------------------------------------------------
  # ● 获取至下一级剩馀经验值字符串
  #--------------------------------------------------------------------------
  def next_rest_exp_s
    return @exp_list[@level+1] > 0 ?
        (@exp_list[@level+1] - @exp) : "-------"
  end
  #--------------------------------------------------------------------------
  # ● 变更装备（目标ID）
  #     equip_type : 装备部分（0～4）
  #     item_id    : 武器或防具ID
  #     test       : 测试标志（战斗测试或暂时装备用）
  #    在事件命令或战斗测适时调用。
  #--------------------------------------------------------------------------
  def change_equip_by_id(equip_type, item_id, test = false)
    if equip_type == 0 or (equip_type == 1 and two_swords_style)
      change_equip(equip_type, $data_weapons[item_id], test)
    else
      change_equip(equip_type, $data_armors[item_id], test)
    end
  end
  #--------------------------------------------------------------------------
  # ● 变更装备（目标对象）
  #     equip_type : 装备部分（0～4）
  #     item_id    : 武器或防具ID
  #     test       : 测试标志（战斗测试或暂时装备用）
  #--------------------------------------------------------------------------
  def change_equip(equip_type, item, test = false)
    last_item = equips[equip_type]
    unless test
      return if $game_party.item_number(item) == 0 if item != nil
      $game_party.gain_item(last_item, 1)
      $game_party.lose_item(item, 1)
    end
    item_id = item == nil ? 0 : item.id
    case equip_type
      when 0  # 武器
        @weapon_id = item_id
        unless two_hands_legal?             # 非双手装备的场合，自动卸下装备
          change_equip(1, nil, test)
        end
      when 1  # 盾
        @armor1_id = item_id
        unless two_hands_legal?             # 非双手装备的场合，自动卸下装备
          change_equip(0, nil, test)
        end
      when 2  # 头部防具
        @armor2_id = item_id
      when 3  # 身体防具
        @armor3_id = item_id
      when 4  # 装饰品
        @armor4_id = item_id
    end
  end
  #--------------------------------------------------------------------------
  # ● 丢弃装备
  #     item : 要丢弃的武器或防具
  #    在「包含装备品」选项钩上时使用。
  #--------------------------------------------------------------------------
  def discard_equip(item)
    if item.is_a?(RPG::Weapon)
      if @weapon_id == item.id
        @weapon_id = 0
      elsif two_swords_style and @armor1_id == item.id
        @armor1_id = 0
      end
    elsif item.is_a?(RPG::Armor)
      if not two_swords_style and @armor1_id == item.id
        @armor1_id = 0
      elsif @armor2_id == item.id
        @armor2_id = 0
      elsif @armor3_id == item.id
        @armor3_id = 0
      elsif @armor4_id == item.id
        @armor4_id = 0
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 双手装备判断
  #--------------------------------------------------------------------------
  def two_hands_legal?
    if weapons[0] != nil and weapons[0].two_handed
      return false if @armor1_id != 0
    end
    if weapons[1] != nil and weapons[1].two_handed
      return false if @weapon_id != 0
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 可以装备判定
  #     item : 装备
  #--------------------------------------------------------------------------
  def equippable?(item)
    if item.is_a?(RPG::Weapon)
      return self.class.weapon_set.include?(item.id)
    elsif item.is_a?(RPG::Armor)
      return false if two_swords_style and item.kind == 0
      return self.class.armor_set.include?(item.id)
    end
    return false
  end
  #--------------------------------------------------------------------------
  # ● 变更经验
  #     exp  : 新经验
  #     show : 显示等级提示标志
  #--------------------------------------------------------------------------
  def change_exp(exp, show)
    last_level = @level
    last_skills = skills
    @exp = [[exp, 9999999].min, 0].max
    while @exp >= @exp_list[@level+1] and @exp_list[@level+1] > 0
      level_up
    end
    while @exp < @exp_list[@level]
      level_down
    end
    @hp = [@hp, maxhp].min
    @mp = [@mp, maxmp].min
    if show and @level > last_level
      display_level_up(skills - last_skills)
    end
  end
  #--------------------------------------------------------------------------
  # ● 升级
  #--------------------------------------------------------------------------
  def level_up
    @level += 1
    for learning in self.class.learnings
      learn_skill(learning.skill_id) if learning.level == @level
    end
  end
  #--------------------------------------------------------------------------
  # ● 降级
  #--------------------------------------------------------------------------
  def level_down
    @level -= 1
  end
  #--------------------------------------------------------------------------
  # ● 显示升级讯息
  #     new_skills : 学会技能数组
  #--------------------------------------------------------------------------
  def display_level_up(new_skills)
    $game_message.new_page
    text = sprintf(Vocab::LevelUp, @name, Vocab::level, @level)
    $game_message.texts.push(text)
    for skill in new_skills
      text = sprintf(Vocab::ObtainSkill, skill.name)
      $game_message.texts.push(text)
    end
  end
  #--------------------------------------------------------------------------
  # ● 获取经验（获取双倍经验值用）
  #     exp  : 经验值量
  #     show : 显示等级提示标志
  #--------------------------------------------------------------------------
  def gain_exp(exp, show)
    if double_exp_gain
      change_exp(@exp + exp * 2, show)
    else
      change_exp(@exp + exp, show)
    end
  end
  #--------------------------------------------------------------------------
  # ● 变更等级
  #     level : 新等级
  #     show  : 显示等级提示标志
  #--------------------------------------------------------------------------
  def change_level(level, show)
    level = [[level, 99].min, 1].max
    change_exp(@exp_list[level], show)
  end
  #--------------------------------------------------------------------------
  # ● 学会技能
  #     skill_id : 技能 ID
  #--------------------------------------------------------------------------
  def learn_skill(skill_id)
    unless skill_learn?($data_skills[skill_id])
      @skills.push(skill_id)
      @skills.sort!
    end
  end
  #--------------------------------------------------------------------------
  # ● 遗忘技能
  #     skill_id : 技能 ID
  #--------------------------------------------------------------------------
  def forget_skill(skill_id)
    @skills.delete(skill_id)
  end
  #--------------------------------------------------------------------------
  # ● 已学习技能判断
  #     skill : 技能
  #--------------------------------------------------------------------------
  def skill_learn?(skill)
    return @skills.include?(skill.id)
  end
  #--------------------------------------------------------------------------
  # ● 可用技能判断
  #     skill : 技能
  #--------------------------------------------------------------------------
  def skill_can_use?(skill)
    return false unless skill_learn?(skill)
    return super
  end
  #--------------------------------------------------------------------------
  # ● 更改名称
  #     name : 新名称
  #--------------------------------------------------------------------------
  def name=(name)
    @name = name
  end
  #--------------------------------------------------------------------------
  # ● 更改职业 ID
  #     class_id : 新职业 ID
  #--------------------------------------------------------------------------
  def class_id=(class_id)
    @class_id = class_id
    for i in 0..4     # 卸下不可装备的装备物品
      change_equip(i, nil) unless equippable?(equips[i])
    end
  end
  #--------------------------------------------------------------------------
  # ● 更改图像
  #     character_name  : 新角色行走图文件名
  #     character_index : 新角色行走图索引
  #     face_name       : 新角色头像文件名
  #     face_index      : 新角色头像索引
  #--------------------------------------------------------------------------
  def set_graphic(character_name, character_index, face_name, face_index)
    @character_name = character_name
    @character_index = character_index
    @face_name = face_name
    @face_index = face_index
  end
  #--------------------------------------------------------------------------
  # ● 使用活动块判断
  #--------------------------------------------------------------------------
  def use_sprite?
    return false
  end
  #--------------------------------------------------------------------------
  # ● 执行倒下
  #--------------------------------------------------------------------------
  def perform_collapse
    if $game_temp.in_battle and dead?
      @collapse = true
      Sound.play_actor_collapse
    end
  end
  #--------------------------------------------------------------------------
  # ● 执行自动回复（回合後调用）
  #--------------------------------------------------------------------------
  def do_auto_recovery
    if auto_hp_recover and not dead?
      self.hp += maxhp / 20
    end
  end
  #--------------------------------------------------------------------------
  # ● 生成战斗行动（自动战斗用）
  #--------------------------------------------------------------------------
  def make_action
    @action.clear
    return unless movable?
    action_list = []
    action = Game_BattleAction.new(self)
    action.set_attack
    action.evaluate
    action_list.push(action)
    for skill in skills
      action = Game_BattleAction.new(self)
      action.set_skill(skill.id)
      action.evaluate
      action_list.push(action)
    end
    max_value = 0
    for action in action_list
      if action.value > max_value
        @action = action
        max_value = action.value
      end
    end
  end
end

#==============================================================================
# ■ Game_Enemy
#------------------------------------------------------------------------------
# 　处理敌人的类。本类在 Game_Troop 类 ($game_troop) 的 内部使用。
#==============================================================================

class Game_Enemy < Game_Battler
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_reader   :index                    # 队伍中索引
  attr_reader   :enemy_id                 # 敌人 ID
  attr_reader   :original_name            # 原名称
  attr_accessor :letter                   # 名称後所接的字
  attr_accessor :plural                   # 复数出现标志
  attr_accessor :screen_x                 # 战斗画面 X 座标
  attr_accessor :screen_y                 # 战斗画面 Y 座标
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     index    : 队伍中索引
  #     enemy_id : 敌人 ID
  #--------------------------------------------------------------------------
  def initialize(index, enemy_id)
    super()
    @index = index
    @enemy_id = enemy_id
    enemy = $data_enemies[@enemy_id]
    @original_name = enemy.name
    @letter = ''
    @plural = false
    @screen_x = 0
    @screen_y = 0
    @battler_name = enemy.battler_name
    @battler_hue = enemy.battler_hue
    @hp = maxhp
    @mp = maxmp
  end
  #--------------------------------------------------------------------------
  # ● 角色判断
  #--------------------------------------------------------------------------
  def actor?
    return false
  end
  #--------------------------------------------------------------------------
  # ● 获取敌人对象
  #--------------------------------------------------------------------------
  def enemy
    return $data_enemies[@enemy_id]
  end
  #--------------------------------------------------------------------------
  # ● 获取名称
  #--------------------------------------------------------------------------
  def name
    if @plural
      return @original_name + letter
    else
      return @original_name
    end
  end
  #--------------------------------------------------------------------------
  # ● 获取基本体力最大值
  #--------------------------------------------------------------------------
  def base_maxhp
    return enemy.maxhp
  end
  #--------------------------------------------------------------------------
  # ● 获取基本魔力最大值
  #--------------------------------------------------------------------------
  def base_maxmp
    return enemy.maxmp
  end
  #--------------------------------------------------------------------------
  # ● 获取基本攻击力
  #--------------------------------------------------------------------------
  def base_atk
    return enemy.atk
  end
  #--------------------------------------------------------------------------
  # ● 获取基本防御力
  #--------------------------------------------------------------------------
  def base_def
    return enemy.def
  end
  #--------------------------------------------------------------------------
  # ● 获取基本精神力
  #--------------------------------------------------------------------------
  def base_spi
    return enemy.spi
  end
  #--------------------------------------------------------------------------
  # ● 获取基本敏捷
  #--------------------------------------------------------------------------
  def base_agi
    return enemy.agi
  end
  #--------------------------------------------------------------------------
  # ● 获取命中率
  #--------------------------------------------------------------------------
  def hit
    return enemy.hit
  end
  #--------------------------------------------------------------------------
  # ● 获取闪躲率
  #--------------------------------------------------------------------------
  def eva
    return enemy.eva
  end
  #--------------------------------------------------------------------------
  # ● 获取会心一击率
  #--------------------------------------------------------------------------
  def cri
    return enemy.has_critical ? 10 : 0
  end
  #--------------------------------------------------------------------------
  # ● 获取受击率
  #--------------------------------------------------------------------------
  def odds
    return 1
  end
  #--------------------------------------------------------------------------
  # ● 取得属性修正值
  #     element_id : element ID
  #--------------------------------------------------------------------------
  def element_rate(element_id)
    rank = enemy.element_ranks[element_id]
    result = [0,200,150,100,50,0,-100][rank]
    for state in states
      result /= 2 if state.element_set.include?(element_id)
    end
    return result
  end
  #--------------------------------------------------------------------------
  # ● 获取状态有效度
  #     state_id : state ID
  #--------------------------------------------------------------------------
  def state_probability(state_id)
    if $data_states[state_id].nonresistance
      return 100
    else
      rank = enemy.state_ranks[state_id]
      return [0,100,80,60,40,20,0][rank]
    end
  end
  #--------------------------------------------------------------------------
  # ● 获取经验值
  #--------------------------------------------------------------------------
  def exp
    return enemy.exp
  end
  #--------------------------------------------------------------------------
  # ● 获取金钱
  #--------------------------------------------------------------------------
  def gold
    return enemy.gold
  end
  #--------------------------------------------------------------------------
  # ● 获取掉落物品1
  #--------------------------------------------------------------------------
  def drop_item1
    return enemy.drop_item1
  end
  #--------------------------------------------------------------------------
  # ● 获取掉落物品2
  #--------------------------------------------------------------------------
  def drop_item2
    return enemy.drop_item2
  end
  #--------------------------------------------------------------------------
  # ● 使用活动块判断
  #--------------------------------------------------------------------------
  def use_sprite?
    return true
  end
  #--------------------------------------------------------------------------
  # ● 获取战斗画面 Z 座标
  #--------------------------------------------------------------------------
  def screen_z
    return 100
  end
  #--------------------------------------------------------------------------
  # ● 执行倒下
  #--------------------------------------------------------------------------
  def perform_collapse
    if $game_temp.in_battle and dead?
      @collapse = true
      Sound.play_enemy_collapse
    end
  end
  #--------------------------------------------------------------------------
  # ● 逃跑
  #--------------------------------------------------------------------------
  def escape
    @hidden = true
    @action.clear
  end
  #--------------------------------------------------------------------------
  # ● 变身
  #     enemy_id : 所变身的敌人ID
  #--------------------------------------------------------------------------
  def transform(enemy_id)
    @enemy_id = enemy_id
    if enemy.name != @original_name
      @original_name = enemy.name
      @letter = ''
      @plural = false
    end
    @battler_name = enemy.battler_name
    @battler_hue = enemy.battler_hue
    make_action
  end
  #--------------------------------------------------------------------------
  # ● 判断行动条件符合
  #     action : 战斗行动
  #--------------------------------------------------------------------------
  def conditions_met?(action)
    case action.condition_type
      when 1  # 回合数条件
        n = $game_troop.turn_count
        a = action.condition_param1
        b = action.condition_param2
        return false if (b == 0 and n != a)
        return false if (b > 0 and (n < 1 or n < a or n % b != a % b))
      when 2  # 体力条件
        hp_rate = hp * 100.0 / maxhp
        return false if hp_rate < action.condition_param1
        return false if hp_rate > action.condition_param2
      when 3  # 魔力条件
        mp_rate = mp * 100.0 / maxmp
        return false if mp_rate < action.condition_param1
        return false if mp_rate > action.condition_param2
      when 4  # 状态条件
        return false unless state?(action.condition_param1)
      when 5  # 队伍等级条件
        return false if $game_party.max_level < action.condition_param1
      when 6  # 开关条件
        switch_id = action.condition_param1
        return false if $game_switches[switch_id] == false
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 生成战斗行动
  #--------------------------------------------------------------------------
  def make_action
    @action.clear
    return unless movable?
    available_actions = []
    rating_max = 0
    for action in enemy.actions
      next unless conditions_met?(action)
      if action.kind == 1
        next unless skill_can_use?($data_skills[action.skill_id])
      end
      available_actions.push(action)
      rating_max = [rating_max, action.rating].max
    end
    ratings_total = 0
    rating_zero = rating_max - 3
    for action in available_actions
      next if action.rating <= rating_zero
      ratings_total += action.rating - rating_zero
    end
    return if ratings_total == 0
    value = rand(ratings_total)
    for action in available_actions
      next if action.rating <= rating_zero
      if value < action.rating - rating_zero
        @action.kind = action.kind
        @action.basic = action.basic
        @action.skill_id = action.skill_id
        @action.decide_random_target
        return
      else
        value -= action.rating - rating_zero
      end
    end
  end
end

#==============================================================================
# ■ Game_Actors
#------------------------------------------------------------------------------
# 　处理角色排列的类。本类的实例请参考 $game_actors。
#==============================================================================

class Game_Actors
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    @data = []
  end
  #--------------------------------------------------------------------------
  # ● 获取角色
  #     actor_id : 角色ID
  #--------------------------------------------------------------------------
  def [](actor_id)
    if @data[actor_id] == nil and $data_actors[actor_id] != nil
      @data[actor_id] = Game_Actor.new(actor_id)
    end
    return @data[actor_id]
  end
end

#==============================================================================
# ■ Game_Unit
#------------------------------------------------------------------------------
# 　处理单位的类。这个类作为 Game_Party 类与 Game_Troop 类的超级类来使用。
#==============================================================================

class Game_Unit
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
  end
  #--------------------------------------------------------------------------
  # ● 获取队员（子类内重载）
  #--------------------------------------------------------------------------
  def members
    return []
  end
  #--------------------------------------------------------------------------
  # ● 获取可战斗队员
  #--------------------------------------------------------------------------
  def existing_members
    result = []
    for battler in members
      next unless battler.exist?
      result.push(battler)
    end
    return result
  end
  #--------------------------------------------------------------------------
  # ● 获取无法战斗队员
  #--------------------------------------------------------------------------
  def dead_members
    result = []
    for battler in members
      next unless battler.dead?
      result.push(battler)
    end
    return result
  end
  #--------------------------------------------------------------------------
  # ● 清除所有队员行动
  #--------------------------------------------------------------------------
  def clear_actions
    for battler in members
      battler.action.clear
    end
  end
  #--------------------------------------------------------------------------
  # ● 随机目标选择
  #--------------------------------------------------------------------------
  def random_target
    roulette = []
    for member in existing_members
      member.odds.times do
        roulette.push(member)
      end
    end
    return roulette.size > 0 ? roulette[rand(roulette.size)] : nil
  end
  #--------------------------------------------------------------------------
  # ● 随机目标选择（无法战斗者）
  #--------------------------------------------------------------------------
  def random_dead_target
    roulette = []
    for member in dead_members
      roulette.push(member)
    end
    return roulette.size > 0 ? roulette[rand(roulette.size)] : nil
  end
  #--------------------------------------------------------------------------
  # ● 直接目标选择
  #     index : 位置
  #--------------------------------------------------------------------------
  def smooth_target(index)
    member = members[index]
    return member if member != nil and member.exist?
    return existing_members[0]
  end
  #--------------------------------------------------------------------------
  # ● 直接目标选择（无法战斗者）
  #     index : 位置
  #--------------------------------------------------------------------------
  def smooth_dead_target(index)
    member = members[index]
    return member if member != nil and member.dead?
    return dead_members[0]
  end
  #--------------------------------------------------------------------------
  # ● 计算平均敏捷
  #--------------------------------------------------------------------------
  def average_agi
    result = 0
    n = 0
    for member in members
      result += member.agi
      n += 1
    end
    result /= n if n > 0
    result = 1 if result == 0
    return result
  end
  #--------------------------------------------------------------------------
  # ● 发动连续伤害效果
  #--------------------------------------------------------------------------
  def slip_damage_effect
    for member in members
      member.slip_damage_effect
    end
  end
end

#==============================================================================
# ■ Game_Party
#------------------------------------------------------------------------------
# 　处理同伴的类。包含金钱以及物品的信息。本类的实例请参考 $game_party。
#==============================================================================

class Game_Party < Game_Unit
  #--------------------------------------------------------------------------
  # ● 常量
  #--------------------------------------------------------------------------
  MAX_MEMBERS = 4                         # 同伴最大数量
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_reader   :gold                     # 金钱数量
  attr_reader   :steps                    # 步数
  attr_accessor :last_item_id             # 光标位置记忆：物品
  attr_accessor :last_actor_index         # 光标位置记忆：角色
  attr_accessor :last_target_index        # 光标位置记忆：目标
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    super
    @gold = 0
    @steps = 0
    @last_item_id = 0
    @last_actor_index = 0
    @last_target_index = 0
    @actors = []      # 队员（角色ID）
    @items = {}       # 物品哈希列表（物品ID）
    @weapons = {}     # 物品哈希列表（武器ID）
    @armors = {}      # 物品哈希列表（防具ID）
  end
  #--------------------------------------------------------------------------
  # ● 获取队员
  #--------------------------------------------------------------------------
  def members
    result = []
    for i in @actors
      result.push($game_actors[i])
    end
    return result
  end
  #--------------------------------------------------------------------------
  # ● 获取物品数组（包括武器和防具）
  #--------------------------------------------------------------------------
  def items
    result = []
    for i in @items.keys.sort
      result.push($data_items[i]) if @items[i] > 0
    end
    for i in @weapons.keys.sort
      result.push($data_weapons[i]) if @weapons[i] > 0
    end
    for i in @armors.keys.sort
      result.push($data_armors[i]) if @armors[i] > 0
    end
    return result
  end
  #--------------------------------------------------------------------------
  # ● 初始队员设置
  #--------------------------------------------------------------------------
  def setup_starting_members
    @actors = []
    for i in $data_system.party_members
      @actors.push(i)
    end
  end
  #--------------------------------------------------------------------------
  # ● 获取队伍名称
  #    只有一人时，返回主角名称。
  #    多人时则返回 "XX的队伍"（按照在Vocab里的设定）。
  #--------------------------------------------------------------------------
  def name
    if @actors.size == 0
      return ''
    elsif @actors.size == 1
      return members[0].name
    else
      return sprintf(Vocab::PartyName, members[0].name)
    end
  end
  #--------------------------------------------------------------------------
  # ● 战斗测试队伍设置
  #--------------------------------------------------------------------------
  def setup_battle_test_members
    @actors = []
    for battler in $data_system.test_battlers
      actor = $game_actors[battler.actor_id]
      actor.change_level(battler.level, false)
      actor.change_equip_by_id(0, battler.weapon_id, true)
      actor.change_equip_by_id(1, battler.armor1_id, true)
      actor.change_equip_by_id(2, battler.armor2_id, true)
      actor.change_equip_by_id(3, battler.armor3_id, true)
      actor.change_equip_by_id(4, battler.armor4_id, true)
      actor.recover_all
      @actors.push(actor.id)
    end
    @items = {}
    for i in 1...$data_items.size
      if $data_items[i].battle_ok?
        @items[i] = 99 unless $data_items[i].name.empty?
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 获取最高等级
  #--------------------------------------------------------------------------
  def max_level
    level = 0
    for i in @actors
      actor = $game_actors[i]
      level = actor.level if level < actor.level
    end
    return level
  end
  #--------------------------------------------------------------------------
  # ● 队员加入
  #     actor_id : 角色ID
  #--------------------------------------------------------------------------
  def add_actor(actor_id)
    if @actors.size < MAX_MEMBERS and not @actors.include?(actor_id)
      @actors.push(actor_id)
      $game_player.refresh
    end
  end
  #--------------------------------------------------------------------------
  # ● 队员离开
  #     actor_id : 角色ID
  #--------------------------------------------------------------------------
  def remove_actor(actor_id)
    @actors.delete(actor_id)
    $game_player.refresh
  end
  #--------------------------------------------------------------------------
  # ● 获得/损失金钱
  #     n : 金钱数量
  #--------------------------------------------------------------------------
  def gain_gold(n)
    @gold = [[@gold + n, 0].max, 9999999].min
  end
  #--------------------------------------------------------------------------
  # ● 损失金钱
  #     n : 金钱数量
  #--------------------------------------------------------------------------
  def lose_gold(n)
    gain_gold(-n)
  end
  #--------------------------------------------------------------------------
  # ● 增加步数
  #--------------------------------------------------------------------------
  def increase_steps
    @steps += 1
  end
  #--------------------------------------------------------------------------
  # ● 获取物品持有数量
  #     item : 物品
  #--------------------------------------------------------------------------
  def item_number(item)
    case item
      when RPG::Item
        number = @items[item.id]
      when RPG::Weapon
        number = @weapons[item.id]
      when RPG::Armor
        number = @armors[item.id]
    end
    return number == nil ? 0 : number
  end
  #--------------------------------------------------------------------------
  # ● 判断是否拥有某物品
  #     item          : 物品
  #     include_equip : 包括已装备的物品
  #--------------------------------------------------------------------------
  def has_item?(item, include_equip = false)
    if item_number(item) > 0
      return true
    end
    if include_equip
      for actor in members
        return true if actor.equips.include?(item)
      end
    end
    return false
  end
  #--------------------------------------------------------------------------
  # ● 获得/损失物品
  #     item          : 物品
  #     n             : 数量
  #     include_equip : 包括已装备的物品
  #--------------------------------------------------------------------------
  def gain_item(item, n, include_equip = false)
    number = item_number(item)
    case item
      when RPG::Item
        @items[item.id] = [[number + n, 0].max, 99].min
      when RPG::Weapon
        @weapons[item.id] = [[number + n, 0].max, 99].min
      when RPG::Armor
        @armors[item.id] = [[number + n, 0].max, 99].min
    end
    n += number
    if include_equip and n < 0
      for actor in members
        while n < 0 and actor.equips.include?(item)
          actor.discard_equip(item)
          n += 1
        end
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 损失物品
  #     item          : 物品
  #     n             : 数量
  #     include_equip : 包括已装备的物品
  #--------------------------------------------------------------------------
  def lose_item(item, n, include_equip = false)
    gain_item(item, -n, include_equip)
  end
  #--------------------------------------------------------------------------
  # ● 消耗物品
  #     item : 物品
  #    若所使用的物品为消耗品，则减少物品数量减一
  #--------------------------------------------------------------------------
  def consume_item(item)
    if item.is_a?(RPG::Item) and item.consumable
      lose_item(item, 1)
    end
  end
  #--------------------------------------------------------------------------
  # ● 判断物品可以使用
  #     item_id : 物品 ID
  #--------------------------------------------------------------------------
  def item_can_use?(item)
    return false unless item.is_a?(RPG::Item)
    return false if item_number(item) == 0
    if $game_temp.in_battle
      return item.battle_ok?
    else
      return item.menu_ok?
    end
  end
  #--------------------------------------------------------------------------
  # ● 可以输入命令的判定
  #    自动战斗则视为可以输入命令
  #--------------------------------------------------------------------------
  def inputable?
    for actor in members
      return true if actor.inputable?
    end
    return false
  end
  #--------------------------------------------------------------------------
  # ● 判断是否全灭
  #--------------------------------------------------------------------------
  def all_dead?
    if @actors.size == 0 and not $game_temp.in_battle
      return false
    end
    return existing_members.empty?
  end
  #--------------------------------------------------------------------------
  # ● 主角在地图上走一步的效果
  #--------------------------------------------------------------------------
  def on_player_walk
    for actor in members
      if actor.slip_damage?
        actor.hp -= 1 if actor.hp > 1   # 持续伤害
        $game_map.screen.start_flash(Color.new(255,0,0,64), 4)
      end
      if actor.auto_hp_recover and actor.hp > 0
        actor.hp += 1                   # 体力自动回复
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 执行自动回复（回合结束时调用）
  #--------------------------------------------------------------------------
  def do_auto_recovery
    for actor in members
      actor.do_auto_recovery
    end
  end
  #--------------------------------------------------------------------------
  # ● 移除战斗状态（战斗结束时调用）
  #--------------------------------------------------------------------------
  def remove_states_battle
    for actor in members
      actor.remove_states_battle
    end
  end
end

#==============================================================================
# ■ Game_Troop
#------------------------------------------------------------------------------
# 　处理敌人队伍和战斗相关资料的类，也可执行如战斗事件管理之类的功能。
# 本类的实例请参考 $game_troop。
#==============================================================================

class Game_Troop < Game_Unit
  #--------------------------------------------------------------------------
  # ● 接续在敌人名称之後
  #--------------------------------------------------------------------------
  LETTER_TABLE = [ '一','二','三','四','五','六','七','八','九','十',
                   '十一','十二','十三','十四','十五','十六','十七',
                   '十八','十九',' 二十','二十一','二十二','二十三',
                   '二十四','二十五','二十六']
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_reader   :screen                   # 战斗画面状态
  attr_reader   :interpreter              # 战斗事件解释器
  attr_reader   :event_flags              # 战斗事件已执行标志
  attr_reader   :turn_count               # 回合计数
  attr_reader   :name_counts              # 敌人名称计数
  attr_accessor :can_escape               # 可以逃离标志
  attr_accessor :can_lose                 # 可以失败标志
  attr_accessor :preemptive               # 先手攻击标志
  attr_accessor :surprise                 # 偷袭攻击标志
  attr_accessor :turn_ending              # 回合结束处理标志
  attr_accessor :forcing_battler          # 强制战斗行动目标
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    super
    @screen = Game_Screen.new
    @interpreter = Game_Interpreter.new
    @event_flags = {}
    @enemies = []       # 敌人队伍队员（敌人对象数组）
    clear
  end
  #--------------------------------------------------------------------------
  # ● 获取队员
  #--------------------------------------------------------------------------
  def members
    return @enemies
  end
  #--------------------------------------------------------------------------
  # ● 清除
  #--------------------------------------------------------------------------
  def clear
    @screen.clear
    @interpreter.clear
    @event_flags.clear
    @enemies = []
    @turn_count = 0
    @names_count = {}
    @can_escape = false
    @can_lose = false
    @preemptive = false
    @surprise = false
    @turn_ending = false
    @forcing_battler = nil
  end
  #--------------------------------------------------------------------------
  # ● 获取队伍队员
  #--------------------------------------------------------------------------
  def troop
    return $data_troops[@troop_id]
  end
  #--------------------------------------------------------------------------
  # ● 设置
  #     troop_id : 队伍 ID
  #--------------------------------------------------------------------------
  def setup(troop_id)
    clear
    @troop_id = troop_id
    @enemies = []
    for member in troop.members
      next if $data_enemies[member.enemy_id] == nil
      enemy = Game_Enemy.new(@enemies.size, member.enemy_id)
      enemy.hidden = member.hidden
      enemy.immortal = member.immortal
      enemy.screen_x = member.x
      enemy.screen_y = member.y
      @enemies.push(enemy)
    end
    make_unique_names
  end
  #--------------------------------------------------------------------------
  # ● 将重名敌人名称附加上字
  #--------------------------------------------------------------------------
  def make_unique_names
    for enemy in members
      next unless enemy.exist?
      next unless enemy.letter.empty?
      n = @names_count[enemy.original_name]
      n = 0 if n == nil
      enemy.letter = LETTER_TABLE[n % LETTER_TABLE.size]
      @names_count[enemy.original_name] = n + 1
    end
    for enemy in members
      n = @names_count[enemy.original_name]
      n = 0 if n == nil
      enemy.plural = true if n >= 2
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    @screen.update
  end
  #--------------------------------------------------------------------------
  # ● 获取敌人名称数组
  #    在战斗开始时显示，重名则删除。
  #--------------------------------------------------------------------------
  def enemy_names
    names = []
    for enemy in members
      next unless enemy.exist?
      next if names.include?(enemy.original_name)
      names.push(enemy.original_name)
    end
    return names
  end
  #--------------------------------------------------------------------------
  # ● 判断战斗事件页条件是否符合
  #     page : 战斗事件页
  #--------------------------------------------------------------------------
  def conditions_met?(page)
    c = page.condition
    if not c.turn_ending and not c.turn_valid and not c.enemy_valid and
        not c.actor_valid and not c.switch_valid
      return false      # 条件为「不执行」
    end
    if @event_flags[page]
      return false      # 已执行
    end
    if c.turn_ending    # 回合结束条件
      return false unless @turn_ending
    end
    if c.turn_valid     # 回合数条件
      n = @turn_count
      a = c.turn_a
      b = c.turn_b
      return false if (b == 0 and n != a)
      return false if (b > 0 and (n < 1 or n < a or n % b != a % b))
    end
    if c.enemy_valid    # 敌人条件
      enemy = $game_troop.members[c.enemy_index]
      return false if enemy == nil
      return false if enemy.hp * 100.0 / enemy.maxhp > c.enemy_hp
    end
    if c.actor_valid    # 角色条件
      actor = $game_actors[c.actor_id]
      return false if actor == nil
      return false if actor.hp * 100.0 / actor.maxhp > c.actor_hp
    end
    if c.switch_valid   # 开关条件
      return false if $game_switches[c.switch_id] == false
    end
    return true         # 条件符合
  end
  #--------------------------------------------------------------------------
  # ● 设置战斗事件
  #--------------------------------------------------------------------------
  def setup_battle_event
    return if @interpreter.running?
    if $game_temp.common_event_id > 0
      common_event = $data_common_events[$game_temp.common_event_id]
      @interpreter.setup(common_event.list)
      $game_temp.common_event_id = 0
      return
    end
    for page in troop.pages
      next unless conditions_met?(page)
      @interpreter.setup(page.list)
      if page.span <= 1
        @event_flags[page] = true
      end
      return
    end
  end
  #--------------------------------------------------------------------------
  # ● 增加回合数
  #--------------------------------------------------------------------------
  def increase_turn
    for page in troop.pages
      if page.span == 1
        @event_flags[page] = false
      end
    end
    @turn_count += 1
  end
  #--------------------------------------------------------------------------
  # ● 生成战斗行动
  #--------------------------------------------------------------------------
  def make_actions
    if @preemptive
      clear_actions
    else
      for enemy in members
        enemy.make_action
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 判断全灭
  #--------------------------------------------------------------------------
  def all_dead?
    return existing_members.empty?
  end
  #--------------------------------------------------------------------------
  # ● 计算经验值总数
  #--------------------------------------------------------------------------
  def exp_total
    exp = 0
    for enemy in dead_members
      exp += enemy.exp unless enemy.hidden
    end
    return exp
  end
  #--------------------------------------------------------------------------
  # ● 计算金钱总数
  #--------------------------------------------------------------------------
  def gold_total
    gold = 0
    for enemy in dead_members
      gold += enemy.gold unless enemy.hidden
    end
    return gold
  end
  #--------------------------------------------------------------------------
  # ● 生成掉落物品数组
  #--------------------------------------------------------------------------
  def make_drop_items
    drop_items = []
    for enemy in dead_members
      for di in [enemy.drop_item1, enemy.drop_item2]
        next if di.kind == 0
        next if rand(di.denominator) != 0
        if di.kind == 1
          drop_items.push($data_items[di.item_id])
        elsif di.kind == 2
          drop_items.push($data_weapons[di.weapon_id])
        elsif di.kind == 3
          drop_items.push($data_armors[di.armor_id])
        end
      end
    end
    return drop_items
  end
end

#==============================================================================
# ■ Game_Map
#------------------------------------------------------------------------------
# 　处理地图的类。包含卷动以及可以通行的判断功能。本类的实例请参考 $game_map 。
#==============================================================================

class Game_Map
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_reader   :screen                   # 地图画面状态
  attr_reader   :interpreter              # 地图事件解释器
  attr_reader   :display_x                # 画面 X 座标 * 256
  attr_reader   :display_y                # 画面 Y 座标 * 256
  attr_reader   :parallax_name            # 远景图文件名
  attr_reader   :passages                 # 通行列表
  attr_reader   :events                   # 事件
  attr_reader   :vehicles                 # 交通工具
  attr_accessor :need_refresh             # 需要刷新标志
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    @screen = Game_Screen.new
    @interpreter = Game_Interpreter.new(0, true)
    @map_id = 0
    @display_x = 0
    @display_y = 0
    create_vehicles
  end
  #--------------------------------------------------------------------------
  # ● 设置
  #     map_id : 地图 ID
  #--------------------------------------------------------------------------
  def setup(map_id)
    @map_id = map_id
    @map = load_data(sprintf("Data/Map%03d.rvdata", @map_id))


    #for x in 0...@map.width
    #  for y in 0...@map.height
    #    @map.data[x,y,1] = 2912 +34+y
    #   end
    # end


    @display_x = 0
    @display_y = 0
    @passages = $data_system.passages
    referesh_vehicles
    setup_events
    setup_scroll
    setup_parallax
    @need_refresh = false
  end
  #--------------------------------------------------------------------------
  # ● 生成交通工具
  #--------------------------------------------------------------------------
  def create_vehicles
    @vehicles = []
    @vehicles[0] = Game_Vehicle.new(0)    # 小型船
    @vehicles[1] = Game_Vehicle.new(1)    # 大型船
    @vehicles[2] = Game_Vehicle.new(2)    # 飞船
  end
  #--------------------------------------------------------------------------
  # ● 刷新交通工具
  #--------------------------------------------------------------------------
  def referesh_vehicles
    for vehicle in @vehicles
      vehicle.refresh
    end
  end
  #--------------------------------------------------------------------------
  # ● 获取小型船
  #--------------------------------------------------------------------------
  def boat
    return @vehicles[0]
  end
  #--------------------------------------------------------------------------
  # ● 获取大型船
  #--------------------------------------------------------------------------
  def ship
    return @vehicles[1]
  end
  #--------------------------------------------------------------------------
  # ● 获取飞船
  #--------------------------------------------------------------------------
  def airship
    return @vehicles[2]
  end
  #--------------------------------------------------------------------------
  # ● 设置事件
  #--------------------------------------------------------------------------
  def setup_events
    @events = {}          # 地图事件
    for i in @map.events.keys
      @events[i] = Game_Event.new(@map_id, @map.events[i])
    end
    @common_events = {}   # 公共事件
    for i in 1...$data_common_events.size
      @common_events[i] = Game_CommonEvent.new(i)
    end
  end
  #--------------------------------------------------------------------------
  # ● 设置滚动
  #--------------------------------------------------------------------------
  def setup_scroll
    @scroll_direction = 2
    @scroll_rest = 0
    @scroll_speed = 4
    @margin_x = (width - 17) * 256 / 2      # 画面未显示宽度 / 2
    @margin_y = (height - 13) * 256 / 2     # 画面未显示高度 / 2
  end
  #--------------------------------------------------------------------------
  # ● 设置远景
  #--------------------------------------------------------------------------
  def setup_parallax
    @parallax_name = @map.parallax_name
    @parallax_loop_x = @map.parallax_loop_x
    @parallax_loop_y = @map.parallax_loop_y
    @parallax_sx = @map.parallax_sx
    @parallax_sy = @map.parallax_sy
    @parallax_x = 0
    @parallax_y = 0
  end
  #--------------------------------------------------------------------------
  # ● 设置显示位置
  #     x : 新显示 X 座标 * 256
  #     y : 新显示 Y 座标 * 256
  #--------------------------------------------------------------------------
  def set_display_pos(x, y)
    @display_x = (x + @map.width * 256) % (@map.width * 256)
    @display_y = (y + @map.height * 256) % (@map.height * 256)
    @parallax_x = x
    @parallax_y = y
  end
  #--------------------------------------------------------------------------
  # ● 计算远景 X 座标
  #     bitmap : 远景图
  #--------------------------------------------------------------------------
  def calc_parallax_x(bitmap)
    if bitmap == nil
      return 0
    elsif @parallax_loop_x
      return @parallax_x / 16
    elsif loop_horizontal?
      return 0
    else
      w1 = bitmap.width - 544
      w2 = @map.width * 32 - 544
      if w1 <= 0 or w2 <= 0
        return 0
      else
        return @parallax_x * w1 / w2 / 8
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 计算远景 Y 座标
  #     bitmap : 远景图
  #--------------------------------------------------------------------------
  def calc_parallax_y(bitmap)
    if bitmap == nil
      return 0
    elsif @parallax_loop_y
      return @parallax_y / 16
    elsif loop_vertical?
      return 0
    else
      h1 = bitmap.height - 416
      h2 = @map.height * 32 - 416
      if h1 <= 0 or h2 <= 0
        return 0
      else
        return @parallax_y * h1 / h2 / 8
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 获取地图 ID
  #--------------------------------------------------------------------------
  def map_id
    return @map_id
  end
  #--------------------------------------------------------------------------
  # ● 获取宽度
  #--------------------------------------------------------------------------
  def width
    return @map.width
  end
  #--------------------------------------------------------------------------
  # ● 获取高度
  #--------------------------------------------------------------------------
  def height
    return @map.height
  end
  #--------------------------------------------------------------------------
  # ● 横向回圈判断
  #--------------------------------------------------------------------------
  def loop_horizontal?
    return (@map.scroll_type == 2 or @map.scroll_type == 3)
  end
  #--------------------------------------------------------------------------
  # ● 纵向回圈判断
  #--------------------------------------------------------------------------
  def loop_vertical?
    return (@map.scroll_type == 1 or @map.scroll_type == 3)
  end
  #--------------------------------------------------------------------------
  # ● 判断是否禁止奔跑
  #--------------------------------------------------------------------------
  def disable_dash?
    return @map.disable_dashing
  end
  #--------------------------------------------------------------------------
  # ● 获取遇敌列表
  #--------------------------------------------------------------------------
  def encounter_list
    return @map.encounter_list
  end
  #--------------------------------------------------------------------------
  # ● 获取遇敌步数
  #--------------------------------------------------------------------------
  def encounter_step
    return @map.encounter_step
  end
  #--------------------------------------------------------------------------
  # ● 获取地图对象
  #--------------------------------------------------------------------------
  def map
    return @map
  end
  #--------------------------------------------------------------------------
  # ● 获取地图数据
  #--------------------------------------------------------------------------
  def data
    return @map.data
  end
  #--------------------------------------------------------------------------
  # ● 计算 X 座标减去显示座标
  #     x : X 座标
  #--------------------------------------------------------------------------
  def adjust_x(x)
    if loop_horizontal? and x < @display_x - @margin_x
      return x - @display_x + @map.width * 256
    else
      return x - @display_x
    end
  end
  #--------------------------------------------------------------------------
  # ● 计算 Y 座标减去显示座标
  #     y : Y 座标
  #--------------------------------------------------------------------------
  def adjust_y(y)
    if loop_vertical? and y < @display_y - @margin_y
      return y - @display_y + @map.height * 256
    else
      return y - @display_y
    end
  end
  #--------------------------------------------------------------------------
  # ● 计算回圈调整後的 X 座标
  #     x : X 座标
  #--------------------------------------------------------------------------
  def round_x(x)
    if loop_horizontal?
      return (x + width) % width
    else
      return x
    end
  end
  #--------------------------------------------------------------------------
  # ● 计算回圈调整後的 Y 座标
  #     y : Y 座标
  #--------------------------------------------------------------------------
  def round_y(y)
    if loop_vertical?
      return (y + height) % height
    else
      return y
    end
  end
  #--------------------------------------------------------------------------
  # ● 计算一格指定方向的 X 座标
  #     x         : X 座标
  #     direction : 方向（2, 4, 6, 8）
  #--------------------------------------------------------------------------
  def x_with_direction(x, direction)
    return round_x(x + (direction == 6 ? 1 : direction == 4 ? -1 : 0))
  end
  #--------------------------------------------------------------------------
  # ● 计算一格指定方向的 Y 座标
  #     y         : Y 座标
  #     direction : 方向（2, 4, 6, 8）
  #--------------------------------------------------------------------------
  def y_with_direction(y, direction)
    return round_y(y + (direction == 2 ? 1 : direction == 8 ? -1 : 0))
  end
  #--------------------------------------------------------------------------
  # ● 获取指定位置的事件数组
  #     x : X 座标
  #     y : Y 座标
  #--------------------------------------------------------------------------
  def events_xy(x, y)
    result = []
    for event in $game_map.events.values
      result.push(event) if event.pos?(x, y)
    end
    return result
  end
  #--------------------------------------------------------------------------
  # ● BGM / BGS 自动切换
  #--------------------------------------------------------------------------
  def autoplay
    @map.bgm.play if @map.autoplay_bgm unless $game_player.in_vehicle?
    @map.bgs.play if @map.autoplay_bgs
  end
  #--------------------------------------------------------------------------
  # ● 刷新
  #--------------------------------------------------------------------------
  def refresh
    if @map_id > 0
      for event in @events.values
        event.refresh
      end
      for common_event in @common_events.values
        common_event.refresh
      end
    end
    @need_refresh = false
  end
  #--------------------------------------------------------------------------
  # ● 向下滚动
  #     distance : 滚动距离
  #--------------------------------------------------------------------------
  def scroll_down(distance)
    if loop_vertical?
      @display_y += distance
      @display_y %= @map.height * 256
      @parallax_y += distance
    else
      last_y = @display_y
      @display_y = [@display_y + distance, (height - 13) * 256].min
      @parallax_y += @display_y - last_y
    end
  end
  #--------------------------------------------------------------------------
  # ● 向左滚动
  #     distance : 滚动距离
  #--------------------------------------------------------------------------
  def scroll_left(distance)
    if loop_horizontal?
      @display_x += @map.width * 256 - distance
      @display_x %= @map.width * 256
      @parallax_x -= distance
    else
      last_x = @display_x
      @display_x = [@display_x - distance, 0].max
      @parallax_x += @display_x - last_x
    end
  end
  #--------------------------------------------------------------------------
  # ● 向右滚动
  #     distance : 滚动距离
  #--------------------------------------------------------------------------
  def scroll_right(distance)
    if loop_horizontal?
      @display_x += distance
      @display_x %= @map.width * 256
      @parallax_x += distance
    else
      last_x = @display_x
      @display_x = [@display_x + distance, (width - 17) * 256].min
      @parallax_x += @display_x - last_x
    end
  end
  #--------------------------------------------------------------------------
  # ● 向上滚动
  #     distance : 滚动距离
  #--------------------------------------------------------------------------
  def scroll_up(distance)
    if loop_vertical?
      @display_y += @map.height * 256 - distance
      @display_y %= @map.height * 256
      @parallax_y -= distance
    else
      last_y = @display_y
      @display_y = [@display_y - distance, 0].max
      @parallax_y += @display_y - last_y
    end
  end
  #--------------------------------------------------------------------------
  # ● 有效坐标判定
  #     x : X 坐标
  #     y : Y 坐标
  #--------------------------------------------------------------------------
  def valid?(x, y)
    return (x >= 0 and x < width and y >= 0 and y < height)
  end
  #--------------------------------------------------------------------------
  # ● 可以通行判定
  #     x : X 坐标
  #     y : Y 坐标
  #     flag : 通行度标志（非交通工具时，一般为 0x01）
  #--------------------------------------------------------------------------
  def passable?(x, y, flag = 0x01)
    for event in events_xy(x, y)            # 循环指定位置的事件数组
      next if event.tile_id == 0            # 事件图片非图块的情况下
      next if event.priority_type > 0       # 非「一般角色之下」
      next if event.through                 # 允许穿透
      pass = @passages[event.tile_id]       # 获取通行属性
      next if pass & 0x10 == 0x10           # ☆: 不影响通行判定
      return true if pass & flag == 0x00    # ○: 可以通行
      return false if pass & flag == flag   # x: 不可通行
    end
    for i in [2, 1, 0]                      # 由上层而下
      tile_id = @map.data[x, y, i]          # 获取图块 ID
      return false if tile_id == nil        # 无法获取图块：不可通行
      pass = @passages[tile_id]             # 获取通行属性
      next if pass & 0x10 == 0x10           # ☆: 不影响通行判定
      return true if pass & flag == 0x00    # o: 可以通行
      return false if pass & flag == flag   # x: 不可通行
    end
    return false                            # 不可通行
  end
  #--------------------------------------------------------------------------
  # ● 判断小型船通行度
  #     x : X 坐标
  #     y : Y 坐标
  #--------------------------------------------------------------------------
  def boat_passable?(x, y)
    return passable?(x, y, 0x02)
  end
  #--------------------------------------------------------------------------
  # ● 判断大型船通行度
  #     x : X 坐标
  #     y : Y 坐标
  #--------------------------------------------------------------------------
  def ship_passable?(x, y)
    return passable?(x, y, 0x04)
  end
  #--------------------------------------------------------------------------
  # ● 判断飞船降落通行度
  #     x : X 坐标
  #     y : Y 坐标
  #--------------------------------------------------------------------------
  def airship_land_ok?(x, y)
    return passable?(x, y, 0x08)
  end
  #--------------------------------------------------------------------------
  # ● 判断草木繁茂处
  #     x : X 坐标
  #     y : Y 坐标
  #--------------------------------------------------------------------------
  def bush?(x, y)
    return false unless valid?(x, y)
    return @passages[@map.data[x, y, 1]] & 0x40 == 0x40
  end
  #--------------------------------------------------------------------------
  # ● 判断柜台属性
  #     x : X 坐标
  #     y : Y 坐标
  #--------------------------------------------------------------------------
  def counter?(x, y)
    return false unless valid?(x, y)
    return @passages[@map.data[x, y, 0]] & 0x80 == 0x80
  end
  #--------------------------------------------------------------------------
  # ● 开始滚动
  #     direction : 滚动方向
  #     distance  : 滚动距离
  #     speed     : 滚动速度
  #--------------------------------------------------------------------------
  def start_scroll(direction, distance, speed)
    @scroll_direction = direction
    @scroll_rest = distance * 256
    @scroll_speed = speed
  end
  #--------------------------------------------------------------------------
  # ● 滚动判断
  #--------------------------------------------------------------------------
  def scrolling?
    return @scroll_rest > 0
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    refresh if $game_map.need_refresh
    update_scroll
    update_events
    update_vehicles
    update_parallax
    @screen.update
  end
  #--------------------------------------------------------------------------
  # ● 更新滚动
  #--------------------------------------------------------------------------
  def update_scroll
    if @scroll_rest > 0                 # 滚动中
      distance = 2 ** @scroll_speed     # 转换成距离
      case @scroll_direction
        when 2  # 下
          scroll_down(distance)
        when 4  # 左
          scroll_left(distance)
        when 6  # 右
          scroll_right(distance)
        when 8  # 上
          scroll_up(distance)
      end
      @scroll_rest -= distance          # 减短距离
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新事件
  #--------------------------------------------------------------------------
  def update_events
    for event in @events.values
      event.update
    end
    for common_event in @common_events.values
      common_event.update
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新交通工具
  #--------------------------------------------------------------------------
  def update_vehicles
    for vehicle in @vehicles
      vehicle.update
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新远景
  #--------------------------------------------------------------------------
  def update_parallax
    @parallax_x += @parallax_sx * 4 if @parallax_loop_x
    @parallax_y += @parallax_sy * 4 if @parallax_loop_y
  end
end

#==============================================================================
# ■ Game_CommonEvent
#------------------------------------------------------------------------------
# 　处理公共事件的类。包含执行并行事件的功能。
# 本类在 Game_Map 类 ($game_map) 的内部使用。
#==============================================================================

class Game_CommonEvent
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     common_event_id : 公共事件 ID
  #--------------------------------------------------------------------------
  def initialize(common_event_id)
    @common_event_id = common_event_id
    @interpreter = nil
    refresh
  end
  #--------------------------------------------------------------------------
  # ● 获取名称
  #--------------------------------------------------------------------------
  def name
    return $data_common_events[@common_event_id].name
  end
  #--------------------------------------------------------------------------
  # ● 获取触发条件
  #--------------------------------------------------------------------------
  def trigger
    return $data_common_events[@common_event_id].trigger
  end
  #--------------------------------------------------------------------------
  # ● 获取触发条件开关ID
  #--------------------------------------------------------------------------
  def switch_id
    return $data_common_events[@common_event_id].switch_id
  end
  #--------------------------------------------------------------------------
  # ● 获取执行内容
  #--------------------------------------------------------------------------
  def list
    return $data_common_events[@common_event_id].list
  end
  #--------------------------------------------------------------------------
  # ● 刷新
  #--------------------------------------------------------------------------
  def refresh
    if self.trigger == 2 and $game_switches[self.switch_id] == true
      @interpreter = Game_Interpreter.new if @interpreter == nil
    else
      @interpreter = nil
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    if @interpreter != nil                # 并行处理有效的情况下
      unless @interpreter.running?        # 如果不是在执行中就设置
        @interpreter.setup(self.list)
      end
      @interpreter.update                 # 更新解释器
    end
  end
end

#==============================================================================
# ■ Game_Character
#------------------------------------------------------------------------------
# 　处理角色的类。本类作为 Game_Player 类与 Game_Event 类的超级类使用。
#==============================================================================

class Game_Character
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_reader   :id                       # ID
  attr_reader   :x                        # 地图逻辑 X 座标
  attr_reader   :y                        # 地图逻辑 Y 座标
  attr_reader   :real_x                   # 地图 X 座标（逻辑 X 座标 * 256）
  attr_reader   :real_y                   # 地图 Y 座标（逻辑 Y 座标 * 256）
  attr_reader   :tile_id                  # 图块ID（0则无效化）
  attr_reader   :character_name           # 角色图档名称
  attr_reader   :character_index          # 角色图档索引
  attr_reader   :opacity                  # 不透明度
  attr_reader   :blend_type               # 合成方式
  attr_reader   :direction                # 面向
  attr_reader   :pattern                  # 图案
  attr_reader   :move_route_forcing       # 移动路线强制标志
  attr_reader   :priority_type            # 优先度类型
  attr_reader   :through                  # 穿透
  attr_reader   :bush_depth               # 草木深度
  attr_accessor :animation_id             # 动画 ID
  attr_accessor :balloon_id               # 心情图标ID
  attr_accessor :transparent              # 透明标志
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    @id = 0
    @x = 0
    @y = 0
    @real_x = 0
    @real_y = 0
    @tile_id = 0
    @character_name = ""
    @character_index = 0
    @opacity = 255
    @blend_type = 0
    @direction = 2
    @pattern = 1
    @move_route_forcing = false
    @priority_type = 1
    @through = false
    @bush_depth = 0
    @animation_id = 0
    @balloon_id = 0
    @transparent = false
    @original_direction = 2               # 原朝向
    @original_pattern = 1                 # 原图案
    @move_type = 0                        # 移动类型
    @move_speed = 4                       # 移动速度
    @move_frequency = 6                   # 移动频度
    @move_route = nil                     # 移动路线
    @move_route_index = 0                 # 移动路线索引
    @original_move_route = nil            # 原移动路线
    @original_move_route_index = 0        # 原移动路线索引
    @walk_anime = true                    # 步行动化
    @step_anime = false                   # 踏步动画
    @direction_fix = false                # 固定朝向
    @anime_count = 0                      # 动画计数
    @stop_count = 0                       # 停止计数
    @jump_count = 0                       # 跳跃计数
    @jump_peak = 0                        # 跳跃高度记数
    @wait_count = 0                       # 等待计数
    @locked = false                       # 锁定标志
    @prelock_direction = 0                # 锁定前朝向
    @move_failed = false                  # 移动失败标志
  end
  #--------------------------------------------------------------------------
  # ● 判断是否移动
  #    如果在移动中理论坐标与实际坐标不同
  #--------------------------------------------------------------------------
  def moving?
    return (@real_x != @x * 256 or @real_y != @y * 256)
  end
  #--------------------------------------------------------------------------
  # ● 判断是否跳跃
  #--------------------------------------------------------------------------
  def jumping?
    return @jump_count > 0
  end
  #--------------------------------------------------------------------------
  # ● 判断是否停止
  #--------------------------------------------------------------------------
  def stopping?
    return (not (moving? or jumping?))
  end
  #--------------------------------------------------------------------------
  # ● 判断是否奔跑中
  #--------------------------------------------------------------------------
  def dash?
    return false
  end
  #--------------------------------------------------------------------------
  # ● 判断是否是游戏测试通行状态
  #--------------------------------------------------------------------------
  def debug_through?
    return false
  end
  #--------------------------------------------------------------------------
  # ● 矫正姿势
  #--------------------------------------------------------------------------
  def straighten
    @pattern = 1 if @walk_anime or @step_anime
    @anime_count = 0
  end
  #--------------------------------------------------------------------------
  # ● 强制行动路线
  #     move_route : 新移动路线
  #--------------------------------------------------------------------------
  def force_move_route(move_route)
    if @original_move_route == nil
      @original_move_route = @move_route
      @original_move_route_index = @move_route_index
    end
    @move_route = move_route
    @move_route_index = 0
    @move_route_forcing = true
    @prelock_direction = 0
    @wait_count = 0
    move_type_custom
  end
  #--------------------------------------------------------------------------
  # ● 判断所在座标是否指定位置
  #     x : X 座标
  #     y : Y 座标
  #--------------------------------------------------------------------------
  def pos?(x, y)
    return (@x == x and @y == y)
  end
  #--------------------------------------------------------------------------
  # ● 指定位置座标和不可穿透判断（nt = 不可穿透）
  #     x : X 座标
  #     y : Y 座标
  #--------------------------------------------------------------------------
  def pos_nt?(x, y)
    return (pos?(x, y) and not @through)
  end
  #--------------------------------------------------------------------------
  # ● 通行判定
  #     x : X 座标
  #     y : Y 座标
  #--------------------------------------------------------------------------
  def passable?(x, y)
    x = $game_map.round_x(x)                        # 横向循环校正
    y = $game_map.round_y(y)                        # 纵向循环校正
    return false unless $game_map.valid?(x, y)      # 判断是否在地图之外
    return true if @through or debug_through?       # 判断是否允许穿透
    return false unless map_passable?(x, y)         # 判断地图是否不可通行
    return false if collide_with_characters?(x, y)  # 判断是否与其他角色碰撞
    return true                                     # 可以通行
  end
  #--------------------------------------------------------------------------
  # ● 地图通行判定
  #     x : X 座标
  #     y : Y 座标
  #    判断目标图块是否能通行。
  #--------------------------------------------------------------------------
  def map_passable?(x, y)
    return $game_map.passable?(x, y)
  end
  #--------------------------------------------------------------------------
  # ● 判断角色碰撞
  #     x : X 座标
  #     y : Y 座标
  #    侦察与普通角色碰撞，包括角色与交通工具
  #--------------------------------------------------------------------------
  def collide_with_characters?(x, y)
    for event in $game_map.events_xy(x, y)          # 判断事件位置
      unless event.through                          # 事件是否允许通行
        return true if self.is_a?(Game_Event)       # 本身是否事件
        return true if event.priority_type == 1     # 目标事件是普通角色
      end
    end
    if @priority_type == 1                          # 本身是普通角色的场合
      return true if $game_player.pos_nt?(x, y)     # 判断主角位置
      return true if $game_map.boat.pos_nt?(x, y)   # 判断小型船位置
      return true if $game_map.ship.pos_nt?(x, y)   # 判断大型船位置
    end
    return false
  end
  #--------------------------------------------------------------------------
  # ● 锁定（事件进行中中断的处理）
  #--------------------------------------------------------------------------
  def lock
    unless @locked
      @prelock_direction = @direction
      turn_toward_player
      @locked = true
    end
  end
  #--------------------------------------------------------------------------
  # ● 解除锁定
  #--------------------------------------------------------------------------
  def unlock
    if @locked
      @locked = false
      set_direction(@prelock_direction)
    end
  end
  #--------------------------------------------------------------------------
  # ● 移动制指定目标
  #     x : X 座标
  #     y : Y 座标
  #--------------------------------------------------------------------------
  def moveto(x, y)
    @x = x % $game_map.width
    @y = y % $game_map.height
    @real_x = @x * 256
    @real_y = @y * 256
    @prelock_direction = 0
    straighten
    update_bush_depth
  end
  #--------------------------------------------------------------------------
  # ● 改变为指定方向
  #     direction : 新方向
  #--------------------------------------------------------------------------
  def set_direction(direction)
    if not @direction_fix and direction != 0
      @direction = direction
      @stop_count = 0
    end
  end
  #--------------------------------------------------------------------------
  # ● 判断物件类型
  #--------------------------------------------------------------------------
  def object?
    return (@tile_id > 0 or @character_name[0, 1] == '!')
  end
  #--------------------------------------------------------------------------
  # ● 获取画面 X 座标
  #--------------------------------------------------------------------------
  def screen_x
    return ($game_map.adjust_x(@real_x) + 8007) / 8 - 1000 + 16
  end
  #--------------------------------------------------------------------------
  # ● 获取画面 Y 座标
  #--------------------------------------------------------------------------
  def screen_y
    y = ($game_map.adjust_y(@real_y) + 8007) / 8 - 1000 + 32
    y -= 4 unless object?
    if @jump_count >= @jump_peak
      n = @jump_count - @jump_peak
    else
      n = @jump_peak - @jump_count
    end
    return y - (@jump_peak * @jump_peak - n * n) / 2
  end
  #--------------------------------------------------------------------------
  # ● 获取画面 Z 座标
  #--------------------------------------------------------------------------
  def screen_z
    if @priority_type == 2
      return 200
    elsif @priority_type == 0
      return 60
    elsif @tile_id > 0
      pass = $game_map.passages[@tile_id]
      if pass & 0x10 == 0x10    # [☆]
        return 160
      else
        return 40
      end
    else
      return 100
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    if jumping?                 # 跳跃
      update_jump
    elsif moving?               # 移动
      update_move
    else                        # 停止
      update_stop
    end
    if @wait_count > 0          # 等待
      @wait_count -= 1
    elsif @move_route_forcing   # 强制移动
      move_type_custom
    elsif not @locked           # 非锁定状态
      update_self_movement
    end
    update_animation
  end
  #--------------------------------------------------------------------------
  # ● 更新画面 (跳跃)
  #--------------------------------------------------------------------------
  def update_jump
    @jump_count -= 1
    @real_x = (@real_x * @jump_count + @x * 256) / (@jump_count + 1)
    @real_y = (@real_y * @jump_count + @y * 256) / (@jump_count + 1)
    update_bush_depth
  end
  #--------------------------------------------------------------------------
  # ● 更新画面 (移动)
  #--------------------------------------------------------------------------
  def update_move
    distance = 2 ** @move_speed   # 转换成移动距离
    distance *= 2 if dash?        # 跑步中加倍
    @real_x = [@real_x - distance, @x * 256].max if @x * 256 < @real_x
    @real_x = [@real_x + distance, @x * 256].min if @x * 256 > @real_x
    @real_y = [@real_y - distance, @y * 256].max if @y * 256 < @real_y
    @real_y = [@real_y + distance, @y * 256].min if @y * 256 > @real_y
    update_bush_depth unless moving?
    if @walk_anime
      @anime_count += 1.5
    elsif @step_anime
      @anime_count += 1
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新画面 (停止)
  #--------------------------------------------------------------------------
  def update_stop
    if @step_anime
      @anime_count += 1
    elsif @pattern != @original_pattern
      @anime_count += 1.5
    end
    @stop_count += 1 unless @locked
  end
  #--------------------------------------------------------------------------
  # ● 更新画面 (本身行动)
  #--------------------------------------------------------------------------
  def update_self_movement
    if @stop_count > 30 * (5 - @move_frequency)
      case @move_type
        when 1;  move_type_random
        when 2;  move_type_toward_player
        when 3;  move_type_custom
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新画面 (动画)
  #--------------------------------------------------------------------------
  def update_animation
    speed = @move_speed + (dash? ? 1 : 0)
    if @anime_count > 18 - speed * 2
      if not @step_anime and @stop_count > 0
        @pattern = @original_pattern
      else
        @pattern = (@pattern + 1) % 4
      end
      @anime_count = 0
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新画面 (草木繁茂)
  #--------------------------------------------------------------------------
  def update_bush_depth
    if object? or @priority_type != 1 or @jump_count > 0
      @bush_depth = 0
    else
      bush = $game_map.bush?(@x, @y)
      if bush and not moving?
        @bush_depth = 8
      elsif not bush
        @bush_depth = 0
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 移动类型：随机
  #--------------------------------------------------------------------------
  def move_type_random
    case rand(6)
      when 0..1;  move_random
      when 2..4;  move_forward
      when 5;     @stop_count = 0
    end
  end
  #--------------------------------------------------------------------------
  # ● 移动类型：接近
  #--------------------------------------------------------------------------
  def move_type_toward_player
    sx = @x - $game_player.x
    sy = @y - $game_player.y
    if sx.abs + sy.abs >= 20
      move_random
    else
      case rand(6)
        when 0..3;  move_toward_player
        when 4;     move_random
        when 5;     move_forward
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 移动类型：自订
  #--------------------------------------------------------------------------
  def move_type_custom
    if stopping?
      command = @move_route.list[@move_route_index]   # Get movement command
      @move_failed = false
      if command.code == 0                            # End of list
        if @move_route.repeat                         # [Repeat Action]
          @move_route_index = 0
        elsif @move_route_forcing                     # Forced move route
          @move_route_forcing = false                 # Cancel forcing
          @move_route = @original_move_route          # Restore original
          @move_route_index = @original_move_route_index
          @original_move_route = nil
        end
      else
        case command.code
          when 1    # 往下移动
            move_down
          when 2    # 往左移动
            move_left
          when 3    # 往右移动
            move_right
          when 4    # 往上移动
            move_up
          when 5    # 往左下移动
            move_lower_left
          when 6    # 往右下移动
            move_lower_right
          when 7    # 往左上移动
            move_upper_left
          when 8    # 往右上移动
            move_upper_right
          when 9    # 随机移动
            move_random
          when 10   # 接近主角
            move_toward_player
          when 11   # 远离主角
            move_away_from_player
          when 12   # 前进一步
            move_forward
          when 13   # 後退一步
            move_backward
          when 14   # 跳跃
            jump(command.parameters[0], command.parameters[1])
          when 15   # 等待
            @wait_count = command.parameters[0] - 1
          when 16   # 面向下
            turn_down
          when 17   # 面向左
            turn_left
          when 18   # 面向右
            turn_right
          when 19   # 面向上
            turn_up
          when 20   # 向右转 90 度
            turn_right_90
          when 21   # 向左转 90 度
            turn_left_90
          when 22   # 旋转 180 度
            turn_180
          when 23   # 随机转 90 度
            turn_right_or_left_90
          when 24   # 随机转换方向
            turn_random
          when 25   # 面向主角
            turn_toward_player
          when 26   # 背向主角
            turn_away_from_player
          when 27   # 开启开关
            $game_switches[command.parameters[0]] = true
            $game_map.need_refresh = true
          when 28   # 关闭开关
            $game_switches[command.parameters[0]] = false
            $game_map.need_refresh = true
          when 29   # 更改移动速度
            @move_speed = command.parameters[0]
          when 30   # 更改移动频度
            @move_frequency = command.parameters[0]
          when 31   # 开启步行动画
            @walk_anime = true
          when 32   # 关闭步行动画
            @walk_anime = false
          when 33   # 开启踏步动画
            @step_anime = true
          when 34   # 关闭踏步动画
            @step_anime = false
          when 35   # 开启面向固定
            @direction_fix = true
          when 36   # 关闭面向固定
            @direction_fix = false
          when 37   # 允许穿透
            @through = true
          when 38   # 不允许穿透
            @through = false
          when 39   # 开启透明状态
            @transparent = true
          when 40   # 关闭透明状态
            @transparent = false
          when 41   # 更改角色图像
            set_graphic(command.parameters[0], command.parameters[1])
          when 42   # 更改透明度
            @opacity = command.parameters[0]
          when 43   # 更改合成方式
            @blend_type = command.parameters[0]
          when 44   # 播放音效
            command.parameters[0].play
          when 45   # 脚本
            eval(command.parameters[0])
        end
        if not @move_route.skippable and @move_failed
          return  # 非[跳过不能移动的场合] 并且移动失败
        end
        @move_route_index += 1
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 增加步数
  #--------------------------------------------------------------------------
  def increase_steps
    @stop_count = 0
    update_bush_depth
  end
  #--------------------------------------------------------------------------
  # ● 计算距离主角的横向距离
  #--------------------------------------------------------------------------
  def distance_x_from_player
    sx = @x - $game_player.x
    if $game_map.loop_horizontal?         # 横向循环的场合
      if sx == 1 - $game_map.width
        sx += $game_map.width
      elsif sx.abs > $game_map.width / 2  # 是否大于地图宽度
        sx -= $game_map.width             # 减除地图宽度
      end
    end
    return sx
  end
  #--------------------------------------------------------------------------
  # ● 计算距离主角的纵向距离
  #--------------------------------------------------------------------------
  def distance_y_from_player
    sy = @y - $game_player.y
    if $game_map.loop_vertical?           # 纵像循环的场合
      if sy == 1 - $game_map.height
        sy += $game_map.height
      elsif sy.abs > $game_map.height / 2 # 是否大于地图高度
        sy -= $game_map.height            # 减除地图高度
      end
    end
    return sy
  end
  #--------------------------------------------------------------------------
  # ● 向下移动
  #     turn_ok : 允许当场转向
  #--------------------------------------------------------------------------
  def move_down(turn_ok = true)
    if passable?(@x, @y+1)                  # 可通行的场合
      turn_down
      @y = $game_map.round_y(@y+1)
      @real_y = (@y-1)*256
      increase_steps
      @move_failed = false
    else                                    # 不可通行的场合
      turn_down if turn_ok
      check_event_trigger_touch(@x, @y+1)   # 是否触发接触事件
      @move_failed = true
    end
  end
  #--------------------------------------------------------------------------
  # ● 向左移动
  #     turn_ok : 允许当场转向
  #--------------------------------------------------------------------------
  def move_left(turn_ok = true)
    if passable?(@x-1, @y)                  # 可通行的场合
      turn_left
      @x = $game_map.round_x(@x-1)
      @real_x = (@x+1)*256
      increase_steps
      @move_failed = false
    else                                    # 不可通行的场合
      turn_left if turn_ok
      check_event_trigger_touch(@x-1, @y)   # 是否触发接触事件
      @move_failed = true
    end
  end
  #--------------------------------------------------------------------------
  # ● 向右移动
  #     turn_ok : 允许当场转向
  #--------------------------------------------------------------------------
  def move_right(turn_ok = true)
    if passable?(@x+1, @y)                  # 可通行的场合
      turn_right
      @x = $game_map.round_x(@x+1)
      @real_x = (@x-1)*256
      increase_steps
      @move_failed = false
    else                                    # 不可通行的场合
      turn_right if turn_ok
      check_event_trigger_touch(@x+1, @y)   # 是否触发接触事件
      @move_failed = true
    end
  end
  #--------------------------------------------------------------------------
  # ● 向上移动
  #     turn_ok : 允许当场转向
  #--------------------------------------------------------------------------
  def move_up(turn_ok = true)
    if passable?(@x, @y-1)                  # 可通行的场合
      turn_up
      @y = $game_map.round_y(@y-1)
      @real_y = (@y+1)*256
      increase_steps
      @move_failed = false
    else                                    # 不可通行的场合
      turn_up if turn_ok
      check_event_trigger_touch(@x, @y-1)   # 是否触发接触事件
      @move_failed = true
    end
  end
  #--------------------------------------------------------------------------
  # ● 向左下移动
  #--------------------------------------------------------------------------
  def move_lower_left
    unless @direction_fix
      @direction = (@direction == 6 ? 4 : @direction == 8 ? 2 : @direction)
    end
    if (passable?(@x, @y+1) and passable?(@x-1, @y+1)) or
        (passable?(@x-1, @y) and passable?(@x-1, @y+1))
      @x -= 1
      @y += 1
      increase_steps
      @move_failed = false
    else
      @move_failed = true
    end
  end
  #--------------------------------------------------------------------------
  # ● 向右下移动
  #--------------------------------------------------------------------------
  def move_lower_right
    unless @direction_fix
      @direction = (@direction == 4 ? 6 : @direction == 8 ? 2 : @direction)
    end
    if (passable?(@x, @y+1) and passable?(@x+1, @y+1)) or
        (passable?(@x+1, @y) and passable?(@x+1, @y+1))
      @x += 1
      @y += 1
      increase_steps
      @move_failed = false
    else
      @move_failed = true
    end
  end
  #--------------------------------------------------------------------------
  # ● 向左上移动
  #--------------------------------------------------------------------------
  def move_upper_left
    unless @direction_fix
      @direction = (@direction == 6 ? 4 : @direction == 2 ? 8 : @direction)
    end
    if (passable?(@x, @y-1) and passable?(@x-1, @y-1)) or
        (passable?(@x-1, @y) and passable?(@x-1, @y-1))
      @x -= 1
      @y -= 1
      increase_steps
      @move_failed = false
    else
      @move_failed = true
    end
  end
  #--------------------------------------------------------------------------
  # ● 向右上移动
  #--------------------------------------------------------------------------
  def move_upper_right
    unless @direction_fix
      @direction = (@direction == 4 ? 6 : @direction == 2 ? 8 : @direction)
    end
    if (passable?(@x, @y-1) and passable?(@x+1, @y-1)) or
        (passable?(@x+1, @y) and passable?(@x+1, @y-1))
      @x += 1
      @y -= 1
      increase_steps
      @move_failed = false
    else
      @move_failed = true
    end
  end
  #--------------------------------------------------------------------------
  # ● 随机移动
  #--------------------------------------------------------------------------
  def move_random
    case rand(4)
      when 0;  move_down(false)
      when 1;  move_left(false)
      when 2;  move_right(false)
      when 3;  move_up(false)
    end
  end
  #--------------------------------------------------------------------------
  # ● 接近主角
  #--------------------------------------------------------------------------
  def move_toward_player
    sx = distance_x_from_player
    sy = distance_y_from_player
    sx += $game_map.width * 2 if $game_map.loop_horizontal? and sx < - $game_map.width  and sx > - $game_map.width * 2
    sy += $game_map.height * 2 if $game_map.loop_vertical? and sy < - $game_map.height  and sy > - $game_map.height * 2
    if sx != 0 or sy != 0
      if sx.abs > sy.abs                  # 横向距离较大
        sx > 0 ? move_left : move_right   # 优先往左右走
        if @move_failed and sy != 0
          sy > 0 ? move_up : move_down
        end
      else                                # 纵向距离较大
        sy > 0 ? move_up : move_down      # 优先往上下走
        if @move_failed and sx != 0
          sx > 0 ? move_left : move_right
        end
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 远离主角
  #--------------------------------------------------------------------------
  def move_away_from_player
    sx = distance_x_from_player
    sy = distance_y_from_player
    sx += $game_map.width * 2 if $game_map.loop_horizontal? and sx < - $game_map.width  and sx > - $game_map.width * 2
    sy += $game_map.height * 2 if $game_map.loop_vertical? and sy < - $game_map.height  and sy > - $game_map.height * 2
    if sx != 0 or sy != 0
      if sx.abs > sy.abs                  # 横向距离较大
        sx > 0 ? move_right : move_left   # 优先往左右走
        if @move_failed and sy != 0
          sy > 0 ? move_down : move_up
        end
      else                                # 纵向距离较大
        sy > 0 ? move_down : move_up      # 优先往上下走
        if @move_failed and sx != 0
          sx > 0 ? move_right : move_left
        end
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 向前一步
  #--------------------------------------------------------------------------
  def move_forward
    case @direction
      when 2;  move_down(false)
      when 4;  move_left(false)
      when 6;  move_right(false)
      when 8;  move_up(false)
    end
  end
  #--------------------------------------------------------------------------
  # ● 向後一步
  #--------------------------------------------------------------------------
  def move_backward
    last_direction_fix = @direction_fix
    @direction_fix = true
    case @direction
      when 2;  move_up(false)
      when 4;  move_right(false)
      when 6;  move_left(false)
      when 8;  move_down(false)
    end
    @direction_fix = last_direction_fix
  end
  #--------------------------------------------------------------------------
  # ● 跳跃
  #     x_plus : X 座标增值
  #     y_plus : Y 座标增值
  #--------------------------------------------------------------------------
  def jump(x_plus, y_plus)
    if x_plus.abs > y_plus.abs            # 横向距离较大
      x_plus < 0 ? turn_left : turn_right
    elsif x_plus.abs > y_plus.abs         # 纵向距离较大
      y_plus < 0 ? turn_up : turn_down
    end
    @x += x_plus
    @y += y_plus
    distance = Math.sqrt(x_plus * x_plus + y_plus * y_plus).round
    @jump_peak = 10 + distance - @move_speed
    @jump_count = @jump_peak * 2
    @stop_count = 0
    straighten
  end
  #--------------------------------------------------------------------------
  # ● 面向下
  #--------------------------------------------------------------------------
  def turn_down
    set_direction(2)
  end
  #--------------------------------------------------------------------------
  # ● 面向左
  #--------------------------------------------------------------------------
  def turn_left
    set_direction(4)
  end
  #--------------------------------------------------------------------------
  # ● 面向右
  #--------------------------------------------------------------------------
  def turn_right
    set_direction(6)
  end
  #--------------------------------------------------------------------------
  # ● 面向上
  #--------------------------------------------------------------------------
  def turn_up
    set_direction(8)
  end
  #--------------------------------------------------------------------------
  # ● 向右转90度
  #--------------------------------------------------------------------------
  def turn_right_90
    case @direction
      when 2;  turn_left
      when 4;  turn_up
      when 6;  turn_down
      when 8;  turn_right
    end
  end
  #--------------------------------------------------------------------------
  # ● 向左转90度
  #--------------------------------------------------------------------------
  def turn_left_90
    case @direction
      when 2;  turn_right
      when 4;  turn_down
      when 6;  turn_up
      when 8;  turn_left
    end
  end
  #--------------------------------------------------------------------------
  # ● 旋转180度
  #--------------------------------------------------------------------------
  def turn_180
    case @direction
      when 2;  turn_up
      when 4;  turn_right
      when 6;  turn_left
      when 8;  turn_down
    end
  end
  #--------------------------------------------------------------------------
  # ● 随机左右转90度
  #--------------------------------------------------------------------------
  def turn_right_or_left_90
    case rand(2)
      when 0;  turn_right_90
      when 1;  turn_left_90
    end
  end
  #--------------------------------------------------------------------------
  # ● 随机转向
  #--------------------------------------------------------------------------
  def turn_random
    case rand(4)
      when 0;  turn_up
      when 1;  turn_right
      when 2;  turn_left
      when 3;  turn_down
    end
  end
  #--------------------------------------------------------------------------
  # ● 面向主角
  #--------------------------------------------------------------------------
  def turn_toward_player
    sx = distance_x_from_player
    sy = distance_y_from_player
    if sx.abs > sy.abs                    # 横向距离较大
      sx > 0 ? turn_left : turn_right
    elsif sx.abs < sy.abs                 # 纵向距离较大
      sy > 0 ? turn_up : turn_down
    end
  end
  #--------------------------------------------------------------------------
  # ● 背向主角
  #--------------------------------------------------------------------------
  def turn_away_from_player
    sx = distance_x_from_player
    sy = distance_y_from_player
    if sx.abs > sy.abs                    # 横向距离较大
      sx > 0 ? turn_right : turn_left
    elsif sx.abs < sy.abs                 # 纵向距离较大
      sy > 0 ? turn_down : turn_up
    end
  end
  #--------------------------------------------------------------------------
  # ● 变更角色图像
  #     character_name  : 新角色图像文件名称
  #     character_index : 新角色图像文件索引
  #--------------------------------------------------------------------------
  def set_graphic(character_name, character_index)
    @tile_id = 0
    @character_name = character_name
    @character_index = character_index
  end
end

#==============================================================================
# ■ Game_Event
#------------------------------------------------------------------------------
# 　处理事件的类。条件判断、事件页的切换、并行处理、执行事件功能
# 在 Game_Map 类的内部使用。
#==============================================================================

class Game_Event < Game_Character
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_reader   :trigger                  # 触发条件
  attr_reader   :list                     # 执行内容
  attr_reader   :starting                 # 启动中标志
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     map_id : 地图 ID
  #     event  : 事件 (RPG::Event)
  #--------------------------------------------------------------------------
  def initialize(map_id, event)
    super()
    @map_id = map_id
    @event = event
    @id = @event.id
    @erased = false
    @starting = false
    @through = true
    moveto(@event.x, @event.y)            # 初期位置的移动
    refresh
  end
  #--------------------------------------------------------------------------
  # ● 清除启动中标志
  #--------------------------------------------------------------------------
  def clear_starting
    @starting = false
  end
  #--------------------------------------------------------------------------
  # ● 启动事件
  #--------------------------------------------------------------------------
  def start
    return if @list.size <= 1                   # 执行内容不为空的情况下
    @starting = true
    lock if @trigger < 3
    unless $game_map.interpreter.running?
      $game_map.interpreter.setup_starting_event
    end
  end
  #--------------------------------------------------------------------------
  # ● 暂时消失
  #--------------------------------------------------------------------------
  def erase
    @erased = true
    refresh
  end
  #--------------------------------------------------------------------------
  # ● 判断事件页出现条件
  #--------------------------------------------------------------------------
  def conditions_met?(page)
    c = page.condition
    if c.switch1_valid      # 开关1
      return false if $game_switches[c.switch1_id] == false
    end
    if c.switch2_valid      # 开关2
      return false if $game_switches[c.switch2_id] == false
    end
    if c.variable_valid     # 变量
      return false if $game_variables[c.variable_id] < c.variable_value
    end
    if c.self_switch_valid  # 独立开关
      key = [@map_id, @event.id, c.self_switch_ch]
      return false if $game_self_switches[key] != true
    end
    if c.item_valid         # 物品
      item = $data_items[c.item_id]
      return false if $game_party.item_number(item) == 0
    end
    if c.actor_valid        # 角色
      actor = $game_actors[c.actor_id]
      return false unless $game_party.members.include?(actor)
    end
    return true   # 条件符合
  end
  #--------------------------------------------------------------------------
  # ● 设置事件页
  #--------------------------------------------------------------------------
  def setup(new_page)
    @page = new_page
    if @page == nil
      @tile_id = 0
      @character_name = ""
      @character_index = 0
      @move_type = 0
      @through = true
      @trigger = nil
      @list = nil
      @interpreter = nil
    else
      @tile_id = @page.graphic.tile_id
      @character_name = @page.graphic.character_name
      @character_index = @page.graphic.character_index
      if @original_direction != @page.graphic.direction
        @direction = @page.graphic.direction
        @original_direction = @direction
        @prelock_direction = 0
      end
      if @original_pattern != @page.graphic.pattern
        @pattern = @page.graphic.pattern
        @original_pattern = @pattern
      end
      @move_type = @page.move_type
      @move_speed = @page.move_speed
      @move_frequency = @page.move_frequency
      @move_route = @page.move_route
      @move_route_index = 0
      @move_route_forcing = false
      @walk_anime = @page.walk_anime
      @step_anime = @page.step_anime
      @direction_fix = @page.direction_fix
      @through = @page.through
      @priority_type = @page.priority_type
      @trigger = @page.trigger
      @list = @page.list
      @interpreter = nil
      if @trigger == 4                       # 触发条件为「并行处理」
        @interpreter = Game_Interpreter.new  # 生成并行处理用解释器
      end
    end
    update_bush_depth
  end
  #--------------------------------------------------------------------------
  # ● 刷新
  #--------------------------------------------------------------------------
  def refresh
    new_page = nil
    unless @erased                          # 非暂时消除的情况下
      for page in @event.pages.reverse      # 从编号大的事件页按顺序调查
        next unless conditions_met?(page)   #  判断开始条件只否符合
        new_page = page
        break
      end
    end
    if new_page != @page            # 与上次不同一事件页的情况下
      clear_starting                # 清除启动中标志
      setup(new_page)               # 设置新事件页
      check_event_trigger_auto      # 自动事件启动判定
    end
  end
  #--------------------------------------------------------------------------
  # ● 接触事件启动判定
  #--------------------------------------------------------------------------
  def check_event_trigger_touch(x, y)
    return if $game_map.interpreter.running?
    x +=  $game_map.width if $game_map.loop_horizontal? and x < 0
    y +=  $game_map.height if $game_map.loop_vertical? and y < 0
    if @trigger == 2 and $game_player.pos?(x, y)
      start if not jumping? and @priority_type == 1
    end
  end

  #--------------------------------------------------------------------------
  # ● 自动事件启动判定
  #--------------------------------------------------------------------------
  def check_event_trigger_auto
    start if @trigger == 3
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    check_event_trigger_auto                    # 自动事件启动判定
    if @interpreter != nil                      # 并行处理的情况下
      unless @interpreter.running?              # 不在执行中的场合的情况下
        @interpreter.setup(@list, @event.id)    # 设置事件
      end
      @interpreter.update                       # 更新解释器
    end
  end
end

#==============================================================================
# ■ Game_Vehicle
#------------------------------------------------------------------------------
# 　处理交通工具的类。在 Game_Map 类的内部使用。
# 如果当前地图无交通工具，座标设为(-1, -1)。
#==============================================================================

class Game_Vehicle < Game_Character
  #--------------------------------------------------------------------------
  # ● 常量
  #--------------------------------------------------------------------------
  MAX_ALTITUDE = 32                       # 飞船高度
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_reader   :type                     # 交通工具类型（0～2）
  attr_reader   :altitude                 # 高度（飞船用）
  attr_reader   :driving                  # 驾驶中标志
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     type : 交通工具类型（0：小型船，1：大型船，2：飞船）
  #--------------------------------------------------------------------------
  def initialize(type)
    super()
    @type = type
    @altitude = 0
    @driving = false
    @direction = 4
    @walk_anime = false
    @step_anime = false
    load_system_settings
  end
  #--------------------------------------------------------------------------
  # ● 载入系统设定
  #--------------------------------------------------------------------------
  def load_system_settings
    case @type
      when 0;  sys_vehicle = $data_system.boat
      when 1;  sys_vehicle = $data_system.ship
      when 2;  sys_vehicle = $data_system.airship
      else;    sys_vehicle = nil
    end
    if sys_vehicle != nil
      @character_name = sys_vehicle.character_name
      @character_index = sys_vehicle.character_index
      @bgm = sys_vehicle.bgm
      @map_id = sys_vehicle.start_map_id
      @x = sys_vehicle.start_x
      @y = sys_vehicle.start_y
    end
  end
  #--------------------------------------------------------------------------
  # ● 刷新
  #--------------------------------------------------------------------------
  def refresh
    if @driving
      @map_id = $game_map.map_id
      sync_with_player
    elsif @map_id == $game_map.map_id
      moveto(@x, @y)
    end
    case @type
      when 0;
        @priority_type = 1
        @move_speed = 4
      when 1;
        @priority_type = 1
        @move_speed = 5
      when 2;
        @priority_type = @driving ? 2 : 0
        @move_speed = 6
    end
    @walk_anime = @driving
    @step_anime = @driving
  end
  #--------------------------------------------------------------------------
  # ● 改变位置
  #     map_id : 地图 ID
  #     x      : X 座标
  #     y      : Y 座标
  #--------------------------------------------------------------------------
  def set_location(map_id, x, y)
    @map_id = map_id
    @x = x
    @y = y
    refresh
  end
  #--------------------------------------------------------------------------
  # ● 判断所在座标是否指定位置
  #     x : X 座标
  #     y : Y 座标
  #--------------------------------------------------------------------------
  def pos?(x, y)
    return (@map_id == $game_map.map_id and super(x, y))
  end
  #--------------------------------------------------------------------------
  # ● 判断透明度
  #--------------------------------------------------------------------------
  def transparent
    return (@map_id != $game_map.map_id or super)
  end
  #--------------------------------------------------------------------------
  # ● 乘上交通工具
  #--------------------------------------------------------------------------
  def get_on
    @driving = true
    @walk_anime = true
    @step_anime = true
    if @type == 2               # 飞船的场合
      @priority_type = 2        # 改变优先度为「一般角色之上」
    end
    @bgm.play                   # 开始 BGM
  end
  #--------------------------------------------------------------------------
  # ● 离开交通工具
  #--------------------------------------------------------------------------
  def get_off
    @driving = false
    @walk_anime = false
    @step_anime = false
    @direction = 4
  end
  #--------------------------------------------------------------------------
  # ● 与角色同步
  #--------------------------------------------------------------------------
  def sync_with_player
    @x = $game_player.x
    @y = $game_player.y
    @real_x = $game_player.real_x
    @real_y = $game_player.real_y
    @direction = $game_player.direction
    update_bush_depth
  end
  #--------------------------------------------------------------------------
  # ● 获取速度
  #--------------------------------------------------------------------------
  def speed
    return @move_speed
  end
  #--------------------------------------------------------------------------
  # ● 获取画面 Y 座标
  #--------------------------------------------------------------------------
  def screen_y
    return super - altitude
  end
  #--------------------------------------------------------------------------
  # ● 可以行动判定
  #--------------------------------------------------------------------------
  def movable?
    return false if (@type == 2 and @altitude < MAX_ALTITUDE)
    return (not moving?)
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    if @type == 2               # 画面的场合
      if @driving
        if @altitude < MAX_ALTITUDE
          @altitude += 1        # 增加高度
        end
      elsif @altitude > 0
        @altitude -= 1          # 减少高度
        if @altitude == 0
          @priority_type = 0    # 将优先度改为「一般角色之下」
        end
      end
    end
  end
end

#==============================================================================
# ■ Game_Player
#------------------------------------------------------------------------------
# 　处理主角的类。事件启动的判定、以及地图的滚动等功能。
# 本类的实例请参考 $game_player。
#==============================================================================

class Game_Player < Game_Character
  #--------------------------------------------------------------------------
  # ● 常量
  #--------------------------------------------------------------------------
  CENTER_X = (544 / 2 - 16) * 8     # 画面中央 X 座标 * 8
  CENTER_Y = (416 / 2 - 16) * 8     # 画面中央 Y 座标 * 8
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_reader   :vehicle_type       # 目前乘坐交通工具类型
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    super
    @vehicle_type = -1
    @vehicle_getting_on = false     # 乘坐交通工具标志
    @vehicle_getting_off = false    # 离开交通工具标志
    @transferring = false           # 场所移动标志
    @new_map_id = 0                 # 目标地图 ID
    @new_x = 0                      # 目标 X 座标
    @new_y = 0                      # 目标 Y 座标
    @new_direction = 0              # 移动後方向
    @walking_bgm = nil              # 记忆用行走时 BGM
  end
  #--------------------------------------------------------------------------
  # ● 判断是否停止
  #--------------------------------------------------------------------------
  def stopping?
    return false if @vehicle_getting_on
    return false if @vehicle_getting_off
    return super
  end
  #--------------------------------------------------------------------------
  # ● 场所移动准备
  #     map_id    : 地图 ID
  #     x         : X 座标
  #     y         : Y 座标
  #     direction : 移动後面向
  #--------------------------------------------------------------------------
  def reserve_transfer(map_id, x, y, direction)
    @transferring = true
    @new_map_id = map_id
    @new_x = x
    @new_y = y
    @new_direction = direction
  end
  #--------------------------------------------------------------------------
  # ● 判断是否准备场所移动
  #--------------------------------------------------------------------------
  def transfer?
    return @transferring
  end
  #--------------------------------------------------------------------------
  # ● 执行场所移动
  #--------------------------------------------------------------------------
  def perform_transfer
    return unless @transferring
    @transferring = false
    set_direction(@new_direction)
    if $game_map.map_id != @new_map_id
      $game_map.setup(@new_map_id)     # 移动到另一地图
    end
    moveto(@new_x, @new_y)
    @walking_bgm = $game_map.map.bgm
  end
  #--------------------------------------------------------------------------
  # ● 判断地图是否可以通行
  #     x：X 座标
  #     y：Y 座标
  #--------------------------------------------------------------------------
  def map_passable?(x, y)
    case @vehicle_type
      when 0  # 小型船
        return $game_map.boat_passable?(x, y)
      when 1  # 大型船
        return $game_map.ship_passable?(x, y)
      when 2  # 飞船
        return true
      else    # 行走
        return $game_map.passable?(x, y)
    end
  end
  #--------------------------------------------------------------------------
  # ● 判断行走通行度
  #     x：X 座标
  #     y：Y 座标
  #--------------------------------------------------------------------------
  def can_walk?(x, y)
    last_vehicle_type = @vehicle_type   # 移除交通工具类型
    @vehicle_type = -1                  # 暂时设置为行走
    result = passable?(x, y)            # 判断是否可以通行
    @vehicle_type = last_vehicle_type   # 回复交通工具类型
    return result
  end
  #--------------------------------------------------------------------------
  # ● 判断飞船降落通行度
  #     x：X 座标
  #     y：Y 座标
  #--------------------------------------------------------------------------
  def airship_land_ok?(x, y)
    unless $game_map.airship_land_ok?(x, y)
      return false    # 指定地图图块无法降落
    end
    unless $game_map.events_xy(x, y).empty?
      return false    # 不可降落于事件之上
    end
    return true       # 可以降落
  end
  #--------------------------------------------------------------------------
  # ● 判断是否在交通工具上
  #--------------------------------------------------------------------------
  def in_vehicle?
    return @vehicle_type >= 0
  end
  #--------------------------------------------------------------------------
  # ● 判断是否在飞船之上
  #--------------------------------------------------------------------------
  def in_airship?
    return @vehicle_type == 2
  end
  #--------------------------------------------------------------------------
  # ● 判断是否奔跑中
  #--------------------------------------------------------------------------
  def dash?
    return false if @move_route_forcing
    return false if $game_map.disable_dash?
    return false if in_vehicle?
    return Input.press?(Input::A)
  end
  #--------------------------------------------------------------------------
  # ● 判断是否是游戏测试通行状态
  #--------------------------------------------------------------------------
  def debug_through?
    return false unless $TEST
    return Input.press?(Input::CTRL)
  end
  #--------------------------------------------------------------------------
  # ● 设置地图画面座标为画面中央
  #     x：X 座标
  #     y：Y 座标
  #--------------------------------------------------------------------------
  def center(x, y)
    display_x = x * 256 - CENTER_X                    # 计算座标
    unless $game_map.loop_horizontal?                 # 非横向回圈的场合
      max_x = ($game_map.width - 17) * 256            # 计算最大值
      display_x = [0, [display_x, max_x].min].max     # 校正座标
    end
    display_y = y * 256 - CENTER_Y                    # 计算座标
    unless $game_map.loop_vertical?                   # 非横向回圈的场合
      max_y = ($game_map.height - 13) * 256           # 计算最大值
      display_y = [0, [display_y, max_y].min].max     # 校正座标
    end
    $game_map.set_display_pos(display_x, display_y)   # 改变地图位置
  end
  #--------------------------------------------------------------------------
  # ● 移动至指定位置
  #     x：X 座标
  #     y：Y 座标
  #--------------------------------------------------------------------------
  def moveto(x, y)
    super
    center(x, y)                                      # 居中对齐
    make_encounter_count                              # 初始化遇敌
    if in_vehicle?                                    # 在交通工具中的场合
      vehicle = $game_map.vehicles[@vehicle_type]     # 获取交通工具
      vehicle.refresh                                 # 刷新交通工具
    end
  end
  #--------------------------------------------------------------------------
  # ● 增加步数
  #--------------------------------------------------------------------------
  def increase_steps
    super
    return if @move_route_forcing
    return if in_vehicle?
    $game_party.increase_steps
    $game_party.on_player_walk
  end
  #--------------------------------------------------------------------------
  # ● 设置遇敌计数
  #--------------------------------------------------------------------------
  def encounter_count
    return @encounter_count
  end
  #--------------------------------------------------------------------------
  # ● 初始化遇敌计数
  #--------------------------------------------------------------------------
  def make_encounter_count
    if $game_map.map_id != 0
      n = $game_map.encounter_step
      @encounter_count = rand(n) + rand(n) + 1  # 好比掷两个骰子
    end
  end
  #--------------------------------------------------------------------------
  # ● 判断是否在地图区域中
  #     area : 区域数据（RPG::Area）
  #--------------------------------------------------------------------------
  def in_area?(area)
    return false if area == nil
    return false if $game_map.map_id != area.map_id
    return false if @x < area.rect.x
    return false if @y < area.rect.y
    return false if @x >= area.rect.x + area.rect.width
    return false if @y >= area.rect.y + area.rect.height
    return true
  end
  #--------------------------------------------------------------------------
  # ● 生成遇敌队伍
  #--------------------------------------------------------------------------
  def make_encounter_troop_id
    encounter_list = $game_map.encounter_list.clone
    for area in $data_areas.values
      encounter_list += area.encounter_list if in_area?(area)
    end
    if encounter_list.empty?
      make_encounter_count
      return 0
    end
    return encounter_list[rand(encounter_list.size)]
  end
  #--------------------------------------------------------------------------
  # ● 刷新
  #--------------------------------------------------------------------------
  def refresh
    if $game_party.members.size == 0
      @character_name = ""
      @character_index = 0
    else
      actor = $game_party.members[0]   # 获取队伍第一人
      @character_name = actor.character_name
      @character_index = actor.character_index
    end
  end
  #--------------------------------------------------------------------------
  # ● 判断同位置事件是否被触发
  #     triggers : 触发数组
  #--------------------------------------------------------------------------
  def check_event_trigger_here(triggers)
    return false if $game_map.interpreter.running?
    result = false
    for event in $game_map.events_xy(@x, @y)
      if triggers.include?(event.trigger) and event.priority_type != 1
        event.start
        result = true if event.starting
      end
    end
    return result
  end
  #--------------------------------------------------------------------------
  # ● 确认前方事件是否被触发
  #     triggers : 触发数组
  #--------------------------------------------------------------------------
  def check_event_trigger_there(triggers)
    return false if $game_map.interpreter.running?
    result = false
    front_x = $game_map.x_with_direction(@x, @direction)
    front_y = $game_map.y_with_direction(@y, @direction)
    for event in $game_map.events_xy(front_x, front_y)
      if triggers.include?(event.trigger) and event.priority_type == 1
        event.start
        result = true
      end
    end
    if result == false and $game_map.counter?(front_x, front_y)
      front_x = $game_map.x_with_direction(front_x, @direction)
      front_y = $game_map.y_with_direction(front_y, @direction)
      for event in $game_map.events_xy(front_x, front_y)
        if triggers.include?(event.trigger) and event.priority_type == 1
          event.start
          result = true
        end
      end
    end
    return result
  end
  #--------------------------------------------------------------------------
  # ● 判断接触事件是否被触发
  #     x：X 座标
  #     y：Y 座标
  #--------------------------------------------------------------------------
  def check_event_trigger_touch(x, y)
    x -=  $game_map.width if $game_map.loop_horizontal? and x == $game_map.width
    y -=  $game_map.height if $game_map.loop_vertical? and y == $game_map.height
    return false if $game_map.interpreter.running?
    result = false
    for event in $game_map.events_xy(x, y)
      if [1,2].include?(event.trigger) and event.priority_type == 1
        event.start
        result = true
      end
    end
    return result
  end
  #--------------------------------------------------------------------------
  # ● 方向键移动处理
  #--------------------------------------------------------------------------
  def move_by_input
    return unless movable?
    return if $game_map.interpreter.running?
    case Input.dir4
      when 2;  move_down
      when 4;  move_left
      when 6;  move_right
      when 8;  move_up
    end
  end
  #--------------------------------------------------------------------------
  # ● 可以行动判定
  #--------------------------------------------------------------------------
  def movable?
    return false if moving?                     # 正在移动
    return false if @move_route_forcing         # 强制移动路线
    return false if @vehicle_getting_on         # 正在乘上交通工具
    return false if @vehicle_getting_off        # 正在乘上交通工具
    return false if $game_message.visible       # 正在显示讯息
    return false if in_airship? and not $game_map.airship.movable?
    return true
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    last_real_x = @real_x
    last_real_y = @real_y
    last_moving = moving?
    move_by_input
    super
    update_scroll(last_real_x, last_real_y)
    update_vehicle
    update_nonmoving(last_moving)
  end
  #--------------------------------------------------------------------------
  # ● 更新滚动
  #--------------------------------------------------------------------------
  def update_scroll(last_real_x, last_real_y)
    ax1 = $game_map.adjust_x(last_real_x)
    ay1 = $game_map.adjust_y(last_real_y)
    ax2 = $game_map.adjust_x(@real_x)
    ay2 = $game_map.adjust_y(@real_y)
    if ay2 > ay1 and ay2 > CENTER_Y
      $game_map.scroll_down(ay2 - ay1)
    end
    if ax2 < ax1 and ax2 < CENTER_X
      $game_map.scroll_left(ax1 - ax2)
    end
    if ax2 > ax1 and ax2 > CENTER_X
      $game_map.scroll_right(ax2 - ax1)
    end
    if ay2 < ay1 and ay2 < CENTER_Y
      $game_map.scroll_up(ay1 - ay2)
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新交通工具
  #--------------------------------------------------------------------------
  def update_vehicle
    return unless in_vehicle?
    vehicle = $game_map.vehicles[@vehicle_type]
    if @vehicle_getting_on                    # 正在乘上？
      if not moving?
        @direction = vehicle.direction        # 更改方向
        @move_speed = vehicle.speed           # 更改移动速度
        @vehicle_getting_on = false           # 结束乘上操作
        @transparent = true                   # 透明状态
      end
    elsif @vehicle_getting_off                # 正在离开？
      if not moving? and vehicle.altitude == 0
        @vehicle_getting_off = false          # 结束乘上操作
        @vehicle_type = -1                    # 清除交通工具类型
        @transparent = false                  # 移除透明状态
      end
    else                                      # 正在交通工具之上
      vehicle.sync_with_player                # 与角色同步移动
    end
  end
  #--------------------------------------------------------------------------
  # ● 非移动中更新
  #     last_moving : 之前是否正在移动
  #--------------------------------------------------------------------------
  def update_nonmoving(last_moving)
    return if $game_map.interpreter.running?
    return if moving?
    return if check_touch_event if last_moving
    if not $game_message.visible and Input.trigger?(Input::C)
      return if get_on_off_vehicle
      return if check_action_event
    end
    update_encounter if last_moving
  end
  #--------------------------------------------------------------------------
  # ● 更新遇敌
  #--------------------------------------------------------------------------
  def update_encounter
    return if $TEST and Input.press?(Input::CTRL)   # 测试游戏中
    return if in_vehicle?                           # 乘坐交通工具中
    if $game_map.bush?(@x, @y)                      # 在草木繁茂处
      @encounter_count -= 2                         # 将遇敌计数减2
    else                                            # 否则
      @encounter_count -= 1                         # 将遇敌计数减1
    end
  end
  #--------------------------------------------------------------------------
  # ● 判断事件是否由接触触发（重叠）
  #--------------------------------------------------------------------------
  def check_touch_event
    return false if in_airship?
    return check_event_trigger_here([1,2])
  end
  #--------------------------------------------------------------------------
  # ● 判断事件是否由确认键触发
  #--------------------------------------------------------------------------
  def check_action_event
    return false if in_airship?
    return true if check_event_trigger_here([0])
    return check_event_trigger_there([0,1,2])
  end
  #--------------------------------------------------------------------------
  # ● 上下交通工具
  #--------------------------------------------------------------------------
  def get_on_off_vehicle
    return false unless movable?
    if in_vehicle?
      return get_off_vehicle
    else
      return get_on_vehicle
    end
  end
  #--------------------------------------------------------------------------
  # ● 乘上交通工具
  #    以角色非在交通工具之上为前提
  #--------------------------------------------------------------------------
  def get_on_vehicle
    front_x = $game_map.x_with_direction(@x, @direction)
    front_y = $game_map.y_with_direction(@y, @direction)
    if $game_map.airship.pos?(@x, @y)       # 判断角色是否与飞船重叠
      get_on_airship
      return true
    elsif $game_map.ship.pos?(front_x, front_y)   # 判断前方是否有大型船
      get_on_ship
      return true
    elsif $game_map.boat.pos?(front_x, front_y)   # 判断前方是否有小型船
      get_on_boat
      return true
    end
    return false
  end
  #--------------------------------------------------------------------------
  # ● 乘上小型船
  #--------------------------------------------------------------------------
  def get_on_boat
    @vehicle_getting_on = true        # 乘上交通工具标志
    @vehicle_type = 0                 # 设置交通工具类型
    force_move_forward                # 向前一步
    @walking_bgm = RPG::BGM::last     # 记忆行走 BGM
    $game_map.boat.get_on             # 上船处理
  end
  #--------------------------------------------------------------------------
  # ● 乘上大型船
  #--------------------------------------------------------------------------
  def get_on_ship
    @vehicle_getting_on = true        # 乘上交通工具标志
    @vehicle_type = 1                 # 设置交通工具类型
    force_move_forward                # 向前一步
    @walking_bgm = RPG::BGM::last     # 记忆行走 BGM
    $game_map.ship.get_on             # 上船处理
  end
  #--------------------------------------------------------------------------
  # ● 乘上飞船
  #--------------------------------------------------------------------------
  def get_on_airship
    @vehicle_getting_on = true        # 乘上交通工具标志
    @vehicle_type = 2                 # 设置交通工具类型
    @through = true                   # 允许穿透
    @walking_bgm = RPG::BGM::last     # 记忆行走 BGM
    $game_map.airship.get_on          # 上船处理
  end
  #--------------------------------------------------------------------------
  # ● 离开交通工具
  #    以角色在交通工具之上为前提
  #--------------------------------------------------------------------------
  def get_off_vehicle
    if in_airship?                                # 在飞船之上
      return unless airship_land_ok?(@x, @y)      # 判断是否能降落
    else                                          # 在大/小型船上
      front_x = $game_map.x_with_direction(@x, @direction)
      front_y = $game_map.y_with_direction(@y, @direction)
      return unless can_walk?(front_x, front_y)   # 判断是否能下船
    end
    $game_map.vehicles[@vehicle_type].get_off     # 下船处理
    if in_airship?                                # 飞船
      @direction = 2                              # 面向下
    else                                          # 大/小型船
      force_move_forward                          # 向前一步
      @transparent = false                        # 移除透明状态
    end
    @vehicle_getting_off = true                   # 开始下船处理
    @move_speed = 4                               # 回复移动速度
    @through = false                              # 不允许穿透
    @walking_bgm.play                             # 回复行走 BGM
    make_encounter_count                          # 初始化遇敌
  end
  #--------------------------------------------------------------------------
  # ● 强迫向前一步
  #--------------------------------------------------------------------------
  def force_move_forward
    @through = true         # 允许穿透
    move_forward            # 向前一步
    @through = false        # 不允许穿透
  end
end

#==============================================================================
# ■ Game_Interpreter
#------------------------------------------------------------------------------
# 　执行事件命令的解释器。本类在 Game_Map 类、Game_Troop 类、与
# Game_Event 类的内部使用。
#==============================================================================

class Game_Interpreter
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     depth : 堆置深度
  #     main  : 主标志
  #--------------------------------------------------------------------------
  def initialize(depth = 0, main = false)
    @depth = depth
    @main = main
    if @depth > 100
      print("已经调用过多公共事件。")
      exit
    end
    clear
  end
  #--------------------------------------------------------------------------
  # ● 清除
  #--------------------------------------------------------------------------
  def clear
    @map_id = 0                       # 启动时的地图 ID
    @original_event_id = 0            # 启动时的事件 ID
    @event_id = 0                     # 事件 ID
    @list = nil                       # 执行内容
    @index = 0                        # 索引
    @message_waiting = false          # 等待讯息结束
    @moving_character = nil           # 等待移动结束
    @wait_count = 0                   # 等待祯数
    @child_interpreter = nil          # 子解释器
    @branch = {}                      # 分支数据
  end
  #--------------------------------------------------------------------------
  # ● 设置事件
  #     list     : 执行内容
  #     event_id : 事件 ID
  #--------------------------------------------------------------------------
  def setup(list, event_id = 0)
    clear                             # 清除注释器的内部状态
    @map_id = $game_map.map_id        # 记忆地图 ID
    @original_event_id = event_id     # 记忆事件 ID
    @event_id = event_id              # 记忆事件 ID
    @list = list                      # 记忆执行内容
    @index = 0                        # 初始化索引
    cancel_menu_call                  # 取消呼叫菜单
  end
  #--------------------------------------------------------------------------
  # ● 取消呼叫菜单
  #    处理当角色正在移动而取消键被按下的场合，在呼叫菜单的情况下执行事件。
  #--------------------------------------------------------------------------
  def cancel_menu_call
    if @main and $game_temp.next_scene == "menu" and $game_temp.menu_beep
      $game_temp.next_scene = nil
      $game_temp.menu_beep = false
    end
  end
  #--------------------------------------------------------------------------
  # ● 执行中判定
  #--------------------------------------------------------------------------
  def running?
    return @list != nil
  end
  #--------------------------------------------------------------------------
  # ● 设置启动中事件
  #--------------------------------------------------------------------------
  def setup_starting_event
    if $game_map.need_refresh             # 必要时刷新地图
      $game_map.refresh
    end
    if $game_temp.common_event_id > 0     # 如果调用的公共事件被预约的情况下
      setup($data_common_events[$game_temp.common_event_id].list)
      $game_temp.common_event_id = 0
      return
    end
    for event in $game_map.events.values  # 地图事件
      if event.starting                   # 如果找到了启动中的事件
        event.clear_starting              # 清除启动中标志
        setup(event.list, event.id)       # 设置事件
        return
      end
    end
    for event in $data_common_events.compact      # 公共事件
      if event.trigger == 1 and                   # 目标的自动执行
          $game_switches[event.switch_id] == true  # 开关为 ON 的情况下
        setup(event.list)                         # 设置事件
        return
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 刷新画面
  #--------------------------------------------------------------------------
  def update
    loop do
      if $game_map.map_id != @map_id        # 如果地图与事件启动有差异
        @event_id = 0                       # 事件 ID 设置为 0
      end
      if @child_interpreter != nil          # 子解释器存在的情况下
        @child_interpreter.update           # 更新子解释器
        if @child_interpreter.running?      # 子注释器执行中的情况下
          return                            # 返回
        else                                # 子注释器执行结束的情况下
          @child_interpreter = nil          # 删除子解释器
        end
      end
      if @message_waiting                   # 等待信息结束
        return
      end
      if @moving_character != nil           # 等待移动结束
        if @moving_character.move_route_forcing
          return
        end
        @moving_character = nil
      end
      if @wait_count > 0                    # 等待
        @wait_count -= 1
        return
      end
      if $game_troop.forcing_battler != nil # 强制战斗行动
        return
      end
      if $game_temp.next_scene != nil       # 正在转换场景
        return
      end
      if @list == nil                       # 执行内容列表为空的情况下
        setup_starting_event if @main       # 设置启动中的事件
        return if @list == nil              # 什么都没有设置的情况下
      end
      return if execute_command == false    # 尝试执行事件列表
      @index += 1                           # 推进索引
    end
  end
  #--------------------------------------------------------------------------
  # ● 以ID做角色重述
  #     param : 1 以上为 ID、0 为全体
  #--------------------------------------------------------------------------
  def iterate_actor_id(param)
    if param == 0       # 全体
      for actor in $game_party.members do yield actor end
    else                # 单体
      actor = $game_actors[param]
      yield actor unless actor == nil
    end
  end
  #--------------------------------------------------------------------------
  # ● 以索引做角色重述
  #     param : 0 以上为索引、-1 为全体
  #--------------------------------------------------------------------------
  def iterate_actor_index(param)
    if param == -1      # 全体
      for actor in $game_party.members do yield actor end
    else                # 单体
      actor = $game_party.members[param]
      yield actor unless actor == nil
    end
  end
  #--------------------------------------------------------------------------
  # ● 以索引做敌人重述
  #     param : 0 以上为索引、-1 为全体
  #--------------------------------------------------------------------------
  def iterate_enemy_index(param)
    if param == -1      # 全体
      for enemy in $game_troop.members do yield enemy end
    else                # 单体
      enemy = $game_troop.members[param]
      yield enemy unless enemy == nil
    end
  end
  #--------------------------------------------------------------------------
  # ● 战斗者重述(要考虑全体队伍、全体同伴)
  #     param1 : 0 为敌人、1 为角色
  #     param : 0 以上为索引、-1 为全体
  #--------------------------------------------------------------------------
  def iterate_battler(param1, param2)
    if $game_temp.in_battle
      if param1 == 0      # 敌人
        iterate_enemy_index(param2) do |enemy| yield enemy end
      else                # 角色
        iterate_actor_index(param2) do |enemy| yield enemy end
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 获取画面命令目标
  #--------------------------------------------------------------------------
  def screen
    if $game_temp.in_battle
      return $game_troop.screen
    else
      return $game_map.screen
    end
  end
  #--------------------------------------------------------------------------
  # ● 事件命令执行
  #--------------------------------------------------------------------------
  def execute_command
    if @index >= @list.size-1
      command_end
      return true
    else
      @params = @list[@index].parameters
      @indent = @list[@index].indent
      case @list[@index].code
        when 101  # 显示文章
          return command_101
        when 102  # 显示选择项
          return command_102
        when 402  # [**] 的情况下
          return command_402
        when 403  # 取消的情况下
          return command_403
        when 103  # 数值输入
          return command_103
        when 111  # 条件分歧
          return command_111
        when 411  # 除此以外的场合
          return command_411
        when 112  # 循环
          return command_112
        when 413  # 以上循环
          return command_413
        when 113  # 中断寻换
          return command_113
        when 115  # 中断事件处理
          return command_115
        when 117  # 公共事件
          return command_117
        when 118  # 标签
          return command_118
        when 119  # 标签跳转
          return command_119
        when 121  # 开关控制
          return command_121
        when 122  # 变数控制
          return command_122
        when 123  # 独立开关控制
          return command_123
        when 124  # 计时器控制
          return command_124
        when 125  # 增减金钱
          return command_125
        when 126  # 增减物品
          return command_126
        when 127  # 增减武器
          return command_127
        when 128  # 增减防具
          return command_128
        when 129  # 增减队员
          return command_129
        when 132  # 更改战斗 BGM
          return command_132
        when 133  # 更改战斗结束 ME
          return command_133
        when 134  # 更改禁止存档选项
          return command_134
        when 135  # 更改禁止菜单选项
          return command_135
        when 136  # 更改禁止遇敌选项
          return command_136
        when 201  # 场所移动
          return command_201
        when 202  # 设置交通工具位置
          return command_202
        when 203  # 设置事件位置
          return command_203
        when 204  # 滚动地图
          return command_204
        when 205  # 设置移动路线
          return command_205
        when 206  # 交通工具乘降
          return command_206
        when 211  # 更改透明状态
          return command_211
        when 212  # 显示动画
          return command_212
        when 213  # 显示心情图标
          return command_213
        when 214  # 暂时消除事件
          return command_214
        when 221  # 淡出画面
          return command_221
        when 222  # 淡入画面
          return command_222
        when 223  # 更改画面色调
          return command_223
        when 224  # 画面闪光
          return command_224
        when 225  # 画面震动
          return command_225
        when 230  # 等待
          return command_230
        when 231  # 显示图片
          return command_231
        when 232  # 移动图片
          return command_232
        when 233  # 旋转图片
          return command_233
        when 234  # 更改图片色调
          return command_234
        when 235  # 消除图片
          return command_235
        when 236  # 设置天候效果
          return command_236
        when 241  # 播放 BGM
          return command_241
        when 242  # 淡出 BGM
          return command_242
        when 245  # 播放 BGS
          return command_245
        when 246  # 淡出 BGS
          return command_246
        when 249  # 播放 ME
          return command_249
        when 250  # 播放 SE
          return command_250
        when 251  # 停止 SE
          return command_251
        when 301  # 战斗处理
          return command_301
        when 601  # 胜利的场合
          return command_601
        when 602  # 逃走的场合
          return command_602
        when 603  # 失败的场合
          return command_603
        when 302  # 商店处理
          return command_302
        when 303  # 名称输入处理
          return command_303
        when 311  # 增减体力
          return command_311
        when 312  # 增减魔力
          return command_312
        when 313  # 增减状态
          return command_313
        when 314  # 全部回复
          return command_314
        when 315  # 增减经验值
          return command_315
        when 316  # 增减等级
          return command_316
        when 317  # 增减能力值
          return command_317
        when 318  # 增减技能
          return command_318
        when 319  # 变更装备
          return command_319
        when 320  # 变更姓名
          return command_320
        when 321  # 变更职业
          return command_321
        when 322  # 更改角色图像
          return command_322
        when 323  # 更改交通工具图像
          return command_323
        when 331  # 增减敌人体力
          return command_331
        when 332  # 增减敌人魔力
          return command_332
        when 333  # 增减敌人状态
          return command_333
        when 334  # 敌人全部回复
          return command_334
        when 335  # 敌人出现
          return command_335
        when 336  # 敌人变身
          return command_336
        when 337  # 显示战斗动画
          return command_337
        when 339  # 强制行动
          return command_339
        when 340  # 中断战斗
          return command_340
        when 351  # 打开菜单画面
          return command_351
        when 352  # 打开存档画面
          return command_352
        when 353  # 游戏结束
          return command_353
        when 354  # 回到标题画面
          return command_354
        when 355  # 脚本
          return command_355
        else      # 其他
          return true
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 结束事件
  #--------------------------------------------------------------------------
  def command_end
    @list = nil                             # 清除执行内容列表
    if @main and @event_id > 0              # 主地图事件与事件 ID 有效的情况下
      $game_map.events[@event_id].unlock    # 解除事件锁定
    end
  end
  #--------------------------------------------------------------------------
  # ● 指令跳转
  #--------------------------------------------------------------------------
  def command_skip
    while @list[@index+1].indent > @indent  # 有缩进的场合
      @index += 1                           # 索引增值
    end
  end
  #--------------------------------------------------------------------------
  # ●   # ● 获取角色
  #     param : -1：角色，　0：本事件，　其他：事件ID。
  #--------------------------------------------------------------------------
  def get_character(param)
    case param
      when -1   # 角色的场合
        return $game_player
      when 0    # 本事件的场合
        events = $game_map.events
        return events == nil ? nil : events[@event_id]
      else      # 指定事件的场合
        events = $game_map.events
        return events == nil ? nil : events[param]
    end
  end
  #--------------------------------------------------------------------------
  # ● 计算操作的值
  #     operation    : 操作（0：增加 1：减少）
  #     operand_type : 操作数类型 (0：常量 1：变量)
  #     operand      : 操作数 (数值或变量 ID)
  #--------------------------------------------------------------------------
  def operate_value(operation, operand_type, operand)
    if operand_type == 0
      value = operand
    else
      value = $game_variables[operand]
    end
    if operation == 1
      value = -value
    end
    return value
  end
  #--------------------------------------------------------------------------
  # ● 显示文章
  #--------------------------------------------------------------------------
  def command_101
    unless $game_message.busy
      $game_message.face_name = @params[0]
      $game_message.face_index = @params[1]
      $game_message.background = @params[2]
      $game_message.position = @params[3]
      @index += 1
      while @list[@index].code == 401       # 文章数据
        $game_message.texts.push(@list[@index].parameters[0])
        @index += 1
      end
      if @list[@index].code == 102          # 显示选择项
        setup_choices(@list[@index].parameters)
      elsif @list[@index].code == 103       # 数值输入处理
        setup_num_input(@list[@index].parameters)
      end
      set_message_waiting                   # 设置等待信息结束
    end
    return false
  end
  #--------------------------------------------------------------------------
  # ● 设置等待信息结束标志和返回调用
  #--------------------------------------------------------------------------
  def set_message_waiting
    @message_waiting = true
    $game_message.main_proc = Proc.new { @message_waiting = false }
  end
  #--------------------------------------------------------------------------
  # ● 显示选择项
  #--------------------------------------------------------------------------
  def command_102
    unless $game_message.busy
      setup_choices(@params)                # 设置
      set_message_waiting                   # 设置等待信息结束
    end
    return false
  end
  #--------------------------------------------------------------------------
  # ● 设置选择项
  #--------------------------------------------------------------------------
  def setup_choices(params)
    if $game_message.texts.size <= 4 - params[0].size
      $game_message.choice_start = $game_message.texts.size
      $game_message.choice_max = params[0].size
      for s in params[0]
        $game_message.texts.push(s)
      end
      $game_message.choice_cancel_type = params[1]
      $game_message.choice_proc = Proc.new { |n| @branch[@indent] = n }
      @index += 1
    end
  end
  #--------------------------------------------------------------------------
  # ● [**] 的情况下
  #--------------------------------------------------------------------------
  def command_402
    if @branch[@indent] == @params[0]       # 如果符合的选择项被选择
      @branch.delete(@indent)               # 删除分支数据
      return true                           # 继续
    else                                    # 不符合条件的情况下
      return command_skip                   # 跳过指令
    end
  end
  #--------------------------------------------------------------------------
  # ● 取消的情况下
  #--------------------------------------------------------------------------
  def command_403
    if @branch[@indent] == 4                # 如果选择了取消选择项
      @branch.delete(@indent)               # 删除分支数据
      return true                           # 继续
    else                                    # 不符合条件的情况下
      return command_skip                   # 跳过指令
    end
  end
  #--------------------------------------------------------------------------
  # ● 处理数值输入
  #--------------------------------------------------------------------------
  def command_103
    unless $game_message.busy
      setup_num_input(@params)              # 设置数值输入
      set_message_waiting                   # 设置等待信息结束
    end
    return false
  end
  #--------------------------------------------------------------------------
  # ● 设置数值输入
  #--------------------------------------------------------------------------
  def setup_num_input(params)
    if $game_message.texts.size < 4
      $game_message.num_input_variable_id = params[0]
      $game_message.num_input_digits_max = params[1]
      @index += 1
    end
  end
  #--------------------------------------------------------------------------
  # ● 条件分歧
  #--------------------------------------------------------------------------
  def command_111
    result = false
    case @params[0]
      when 0  # 开关
        result = ($game_switches[@params[1]] == (@params[2] == 0))
      when 1  # 变量
        value1 = $game_variables[@params[1]]
        if @params[2] == 0
          value2 = @params[3]
        else
          value2 = $game_variables[@params[3]]
        end
        case @params[4]
          when 0  # 数值 1 等于 数值 2
            result = (value1 == value2)
          when 1  # 数值 1 大于或等于 数值 2
            result = (value1 >= value2)
          when 2  # 数值 1 小于等于 数值 2
            result = (value1 <= value2)
          when 3  # 数值 1 大于 数值 2
            result = (value1 > value2)
          when 4  # 数值 1 小于 数值 2
            result = (value1 < value2)
          when 5  # 数值 1 不等于 数值 2
            result = (value1 != value2)
        end
      when 2  # 独立开关
        if @original_event_id > 0
          key = [@map_id, @original_event_id, @params[1]]
          if @params[2] == 0
            result = ($game_self_switches[key] == true)
          else
            result = ($game_self_switches[key] != true)
          end
        end
      when 3  # 计时器
        if $game_system.timer_working
          sec = $game_system.timer / Graphics.frame_rate
          if @params[2] == 0
            result = (sec >= @params[1])
          else
            result = (sec <= @params[1])
          end
        end
      when 4  # 角色
        actor = $game_actors[@params[1]]
        if actor != nil
          case @params[2]
            when 0  # 角色在队伍中
              result = ($game_party.members.include?(actor))
            when 1  # 角色名称
              result = (actor.name == @params[3])
            when 2  # 角色已学会技能
              result = (actor.skill_learn?($data_skills[@params[3]]))
            when 3  # 角色已装备武器
              result = (actor.weapons.include?($data_weapons[@params[3]]))
            when 4  # 角色已装备武器
              result = (actor.armors.include?($data_armors[@params[3]]))
            when 5  # 状态
              result = (actor.state?(@params[3]))
          end
        end
      when 5  # 敌人
        enemy = $game_troop.members[@params[1]]
        if enemy != nil
          case @params[2]
            when 0  # 出现
              result = (enemy.exist?)
            when 1  # 状态为…
              result = (enemy.state?(@params[3]))
          end
        end
      when 6  # 角色
        character = get_character(@params[1])
        if character != nil
          result = (character.direction == @params[2])
        end
      when 7  # 金钱
        if @params[2] == 0
          result = ($game_party.gold >= @params[1])
        else
          result = ($game_party.gold <= @params[1])
        end
      when 8  # 物品
        result = $game_party.has_item?($data_items[@params[1]])
      when 9  # 武器
        result = $game_party.has_item?($data_weapons[@params[1]], @params[2])
      when 10  # 防具
        result = $game_party.has_item?($data_armors[@params[1]], @params[2])
      when 11  # 按钮
        result = Input.press?(@params[1])
      when 12  # 脚本
        result = eval(@params[1])
      when 13  # 交通工具
        result = ($game_player.vehicle_type == @params[1])
    end
    @branch[@indent] = result     # 判断结果保存在 hash 中
    if @branch[@indent] == true
      @branch.delete(@indent)
      return true
    end
    return command_skip
  end
  #--------------------------------------------------------------------------
  # ● 除此以外的场合
  #--------------------------------------------------------------------------
  def command_411
    if @branch[@indent] == false
      @branch.delete(@indent)
      return true
    end
    return command_skip
  end
  #--------------------------------------------------------------------------
  # ● 循环
  #--------------------------------------------------------------------------
  def command_112
    return true
  end
  #--------------------------------------------------------------------------
  # ● 以上循环
  #--------------------------------------------------------------------------
  def command_413
    begin
      @index -= 1
    end until @list[@index].indent == @indent
    return true
  end
  #--------------------------------------------------------------------------
  # ● 中断循环
  #--------------------------------------------------------------------------
  def command_113
    loop do
      @index += 1
      if @index >= @list.size-1
        return true
      end
      if @list[@index].code == 413 and    # 「以上循环」命令
          @list[@index].indent < @indent   # 缩进浅的情况下
        return true
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 中断事件处理
  #--------------------------------------------------------------------------
  def command_115
    command_end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 公共事件
  #--------------------------------------------------------------------------
  def command_117
    common_event = $data_common_events[@params[0]]
    if common_event != nil
      @child_interpreter = Game_Interpreter.new(@depth + 1)
      @child_interpreter.setup(common_event.list, @event_id)
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 标签
  #--------------------------------------------------------------------------
  def command_118
    return true
  end
  #--------------------------------------------------------------------------
  # ● 标签跳转
  #--------------------------------------------------------------------------
  def command_119
    label_name = @params[0]
    for i in 0...@list.size
      if @list[i].code == 118 and @list[i].parameters[0] == label_name
        @index = i
        return true
      end
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 开关操作
  #--------------------------------------------------------------------------
  def command_121
    for i in @params[0] .. @params[1]   # 批次操作
      $game_switches[i] = (@params[2] == 0)
    end
    $game_map.need_refresh = true
    return true
  end
  #--------------------------------------------------------------------------
  # ● 变量操作
  #--------------------------------------------------------------------------
  def command_122
    value = 0
    case @params[3]  # 操作数
      when 0  # 常量
        value = @params[4]
      when 1  # 变量
        value = $game_variables[@params[4]]
      when 2  # 随机数
        value = @params[4] + rand(@params[5] - @params[4] + 1)
      when 3  # 物品
        value = $game_party.item_number($data_items[@params[4]])
      when 4  # 角色
        actor = $game_actors[@params[4]]
        if actor != nil
          case @params[5]
            when 0  # 等级
              value = actor.level
            when 1  # 经验值
              value = actor.exp
            when 2  # 体力
              value = actor.hp
            when 3  # 魔力
              value = actor.mp
            when 4  # 体力最大值
              value = actor.maxhp
            when 5  # 魔力最大值
              value = actor.maxmp
            when 6  # 攻击力
              value = actor.atk
            when 7  # 防御力
              value = actor.def
            when 8  # 精神力
              value = actor.spi
            when 9  # 敏捷
              value = actor.agi
          end
        end
      when 5  # 敌人
        enemy = $game_troop.members[@params[4]]
        if enemy != nil
          case @params[5]
            when 0  # 体力
              value = enemy.hp
            when 1  # 魔力
              value = enemy.mp
            when 2  # 体力最大值
              value = enemy.maxhp
            when 3  # 魔力最大值
              value = enemy.maxmp
            when 4  # 攻击力
              value = enemy.atk
            when 5  # 防御力
              value = enemy.def
            when 6  # 精神力
              value = enemy.spi
            when 7  # 敏捷
              value = enemy.agi
          end
        end
      when 6  # 角色
        character = get_character(@params[4])
        if character != nil
          case @params[5]
            when 0  # X 座标
              value = character.x
            when 1  # Y 座标
              value = character.y
            when 2  # 面向
              value = character.direction
            when 3  # 画面 X 座标
              value = character.screen_x
            when 4  # 画面 Y 座标
              value = character.screen_y
          end
        end
      when 7  # 其他
        case @params[4]
          when 0  # 地图 ID
            value = $game_map.map_id
          when 1  # 同伴人数
            value = $game_party.members.size
          when 2  # 所持金钱数
            value = $game_party.gold
          when 3  # 步数
            value = $game_party.steps
          when 4  # 游戏时间
            value = Graphics.frame_count / Graphics.frame_rate
          when 5  # 计时器
            value = $game_system.timer / Graphics.frame_rate
          when 6  # 存档次数
            value = $game_system.save_count
        end
    end
    for i in @params[0] .. @params[1]   # 批次操作
      case @params[2]  # 操作
        when 0  # 代入
          $game_variables[i] = value
        when 1  # 加法
          $game_variables[i] += value
        when 2  # 减法
          $game_variables[i] -= value
        when 3  # 乘法
          $game_variables[i] *= value
        when 4  # 除法
          $game_variables[i] /= value if value != 0
        when 5  # 取模运算
          $game_variables[i] %= value if value != 0
      end
      if $game_variables[i] > 99999999    # 上限检查
        $game_variables[i] = 99999999
      end
      if $game_variables[i] < -99999999   # 下限检查
        $game_variables[i] = -99999999
      end
    end
    $game_map.need_refresh = true
    return true
  end
  #--------------------------------------------------------------------------
  # ● 独立开关操作
  #--------------------------------------------------------------------------
  def command_123
    if @original_event_id > 0
      key = [@map_id, @original_event_id, @params[0]]
      $game_self_switches[key] = (@params[1] == 0)
    end
    $game_map.need_refresh = true
    return true
  end
  #--------------------------------------------------------------------------
  # ● 计时器操作
  #--------------------------------------------------------------------------
  def command_124
    if @params[0] == 0  # Start
      $game_system.timer = @params[1] * Graphics.frame_rate
      $game_system.timer_working = true
    end
    if @params[0] == 1  # Stop
      $game_system.timer_working = false
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 增减金钱
  #--------------------------------------------------------------------------
  def command_125
    value = operate_value(@params[0], @params[1], @params[2])
    $game_party.gain_gold(value)
    return true
  end
  #--------------------------------------------------------------------------
  # ● 增减物品
  #--------------------------------------------------------------------------
  def command_126
    value = operate_value(@params[1], @params[2], @params[3])
    $game_party.gain_item($data_items[@params[0]], value)
    $game_map.need_refresh = true
    return true
  end
  #--------------------------------------------------------------------------
  # ● 增减武器
  #--------------------------------------------------------------------------
  def command_127
    value = operate_value(@params[1], @params[2], @params[3])
    $game_party.gain_item($data_weapons[@params[0]], value, @params[4])
    return true
  end
  #--------------------------------------------------------------------------
  # ● 增减防具
  #--------------------------------------------------------------------------
  def command_128
    value = operate_value(@params[1], @params[2], @params[3])
    $game_party.gain_item($data_armors[@params[0]], value, @params[4])
    return true
  end
  #--------------------------------------------------------------------------
  # ● 增减队员
  #--------------------------------------------------------------------------
  def command_129
    actor = $game_actors[@params[0]]
    if actor != nil
      if @params[1] == 0    # 加入
        if @params[2] == 1  # 初始化
          $game_actors[@params[0]].setup(@params[0])
        end
        $game_party.add_actor(@params[0])
      else                  # 离开
        $game_party.remove_actor(@params[0])
      end
      $game_map.need_refresh = true
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 更改战斗 BGM
  #--------------------------------------------------------------------------
  def command_132
    $game_system.battle_bgm = @params[0]
    return true
  end
  #--------------------------------------------------------------------------
  # ● 更改战斗结束 ME
  #--------------------------------------------------------------------------
  def command_133
    $game_system.battle_end_me = @params[0]
    return true
  end
  #--------------------------------------------------------------------------
  # ● 更改禁止存档选项
  #--------------------------------------------------------------------------
  def command_134
    $game_system.save_disabled = (@params[0] == 0)
    return true
  end
  #--------------------------------------------------------------------------
  # ● 更改禁止菜单选项
  #--------------------------------------------------------------------------
  def command_135
    $game_system.menu_disabled = (@params[0] == 0)
    return true
  end
  #--------------------------------------------------------------------------
  # ● 更改禁止遇敌选项
  #--------------------------------------------------------------------------
  def command_136
    $game_system.encounter_disabled = (@params[0] == 0)
    $game_player.make_encounter_count
    return true
  end
  #--------------------------------------------------------------------------
  # ● 场所移动
  #--------------------------------------------------------------------------
  def command_201
    return true if $game_temp.in_battle
    if $game_player.transfer? or            # 场所移动中
        $game_message.visible                # 信息显示中
      return false
    end
    if @params[0] == 0                      # 指定方法为 [直接指定] 的情况下
      map_id = @params[1]
      x = @params[2]
      y = @params[3]
      direction = @params[4]
    else                                    # 指定方法为 [使用变量指定] 的情况下
      map_id = $game_variables[@params[1]]
      x = $game_variables[@params[2]]
      y = $game_variables[@params[3]]
      direction = @params[4]
    end
    $game_player.reserve_transfer(map_id, x, y, direction)
    @index += 1
    return false
  end
  #--------------------------------------------------------------------------
  # ● 设置交通工具位置
  #--------------------------------------------------------------------------
  def command_202
    if @params[1] == 0                      # 指定方法为 [直接指定] 的情况下
      map_id = @params[2]
      x = @params[3]
      y = @params[4]
    else                                    # 指定方法为 [使用变量指定] 的情况下
      map_id = $game_variables[@params[2]]
      x = $game_variables[@params[3]]
      y = $game_variables[@params[4]]
    end
    if @params[0] == 0                      # 小型船
      $game_map.boat.set_location(map_id, x, y)
    elsif @params[0] == 1                   # 大型船
      $game_map.ship.set_location(map_id, x, y)
    else                                    # 飞船
      $game_map.airship.set_location(map_id, x, y)
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 设置事件位置
  #--------------------------------------------------------------------------
  def command_203
    character = get_character(@params[0])
    if character != nil
      if @params[1] == 0                      # 指定方法为 [直接指定] 的情况下
        character.moveto(@params[2], @params[3])
      elsif @params[1] == 1                   # 指定方法为 [使用变量指定] 的情况下
        new_x = $game_variables[@params[2]]
        new_y = $game_variables[@params[3]]
        character.moveto(new_x, new_y)
      else                                    # 指定方法为 [与其它事件交换] 的情况下
        old_x = character.x
        old_y = character.y
        character2 = get_character(@params[2])
        if character2 != nil
          character.moveto(character2.x, character2.y)
          character2.moveto(old_x, old_y)
        end
      end
      case @params[4]   # 面向
        when 8  # 上
          character.turn_up
        when 6  # 右
          character.turn_right
        when 2  # 下
          character.turn_down
        when 4  # 左
          character.turn_left
      end
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 地图滚动
  #--------------------------------------------------------------------------
  def command_204
    return true if $game_temp.in_battle
    return false if $game_map.scrolling?
    $game_map.start_scroll(@params[0], @params[1], @params[2])
    return true
  end
  #--------------------------------------------------------------------------
  # ● 设置移动路线
  #--------------------------------------------------------------------------
  def command_205
    if $game_map.need_refresh
      $game_map.refresh
    end
    character = get_character(@params[0])
    if character != nil
      character.force_move_route(@params[1])
      @moving_character = character if @params[1].wait
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 交通工具乘降
  #--------------------------------------------------------------------------
  def command_206
    $game_player.get_on_off_vehicle
    return true
  end
  #--------------------------------------------------------------------------
  # ● 变更透明状态
  #--------------------------------------------------------------------------
  def command_211
    $game_player.transparent = (@params[0] == 0)
    return true
  end
  #--------------------------------------------------------------------------
  # ● 显示动画
  #--------------------------------------------------------------------------
  def command_212
    character = get_character(@params[0])
    if character != nil
      character.animation_id = @params[1]
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 显示心情图标
  #--------------------------------------------------------------------------
  def command_213
    character = get_character(@params[0])
    if character != nil
      character.balloon_id = @params[1]
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 暂时消除事件
  #--------------------------------------------------------------------------
  def command_214
    if @event_id > 0
      $game_map.events[@event_id].erase
    end
    @index += 1
    return false
  end
  #--------------------------------------------------------------------------
  # ● 淡出画面
  #--------------------------------------------------------------------------
  def command_221
    if $game_message.visible
      return false
    else
      screen.start_fadeout(30)
      @wait_count = 30
      return true
    end
  end
  #--------------------------------------------------------------------------
  # ● 淡入画面
  #--------------------------------------------------------------------------
  def command_222
    if $game_message.visible
      return false
    else
      screen.start_fadein(30)
      @wait_count = 30
      return true
    end
  end
  #--------------------------------------------------------------------------
  # ● 更改画面色调
  #--------------------------------------------------------------------------
  def command_223
    screen.start_tone_change(@params[0], @params[1])
    @wait_count = @params[1] if @params[2]
    return true
  end
  #--------------------------------------------------------------------------
  # ● 画面闪光
  #--------------------------------------------------------------------------
  def command_224
    screen.start_flash(@params[0], @params[1])
    @wait_count = @params[1] if @params[2]
    return true
  end
  #--------------------------------------------------------------------------
  # ● 画面震动
  #--------------------------------------------------------------------------
  def command_225
    screen.start_shake(@params[0], @params[1], @params[2])
    @wait_count = @params[2] if @params[3]
    return true
  end
  #--------------------------------------------------------------------------
  # ● 等待
  #--------------------------------------------------------------------------
  def command_230
    @wait_count = @params[0]
    return true
  end
  #--------------------------------------------------------------------------
  # ● 显示图片
  #--------------------------------------------------------------------------
  def command_231
    if @params[3] == 0    # 指定方法为 [直接指定] 的情况下
      x = @params[4]
      y = @params[5]
    else                  # 指定方法为 [使用变量指定] 的情况下
      x = $game_variables[@params[4]]
      y = $game_variables[@params[5]]
    end
    screen.pictures[@params[0]].show(@params[1], @params[2],
                                     x, y, @params[6], @params[7], @params[8], @params[9])
    return true
  end
  #--------------------------------------------------------------------------
  # ● 移动图片
  #--------------------------------------------------------------------------
  def command_232
    if @params[3] == 0    # 指定方法为 [直接指定] 的情况下
      x = @params[4]
      y = @params[5]
    else                  # 指定方法为 [使用变量指定] 的情况下
      x = $game_variables[@params[4]]
      y = $game_variables[@params[5]]
    end
    screen.pictures[@params[0]].move(@params[2], x, y, @params[6],
                                     @params[7], @params[8], @params[9], @params[10])
    @wait_count = @params[10] if @params[11]
    return true
  end
  #--------------------------------------------------------------------------
  # ● 旋转图片
  #--------------------------------------------------------------------------
  def command_233
    screen.pictures[@params[0]].rotate(@params[1])
    return true
  end
  #--------------------------------------------------------------------------
  # ● 变更图片色调
  #--------------------------------------------------------------------------
  def command_234
    screen.pictures[@params[0]].start_tone_change(@params[1], @params[2])
    @wait_count = @params[2] if @params[3]
    return true
  end
  #--------------------------------------------------------------------------
  # ● 删除图片
  #--------------------------------------------------------------------------
  def command_235
    screen.pictures[@params[0]].erase
    return true
  end
  #--------------------------------------------------------------------------
  # ● 设置天候效果
  #--------------------------------------------------------------------------
  def command_236
    return true if $game_temp.in_battle
    screen.weather(@params[0], @params[1], @params[2])
    @wait_count = @params[2] if @params[3]
    return true
  end
  #--------------------------------------------------------------------------
  # ● 播放 BGM
  #--------------------------------------------------------------------------
  def command_241
    @params[0].play
    return true
  end
  #--------------------------------------------------------------------------
  # ● 淡出 BGM
  #--------------------------------------------------------------------------
  def command_242
    RPG::BGM.fade(@params[0] * 1000)
    return true
  end
  #--------------------------------------------------------------------------
  # ● 播放 BGS
  #--------------------------------------------------------------------------
  def command_245
    @params[0].play
    return true
  end
  #--------------------------------------------------------------------------
  # ● 淡出 BGS
  #--------------------------------------------------------------------------
  def command_246
    RPG::BGS.fade(@params[0] * 1000)
    return true
  end
  #--------------------------------------------------------------------------
  # ● 播放 ME
  #--------------------------------------------------------------------------
  def command_249
    @params[0].play
    return true
  end
  #--------------------------------------------------------------------------
  # ● 播放 SE
  #--------------------------------------------------------------------------
  def command_250
    @params[0].play
    return true
  end
  #--------------------------------------------------------------------------
  # ● 停止 SE
  #--------------------------------------------------------------------------
  def command_251
    RPG::SE.stop
    return true
  end
  #--------------------------------------------------------------------------
  # ● 战斗处理
  #--------------------------------------------------------------------------
  def command_301
    return true if $game_temp.in_battle
    if @params[0] == 0                      # 指定方法为 [直接指定] 的情况下
      troop_id = @params[1]
    else                                    # 指定方法为 [使用变量指定] 的情况下
      troop_id = $game_variables[@params[1]]
    end
    if $data_troops[troop_id] != nil
      $game_troop.setup(troop_id)
      $game_troop.can_escape = @params[2]
      $game_troop.can_lose = @params[3]
      $game_temp.battle_proc = Proc.new { |n| @branch[@indent] = n }
      $game_temp.next_scene = "battle"
    end
    @index += 1
    return false
  end
  #--------------------------------------------------------------------------
  # ● 胜利的场合
  #--------------------------------------------------------------------------
  def command_601
    if @branch[@indent] == 0
      @branch.delete(@indent)
      return true
    end
    return command_skip
  end
  #--------------------------------------------------------------------------
  # ● 逃跑的场合
  #--------------------------------------------------------------------------
  def command_602
    if @branch[@indent] == 1
      @branch.delete(@indent)
      return true
    end
    return command_skip
  end
  #--------------------------------------------------------------------------
  # ● 失败的场合
  #--------------------------------------------------------------------------
  def command_603
    if @branch[@indent] == 2
      @branch.delete(@indent)
      return true
    end
    return command_skip
  end
  #--------------------------------------------------------------------------
  # ● 商店处理
  #--------------------------------------------------------------------------
  def command_302
    $game_temp.next_scene = "shop"
    $game_temp.shop_goods = [@params]
    $game_temp.shop_purchase_only = @params[2]
    loop do
      @index += 1
      if @list[@index].code == 605          # 下一个事件命令在商店两行以上的情况下
        $game_temp.shop_goods.push(@list[@index].parameters)
      else
        return false
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 名称输入处理
  #--------------------------------------------------------------------------
  def command_303
    if $data_actors[@params[0]] != nil
      $game_temp.next_scene = "name"
      $game_temp.name_actor_id = @params[0]
      $game_temp.name_max_char = @params[1]
    end
    @index += 1
    return false
  end
  #--------------------------------------------------------------------------
  # ● 增减体力
  #--------------------------------------------------------------------------
  def command_311
    value = operate_value(@params[1], @params[2], @params[3])
    iterate_actor_id(@params[0]) do |actor|
      next if actor.dead?
      if @params[4] == false and actor.hp + value <= 0
        actor.hp = 1    # 如果不允许「无法战斗」状态就设置为 1
      else
        actor.hp += value
      end
      actor.perform_collapse
    end
    if $game_party.all_dead?
      $game_temp.next_scene = "gameover"
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 增减魔力
  #--------------------------------------------------------------------------
  def command_312
    value = operate_value(@params[1], @params[2], @params[3])
    iterate_actor_id(@params[0]) do |actor|
      actor.mp += value
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 更改状态
  #--------------------------------------------------------------------------
  def command_313
    iterate_actor_id(@params[0]) do |actor|
      if @params[1] == 0
        actor.add_state(@params[2])
        actor.perform_collapse
      else
        actor.remove_state(@params[2])
      end
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 全部回复
  #--------------------------------------------------------------------------
  def command_314
    iterate_actor_id(@params[0]) do |actor|
      actor.recover_all
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 增减经验值
  #--------------------------------------------------------------------------
  def command_315
    value = operate_value(@params[1], @params[2], @params[3])
    iterate_actor_id(@params[0]) do |actor|
      actor.change_exp(actor.exp + value, @params[4])
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 增减等级
  #--------------------------------------------------------------------------
  def command_316
    value = operate_value(@params[1], @params[2], @params[3])
    iterate_actor_id(@params[0]) do |actor|
      actor.change_level(actor.level + value, @params[4])
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 增减能力值
  #--------------------------------------------------------------------------
  def command_317
    value = operate_value(@params[2], @params[3], @params[4])
    actor = $game_actors[@params[0]]
    if actor != nil
      case @params[1]
        when 0  # 体力最大值
          actor.maxhp += value
        when 1  # 魔力最大值
          actor.maxmp += value
        when 2  # 攻击力
          actor.atk += value
        when 3  # 防御力
          actor.def += value
        when 4  # 精神力
          actor.spi += value
        when 5  # 敏捷
          actor.agi += value
      end
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 增减技能
  #--------------------------------------------------------------------------
  def command_318
    actor = $game_actors[@params[0]]
    if actor != nil
      if @params[1] == 0
        actor.learn_skill(@params[2])
      else
        actor.forget_skill(@params[2])
      end
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 变更装备
  #--------------------------------------------------------------------------
  def command_319
    actor = $game_actors[@params[0]]
    if actor != nil
      actor.change_equip_by_id(@params[1], @params[2])
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 变更姓名
  #--------------------------------------------------------------------------
  def command_320
    actor = $game_actors[@params[0]]
    if actor != nil
      actor.name = @params[1]
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 变更职业
  #--------------------------------------------------------------------------
  def command_321
    actor = $game_actors[@params[0]]
    if actor != nil and $data_classes[@params[1]] != nil
      actor.class_id = @params[1]
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 变更角色图像
  #--------------------------------------------------------------------------
  def command_322
    actor = $game_actors[@params[0]]
    if actor != nil
      actor.set_graphic(@params[1], @params[2], @params[3], @params[4])
    end
    $game_player.refresh
    return true
  end
  #--------------------------------------------------------------------------
  # ● 变更交通工具图像
  #--------------------------------------------------------------------------
  def command_323
    if @params[0] == 0                      # 小型船
      $game_map.boat.set_graphic(@params[1], @params[2])
    elsif @params[0] == 1                   # 大型船
      $game_map.ship.set_graphic(@params[1], @params[2])
    else                                    # 飞船
      $game_map.airship.set_graphic(@params[1], @params[2])
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 变更敌人体力
  #--------------------------------------------------------------------------
  def command_331
    value = operate_value(@params[1], @params[2], @params[3])
    iterate_enemy_index(@params[0]) do |enemy|
      if enemy.hp > 0
        if @params[4] == false and enemy.hp + value <= 0
          enemy.hp = 1    # 如果不允许「无法战斗」状态就设置为 1
        else
          enemy.hp += value
        end
        enemy.perform_collapse
      end
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 变更敌人魔力
  #--------------------------------------------------------------------------
  def command_332
    value = operate_value(@params[1], @params[2], @params[3])
    iterate_enemy_index(@params[0]) do |enemy|
      enemy.mp += value
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 变更敌人状态
  #--------------------------------------------------------------------------
  def command_333
    iterate_enemy_index(@params[0]) do |enemy|
      if @params[2] == 1                    # 改变为「无法战斗」的场合
        enemy.immortal = false              # 清除不死之身标志
      end
      if @params[1] == 0
        enemy.add_state(@params[2])
        enemy.perform_collapse
      else
        enemy.remove_state(@params[2])
      end
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 敌人全回复
  #--------------------------------------------------------------------------
  def command_334
    iterate_enemy_index(@params[0]) do |enemy|
      enemy.recover_all
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 敌人出现
  #--------------------------------------------------------------------------
  def command_335
    enemy = $game_troop.members[@params[0]]
    if enemy != nil and enemy.hidden
      enemy.hidden = false
      $game_troop.make_unique_names
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 敌人变身
  #--------------------------------------------------------------------------
  def command_336
    enemy = $game_troop.members[@params[0]]
    if enemy != nil
      enemy.transform(@params[1])
      $game_troop.make_unique_names
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 显示战斗动画
  #--------------------------------------------------------------------------
  def command_337
    iterate_battler(0, @params[0]) do |battler|
      next unless battler.exist?
      battler.animation_id = @params[1]
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 强制行动
  #--------------------------------------------------------------------------
  def command_339
    iterate_battler(@params[0], @params[1]) do |battler|
      next unless battler.exist?
      battler.action.kind = @params[2]
      if battler.action.kind == 0
        battler.action.basic = @params[3]
      else
        battler.action.skill_id = @params[3]
      end
      if @params[4] == -2                   # 最终目标
        battler.action.decide_last_target
      elsif @params[4] == -1                # 随机
        battler.action.decide_random_target
      elsif @params[4] >= 0                 # 索引设置
        battler.action.target_index = @params[4]
      end
      battler.action.forcing = true
      $game_troop.forcing_battler = battler
      @index += 1
      return false
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 中断战斗
  #--------------------------------------------------------------------------
  def command_340
    $game_temp.next_scene = "map"
    @index += 1
    return false
  end
  #--------------------------------------------------------------------------
  # ● 打开菜单画面
  #--------------------------------------------------------------------------
  def command_351
    $game_temp.next_scene = "menu"
    $game_temp.menu_beep = false
    @index += 1
    return false
  end
  #--------------------------------------------------------------------------
  # ● 打开存档画面
  #--------------------------------------------------------------------------
  def command_352
    $game_temp.next_scene = "save"
    @index += 1
    return false
  end
  #--------------------------------------------------------------------------
  # ● 游戏结束
  #--------------------------------------------------------------------------
  def command_353
    $game_temp.next_scene = "gameover"
    return false
  end
  #--------------------------------------------------------------------------
  # ● 回到标题画面
  #--------------------------------------------------------------------------
  def command_354
    $game_temp.next_scene = "title"
    return false
  end
  #--------------------------------------------------------------------------
  # ● 脚本
  #--------------------------------------------------------------------------
  def command_355
    script = @list[@index].parameters[0] + "\n"
    loop do
      if @list[@index+1].code == 655        # 下一个事件指令在脚本2行以上的情况下
        script += @list[@index+1].parameters[0] + "\n"
      else
        break
      end
      @index += 1
    end
    eval(script)
    return true
  end
end

#==============================================================================
# ■ Sprite_Base
#------------------------------------------------------------------------------
#  处理动画显示用的精灵（活动块）类。
#==============================================================================

class Sprite_Base < Sprite
  #--------------------------------------------------------------------------
  # ● 类变量
  #--------------------------------------------------------------------------
  @@animations = []
  @@_reference_count = {}
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     viewport : 显示端口
  #--------------------------------------------------------------------------
  def initialize(viewport = nil)
    super(viewport)
    @use_sprite = true          # 使用精灵标志
    @animation_duration = 0     # 动画剩馀时间
  end
  #--------------------------------------------------------------------------
  # ● 释放
  #--------------------------------------------------------------------------
  def dispose
    super
    dispose_animation
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    if @animation != nil
      @animation_duration -= 1
      if @animation_duration % 4 == 0
        update_animation
      end
    end
    @@animations.clear
  end
  #--------------------------------------------------------------------------
  # ● 判断是否正在播放动画
  #--------------------------------------------------------------------------
  def animation?
    return @animation != nil
  end
  #--------------------------------------------------------------------------
  # ● 开始显示动画
  #--------------------------------------------------------------------------
  def start_animation(animation, mirror = false)
    dispose_animation
    @animation = animation
    return if @animation == nil
    @animation_mirror = mirror
    @animation_duration = @animation.frame_max * 4 + 1
    load_animation_bitmap
    @animation_sprites = []
    if @animation.position != 3 or not @@animations.include?(animation)
      if @use_sprite
        for i in 0..15
          sprite = ::Sprite.new(viewport)
          sprite.visible = false
          @animation_sprites.push(sprite)
        end
        unless @@animations.include?(animation)
          @@animations.push(animation)
        end
      end
    end
    if @animation.position == 3
      if viewport == nil
        @animation_ox = 544 / 2
        @animation_oy = 416 / 2
      else
        @animation_ox = viewport.rect.width / 2
        @animation_oy = viewport.rect.height / 2
      end
    else
      @animation_ox = x - ox + width / 2
      @animation_oy = y - oy + height / 2
      if @animation.position == 0
        @animation_oy -= height / 2
      elsif @animation.position == 2
        @animation_oy += height / 2
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 读取（载入）动画图档
  #--------------------------------------------------------------------------
  def load_animation_bitmap
    animation1_name = @animation.animation1_name
    animation1_hue = @animation.animation1_hue
    animation2_name = @animation.animation2_name
    animation2_hue = @animation.animation2_hue
    @animation_bitmap1 = Cache.animation(animation1_name, animation1_hue)
    @animation_bitmap2 = Cache.animation(animation2_name, animation2_hue)
    if @@_reference_count.include?(@animation_bitmap1)
      @@_reference_count[@animation_bitmap1] += 1
    else
      @@_reference_count[@animation_bitmap1] = 1
    end
    if @@_reference_count.include?(@animation_bitmap2)
      @@_reference_count[@animation_bitmap2] += 1
    else
      @@_reference_count[@animation_bitmap2] = 1
    end
    Graphics.frame_reset
  end
  #--------------------------------------------------------------------------
  # ● 释放动画
  #--------------------------------------------------------------------------
  def dispose_animation
    if @animation_bitmap1 != nil
      @@_reference_count[@animation_bitmap1] -= 1
      if @@_reference_count[@animation_bitmap1] == 0
        @animation_bitmap1.dispose
      end
    end
    if @animation_bitmap2 != nil
      @@_reference_count[@animation_bitmap2] -= 1
      if @@_reference_count[@animation_bitmap2] == 0
        @animation_bitmap2.dispose
      end
    end
    if @animation_sprites != nil
      for sprite in @animation_sprites
        sprite.dispose
      end
      @animation_sprites = nil
      @animation = nil
    end
    @animation_bitmap1 = nil
    @animation_bitmap2 = nil
  end
  #--------------------------------------------------------------------------
  # ● 更新动画
  #--------------------------------------------------------------------------
  def update_animation
    if @animation_duration > 0
      frame_index = @animation.frame_max - (@animation_duration + 3) / 4
      animation_set_sprites(@animation.frames[frame_index])
      for timing in @animation.timings
        if timing.frame == frame_index
          animation_process_timing(timing)
        end
      end
    else
      dispose_animation
    end
  end
  #--------------------------------------------------------------------------
  # ● 设置动画活动块
  #     frame : 画面资料 (RPG::Animation::Frame)
  #--------------------------------------------------------------------------
  def animation_set_sprites(frame)
    cell_data = frame.cell_data
    for i in 0..15
      sprite = @animation_sprites[i]
      next if sprite == nil
      pattern = cell_data[i, 0]
      if pattern == nil or pattern == -1
        sprite.visible = false
        next
      end
      if pattern < 100
        sprite.bitmap = @animation_bitmap1
      else
        sprite.bitmap = @animation_bitmap2
      end
      sprite.visible = true
      sprite.src_rect.set(pattern % 5 * 192,
                          pattern % 100 / 5 * 192, 192, 192)
      if @animation_mirror
        sprite.x = @animation_ox - cell_data[i, 1]
        sprite.y = @animation_oy + cell_data[i, 2]
        sprite.angle = (360 - cell_data[i, 4])
        sprite.mirror = (cell_data[i, 5] == 0)
      else
        sprite.x = @animation_ox + cell_data[i, 1]
        sprite.y = @animation_oy + cell_data[i, 2]
        sprite.angle = cell_data[i, 4]
        sprite.mirror = (cell_data[i, 5] == 1)
      end
      sprite.z = self.z + 300 + i
      sprite.ox = 96
      sprite.oy = 96
      sprite.zoom_x = cell_data[i, 3] / 100.0
      sprite.zoom_y = cell_data[i, 3] / 100.0
      sprite.opacity = cell_data[i, 6] * self.opacity / 255.0
      sprite.blend_type = cell_data[i, 7]
    end
  end
  #--------------------------------------------------------------------------
  # ● 音效和闪光计时处理
  #     timing : 计时资料 (RPG::Animation::Timing)
  #--------------------------------------------------------------------------
  def animation_process_timing(timing)
    timing.se.play
    case timing.flash_scope
      when 1
        self.flash(timing.flash_color, timing.flash_duration * 4)
      when 2
        if viewport != nil
          viewport.flash(timing.flash_color, timing.flash_duration * 4)
        end
      when 3
        self.flash(nil, timing.flash_duration * 4)
    end
  end
end

#==============================================================================
# ■ Sprite_Character
#------------------------------------------------------------------------------
# 　角色显示用脚本。监视 Game_Character 类的实例、自动变化脚本状态。
#==============================================================================

class Sprite_Character < Sprite_Base
  #--------------------------------------------------------------------------
  # ● 常量
  #--------------------------------------------------------------------------
  BALLOON_WAIT = 12                  # 最後心情图标等待时间
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_accessor :character
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     viewport  : 显示端口
  #     character : 角色 (Game_Character)
  #--------------------------------------------------------------------------
  def initialize(viewport, character = nil)


    super(viewport)
    @character = character
    @balloon_duration = 0
    update
  end
  #--------------------------------------------------------------------------
  # ● 释放
  #--------------------------------------------------------------------------
  def dispose
    dispose_balloon
    super
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    update_bitmap
    self.visible = (not @character.transparent)
    update_src_rect
    self.x = @character.screen_x
    self.y = @character.screen_y
    self.z = @character.screen_z
    self.opacity = @character.opacity
    self.blend_type = @character.blend_type
    self.bush_depth = @character.bush_depth
    update_balloon
    if @character.animation_id != 0
      animation = $data_animations[@character.animation_id]
      start_animation(animation)
      @character.animation_id = 0
    end
    if @character.balloon_id != 0
      @balloon_id = @character.balloon_id
      start_balloon
      @character.balloon_id = 0
    end
  end
  #--------------------------------------------------------------------------
  # ● 获取包含所选图块的元件图档
  #     tile_id : 元件ID
  #--------------------------------------------------------------------------
  def tileset_bitmap(tile_id)
    set_number = tile_id / 256
    return Cache.system("TileB") if set_number == 0
    return Cache.system("TileC") if set_number == 1
    return Cache.system("TileD") if set_number == 2
    return Cache.system("TileE") if set_number == 3
    return nil
  end
  #--------------------------------------------------------------------------
  # ● 更新传送源的位图
  #--------------------------------------------------------------------------
  def update_bitmap
    if @tile_id != @character.tile_id or
        @character_name != @character.character_name or
        @character_index != @character.character_index
      @tile_id = @character.tile_id
      @character_name = @character.character_name
      @character_index = @character.character_index
      if @tile_id > 0
        sx = (@tile_id / 128 % 2 * 8 + @tile_id % 8) * 32;
        sy = @tile_id % 256 / 8 % 16 * 32;
        self.bitmap = tileset_bitmap(@tile_id)
        self.src_rect.set(sx, sy, 32, 32)
        self.ox = 16
        self.oy = 32
      else
        self.bitmap = Cache.character(@character_name)
        sign = @character_name[/^[\!\$]./]
        if sign != nil and sign.include?('$')
          @cw = bitmap.width / 3
          @ch = bitmap.height / 4
        else
          @cw = bitmap.width / 12
          @ch = bitmap.height / 8
        end
        self.ox = @cw / 2
        self.oy = @ch
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新传送源的矩形
  #--------------------------------------------------------------------------
  def update_src_rect
    if @tile_id == 0
      index = @character.character_index
      pattern = @character.pattern < 3 ? @character.pattern : 1
      sx = (index % 4 * 3 + pattern) * @cw
      sy = (index / 4 * 4 + (@character.direction - 2) / 2) * @ch
      self.src_rect.set(sx, sy, @cw, @ch)
    end
  end
  #--------------------------------------------------------------------------
  # ● 开始显示心情图标
  #--------------------------------------------------------------------------
  def start_balloon
    dispose_balloon
    @balloon_duration = 8 * 8 + BALLOON_WAIT
    @balloon_sprite = ::Sprite.new(viewport)
    @balloon_sprite.bitmap = Cache.system("Balloon")
    @balloon_sprite.ox = 16
    @balloon_sprite.oy = 32
    update_balloon
  end
  #--------------------------------------------------------------------------
  # ● 更新心情图标
  #--------------------------------------------------------------------------
  def update_balloon
    if @balloon_duration > 0
      @balloon_duration -= 1
      if @balloon_duration == 0
        dispose_balloon
      else
        @balloon_sprite.x = x
        @balloon_sprite.y = y - height
        @balloon_sprite.z = z + 200
        if @balloon_duration < BALLOON_WAIT
          sx = 7 * 32
        else
          sx = (7 - (@balloon_duration - BALLOON_WAIT) / 8) * 32
        end
        sy = (@balloon_id - 1) * 32
        @balloon_sprite.src_rect.set(sx, sy, 32, 32)
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 释放心情图标
  #--------------------------------------------------------------------------
  def dispose_balloon
    if @balloon_sprite != nil
      @balloon_sprite.dispose
      @balloon_sprite = nil
    end
  end
end

#==============================================================================
# ■ Sprite_Battler
#------------------------------------------------------------------------------
# 　战斗显示用活动块。Game_Battler 类的实例监视、活动块的状态的监视。
#==============================================================================

class Sprite_Battler < Sprite_Base
  #--------------------------------------------------------------------------
  # ● 常量
  #--------------------------------------------------------------------------
  WHITEN    = 1                      # 闪光（开始行动）
  BLINK     = 2                      # 明灭（伤害）
  APPEAR    = 3                      # 出现（出现、复苏）
  DISAPPEAR = 4                      # 消失（逃跑）
  COLLAPSE  = 5                      # 倒下（无法战斗）
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_accessor :battler
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     viewport : 显示端口
  #     battler  : 战斗者 (Game_Battler)
  #--------------------------------------------------------------------------
  def initialize(viewport, battler = nil)
    super(viewport)
    @battler = battler
    @battler_visible = false
    @effect_type = 0            # 效果类型
    @effect_duration = 0        # 效果剩馀时间
  end
  #--------------------------------------------------------------------------
  # ● 释放
  #--------------------------------------------------------------------------
  def dispose
    if self.bitmap != nil
      self.bitmap.dispose
    end
    super
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    if @battler == nil
      self.bitmap = nil
    else
      @use_sprite = @battler.use_sprite?
      if @use_sprite
        self.x = @battler.screen_x
        self.y = @battler.screen_y
        self.z = @battler.screen_z
        update_battler_bitmap
      end
      setup_new_effect
      update_effect
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新传送原图档
  #--------------------------------------------------------------------------
  def update_battler_bitmap
    if @battler.battler_name != @battler_name or
        @battler.battler_hue != @battler_hue
      @battler_name = @battler.battler_name
      @battler_hue = @battler.battler_hue
      self.bitmap = Cache.battler(@battler_name, @battler_hue)
      @width = bitmap.width
      @height = bitmap.height
      self.ox = @width / 2
      self.oy = @height
      if @battler.dead? or @battler.hidden
        self.opacity = 0
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 设置新的效果
  #--------------------------------------------------------------------------
  def setup_new_effect
    if @battler.white_flash
      @effect_type = WHITEN
      @effect_duration = 16
      @battler.white_flash = false
    end
    if @battler.blink
      @effect_type = BLINK
      @effect_duration = 20
      @battler.blink = false
    end
    if not @battler_visible and @battler.exist?
      @effect_type = APPEAR
      @effect_duration = 16
      @battler_visible = true
    end
    if @battler_visible and @battler.hidden
      @effect_type = DISAPPEAR
      @effect_duration = 32
      @battler_visible = false
    end
    if @battler.collapse
      @effect_type = COLLAPSE
      @effect_duration = 48
      @battler.collapse = false
      @battler_visible = false
    end
    if @battler.animation_id != 0
      animation = $data_animations[@battler.animation_id]
      mirror = @battler.animation_mirror
      start_animation(animation, mirror)
      @battler.animation_id = 0
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新效果
  #--------------------------------------------------------------------------
  def update_effect
    if @effect_duration > 0
      @effect_duration -= 1
      case @effect_type
        when WHITEN
          update_whiten
        when BLINK
          update_blink
        when APPEAR
          update_appear
        when DISAPPEAR
          update_disappear
        when COLLAPSE
          update_collapse
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新闪光效果
  #--------------------------------------------------------------------------
  def update_whiten
    self.blend_type = 0
    self.color.set(255, 255, 255, 128)
    self.opacity = 255
    self.color.alpha = 128 - (16 - @effect_duration) * 10
  end
  #--------------------------------------------------------------------------
  # ● 更新明灭效果
  #--------------------------------------------------------------------------
  def update_blink
    self.blend_type = 0
    self.color.set(0, 0, 0, 0)
    self.opacity = 255
    self.visible = (@effect_duration % 10 < 5)
  end
  #--------------------------------------------------------------------------
  # ● 更新出现效果
  #--------------------------------------------------------------------------
  def update_appear
    self.blend_type = 0
    self.color.set(0, 0, 0, 0)
    self.opacity = (16 - @effect_duration) * 16
  end
  #--------------------------------------------------------------------------
  # ● 更新消失效果
  #--------------------------------------------------------------------------
  def update_disappear
    self.blend_type = 0
    self.color.set(0, 0, 0, 0)
    self.opacity = 256 - (32 - @effect_duration) * 10
  end
  #--------------------------------------------------------------------------
  # ● 更新倒下效果
  #--------------------------------------------------------------------------
  def update_collapse
    self.blend_type = 1
    self.color.set(255, 128, 128, 128)
    self.opacity = 256 - (48 - @effect_duration) * 6
  end
end

#==============================================================================
# ■ Sprite_Picture
#------------------------------------------------------------------------------
# 　显示图片用的活动块。Game_Picture 类的实例监视、活动块状态的自动变化。
#==============================================================================

class Sprite_Picture < Sprite
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     viewport : 显示端口
  #     picture  : 图片 (Game_Picture)
  #--------------------------------------------------------------------------
  def initialize(viewport, picture)
    super(viewport)
    @picture = picture
    update
  end
  #--------------------------------------------------------------------------
  # ● 释放
  #--------------------------------------------------------------------------
  def dispose
    if self.bitmap != nil
      self.bitmap.dispose
    end
    super
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    if @picture_name != @picture.name
      @picture_name = @picture.name
      if @picture_name != ""
        self.bitmap = Cache.picture(@picture_name)
      end
    end
    if @picture_name == ""
      self.visible = false
    else
      self.visible = true
      if @picture.origin == 0
        self.ox = 0
        self.oy = 0
      else
        self.ox = self.bitmap.width / 2
        self.oy = self.bitmap.height / 2
      end
      self.x = @picture.x
      self.y = @picture.y
      self.z = 100 + @picture.number
      self.zoom_x = @picture.zoom_x / 100.0
      self.zoom_y = @picture.zoom_y / 100.0
      self.opacity = @picture.opacity
      self.blend_type = @picture.blend_type
      self.angle = @picture.angle
      self.tone = @picture.tone
    end
  end
end

#==============================================================================
# ■ Sprite_Timer
#------------------------------------------------------------------------------
# 　显示计时器用的活动块。监视 $game_system 、活动块状态自动变化。
#==============================================================================

class Sprite_Timer < Sprite
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     viewport : 显示端口
  #--------------------------------------------------------------------------
  def initialize(viewport)
    super(viewport)
    self.bitmap = Bitmap.new(88, 48)
    self.bitmap.font.name = "Arial"
    self.bitmap.font.size = 32
    self.x = 544 - self.bitmap.width
    self.y = 0
    self.z = 200
    update
  end
  #--------------------------------------------------------------------------
  # ● 释放
  #--------------------------------------------------------------------------
  def dispose
    self.bitmap.dispose
    super
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    self.visible = $game_system.timer_working
    if $game_system.timer / Graphics.frame_rate != @total_sec
      self.bitmap.clear
      @total_sec = $game_system.timer / Graphics.frame_rate
      min = @total_sec / 60
      sec = @total_sec % 60
      text = sprintf("%02d:%02d", min, sec)
      self.bitmap.font.color.set(255, 255, 255)
      self.bitmap.draw_text(self.bitmap.rect, text, 1)
    end
  end
end

#==============================================================================
# ■ Spriteset_Weather
#------------------------------------------------------------------------------
# 　处理天气效果（雨、风、雪）的类。本类在 Spriteset_Map 类的内部使用。
#==============================================================================

class Spriteset_Weather
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_reader :type
  attr_reader :max
  attr_reader :ox
  attr_reader :oy
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize(viewport = nil)
    @type = 0
    @max = 0
    @ox = 0
    @oy = 0
    color1 = Color.new(255, 255, 255, 160)
    color2 = Color.new(255, 255, 255, 80)
    @rain_bitmap = Bitmap.new(7, 56)
    for i in 0..6
      @rain_bitmap.fill_rect(6-i, i*8, 1, 8, color1)
    end
    @storm_bitmap = Bitmap.new(34, 64)
    for i in 0..31
      @storm_bitmap.fill_rect(33-i, i*2, 1, 2, color2)
      @storm_bitmap.fill_rect(32-i, i*2, 1, 2, color1)
      @storm_bitmap.fill_rect(31-i, i*2, 1, 2, color2)
    end
    @snow_bitmap = Bitmap.new(6, 6)
    @snow_bitmap.fill_rect(0, 1, 6, 4, color2)
    @snow_bitmap.fill_rect(1, 0, 4, 6, color2)
    @snow_bitmap.fill_rect(1, 2, 4, 2, color1)
    @snow_bitmap.fill_rect(2, 1, 2, 4, color1)
    @sprites = []
    for i in 1..40
      sprite = Sprite.new(viewport)
      sprite.visible = false
      sprite.opacity = 0
      @sprites.push(sprite)
    end
  end
  #--------------------------------------------------------------------------
  # ● 释放
  #--------------------------------------------------------------------------
  def dispose
    for sprite in @sprites
      sprite.dispose
    end
    @rain_bitmap.dispose
    @storm_bitmap.dispose
    @snow_bitmap.dispose
  end
  #--------------------------------------------------------------------------
  # ● 设置天候类型
  #     type : 新天候类型
  #--------------------------------------------------------------------------
  def type=(type)
    return if @type == type
    @type = type
    case @type
      when 1
        bitmap = @rain_bitmap
      when 2
        bitmap = @storm_bitmap
      when 3
        bitmap = @snow_bitmap
      else
        bitmap = nil
    end
    for i in 0...@sprites.size
      sprite = @sprites[i]
      sprite.visible = (i <= @max)
      sprite.bitmap = bitmap
    end
  end
  #--------------------------------------------------------------------------
  # ● 设置开始点 X 座标
  #     ox : 开始点 X 座标
  #--------------------------------------------------------------------------
  def ox=(ox)
    return if @ox == ox;
    @ox = ox
    for sprite in @sprites
      sprite.ox = @ox
    end
  end
  #--------------------------------------------------------------------------
  # ● 设置开始点 Y 座标
  #     oy : 开始点 Y 座标
  #--------------------------------------------------------------------------
  def oy=(oy)
    return if @oy == oy;
    @oy = oy
    for sprite in @sprites
      sprite.oy = @oy
    end
  end
  #--------------------------------------------------------------------------
  # ● 设置最大活动块数量
  #     max : 最大活动块数量
  #--------------------------------------------------------------------------
  def max=(max)
    return if @max == max;
    @max = [[max, 0].max, 40].min
    for i in 1..40
      sprite = @sprites[i]
      sprite.visible = (i <= @max) if sprite != nil
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    return if @type == 0
    for i in 1..@max
      sprite = @sprites[i]
      if sprite == nil
        break
      end
      if @type == 1
        sprite.x -= 2
        sprite.y += 16
        sprite.opacity -= 8
      end
      if @type == 2
        sprite.x -= 8
        sprite.y += 16
        sprite.opacity -= 12
      end
      if @type == 3
        sprite.x -= 2
        sprite.y += 8
        sprite.opacity -= 8
      end
      x = sprite.x - @ox
      y = sprite.y - @oy
      if sprite.opacity < 64
        sprite.x = rand(800) - 100 + @ox
        sprite.y = rand(600) - 200 + @oy
        sprite.opacity = 255
      end
    end
  end
end

#==============================================================================
# ■ Spriteset_Map
#------------------------------------------------------------------------------
# 　处理地图画面活动块和元件的类。本类在 Scene_Map 类的内部使用。
#==============================================================================

class Spriteset_Map
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    create_viewports
    create_tilemap
    create_parallax
    create_characters
    create_shadow
    create_weather
    create_pictures
    create_timer
    update
  end
  #--------------------------------------------------------------------------
  # ● 生成显示端口
  #--------------------------------------------------------------------------
  def create_viewports
    @viewport1 = Viewport.new(0, 0, 544, 416)
    @viewport2 = Viewport.new(0, 0, 544, 416)
    @viewport3 = Viewport.new(0, 0, 544, 416)
    @viewport2.z = 50
    @viewport3.z = 100
  end
  #--------------------------------------------------------------------------
  # ● 生成地图元件
  #--------------------------------------------------------------------------
  def create_tilemap
    @tilemap = Tilemap.new(@viewport1)
    @tilemap.bitmaps[0] = Cache.system("TileA1")
    @tilemap.bitmaps[1] = Cache.system("TileA2")
    @tilemap.bitmaps[2] = Cache.system("TileA3")
    @tilemap.bitmaps[3] = Cache.system("TileA4")
    @tilemap.bitmaps[4] = Cache.system("TileA5")
    @tilemap.bitmaps[5] = Cache.system("TileB")
    @tilemap.bitmaps[6] = Cache.system("TileC")
    @tilemap.bitmaps[7] = Cache.system("TileD")
    @tilemap.bitmaps[8] = Cache.system("TileE")
    @tilemap.map_data = $game_map.data
    @tilemap.passages = $game_map.passages
  end
  #--------------------------------------------------------------------------
  # ● 生成远景
  #--------------------------------------------------------------------------
  def create_parallax
    @parallax = Plane.new(@viewport1)
    @parallax.z = -100
  end
  #--------------------------------------------------------------------------
  # ● 生成角色活动块
  #--------------------------------------------------------------------------
  def create_characters
    @character_sprites = []

    for i in $game_map.events.keys.sort
      sprite = Sprite_Character.new(@viewport1, $game_map.events[i])
      @character_sprites.push(sprite)
    end
    for vehicle in $game_map.vehicles
      sprite = Sprite_Character.new(@viewport1, vehicle)
      @character_sprites.push(sprite)
    end
    @character_sprites.push(Sprite_Character.new(@viewport1, $game_player))
  end
  #--------------------------------------------------------------------------
  # ● 生成飞船阴影活动块
  #--------------------------------------------------------------------------
  def create_shadow
    @shadow_sprite = Sprite.new(@viewport1)
    @shadow_sprite.bitmap = Cache.system("Shadow")
    @shadow_sprite.ox = @shadow_sprite.bitmap.width / 2
    @shadow_sprite.oy = @shadow_sprite.bitmap.height
    @shadow_sprite.z = 180
  end
  #--------------------------------------------------------------------------
  # ● 生成天候
  #--------------------------------------------------------------------------
  def create_weather
    @weather = Spriteset_Weather.new(@viewport2)
  end
  #--------------------------------------------------------------------------
  # ● 生成图片活动块
  #--------------------------------------------------------------------------
  def create_pictures
    @picture_sprites = []
    for i in 1..20
      @picture_sprites.push(Sprite_Picture.new(@viewport2,
                                               $game_map.screen.pictures[i]))
    end
  end
  #--------------------------------------------------------------------------
  # ● 生成计时器活动块
  #--------------------------------------------------------------------------
  def create_timer
    @timer_sprite = Sprite_Timer.new(@viewport2)
  end
  #--------------------------------------------------------------------------
  # ● 释放
  #--------------------------------------------------------------------------
  def dispose
    dispose_tilemap
    dispose_parallax
    dispose_characters
    dispose_shadow
    dispose_weather
    dispose_pictures
    dispose_timer
    dispose_viewports
  end
  #--------------------------------------------------------------------------
  # ● 释放地图元件
  #--------------------------------------------------------------------------
  def dispose_tilemap
    @tilemap.dispose
  end
  #--------------------------------------------------------------------------
  # ● 释放远景
  #--------------------------------------------------------------------------
  def dispose_parallax
    @parallax.dispose
  end
  #--------------------------------------------------------------------------
  # ● 释放角色活动块
  #--------------------------------------------------------------------------
  def dispose_characters
    for sprite in @character_sprites
      sprite.dispose
    end
  end
  #--------------------------------------------------------------------------
  # ● 释放飞船阴影活动块
  #--------------------------------------------------------------------------
  def dispose_shadow
    @shadow_sprite.dispose
  end
  #--------------------------------------------------------------------------
  # ● 释放天候
  #--------------------------------------------------------------------------
  def dispose_weather
    @weather.dispose
  end
  #--------------------------------------------------------------------------
  # ● 释放图片活动块
  #--------------------------------------------------------------------------
  def dispose_pictures
    for sprite in @picture_sprites
      sprite.dispose
    end
  end
  #--------------------------------------------------------------------------
  # ● 释放计时器活动块
  #--------------------------------------------------------------------------
  def dispose_timer
    @timer_sprite.dispose
  end
  #--------------------------------------------------------------------------
  # ● 释放显示端口
  #--------------------------------------------------------------------------
  def dispose_viewports
    @viewport1.dispose
    @viewport2.dispose
    @viewport3.dispose
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    update_tilemap
    update_parallax
    update_characters
    update_shadow
    update_weather
    update_pictures
    update_timer
    update_viewports
  end
  #--------------------------------------------------------------------------
  # ● 更新地图元件
  #--------------------------------------------------------------------------
  def update_tilemap
    @tilemap.ox = $game_map.display_x / 8
    @tilemap.oy = $game_map.display_y / 8
    @tilemap.update
  end
  #--------------------------------------------------------------------------
  # ● 更新远景
  #--------------------------------------------------------------------------
  def update_parallax
    if @parallax_name != $game_map.parallax_name
      @parallax_name = $game_map.parallax_name
      if @parallax.bitmap != nil
        @parallax.bitmap.dispose
        @parallax.bitmap = nil
      end
      if @parallax_name != ""
        @parallax.bitmap = Cache.parallax(@parallax_name)
      end
      Graphics.frame_reset
    end
    @parallax.ox = $game_map.calc_parallax_x(@parallax.bitmap)
    @parallax.oy = $game_map.calc_parallax_y(@parallax.bitmap)
  end
  #--------------------------------------------------------------------------
  # ● 更新角色活动块
  #--------------------------------------------------------------------------
  def update_characters
    for sprite in @character_sprites
      sprite.update
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新飞船阴影活动块
  #--------------------------------------------------------------------------
  def update_shadow
    airship = $game_map.airship
    @shadow_sprite.x = airship.screen_x
    @shadow_sprite.y = airship.screen_y + airship.altitude
    @shadow_sprite.opacity = airship.altitude * 8
    @shadow_sprite.update
  end
  #--------------------------------------------------------------------------
  # ● 更新天候
  #--------------------------------------------------------------------------
  def update_weather
    @weather.type = $game_map.screen.weather_type
    @weather.max = $game_map.screen.weather_max
    @weather.ox = $game_map.display_x / 8
    @weather.oy = $game_map.display_y / 8
    @weather.update
  end
  #--------------------------------------------------------------------------
  # ● 更新图片活动块
  #--------------------------------------------------------------------------
  def update_pictures
    for sprite in @picture_sprites
      sprite.update
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新计时器活动块
  #--------------------------------------------------------------------------
  def update_timer
    @timer_sprite.update
  end
  #--------------------------------------------------------------------------
  # ● 更新显示端口
  #--------------------------------------------------------------------------
  def update_viewports
    @viewport1.tone = $game_map.screen.tone
    @viewport1.ox = $game_map.screen.shake
    @viewport2.color = $game_map.screen.flash_color
    #@viewport3.color.set(0, 0, 0, 255 - $game_map.screen.brightness)
    @viewport1.update
    @viewport2.update
    @viewport3.update
  end
end

#==============================================================================
# ■ Spriteset_Battle
#------------------------------------------------------------------------------
# 　处理战斗画面的活动块的类。本类在 Scene_Battle 类的内部使用。
#==============================================================================

class Spriteset_Battle
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    create_viewports
    create_battleback
    create_battlefloor
    create_enemies
    create_actors
    create_pictures
    create_timer
    update
  end
  #--------------------------------------------------------------------------
  # ● 生成显示端口
  #--------------------------------------------------------------------------
  def create_viewports
    @viewport1 = Viewport.new(0, 0, 544, 416)
    @viewport2 = Viewport.new(0, 0, 544, 416)
    @viewport3 = Viewport.new(0, 0, 544, 416)
    @viewport2.z = 50
    @viewport3.z = 100
  end
  #--------------------------------------------------------------------------
  # ● 生成战斗背景活动块
  #--------------------------------------------------------------------------
  def create_battleback
    source = $game_temp.background_bitmap
    bitmap = Bitmap.new(640, 480)
    bitmap.stretch_blt(bitmap.rect, source, source.rect)
    bitmap.radial_blur(90, 12)
    @battleback_sprite = Sprite.new(@viewport1)
    @battleback_sprite.bitmap = bitmap
    @battleback_sprite.ox = 320
    @battleback_sprite.oy = 240
    @battleback_sprite.x = 272
    @battleback_sprite.y = 176
    @battleback_sprite.wave_amp = 8
    @battleback_sprite.wave_length = 240
    @battleback_sprite.wave_speed = 120
  end
  #--------------------------------------------------------------------------
  # ● 生成战场活动块
  #--------------------------------------------------------------------------
  def create_battlefloor
    @battlefloor_sprite = Sprite.new(@viewport1)
    @battlefloor_sprite.bitmap = Cache.system("BattleFloor")
    @battlefloor_sprite.x = 0
    @battlefloor_sprite.y = 192
    @battlefloor_sprite.z = 1
    @battlefloor_sprite.opacity = 128
  end
  #--------------------------------------------------------------------------
  # ● 生成敌人活动块
  #--------------------------------------------------------------------------
  def create_enemies
    @enemy_sprites = []
    for enemy in $game_troop.members.reverse
      @enemy_sprites.push(Sprite_Battler.new(@viewport1, enemy))
    end
  end
  #--------------------------------------------------------------------------
  # ● 生成角色活动块
  #    默认情况下角色图像不被显示，但是有一个与敌人相同的同伴空壳活动块
  #    能够在需要时调用。
  #--------------------------------------------------------------------------
  def create_actors
    @actor_sprites = []
    @actor_sprites.push(Sprite_Battler.new(@viewport1))
    @actor_sprites.push(Sprite_Battler.new(@viewport1))
    @actor_sprites.push(Sprite_Battler.new(@viewport1))
    @actor_sprites.push(Sprite_Battler.new(@viewport1))
  end
  #--------------------------------------------------------------------------
  # ● 生成图片活动块
  #--------------------------------------------------------------------------
  def create_pictures
    @picture_sprites = []
    for i in 1..20
      @picture_sprites.push(Sprite_Picture.new(@viewport2,
                                               $game_troop.screen.pictures[i]))
    end
  end
  #--------------------------------------------------------------------------
  # ● 生成计时器活动块
  #--------------------------------------------------------------------------
  def create_timer
    @timer_sprite = Sprite_Timer.new(@viewport2)
  end
  #--------------------------------------------------------------------------
  # ● 释放
  #--------------------------------------------------------------------------
  def dispose
    dispose_battleback_bitmap
    dispose_battleback
    dispose_battlefloor
    dispose_enemies
    dispose_actors
    dispose_pictures
    dispose_timer
    dispose_viewports
  end
  #--------------------------------------------------------------------------
  # ● 释放战斗背景
  #--------------------------------------------------------------------------
  def dispose_battleback_bitmap
    @battleback_sprite.bitmap.dispose
  end
  #--------------------------------------------------------------------------
  # ● 释放战斗背景活动块
  #--------------------------------------------------------------------------
  def dispose_battleback
    @battleback_sprite.dispose
  end
  #--------------------------------------------------------------------------
  # ● 释放战场活动块
  #--------------------------------------------------------------------------
  def dispose_battlefloor
    @battlefloor_sprite.dispose
  end
  #--------------------------------------------------------------------------
  # ● 释放敌人活动块
  #--------------------------------------------------------------------------
  def dispose_enemies
    for sprite in @enemy_sprites
      sprite.dispose
    end
  end
  #--------------------------------------------------------------------------
  # ● 释放角色活动块
  #--------------------------------------------------------------------------
  def dispose_actors
    for sprite in @actor_sprites
      sprite.dispose
    end
  end
  #--------------------------------------------------------------------------
  # ● 释放图片活动块
  #--------------------------------------------------------------------------
  def dispose_pictures
    for sprite in @picture_sprites
      sprite.dispose
    end
  end
  #--------------------------------------------------------------------------
  # ● 释放计时器活动块
  #--------------------------------------------------------------------------
  def dispose_timer
    @timer_sprite.dispose
  end
  #--------------------------------------------------------------------------
  # ● 释放显示端口
  #--------------------------------------------------------------------------
  def dispose_viewports
    @viewport1.dispose
    @viewport2.dispose
    @viewport3.dispose
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    update_battleback
    update_battlefloor
    update_enemies
    update_actors
    update_pictures
    update_timer
    update_viewports
  end
  #--------------------------------------------------------------------------
  # ● 更新战斗背景
  #--------------------------------------------------------------------------
  def update_battleback
    @battleback_sprite.update
  end
  #--------------------------------------------------------------------------
  # ● 更新战场
  #--------------------------------------------------------------------------
  def update_battlefloor
    @battlefloor_sprite.update
  end
  #--------------------------------------------------------------------------
  # ● 更新敌人活动块
  #--------------------------------------------------------------------------
  def update_enemies
    for sprite in @enemy_sprites
      sprite.update
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新角色活动块
  #--------------------------------------------------------------------------
  def update_actors
    @actor_sprites[0].battler = $game_party.members[0]
    @actor_sprites[1].battler = $game_party.members[1]
    @actor_sprites[2].battler = $game_party.members[2]
    @actor_sprites[3].battler = $game_party.members[3]
    for sprite in @actor_sprites
      sprite.update
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新图片活动块
  #--------------------------------------------------------------------------
  def update_pictures
    for sprite in @picture_sprites
      sprite.update
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新计时器活动块
  #--------------------------------------------------------------------------
  def update_timer
    @timer_sprite.update
  end
  #--------------------------------------------------------------------------
  # ● 更新显示端口
  #--------------------------------------------------------------------------
  def update_viewports
    @viewport1.tone = $game_troop.screen.tone
    @viewport1.ox = $game_troop.screen.shake
    @viewport2.color = $game_troop.screen.flash_color
    #@viewport3.color.set(0, 0, 0, 255 - $game_troop.screen.brightness)
    @viewport1.update
    @viewport2.update
    @viewport3.update
  end
  #--------------------------------------------------------------------------
  # ● 判断动画是否显示中
  #--------------------------------------------------------------------------
  def animation?
    for sprite in @enemy_sprites + @actor_sprites
      return true if sprite.animation?
    end
    return false
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
  # ● 获取体力文字颜色
  #     actor : 角色
  #--------------------------------------------------------------------------
  def hp_color(actor)
    return knockout_color if actor.hp == 0
    return crisis_color if actor.hp < actor.maxhp / 4
    return normal_color
  end
  #--------------------------------------------------------------------------
  # ● 获取魔力文字颜色
  #     actor : 角色
  #--------------------------------------------------------------------------
  def mp_color(actor)
    return crisis_color if actor.mp < actor.maxmp / 4
    return normal_color
  end
  #--------------------------------------------------------------------------
  # ● 绘制角色行走图
  #     actor : 角色
  #     x     : 描画目标 X 坐标
  #     y     : 描画目标 Y 坐标
  #--------------------------------------------------------------------------
  def draw_actor_graphic(actor, x, y)
    draw_character(actor.character_name, actor.character_index, x, y)
  end
  #--------------------------------------------------------------------------
  # ● 绘制角色头像
  #     actor : 角色
  #     x     : 描画目标 X 坐标
  #     y     : 描画目标 Y 坐标
  #     size  : 绘制大小
  #--------------------------------------------------------------------------
  def draw_actor_face(actor, x, y, size = 96)
    draw_face(actor.face_name, actor.face_index, x, y, size)
  end
  #--------------------------------------------------------------------------
  # ● 绘制角色名称
  #     actor : 角色
  #     x     : 描画目标 X 坐标
  #     y     : 描画目标 Y 坐标
  #--------------------------------------------------------------------------
  def draw_actor_name(actor, x, y)
    self.contents.font.color = hp_color(actor)
    self.contents.draw_text(x, y, 108, WLH, actor.name)
  end
  #--------------------------------------------------------------------------
  # ● 绘制角色职业
  #     actor : 角色
  #     x     : 描画目标 X 坐标
  #     y     : 描画目标 Y 坐标
  #--------------------------------------------------------------------------
  def draw_actor_class(actor, x, y)
    self.contents.font.color = normal_color
    self.contents.draw_text(x, y, 108, WLH, actor.class.name)
  end
  #--------------------------------------------------------------------------
  # ● 绘制角色等级
  #     actor : 角色
  #     x     : 描画目标 X 坐标
  #     y     : 描画目标 Y 坐标
  #--------------------------------------------------------------------------
  def draw_actor_level(actor, x, y)
    self.contents.font.color = system_color
    self.contents.draw_text(x, y, 32, WLH, Vocab::level_a)
    self.contents.font.color = normal_color
    self.contents.draw_text(x + 32, y, 24, WLH, actor.level, 2)
  end
  #--------------------------------------------------------------------------
  # ● 绘制角色状态
  #     actor : 角色
  #     x     : 描画目标 X 坐标
  #     y     : 描画目标 Y 坐标
  #     width : 描画目标宽度
  #--------------------------------------------------------------------------
  def draw_actor_state(actor, x, y, width = 96)
    count = 0
    for state in actor.states
      draw_icon(state.icon_index, x + 24 * count, y)
      count += 1
      break if (24 * count > width - 24)
    end
  end
  #--------------------------------------------------------------------------
  # ● 绘制角色体力
  #     actor : 角色
  #     x     : 描画目标 X 坐标
  #     y     : 描画目标 Y 坐标
  #     width : 描画目标宽度
  #--------------------------------------------------------------------------
  def draw_actor_hp(actor, x, y, width = 120)
    draw_actor_hp_gauge(actor, x, y, width)
    self.contents.font.color = system_color
    self.contents.draw_text(x, y, 30, WLH, Vocab::hp_a)
    self.contents.font.color = hp_color(actor)
    last_font_size = self.contents.font.size
    xr = x + width
    if width < 120
      self.contents.draw_text(xr - 44, y, 44, WLH, actor.hp, 2)
    else
      self.contents.draw_text(xr - 99, y, 44, WLH, actor.hp, 2)
      self.contents.font.color = normal_color
      self.contents.draw_text(xr - 55, y, 11, WLH, "/", 2)
      self.contents.draw_text(xr - 44, y, 44, WLH, actor.maxhp, 2)
    end
  end
  #--------------------------------------------------------------------------
  # ● 绘制角色体力值槽
  #     actor : 角色
  #     x     : 描画目标 X 坐标
  #     y     : 描画目标 Y 坐标
  #     width : 描画目标宽度
  #--------------------------------------------------------------------------
  def draw_actor_hp_gauge(actor, x, y, width = 120)
    gw = width * actor.hp / actor.maxhp
    gc1 = hp_gauge_color1
    gc2 = hp_gauge_color2
    self.contents.fill_rect(x, y + WLH - 8, width, 6, gauge_back_color)
    self.contents.gradient_fill_rect(x, y + WLH - 8, gw, 6, gc1, gc2)
  end
  #--------------------------------------------------------------------------
  # ● 绘制角色魔力
  #     actor : 角色
  #     x     : 描画目标 X 坐标
  #     y     : 描画目标 Y 坐标
  #     width : 描画目标宽度
  #--------------------------------------------------------------------------
  def draw_actor_mp(actor, x, y, width = 120)
    draw_actor_mp_gauge(actor, x, y, width)
    self.contents.font.color = system_color
    self.contents.draw_text(x, y, 30, WLH, Vocab::mp_a)
    self.contents.font.color = mp_color(actor)
    last_font_size = self.contents.font.size
    xr = x + width
    if width < 120
      self.contents.draw_text(xr - 44, y, 44, WLH, actor.mp, 2)
    else
      self.contents.draw_text(xr - 99, y, 44, WLH, actor.mp, 2)
      self.contents.font.color = normal_color
      self.contents.draw_text(xr - 55, y, 11, WLH, "/", 2)
      self.contents.draw_text(xr - 44, y, 44, WLH, actor.maxmp, 2)
    end
  end
  #--------------------------------------------------------------------------
  # ● 绘制角色魔力值槽
  #     actor : 角色
  #     x     : 描画目标 X 坐标
  #     y     : 描画目标 Y 坐标
  #     width : 描画目标宽度
  #--------------------------------------------------------------------------
  def draw_actor_mp_gauge(actor, x, y, width = 120)
    gw = width * actor.mp / [actor.maxmp, 1].max
    gc1 = mp_gauge_color1
    gc2 = mp_gauge_color2
    self.contents.fill_rect(x, y + WLH - 8, width, 6, gauge_back_color)
    self.contents.gradient_fill_rect(x, y + WLH - 8, gw, 6, gc1, gc2)
  end
  #--------------------------------------------------------------------------
  # ● 绘制角色能力值
  #     actor : 角色
  #     x     : 描画目标 X 坐标
  #     y     : 描画目标 Y 坐标
  #     type  : 能力值类型（0-3）
  #--------------------------------------------------------------------------
  def draw_actor_parameter(actor, x, y, type)
    case type
      when 0
        parameter_name = Vocab::atk
        parameter_value = actor.atk
      when 1
        parameter_name = Vocab::def
        parameter_value = actor.def
      when 2
        parameter_name = Vocab::spi
        parameter_value = actor.spi
      when 3
        parameter_name = Vocab::agi
        parameter_value = actor.agi
    end
    self.contents.font.color = system_color
    self.contents.draw_text(x, y, 120, WLH, parameter_name)
    self.contents.font.color = normal_color
    self.contents.draw_text(x + 120, y, 36, WLH, parameter_value, 2)
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
      self.contents.font.color = normal_color
      self.contents.font.color.alpha = enabled ? 255 : 128
      self.contents.draw_text(x + 24, y, 172, WLH, item.name)
    end
  end

  #--------------------------------------------------------------------------
  # ● 绘制金钱单位
  #     value : 数目
  #     x     : 描画目标 X 坐标
  #     y     : 描画目标 Y 坐标
  #     width : 描画目标宽度
  #--------------------------------------------------------------------------
  def draw_currency_value(value, x, y, width)
    cx = contents.text_size(Vocab::gold).width

    self.contents.font.color = normal_color
    self.contents.draw_text(x, y, width-cx-2, WLH, value, 2)
    self.contents.font.color = system_color
    self.contents.draw_text(x, y, width, WLH, Vocab::gold, 2)
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
    self.contents.font.color = normal_color
    self.contents.font.color.alpha = enabled ? 255 : 128
    self.contents.draw_text(rect, @commands[index])
  end
end

#==============================================================================
# ■ Window_Help
#------------------------------------------------------------------------------
# 　特技及物品的说明、角色的状态显示的窗口。
#==============================================================================

class Window_Help < Window_Base
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    super(0, 0, 544, WLH + 32)
  end
  #--------------------------------------------------------------------------
  # ● 设置文字
  #  text  : 显示于窗口内的字符串
  #  align : 对其 (0..靠左对齐, 1..居中对齐, 2..靠右对齐)
  #--------------------------------------------------------------------------
  def set_text(text, align = 0)
    if text != @text or align != @align
      self.contents.clear
      self.contents.font.color = normal_color
      self.contents.draw_text(4, 0, self.width - 40, WLH, text, align)
      @text = text
      @align = align
    end
  end
end

#==============================================================================
# ■ Window_Gold
#------------------------------------------------------------------------------
# 　显示金钱的窗口。
#==============================================================================

class Window_Gold < Window_Base
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     x      : 窗口 X 座标
  #     y      : 窗口 Y 座标
  #--------------------------------------------------------------------------
  def initialize(x, y)
    super(x, y, 160, WLH + 32)
    refresh
  end
  #--------------------------------------------------------------------------
  # ● 刷新
  #--------------------------------------------------------------------------
  def refresh
    self.contents.clear
    draw_currency_value($game_party.gold, 4, 0, 120)
  end
end


#==============================================================================
# ■ Window_MenuStatus
#------------------------------------------------------------------------------
# 　显示菜单画面和同伴状态的窗口。
#==============================================================================

class Window_MenuStatus < Window_Selectable
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     x      : 窗口 X 座标
  #     y      : 窗口 Y 座标
  #--------------------------------------------------------------------------
  def initialize(x, y)
    super(x, y, 384, 416)
    refresh
    self.active = false
    self.index = -1
  end
  #--------------------------------------------------------------------------
  # ● 刷新
  #--------------------------------------------------------------------------
  def refresh
    self.contents.clear
    @item_max = $game_party.members.size
    for actor in $game_party.members
      draw_actor_face(actor, 2, actor.index * 96 + 2, 92)
      x = 104
      y = actor.index * 96 + WLH / 2
      draw_actor_name(actor, x, y)
      draw_actor_class(actor, x + 120, y)
      draw_actor_level(actor, x, y + WLH * 1)
      draw_actor_state(actor, x, y + WLH * 2)
      draw_actor_hp(actor, x + 120, y + WLH * 1)
      draw_actor_mp(actor, x + 120, y + WLH * 2)
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新光标
  #--------------------------------------------------------------------------
  def update_cursor
    if @index < 0               # 无光标
      self.cursor_rect.empty
    elsif @index < @item_max    # 一般
      self.cursor_rect.set(0, @index * 96, contents.width, 96)
    elsif @index >= 100         # 使用本身
      self.cursor_rect.set(0, (@index - 100) * 96, contents.width, 96)
    else                        # 全体
      self.cursor_rect.set(0, 0, contents.width, @item_max * 96)
    end
  end
end

#==============================================================================
# ■ Window_Item
#------------------------------------------------------------------------------
# 　物品画面、战斗画面、显示浏览物品的窗口。
#==============================================================================

class Window_Item < Window_Selectable
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     x      : 窗口 X 座标
  #     y      : 窗口 Y 座标
  #     width  : 窗口宽度
  #     height : 窗口高度
  #--------------------------------------------------------------------------
  def initialize(x, y, width, height)
    super(x, y, width, height)
    @column_max = 2
    self.index = 0
    refresh
  end
  #--------------------------------------------------------------------------
  # ● 获取项目
  #--------------------------------------------------------------------------
  def item
    return @data[self.index]
  end
  #--------------------------------------------------------------------------
  # ● 判断是否为物品
  #     item : 项目
  #--------------------------------------------------------------------------
  def include?(item)
    return false if item == nil
    if $game_temp.in_battle
      return false unless item.is_a?(RPG::Item)
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 判断是否为有效状态
  #     item : 项目
  #--------------------------------------------------------------------------
  def enable?(item)
    return $game_party.item_can_use?(item)
  end
  #--------------------------------------------------------------------------
  # ● 刷新
  #--------------------------------------------------------------------------
  def refresh
    @data = []
    for item in $game_party.items
      next unless include?(item)
      @data.push(item)
      if item.is_a?(RPG::Item) and item.id == $game_party.last_item_id
        self.index = @data.size - 1
      end
    end
    @data.push(nil) if include?(nil)
    @item_max = @data.size
    create_contents
    for i in 0...@item_max
      draw_item(i)
    end
  end
  #--------------------------------------------------------------------------
  # ● 描绘项目
  #     index : 项目编号
  #--------------------------------------------------------------------------
  def draw_item(index)
    rect = item_rect(index)
    self.contents.clear_rect(rect)
    item = @data[index]
    if item != nil
      number = $game_party.item_number(item)
      enabled = enable?(item)
      rect.width -= 4
      draw_item_name(item, rect.x, rect.y, enabled)
      self.contents.draw_text(rect, sprintf(":%2d", number), 2)
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新帮助窗口文字
  #--------------------------------------------------------------------------
  def update_help
    @help_window.set_text(item == nil ? "" : item.description)
  end
end

#==============================================================================
# ■ Window_Equip
#------------------------------------------------------------------------------
# 　装备画面、显示角色现在装备的物品的窗口。
#==============================================================================

class Window_Equip < Window_Selectable
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     x      : 窗口 X 座标
  #     y      : 窗口 Y 座标
  #     actor  : 角色
  #--------------------------------------------------------------------------
  def initialize(x, y, actor)
    super(x, y, 336, WLH * 5 + 32)
    @actor = actor
    refresh
    self.index = 0
  end
  #--------------------------------------------------------------------------
  # ● 获取装备
  #--------------------------------------------------------------------------
  def item
    return @data[self.index]
  end
  #--------------------------------------------------------------------------
  # ● 刷新
  #--------------------------------------------------------------------------
  def refresh
    self.contents.clear
    @data = []
    for item in @actor.equips do @data.push(item) end
    @item_max = @data.size
    self.contents.font.color = system_color
    if @actor.two_swords_style
      self.contents.draw_text(4, WLH * 0, 92, WLH, Vocab::weapon1)
      self.contents.draw_text(4, WLH * 1, 92, WLH, Vocab::weapon2)
    else
      self.contents.draw_text(4, WLH * 0, 92, WLH, Vocab::weapon)
      self.contents.draw_text(4, WLH * 1, 92, WLH, Vocab::armor1)
    end
    self.contents.draw_text(4, WLH * 2, 92, WLH, Vocab::armor2)
    self.contents.draw_text(4, WLH * 3, 92, WLH, Vocab::armor3)
    self.contents.draw_text(4, WLH * 4, 92, WLH, Vocab::armor4)
    draw_item_name(@data[0], 92, WLH * 0)
    draw_item_name(@data[1], 92, WLH * 1)
    draw_item_name(@data[2], 92, WLH * 2)
    draw_item_name(@data[3], 92, WLH * 3)
    draw_item_name(@data[4], 92, WLH * 4)
  end
  #--------------------------------------------------------------------------
  # ● 更新帮助窗口文字
  #--------------------------------------------------------------------------
  def update_help
    @help_window.set_text(item == nil ? "" : item.description)
  end
end

#==============================================================================
# ■ Window_EquipItem
#------------------------------------------------------------------------------
# 　装备画面、显示浏览变更装备的候补物品的窗口。
#==============================================================================

class Window_EquipItem < Window_Item
  #--------------------------------------------------------------------------
  # ● 初始化对像
  # ● 初始化对像
  #     x          : 窗口 X 座标
  #     y          : 窗口 Y 座标
  #     width      : 窗口宽度
  #     height     : 窗口高度
  #     actor      : 角色
  #     equip_type : 装备类型（0～4）
  #--------------------------------------------------------------------------
  def initialize(x, y, width, height, actor, equip_type)
    @actor = actor
    if equip_type == 1 and actor.two_swords_style
      equip_type = 0                              # 将「盾」换成「武器2」
    end
    @equip_type = equip_type
    super(x, y, width, height)
  end
  #--------------------------------------------------------------------------
  # ● 判断是否为装备
  #     item : 装备项目
  #--------------------------------------------------------------------------
  def include?(item)
    return true if item == nil
    if @equip_type == 0
      return false unless item.is_a?(RPG::Weapon)
    else
      return false unless item.is_a?(RPG::Armor)
      return false unless item.kind == @equip_type - 1
    end
    return @actor.equippable?(item)
  end
  #--------------------------------------------------------------------------
  # ● 判断是否为有效状态
  #     item : 装备项目
  #--------------------------------------------------------------------------
  def enable?(item)
    return true
  end
end

#==============================================================================
# ■ Window_EquipStatus
#------------------------------------------------------------------------------
# 　装备画面的、显示角色能力值变化的窗口。
#==============================================================================

class Window_EquipStatus < Window_Base
  #--------------------------------------------------------------------------
  # ● 初始化对像
  # ● 初始化对像
  #     x      : 窗口 X 座标
  #     y      : 窗口 Y 座标
  #     actor  : 角色
  #--------------------------------------------------------------------------
  def initialize(x, y, actor)
    super(x, y, 208, WLH * 5 + 32)
    @actor = actor
    refresh
  end
  #--------------------------------------------------------------------------
  # ● 刷新
  #--------------------------------------------------------------------------
  def refresh
    self.contents.clear
    draw_actor_name(@actor, 4, 0)
    draw_parameter(0, WLH * 1, 0)
    draw_parameter(0, WLH * 2, 1)
    draw_parameter(0, WLH * 3, 2)
    draw_parameter(0, WLH * 4, 3)
  end
  #--------------------------------------------------------------------------
  # ● 设置装备後的能力值
  #     new_atk : 装备後的攻击力
  #     new_def : 装备後的防御力
  #     new_spi : 装备後的精神力
  #     new_agi : 装备後的敏捷
  #--------------------------------------------------------------------------
  def set_new_parameters(new_atk, new_def, new_spi, new_agi)
    if @new_atk != new_atk or @new_def != new_def or
        @new_spi != new_spi or @new_agi != new_agi
      @new_atk = new_atk
      @new_def = new_def
      @new_spi = new_spi
      @new_agi = new_agi
      refresh
    end
  end
  #--------------------------------------------------------------------------
  # ● 获取装备後的能力值文字颜色
  #     old_value : 装备前的能力值
  #     new_value : 装备後的能力值
  #--------------------------------------------------------------------------
  def new_parameter_color(old_value, new_value)
    if new_value > old_value      # 增强
      return power_up_color
    elsif new_value == old_value  # 不变
      return normal_color
    else                          # 减弱
      return power_down_color
    end
  end
  #--------------------------------------------------------------------------
  # ● 绘制能力值
  #     x    : 绘制点 X 座标
  #     y    : 绘制点 Y 座标
  #     type : 能力值 （0：攻击力、1：防御力、2：精神力、3：敏捷)
  #--------------------------------------------------------------------------
  def draw_parameter(x, y, type)
    case type
      when 0
        name = Vocab::atk
        value = @actor.atk
        new_value = @new_atk
      when 1
        name = Vocab::def
        value = @actor.def
        new_value = @new_def
      when 2
        name = Vocab::spi
        value = @actor.spi
        new_value = @new_spi
      when 3
        name = Vocab::agi
        value = @actor.agi
        new_value = @new_agi
    end
    self.contents.font.color = system_color
    self.contents.draw_text(x + 4, y, 80, WLH, name)
    self.contents.font.color = normal_color
    self.contents.draw_text(x + 90, y, 30, WLH, value, 2)
    self.contents.font.color = system_color
    self.contents.draw_text(x + 122, y, 20, WLH, ">", 1)
    if new_value != nil
      self.contents.font.color = new_parameter_color(value, new_value)
      self.contents.draw_text(x + 142, y, 30, WLH, new_value, 2)
    end
  end
end

#==============================================================================
# ■ Window_Skill
#------------------------------------------------------------------------------
# 　特技画面、战斗画面、显示可以使用的特技浏览的窗口。
#==============================================================================

class Window_Skill < Window_Selectable
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     x      : 窗口 X 座标
  #     y      : 窗口 Y 座标
  #     width  : 窗口宽度
  #     height : 窗口高度
  #     actor  : 角色
  #--------------------------------------------------------------------------
  def initialize(x, y, width, height, actor)
    super(x, y, width, height)
    @actor = actor
    @column_max = 2
    self.index = 0
    refresh
  end
  #--------------------------------------------------------------------------
  # ● 获取技能
  #--------------------------------------------------------------------------
  def skill
    return @data[self.index]
  end
  #--------------------------------------------------------------------------
  # ● 刷新
  #--------------------------------------------------------------------------
  def refresh
    @data = []
    for skill in @actor.skills
      @data.push(skill)
      if skill.id == @actor.last_skill_id
        self.index = @data.size - 1
      end
    end
    @item_max = @data.size
    create_contents
    for i in 0...@item_max
      draw_item(i)
    end
  end
  #--------------------------------------------------------------------------
  # ● 描绘项目
  #     index : 项目编号
  #--------------------------------------------------------------------------
  def draw_item(index)
    rect = item_rect(index)
    self.contents.clear_rect(rect)
    skill = @data[index]
    if skill != nil
      rect.width -= 4
      enabled = @actor.skill_can_use?(skill)
      draw_item_name(skill, rect.x, rect.y, enabled)
      self.contents.draw_text(rect, @actor.calc_mp_cost(skill), 2)
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新帮助窗口文字
  #--------------------------------------------------------------------------
  def update_help
    @help_window.set_text(skill == nil ? "" : skill.description)
  end
end


#==============================================================================
# ■ Window_SkillStatus
#------------------------------------------------------------------------------
# 　在特技画面显示特技使用者状态的窗口。
#==============================================================================

class Window_SkillStatus < Window_Base
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     x      : 窗口 X 座标
  #     y      : 窗口 Y 座标
  #     actor  : 角色
  #--------------------------------------------------------------------------
  def initialize(x, y, actor)
    super(x, y, 544, WLH + 32)
    @actor = actor
    refresh
  end
  #--------------------------------------------------------------------------
  # ● 刷新
  #--------------------------------------------------------------------------
  def refresh
    self.contents.clear
    draw_actor_name(@actor, 4, 0)
    draw_actor_level(@actor, 140, 0)
    draw_actor_hp(@actor, 240, 0)
    draw_actor_mp(@actor, 392, 0)
  end
end

#==============================================================================
# ■ Window_Status
#------------------------------------------------------------------------------
# 　显示状态画面、完全规格的状态窗口。
#==============================================================================

class Window_Status < Window_Base
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     actor : 角色
  #--------------------------------------------------------------------------
  def initialize(actor)
    super(0, 0, 544, 416)
    @actor = actor
    refresh
  end
  #--------------------------------------------------------------------------
  # ● 刷新
  #--------------------------------------------------------------------------
  def refresh
    self.contents.clear
    draw_actor_name(@actor, 4, 0)
    draw_actor_class(@actor, 128, 0)
    draw_actor_face(@actor, 8, 32)
    draw_basic_info(128, 32)
    draw_parameters(32, 160)
    draw_exp_info(288, 32)
    draw_equipments(288, 160)
  end
  #--------------------------------------------------------------------------
  # ● 绘制基础资料
  #     x : 绘制点 X 座标
  #     y : 绘制点 Y 座标
  #--------------------------------------------------------------------------
  def draw_basic_info(x, y)
    draw_actor_level(@actor, x, y + WLH * 0)
    draw_actor_state(@actor, x, y + WLH * 1)
    draw_actor_hp(@actor, x, y + WLH * 2)
    draw_actor_mp(@actor, x, y + WLH * 3)
  end
  #--------------------------------------------------------------------------
  # ● 绘制能力值
  #     x : 绘制点 X 座标
  #     y : 绘制点 Y 座标
  #--------------------------------------------------------------------------
  def draw_parameters(x, y)
    draw_actor_parameter(@actor, x, y + WLH * 0, 0)
    draw_actor_parameter(@actor, x, y + WLH * 1, 1)
    draw_actor_parameter(@actor, x, y + WLH * 2, 2)
    draw_actor_parameter(@actor, x, y + WLH * 3, 3)
  end
  #--------------------------------------------------------------------------
  # ● 绘制经验值
  #     x : 绘制点 X 座标
  #     y : 绘制点 Y 座标
  #--------------------------------------------------------------------------
  def draw_exp_info(x, y)
    s1 = @actor.exp_s
    s2 = @actor.next_rest_exp_s
    s_next = sprintf(Vocab::ExpNext, Vocab::level)
    self.contents.font.color = system_color
    self.contents.draw_text(x, y + WLH * 0, 180, WLH, Vocab::ExpTotal)
    self.contents.draw_text(x, y + WLH * 2, 180, WLH, s_next)
    self.contents.font.color = normal_color
    self.contents.draw_text(x, y + WLH * 1, 180, WLH, s1, 2)
    self.contents.draw_text(x, y + WLH * 3, 180, WLH, s2, 2)
  end
  #--------------------------------------------------------------------------
  # ● 绘制装备
  #     x : 绘制点 X 座标
  #     y : 绘制点 Y 座标
  #--------------------------------------------------------------------------
  def draw_equipments(x, y)
    self.contents.font.color = system_color
    self.contents.draw_text(x, y, 120, WLH, Vocab::equip)
    for i in 0..4
      draw_item_name(@actor.equips[i], x + 16, y + WLH * (i + 1))
    end
  end
end

#==============================================================================
# ■ Window_SaveFile
#------------------------------------------------------------------------------
# 　显示存档以及读档画面、保存文件的窗口。
#==============================================================================

class Window_SaveFile < Window_Base
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_reader   :filename                 # 文件名称
  attr_reader   :file_exist               # 文件存在标志
  attr_reader   :time_stamp               # 时间标记
  attr_reader   :selected                 # 选择状态
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     file_index : 存档文件的索引（0-3）
  #     filename   : 文件名称
  #--------------------------------------------------------------------------
  def initialize(file_index, filename)
    super(0, 56 + file_index % 4 * 90, 544, 90)
    @file_index = file_index
    @filename = filename
    load_gamedata
    refresh
    @selected = false
  end
  #--------------------------------------------------------------------------
  # ● 载入部分游戏资料
  #    默认情况下，开关和变数不会用到。（以备扩充情况下如：显示地名等时使用）
  #--------------------------------------------------------------------------
  def load_gamedata
    @time_stamp = Time.at(0)
    @file_exist = FileTest.exist?(@filename)
    if @file_exist
      file = File.open(@filename, "r")
      @time_stamp = file.mtime
      begin
        @characters     = Marshal.load(file)
        @frame_count    = Marshal.load(file)
        @last_bgm       = Marshal.load(file)
        @last_bgs       = Marshal.load(file)
        @game_system    = Marshal.load(file)
        @game_message   = Marshal.load(file)
        @game_switches  = Marshal.load(file)
        @game_variables = Marshal.load(file)
        @total_sec = @frame_count / Graphics.frame_rate
      rescue
        @file_exist = false
      ensure
        file.close
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 刷新
  #--------------------------------------------------------------------------
  def refresh
    self.contents.clear
    self.contents.font.color = normal_color
    name = Vocab::File + " #{@file_index + 1}"
    self.contents.draw_text(4, 0, 200, WLH, name)
    @name_width = contents.text_size(name).width
    if @file_exist
      draw_party_characters(152, 58)
      draw_playtime(0, 34, contents.width - 4, 2)
    end
  end
  #--------------------------------------------------------------------------
  # ● 描绘队员
  #     x : 绘制点 X 座标
  #     y : 绘制点 Y 座标
  #--------------------------------------------------------------------------
  def draw_party_characters(x, y)
    for i in 0...@characters.size
      name = @characters[i][0]
      index = @characters[i][1]
      draw_character(name, index, x + i * 48, y)
    end
  end
  #--------------------------------------------------------------------------
  # ● 描绘游戏时间
  #     x : 绘制点 X 座标
  #     y : 绘制点 Y 座标
  #     width : 描绘区域宽度
  #     align : 对齐方式
  #--------------------------------------------------------------------------
  def draw_playtime(x, y, width, align)
    hour = @total_sec / 60 / 60
    min = @total_sec / 60 % 60
    sec = @total_sec % 60
    time_string = sprintf("%02d:%02d:%02d", hour, min, sec)
    self.contents.font.color = normal_color
    self.contents.draw_text(x, y, width, WLH, time_string, 2)
  end
  #--------------------------------------------------------------------------
  # ● 设置选择状态
  #     selected : 新的选择状态 (true=选择 false=不选择)
  #--------------------------------------------------------------------------
  def selected=(selected)
    @selected = selected
    update_cursor
  end
  #--------------------------------------------------------------------------
  # ● 刷新光标
  #--------------------------------------------------------------------------
  def update_cursor
    if @selected
      self.cursor_rect.set(0, 0, @name_width + 8, WLH)
    else
      self.cursor_rect.empty
    end
  end
end

#==============================================================================
# ■ Window_Message
#------------------------------------------------------------------------------
# 　显示文章的信息窗口。
#==============================================================================

class Window_Message < Window_Selectable
  #--------------------------------------------------------------------------
  # ● 常量
  #--------------------------------------------------------------------------
  MAX_LINE = 4                            # 最大行数
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    super(0, 288, 544, 128)
    self.z = 200
    self.active = false
    self.index = -1
    self.openness = 0
    @opening = false            # 窗口正在打开标志
    @closing = false            # 窗口正在关闭标志
    @text = nil                 # 尚未显示文章
    @contents_x = 0             # 描绘下一字的 X 座标
    @contents_y = 0             # 描绘下一字的 Y 座标
    @line_count = 0             # 以描绘行数
    @wait_count = 0             # 等待祯数
    @background = 0             # 背景类型
    @position = 2               # 显示位置
    @show_fast = false          # 瞬间表示文章标志
    @line_show_fast = false     # 行快速显示文章标志
    @pause_skip = false         # 不等待输入标志
    create_gold_window
    create_number_input_window
    create_back_sprite
  end
  #--------------------------------------------------------------------------
  # ● 释放窗口
  #--------------------------------------------------------------------------
  def dispose
    super
    dispose_gold_window
    dispose_number_input_window
    dispose_back_sprite
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    update_gold_window
    update_number_input_window
    update_back_sprite
    update_show_fast
    unless @opening or @closing             # 窗口非正在打开或正在关闭中
      if @wait_count > 0                    # 文间等待
        @wait_count -= 1
      elsif self.pause                      # 等待输入的情况下
        input_pause

      elsif self.active                     # 输入选择的情况下
        input_choice

      elsif @number_input_window.visible    # 输入数值的情况下
        input_number

      elsif @text != nil                    # 有等待显示的文字的情况下

        update_message                        # 更新文章
      elsif continue?                       # 继续的情况下

        start_message                         # 开始文章
        open                                  # 打开窗口
        $game_message.visible = true
      else                                  # 否则

        close                                 # 关闭窗口
        $game_message.visible = @closing
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 生成金钱窗口
  #--------------------------------------------------------------------------
  def create_gold_window
    @gold_window = Window_Gold.new(384, 0)
    @gold_window.openness = 0
  end
  #--------------------------------------------------------------------------
  # ● 生成数值输入窗口
  #--------------------------------------------------------------------------
  def create_number_input_window
    @number_input_window = Window_NumberInput.new
    @number_input_window.visible = false
  end
  #--------------------------------------------------------------------------
  # ● 生成背景活动块
  #--------------------------------------------------------------------------
  def create_back_sprite
    @back_sprite = Sprite.new
    @back_sprite.bitmap = Cache.system("MessageBack")
    @back_sprite.visible = (@background == 1)
    @back_sprite.z = 190
  end
  #--------------------------------------------------------------------------
  # ● 释放金钱窗口
  #--------------------------------------------------------------------------
  def dispose_gold_window
    @gold_window.dispose
  end
  #--------------------------------------------------------------------------
  # ● 释放数值输入窗口
  #--------------------------------------------------------------------------
  def dispose_number_input_window
    @number_input_window.dispose
  end
  #--------------------------------------------------------------------------
  # ● 释放背景活动块
  #--------------------------------------------------------------------------
  def dispose_back_sprite
    @back_sprite.dispose
  end
  #--------------------------------------------------------------------------
  # ● 更新金钱窗口
  #--------------------------------------------------------------------------
  def update_gold_window
    @gold_window.update
  end
  #--------------------------------------------------------------------------
  # ● 更新数值输入窗口
  #--------------------------------------------------------------------------
  def update_number_input_window
    @number_input_window.update
  end
  #--------------------------------------------------------------------------
  # ● 更新背景活动块
  #--------------------------------------------------------------------------
  def update_back_sprite
    @back_sprite.visible = (@background == 1)
    @back_sprite.y = y - 16
    @back_sprite.opacity = openness
    @back_sprite.update
  end
  #--------------------------------------------------------------------------
  # ● 更新快速显示文章标志
  #--------------------------------------------------------------------------
  def update_show_fast
    if self.pause or self.openness < 255
      @show_fast = false
    elsif Input.trigger?(Input::C) and @wait_count < 2
      @show_fast = true
    elsif not Input.press?(Input::C)
      @show_fast = false
    end
    if @show_fast and @wait_count > 0
      @wait_count -= 1
    end
  end
  #--------------------------------------------------------------------------
  # ● 判断下面的文章是否接着显示
  #--------------------------------------------------------------------------
  def continue?
    return true if $game_message.num_input_variable_id > 0
    return false if $game_message.texts.empty?
    if self.openness > 0 and not $game_temp.in_battle
      return false if @background != $game_message.background
      return false if @position != $game_message.position
    end
    return true
  end
  #--------------------------------------------------------------------------
  # ● 开始显示文章
  #--------------------------------------------------------------------------
  def start_message
    @text = ""
    for i in 0...$game_message.texts.size
      @text += "    " if i >= $game_message.choice_start
      @text += $game_message.texts[i].clone + "\x00"
    end
    @item_max = $game_message.choice_max
    convert_special_characters
    reset_window
    new_page
  end
  #--------------------------------------------------------------------------
  # ● 新页处理
  #--------------------------------------------------------------------------
  def new_page
    contents.clear
    if $game_message.face_name.empty?
      @contents_x = 0
    else
      name = $game_message.face_name
      index = $game_message.face_index
      draw_face(name, index, 0, 0)
      @contents_x = 112
    end
    @contents_y = 0
    @line_count = 0
    @show_fast = false
    @line_show_fast = false
    @pause_skip = false
    contents.font.color = text_color(0)
  end
  #--------------------------------------------------------------------------
  # ● 新行处理
  #--------------------------------------------------------------------------
  def new_line
    if $game_message.face_name.empty?
      @contents_x = 0
    else
      @contents_x = 112
    end
    @contents_y += WLH
    @line_count += 1
    @line_show_fast = false
  end
  #--------------------------------------------------------------------------
  # ● 转换特殊符号
  #--------------------------------------------------------------------------
  def convert_special_characters
    @text.gsub!(/\\V\[([0-9]+)\]/i) { $game_variables[$1.to_i] }
    @text.gsub!(/\\N\[([0-9]+)\]/i) { $game_actors[$1.to_i].name }
    @text.gsub!(/\\C\[([0-9]+)\]/i) { "\x01[#{$1}]" }
    @text.gsub!(/\\G/)              { "\x02" }
    @text.gsub!(/\\\./)             { "\x03" }
    @text.gsub!(/\\\|/)             { "\x04" }
    @text.gsub!(/\\!/)              { "\x05" }
    @text.gsub!(/\\>/)              { "\x06" }
    @text.gsub!(/\\</)              { "\x07" }
    @text.gsub!(/\\\^/)             { "\x08" }
    @text.gsub!(/\\\\/)             { "\\" }
  end
  #--------------------------------------------------------------------------
  # ● 设定窗口背景和位置
  #--------------------------------------------------------------------------
  def reset_window
    @background = $game_message.background
    @position = $game_message.position
    if @background == 0   # 一般窗口
      self.opacity = 255
    else                  # 背景变暗并透明化
      self.opacity = 0
    end
    case @position
      when 0  # 上
        self.y = 0
        @gold_window.y = 360
      when 1  # 中
        self.y = 144
        @gold_window.y = 0
      when 2  # 下
        self.y = 288
        @gold_window.y = 0
    end
  end
  #--------------------------------------------------------------------------
  # ● 结束文章显示
  #--------------------------------------------------------------------------
  def terminate_message
    self.active = false
    self.pause = false
    self.index = -1
    @gold_window.close
    @number_input_window.active = false
    @number_input_window.visible = false
    $game_message.main_proc.call if $game_message.main_proc != nil
    $game_message.clear
  end
  #--------------------------------------------------------------------------
  # ● 更新文章显示
  #--------------------------------------------------------------------------
  def update_message
    loop do
      c = @text.slice!(/./m)            # 获取一个文字
      case c
        when nil                          # 无法获取文字时
          finish_message                  # 结束文章更新
          break
        when "\x00"                       # 新行
          new_line
          if @line_count >= MAX_LINE      # 当行数已至最大行数
            unless @text.empty?           # 并还有有等待显示的文字时
              self.pause = true           # 等待输入
              break
            end
          end
        when "\x01"                       # \C[n]（文字变色）
          @text.sub!(/\[([0-9]+)\]/, "")
          contents.font.color = text_color($1.to_i)
          next
        when "\x02"                       # \G  （显示金钱）
          @gold_window.refresh
          @gold_window.open
        when "\x03"                       # \.  （等待四分之一秒）
          @wait_count = 15
          break
        when "\x04"                       # \|  （等待一秒）
          @wait_count = 60
          break
        when "\x05"                       # \!  （等待输入）
          self.pause = true
          break
        when "\x06"                       # \>  （瞬间表示on）
          @line_show_fast = true
        when "\x07"                       # \<  （瞬间表示off）
          @line_show_fast = false
        when "\x08"                       # \^  （不等待输入）
          @pause_skip = true
        else                              # 一般文字
          contents.draw_text(@contents_x, @contents_y, 40, WLH, c)
          c_width = contents.text_size(c).width
          @contents_x += c_width
      end
      break unless @show_fast or @line_show_fast
    end
  end
  #--------------------------------------------------------------------------
  # ● 结束文章更新
  #--------------------------------------------------------------------------
  def finish_message
    if $game_message.choice_max > 0
      start_choice
    elsif $game_message.num_input_variable_id > 0
      start_number_input
    elsif @pause_skip
      terminate_message
    else
      self.pause = true
    end
    @wait_count = 10
    @text = nil
  end
  #--------------------------------------------------------------------------
  # ● 开始选择项
  #--------------------------------------------------------------------------
  def start_choice
    self.active = true
    self.index = 0
  end
  #--------------------------------------------------------------------------
  # ● 开始数值输入
  #--------------------------------------------------------------------------
  def start_number_input
    digits_max = $game_message.num_input_digits_max
    number = $game_variables[$game_message.num_input_variable_id]
    @number_input_window.digits_max = digits_max
    @number_input_window.number = number
    if $game_message.face_name.empty?
      @number_input_window.x = x
    else
      @number_input_window.x = x + 112
    end
    @number_input_window.y = y + @contents_y
    @number_input_window.active = true
    @number_input_window.visible = true
    @number_input_window.update
  end
  #--------------------------------------------------------------------------
  # ● 刷新光标
  #--------------------------------------------------------------------------
  def update_cursor
    if @index >= 0
      x = $game_message.face_name.empty? ? 0 : 112
      y = ($game_message.choice_start + @index) * WLH
      self.cursor_rect.set(x, y, contents.width - x, WLH)
    else
      self.cursor_rect.empty
    end
  end
  #--------------------------------------------------------------------------
  # ● 等待输入处理
  #--------------------------------------------------------------------------
  def input_pause
    if Input.trigger?(Input::B) or Input.trigger?(Input::C)
      self.pause = false
      if @text != nil and not @text.empty?
        new_page if @line_count >= MAX_LINE
      else
        terminate_message
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 选择项处理
  #--------------------------------------------------------------------------
  def input_choice
    if Input.trigger?(Input::B)
      if $game_message.choice_cancel_type > 0
        Sound.play_cancel
        $game_message.choice_proc.call($game_message.choice_cancel_type - 1)
        terminate_message
      end
    elsif Input.trigger?(Input::C)
      Sound.play_decision
      $game_message.choice_proc.call(self.index)
      terminate_message
    end
  end
  #--------------------------------------------------------------------------
  # ● 名称输入处理
  #--------------------------------------------------------------------------
  def input_number
    if Input.trigger?(Input::C)
      Sound.play_decision
      $game_variables[$game_message.num_input_variable_id] =
          @number_input_window.number
      $game_map.need_refresh = true
      terminate_message
    end
  end
end

#==============================================================================
# ■ Window_BattleMessage
#------------------------------------------------------------------------------
# 　在战斗画面显示信息的窗口。除了一般信息功能之外，还增加战斗进行描述功能。
#==============================================================================

class Window_BattleMessage < Window_Message
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    super
    self.openness = 255
    #self.viewport = Viewport.new(0,0,544,416)
    @lines = []
    refresh
  end
  #--------------------------------------------------------------------------
  # ● 释放
  #--------------------------------------------------------------------------
  def dispose
    super
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
  end
  #--------------------------------------------------------------------------
  # ● 开启窗口（默认无效化）
  #--------------------------------------------------------------------------
  def open
  end
  #--------------------------------------------------------------------------
  # ● 关闭窗口（默认无效化）
  #--------------------------------------------------------------------------
  def close
  end
  #--------------------------------------------------------------------------
  # ● 设置窗口背景和位置（默认无效化）
  #--------------------------------------------------------------------------
  def reset_window
  end
  #--------------------------------------------------------------------------
  # ● 清除
  #--------------------------------------------------------------------------
  def clear
    @lines.clear
    refresh
  end
  #--------------------------------------------------------------------------
  # ● 获取行数
  #--------------------------------------------------------------------------
  def line_number
    return @lines.size
  end
  #--------------------------------------------------------------------------
  # ● 返回上一行
  #--------------------------------------------------------------------------
  def back_one
    @lines.pop
    refresh
  end
  #--------------------------------------------------------------------------
  # ● 回到指定行
  #     line_number : 行数
  #--------------------------------------------------------------------------
  def back_to(line_number)
    while @lines.size > line_number
      @lines.pop
    end
    refresh
  end
  #--------------------------------------------------------------------------
  # ● 加入文字
  #     text : 要加入的文字
  #--------------------------------------------------------------------------
  def add_instant_text(text)
    @lines.push(text)
    refresh
  end
  #--------------------------------------------------------------------------
  # ● 替换文字
  #     text : 用来替换的文字
  #    将最後一行替换成指定文字。
  #--------------------------------------------------------------------------
  def replace_instant_text(text)
    @lines.pop
    @lines.push(text)
    refresh
  end
  #--------------------------------------------------------------------------
  # ● 获取上一行文字
  #--------------------------------------------------------------------------
  def last_instant_text
    return @lines[-1]
  end
  #--------------------------------------------------------------------------
  # ● 刷新
  #--------------------------------------------------------------------------
  def refresh
    self.contents.clear
    for i in 0...@lines.size
      draw_line(i)
    end
  end
  #--------------------------------------------------------------------------
  # ● 描绘行
  #     index : 行数
  #--------------------------------------------------------------------------
  def draw_line(index)
    rect = Rect.new(0, 0, 0, 0)
    rect.x += 4
    rect.y += index * WLH
    rect.width = contents.width - 8
    rect.height = WLH
    self.contents.clear_rect(rect)
    self.contents.font.color = normal_color
    self.contents.draw_text(rect, @lines[index])
  end
end

#==============================================================================
# ■ Window_PartyCommand
#------------------------------------------------------------------------------
# 　战斗画面、选择战斗与逃跑的窗口。
#==============================================================================

class Window_PartyCommand < Window_Command
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    s1 = Vocab::fight
    s2 = Vocab::escape
    super(128, [s1, s2], 1, 4)
    draw_item(0, true)
    draw_item(1, $game_troop.can_escape)
    self.active = false
  end
end

#==============================================================================
# ■ Window_ActorCommand
#------------------------------------------------------------------------------
#  选择角色命令（如「攻击」或「技能」）的窗口。
#==============================================================================

class Window_ActorCommand < Window_Command
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    super(128, [], 1, 4)
    self.active = false
  end
  #--------------------------------------------------------------------------
  # ● 设置
  #     actor : 角色
  #--------------------------------------------------------------------------
  def setup(actor)
    s1 = Vocab::attack
    s2 = Vocab::skill
    s3 = Vocab::guard
    s4 = Vocab::item
    if actor.class.skill_name_valid     # 是否指定职业技能文字
      s2 = actor.class.skill_name       # 替换「技能」命令文字
    end
    @commands = [s1, s2, s3, s4]
    @item_max = 4
    refresh
    self.index = 0
  end
end

#==============================================================================
# ■ Window_TargetEnemy
#------------------------------------------------------------------------------
#  在战斗画面，选择要攻击的敌人的窗口。
#==============================================================================

class Window_TargetEnemy < Window_Command
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    commands = []
    @enemies = []
    for enemy in $game_troop.members
      next unless enemy.exist?
      commands.push(enemy.name)
      @enemies.push(enemy)
    end
    super(416, commands, 2, 4)
  end
  #--------------------------------------------------------------------------
  # ● 获取敌人对象
  #--------------------------------------------------------------------------
  def enemy
    return @enemies[@index]
  end
end

#==============================================================================
# ■ Window_BattleStatus
#------------------------------------------------------------------------------
# 　显示战斗画面同伴状态的窗口。
#==============================================================================

class Window_BattleStatus < Window_Selectable
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #--------------------------------------------------------------------------
  def initialize
    super(0, 0, 416, 128)
    refresh
    self.active = false
  end
  #--------------------------------------------------------------------------
  # ● 释放
  #--------------------------------------------------------------------------
  def dispose
    super
  end
  #--------------------------------------------------------------------------
  # ● 刷新
  #--------------------------------------------------------------------------
  def refresh
    self.contents.clear
    @item_max = $game_party.members.size
    for i in 0...@item_max
      draw_item(i)
    end
  end
  #--------------------------------------------------------------------------
  # ● 描绘项目
  #     index : 项目索引
  #--------------------------------------------------------------------------
  def draw_item(index)
    rect = item_rect(index)
    rect.x += 4
    rect.width -= 8
    self.contents.clear_rect(rect)
    self.contents.font.color = normal_color
    actor = $game_party.members[index]
    draw_actor_name(actor, 4, rect.y)
    draw_actor_state(actor, 114, rect.y, 48)
    draw_actor_hp(actor, 174, rect.y, 120)
    draw_actor_mp(actor, 310, rect.y, 70)
  end
end

#==============================================================================
# ■ Window_NumberInput
#------------------------------------------------------------------------------
# 　信息窗口内部使用、输入数值的窗口。
#==============================================================================

class Window_NumberInput < Window_Base
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     digits_max : 位数
  #--------------------------------------------------------------------------
  def initialize
    super(0, 0, 544, 64)
    @number = 0
    @digits_max = 6
    @index = 0
    self.opacity = 0
    self.active = false
    self.z += 9999
    refresh
    update_cursor
  end
  #--------------------------------------------------------------------------
  # ● 取得数值
  #--------------------------------------------------------------------------
  def number
    return @number
  end
  #--------------------------------------------------------------------------
  # ● 设置数值
  #     number : 新的数值
  #--------------------------------------------------------------------------
  def number=(number)
    @number = [[number, 0].max, 10 ** @digits_max - 1].min
    @index = 0
    refresh
  end
  #--------------------------------------------------------------------------
  # ● 获取位数
  #--------------------------------------------------------------------------
  def digits_max
    return @digits_max
  end
  #--------------------------------------------------------------------------
  # ● 设置位数
  #     digits_max : 新位数
  #--------------------------------------------------------------------------
  def digits_max=(digits_max)
    @digits_max = digits_max
    refresh
  end
  #--------------------------------------------------------------------------
  # ● 光标右移
  #     wrap : 允许循环
  #--------------------------------------------------------------------------
  def cursor_right(wrap)
    if @index < @digits_max - 1 or wrap
      @index = (@index + 1) % @digits_max
    end
  end
  #--------------------------------------------------------------------------
  # ● 光标左移
  #     wrap : 允许循环
  #--------------------------------------------------------------------------
  def cursor_left(wrap)
    if @index > 0 or wrap
      @index = (@index + @digits_max - 1) % @digits_max
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    if self.active
      if Input.repeat?(Input::UP) or Input.repeat?(Input::DOWN)
        Sound.play_cursor
        place = 10 ** (@digits_max - 1 - @index)
        n = @number / place % 10
        @number -= n * place
        n = (n + 1) % 10 if Input.repeat?(Input::UP)
        n = (n + 9) % 10 if Input.repeat?(Input::DOWN)
        @number += n * place
        refresh
      end
      last_index = @index
      if Input.repeat?(Input::RIGHT)
        cursor_right(Input.trigger?(Input::RIGHT))
      end
      if Input.repeat?(Input::LEFT)
        cursor_left(Input.trigger?(Input::LEFT))
      end
      if @index != last_index
        Sound.play_cursor
      end
      update_cursor
    end
  end
  #--------------------------------------------------------------------------
  # ● 刷新
  #--------------------------------------------------------------------------
  def refresh
    self.contents.clear
    self.contents.font.color = normal_color
    s = sprintf("%0*d", @digits_max, @number)
    for i in 0...@digits_max
      self.contents.draw_text(24 + i * 16, 0, 16, WLH, s[i,1], 1)
    end
  end
  #--------------------------------------------------------------------------
  # ● 刷新光标
  #--------------------------------------------------------------------------
  def update_cursor
    self.cursor_rect.set(24 + @index * 16, 0, 16, WLH)
  end
end


#==============================================================================
# ■ Scene_Base
#------------------------------------------------------------------------------
# 　游戏中全部画面的超级类。
#==============================================================================

class Scene_Base
  #--------------------------------------------------------------------------
  # ● 主处理
  #--------------------------------------------------------------------------
  def main
    start                         # 开始处理
    perform_transition            # 执行渐变
    post_start                    # 开始后处理
    Input.update                  # 更新输入讯息
    loop do
      Graphics.update             # 更新游戏画面
      Input.update                # 更新输入讯息
      update                      # 更新画面
      break if $scene != self     # 切换画面时中断循环
    end
    Graphics.update
    pre_terminate                 # 结束前处理
    Graphics.freeze               # 准备渐变
    terminate                     # 结束处理
  end
  #--------------------------------------------------------------------------
  # ● 开始处理
  #--------------------------------------------------------------------------
  def start
  end
  #--------------------------------------------------------------------------
  # ● 执行渐变
  #--------------------------------------------------------------------------
  def perform_transition
    Graphics.transition(10)
  end
  #--------------------------------------------------------------------------
  # ● 开始後处理
  #--------------------------------------------------------------------------
  def post_start
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
  end
  #--------------------------------------------------------------------------
  # ● 结束前处理
  #--------------------------------------------------------------------------
  def pre_terminate
  end
  #--------------------------------------------------------------------------
  # ● 结束处理
  #--------------------------------------------------------------------------
  def terminate
  end
  #--------------------------------------------------------------------------
  # ● 截图做下一个画面的背景
  #--------------------------------------------------------------------------
  def snapshot_for_background
    $game_temp.background_bitmap.dispose
    $game_temp.background_bitmap = Graphics.snap_to_bitmap
    $game_temp.background_bitmap.blur
  end
  #--------------------------------------------------------------------------
  # ● 生成菜单画面背景
  #--------------------------------------------------------------------------
  def create_menu_background
    @menuback_sprite = Sprite.new
    @menuback_sprite.bitmap = $game_temp.background_bitmap
    @menuback_sprite.color.set(16, 16, 16, 128)
    update_menu_background
  end
  #--------------------------------------------------------------------------
  # ● 释放菜单画面背景
  #--------------------------------------------------------------------------
  def dispose_menu_background
    @menuback_sprite.dispose
  end
  #--------------------------------------------------------------------------
  # ● 更新菜单画面背景
  #--------------------------------------------------------------------------
  def update_menu_background
  end
end

#==============================================================================
# ■ Scene_Title
#------------------------------------------------------------------------------
# 　处理标题画面的类。
#==============================================================================

class Scene_Title < Scene_Base
  #--------------------------------------------------------------------------
  # ● 主处理
  #--------------------------------------------------------------------------
  def main
    if $BTEST                         # 战斗测试的情况下
      battle_test                     # 开始战斗测试处理
    else                              # 普通游戏的情况下
      super                           # 原来的主处理
    end
  end
  #--------------------------------------------------------------------------
  # ● 开始处理
  #--------------------------------------------------------------------------
  def start
    super
    load_database                     # 载入数据库
    create_game_objects               # 生成游戏对象
    check_continue                    # 判断继续是否有效
    create_title_graphic              # 生成标题画面图像
    create_command_window             # 生成指令窗口
    play_title_music                  # 播放标题画面音乐
  end
  #--------------------------------------------------------------------------
  # ● 执行渐变
  #--------------------------------------------------------------------------
  def perform_transition
    Graphics.transition(20)
  end
  #--------------------------------------------------------------------------
  # ● 开始後处理
  #--------------------------------------------------------------------------
  def post_start
    super
    open_command_window
  end
  #--------------------------------------------------------------------------
  # ● 结束前处理
  #--------------------------------------------------------------------------
  def pre_terminate
    super
    close_command_window
  end
  #--------------------------------------------------------------------------
  # ● 结束处理
  #--------------------------------------------------------------------------
  def terminate
    super
    dispose_command_window
    snapshot_for_background
    dispose_title_graphic
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    @command_window.update
    if Input.trigger?(Input::C)

      case @command_window.index
        when 0    #New game
          command_new_game
        when 1    # Continue
          command_continue
        when 2    # Shutdown
          command_shutdown
      end
    end

  end
  #--------------------------------------------------------------------------
  # ● 载入数据库
  #--------------------------------------------------------------------------
  def load_database
   $data_actors        = load_data("Data/Actors.rvdata")
   $data_classes       = load_data("Data/Classes.rvdata")
    $data_skills        = load_data("Data/Skills.rvdata")
    $data_items         = load_data("Data/Items.rvdata")
   $data_weapons       = load_data("Data/Weapons.rvdata")
   $data_armors        = load_data("Data/Armors.rvdata")
   $data_enemies       = load_data("Data/Enemies.rvdata")
    $data_troops        = load_data("Data/Troops.rvdata")
    $data_states        = load_data("Data/States.rvdata")
    $data_animations    = load_data("Data/Animations.rvdata")
    $data_common_events = load_data("Data/CommonEvents.rvdata")
     $data_system        = load_data("Data/System.rvdata")
    $data_areas         = load_data("Data/Areas.rvdata")
  end
  #--------------------------------------------------------------------------
  # ● 载入战斗测试数据库
  #--------------------------------------------------------------------------
  def load_bt_database
=begin
    $data_actors        = load_data("Data/BT_Actors.rvdata")
    $data_classes       = load_data("Data/BT_Classes.rvdata")
    $data_skills        = load_data("Data/BT_Skills.rvdata")
    $data_items         = load_data("Data/BT_Items.rvdata")
    $data_weapons       = load_data("Data/BT_Weapons.rvdata")
    $data_armors        = load_data("Data/BT_Armors.rvdata")
    $data_enemies       = load_data("Data/BT_Enemies.rvdata")
    $data_troops        = load_data("Data/BT_Troops.rvdata")
    $data_states        = load_data("Data/BT_States.rvdata")
    $data_animations    = load_data("Data/BT_Animations.rvdata")
    $data_common_events = load_data("Data/BT_CommonEvents.rvdata")
    $data_system        = load_data("Data/BT_System.rvdata")
=end
  end
  #--------------------------------------------------------------------------
  # ● 生成各种游戏对象
  #--------------------------------------------------------------------------
  def create_game_objects
    $game_temp          = Game_Temp.new
    $game_message       = Game_Message.new
    $game_system        = Game_System.new
    $game_switches      = Game_Switches.new
    $game_variables     = Game_Variables.new
    $game_self_switches = Game_SelfSwitches.new
    $game_actors        = Game_Actors.new
    $game_party         = Game_Party.new
    $game_troop         = Game_Troop.new
    $game_map           = Game_Map.new
    $game_player        = Game_Player.new
  end
  #--------------------------------------------------------------------------
  # ● 判断继续的有效性
  #--------------------------------------------------------------------------
  def check_continue

    @continue_enabled = (Dir.glob('Save*.rvdata').size > 0)

  end
  #--------------------------------------------------------------------------
  # ● 生成标题图形
  #--------------------------------------------------------------------------
  def create_title_graphic
    @sprite = Sprite.new
    @sprite.bitmap = Cache.system("Title")
  end
  #--------------------------------------------------------------------------
  # ● 释放标题图形
  #--------------------------------------------------------------------------
  def dispose_title_graphic
    @sprite.bitmap.dispose
    @sprite.dispose
  end
  #--------------------------------------------------------------------------
  # ● 生成命令窗口
  #--------------------------------------------------------------------------
  def create_command_window
    s1 = Vocab::new_game
    s2 = Vocab::continue
    s3 = Vocab::shutdown
    @command_window = Window_Command.new(172, [s1, s2, s3])
    @command_window.x = (544 - @command_window.width) / 2
    @command_window.y = 288

    if @continue_enabled                    # 如果「继续」有效
      @command_window.index = 1             # 将光标移至「继续游戏」
    else                                    # 否则则将「继续游戏」半透明化
      @command_window.draw_item(1, false)
    end
    @command_window.openness = 0
    @command_window.open
  end
  #--------------------------------------------------------------------------
  # ● 释放命令窗口
  #--------------------------------------------------------------------------
  def dispose_command_window
    @command_window.dispose
  end
  #--------------------------------------------------------------------------
  # ● 开启命令窗口
  #--------------------------------------------------------------------------
  def open_command_window
    @command_window.open
    begin
      @command_window.update
      Graphics.update
    end until @command_window.openness == 255
  end
  #--------------------------------------------------------------------------
  # ● 关闭命令窗口
  #--------------------------------------------------------------------------
  def close_command_window
    @command_window.close
    begin
      @command_window.update
      Graphics.update
    end until @command_window.openness == 0
  end
  #--------------------------------------------------------------------------
  # ● 播放标题音乐
  #--------------------------------------------------------------------------
  def play_title_music
    $data_system.title_bgm.play
    RPG::BGS.stop
    RPG::ME.stop
  end
  #--------------------------------------------------------------------------
  # ● 检查主角初期位置是否存在
  #--------------------------------------------------------------------------
  def confirm_player_location
   # if $data_system.start_map_id == 0
    #  print "主角初始位置未设定。"
   #   exit
    #end
  end
  #--------------------------------------------------------------------------
  # ● 命令：新游戏
  #--------------------------------------------------------------------------
  def command_new_game

    #confirm_player_location
    Sound.play_decision
    $game_party.setup_starting_members            # 起始队伍
    $game_map.setup($data_system.start_map_id)    # 起始位置
    $game_player.moveto($data_system.start_x, $data_system.start_y)
    $game_player.refresh
    $scene = Scene_Map.new
    RPG::BGM.fade(1500)
    close_command_window
    Graphics.fadeout(60)
    Graphics.wait(40)
    Graphics.frame_count = 0
    RPG::BGM.stop
    $game_map.autoplay

  end
  #--------------------------------------------------------------------------
  # ● 命令：继续游戏
  #--------------------------------------------------------------------------
  def command_continue
    if @continue_enabled
      Sound.play_decision
      $scene = Scene_File.new(false, true, false)
    else
      Sound.play_buzzer
    end
  end
  #--------------------------------------------------------------------------
  # ● 命令：离开游戏
  #--------------------------------------------------------------------------
  def command_shutdown

    Sound.play_decision
    RPG::BGM.fade(800)
    RPG::BGS.fade(800)
    RPG::ME.fade(800)

    $scene = nil
  end
  #--------------------------------------------------------------------------
  # ● 战斗测试
  #--------------------------------------------------------------------------
  def battle_test
=begin
    load_bt_database                  # 载入战斗测试数据库
    create_game_objects               # 生成个各种游戏对象
    Graphics.frame_count = 0          # 初始化游戏时间
    $game_party.setup_battle_test_members
    $game_troop.setup($data_system.test_troop_id)
    $game_troop.can_escape = true
    $game_system.battle_bgm.play
    snapshot_for_background
    $scene = Scene_Battle.new
=end
  end
end

#==============================================================================
# ■ Scene_File
#------------------------------------------------------------------------------
# 　存档画面及读档画面的类。
#==============================================================================

class Scene_File < Scene_Base
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     saving     : 存档标志（false则为读档）
  #     from_title : 标志：是由标题画面的「继续游戏」调用的
  #     from_event : 标志：是由事件「呼叫存档画面」命令调用的
  #--------------------------------------------------------------------------
  def initialize(saving, from_title, from_event)
    @saving = saving
    @from_title = from_title
    @from_event = from_event
  end
  #--------------------------------------------------------------------------
  # ● 开始处理
  #--------------------------------------------------------------------------
  def start
    super
    create_menu_background
    @help_window = Window_Help.new
    create_savefile_windows
    if @saving
      @index = $game_temp.last_file_index
      @help_window.set_text(Vocab::SaveMessage)
    else
      @index = self.latest_file_index
      @help_window.set_text(Vocab::LoadMessage)
    end
    @savefile_windows[@index].selected = true
  end
  #--------------------------------------------------------------------------
  # ● 结束处理
  #--------------------------------------------------------------------------
  def terminate
    super
    dispose_menu_background
    @help_window.dispose
    dispose_item_windows
  end
  #--------------------------------------------------------------------------
  # ● 回到原画面
  #--------------------------------------------------------------------------
  def return_scene
    if @from_title
      $scene = Scene_Title.new
    elsif @from_event
      $scene = Scene_Map.new
    else
      $scene = Scene_Menu.new(4)
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    update_menu_background
    @help_window.update
    update_savefile_windows
    update_savefile_selection
  end
  #--------------------------------------------------------------------------
  # ● 生成存档窗口
  #--------------------------------------------------------------------------
  def create_savefile_windows
    @savefile_windows = []
    for i in 0..3
      @savefile_windows.push(Window_SaveFile.new(i, make_filename(i)))
    end
    @item_max = 4
  end
  #--------------------------------------------------------------------------
  # ● 释放存档窗口
  #--------------------------------------------------------------------------
  def dispose_item_windows
    for window in @savefile_windows
      window.dispose
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新存档窗口
  #--------------------------------------------------------------------------
  def update_savefile_windows
    for window in @savefile_windows
      window.update
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新存档文件选择
  #--------------------------------------------------------------------------
  def update_savefile_selection
    if Input.trigger?(Input::C)
      determine_savefile
    elsif Input.trigger?(Input::B)
      Sound.play_cancel
      return_scene
    else
      last_index = @index
      if Input.repeat?(Input::DOWN)
        cursor_down(Input.trigger?(Input::DOWN))
      end
      if Input.repeat?(Input::UP)
        cursor_up(Input.trigger?(Input::UP))
      end
      if @index != last_index
        Sound.play_cursor
        @savefile_windows[last_index].selected = false
        @savefile_windows[@index].selected = true
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 确认存档文件
  #--------------------------------------------------------------------------
  def determine_savefile
    if @saving
      Sound.play_save
      do_save
    else
      if @savefile_windows[@index].file_exist
        Sound.play_load
        do_load
      else
        Sound.play_buzzer
        return
      end
    end
    $game_temp.last_file_index = @index
  end
  #--------------------------------------------------------------------------
  # ● 光标下移
  #     wrap : 允许循环
  #--------------------------------------------------------------------------
  def cursor_down(wrap)
    if @index < @item_max - 1 or wrap
      @index = (@index + 1) % @item_max
    end
  end
  #--------------------------------------------------------------------------
  # ● 光标上移
  #     wrap : 允许循环
  #--------------------------------------------------------------------------
  def cursor_up(wrap)
    if @index > 0 or wrap
      @index = (@index - 1 + @item_max) % @item_max
    end
  end
  #--------------------------------------------------------------------------
  # ● 生成文件名称
  #     file_index : 存档位置（0～3）
  #--------------------------------------------------------------------------
  def make_filename(file_index)
    return "Save#{file_index + 1}.rvdata"
  end
  #--------------------------------------------------------------------------
  # ● 选择最近存档的文件
  #--------------------------------------------------------------------------
  def latest_file_index
    index = 0
    latest_time = Time.at(0)
    for i in 0...@savefile_windows.size
      if @savefile_windows[i].time_stamp > latest_time
        latest_time = @savefile_windows[i].time_stamp
        index = i
      end
    end
    return index
  end
  #--------------------------------------------------------------------------
  # ● 执行存档
  #--------------------------------------------------------------------------
  def do_save
    file = File.open(@savefile_windows[@index].filename, "wb")
    write_save_data(file)
    file.close
    return_scene
  end
  #--------------------------------------------------------------------------
  # ● 执行读档
  #--------------------------------------------------------------------------
  def do_load
    file = File.open(@savefile_windows[@index].filename, "rb")
    read_save_data(file)
    file.close
    $scene = Scene_Map.new
    RPG::BGM.fade(1500)
    Graphics.fadeout(60)
    Graphics.wait(40)
    @last_bgm.play
    @last_bgs.play
  end
  #--------------------------------------------------------------------------
  # ● 写入存档数据
  #     file : 写入存档对象（已开启）
  #--------------------------------------------------------------------------
  def write_save_data(file)
    characters = []
    for actor in $game_party.members
      characters.push([actor.character_name, actor.character_index])
    end
    $game_system.save_count += 1
    $game_system.version_id = $data_system.version_id
    @last_bgm = RPG::BGM::last
    @last_bgs = RPG::BGS::last
    Marshal.dump(characters,           file)
    Marshal.dump(Graphics.frame_count, file)
    Marshal.dump(@last_bgm,            file)
    Marshal.dump(@last_bgs,            file)
    Marshal.dump($game_system,         file)
    Marshal.dump($game_message,        file)
    Marshal.dump($game_switches,       file)
    Marshal.dump($game_variables,      file)
    Marshal.dump($game_self_switches,  file)
    Marshal.dump($game_actors,         file)
    Marshal.dump($game_party,          file)
    Marshal.dump($game_troop,          file)
    Marshal.dump($game_map,            file)
    Marshal.dump($game_player,         file)
  end
  #--------------------------------------------------------------------------
  # ● 读出存档数据
  #     file : 读出存档对象（已开启）
  #--------------------------------------------------------------------------
  def read_save_data(file)
    characters           = Marshal.load(file)
    Graphics.frame_count = Marshal.load(file)
    @last_bgm            = Marshal.load(file)
    @last_bgs            = Marshal.load(file)
    $game_system         = Marshal.load(file)
    $game_message        = Marshal.load(file)
    $game_switches       = Marshal.load(file)
    $game_variables      = Marshal.load(file)
    $game_self_switches  = Marshal.load(file)
    Debug.test($game_actors)
    $game_actors         = Marshal.load(file)
    $game_party          = Marshal.load(file)
    $game_troop          = Marshal.load(file)
    $game_map            = Marshal.load(file)
    $game_player         = Marshal.load(file)
    if $game_system.version_id != $data_system.version_id
      $game_map.setup($game_map.map_id)
      $game_player.center($game_player.x, $game_player.y)
    end
  end
end

#==============================================================================
# ■ Scene_Map
#------------------------------------------------------------------------------
# 　处理地图画面的类。
#==============================================================================

class Scene_Map < Scene_Base
  #--------------------------------------------------------------------------
  # ● 开始处理
  #--------------------------------------------------------------------------
  def start
    super
    $game_map.refresh
    @spriteset = Spriteset_Map.new
    @message_window = Window_Message.new
  end
  #--------------------------------------------------------------------------
  # ● 执行渐变
  #--------------------------------------------------------------------------
  def perform_transition
    if Graphics.brightness == 0       # 战斗後或载入後等
      fadein(30)
    else                              # 从菜单中回来等
      Graphics.transition(15)
    end
  end
  #--------------------------------------------------------------------------
  # ● 结束处理
  #--------------------------------------------------------------------------
  def terminate
    super
    if $scene.is_a?(Scene_Battle)     # 切换至战斗场景的场合
      @spriteset.dispose_characters   # 隐藏角色来生成战斗背景
    end
    snapshot_for_background
    @spriteset.dispose
    @message_window.dispose
    if $scene.is_a?(Scene_Battle)     # 切换至战斗场景的场合
      perform_battle_transition       # 执行战斗渐变
    end
  end
  #--------------------------------------------------------------------------
  # ● 基本更新处理
  #--------------------------------------------------------------------------
  def update_basic
    Graphics.update                   # 更新游戏画面
    Input.update                      # 更新输入信息
    $game_map.update                  # 更新地图
    @spriteset.update                 # 更新活动块组
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    $game_map.interpreter.update      # 更新解释器
    $game_map.update                  # 更新地图
    $game_player.update               # 更新主角
    $game_system.update               # 更新计时器
    @spriteset.update                 # 更新活动块组
    @message_window.update            # 更新信息窗口
    unless $game_message.visible      # 信息窗口显示中除外
      update_transfer_player
      update_encounter
      update_call_menu
      update_call_debug
      update_scene_change
    end
  end
  #--------------------------------------------------------------------------
  # ● 淡入画面
  #     duration : 时间
  #    如果直接使用 Graphics.fadeout 的话会出现一些状况，如天候效果和远景
  #    滚动都会被强迫停止，所以用动态的 fade-in 效果会好些。
  #--------------------------------------------------------------------------
  def fadein(duration)
    Graphics.transition(0)
    for i in 0..duration-1
      Graphics.brightness = 255 * i / duration
      update_basic
    end
    Graphics.brightness = 255
  end
  #--------------------------------------------------------------------------
  # ● 淡出画面
  #     duration : 时间
  #    与上面的 fadein 一样，不是直接调用 Graphics.fadein。
  #--------------------------------------------------------------------------
  def fadeout(duration)
    Graphics.transition(0)
    for i in 0..duration-1
      Graphics.brightness = 255 - 255 * i / duration
      update_basic
    end
    Graphics.brightness = 0
  end
  #--------------------------------------------------------------------------
  # ● 场所移动处理
  #--------------------------------------------------------------------------
  def update_transfer_player
    return unless $game_player.transfer?
    fade = (Graphics.brightness > 0)
    fadeout(30) if fade
    @spriteset.dispose              # 释放活动块组
    $game_player.perform_transfer   # 执行场所移动
    $game_map.autoplay              # 自动更改 BGM 和 BGS
    $game_map.update
    Graphics.wait(15)
    @spriteset = Spriteset_Map.new  # 重新生成活动块组
    fadein(30) if fade
    Input.update
  end
  #--------------------------------------------------------------------------
  # ● 遇敌处理
  #--------------------------------------------------------------------------
  def update_encounter
    return if $game_player.encounter_count > 0        # 检查步数
    return if $game_map.interpreter.running?          # 判断是否有事件正在执行
    return if $game_system.encounter_disabled         # 判断是否禁止遇敌
    troop_id = $game_player.make_encounter_troop_id   # 判断敌人队伍
    return if $data_troops[troop_id] == nil           # 判断队伍是否无效
    $game_troop.setup(troop_id)
    $game_troop.can_escape = true
    $game_temp.battle_proc = nil
    $game_temp.next_scene = "battle"
    preemptive_or_surprise
  end
  #--------------------------------------------------------------------------
  # ● 判断先下手或被偷袭
  #--------------------------------------------------------------------------
  def preemptive_or_surprise
    actors_agi = $game_party.average_agi
    enemies_agi = $game_troop.average_agi
    if actors_agi >= enemies_agi
      percent_preemptive = 5
      percent_surprise = 3
    else
      percent_preemptive = 3
      percent_surprise = 5
    end
    if rand(100) < percent_preemptive
      $game_troop.preemptive = true
    elsif rand(100) < percent_surprise
      $game_troop.surprise = true
    end
  end
  #--------------------------------------------------------------------------
  # ● 判断是否呼叫菜单（按下B键）
  #--------------------------------------------------------------------------
  def update_call_menu
    if Input.trigger?(Input::B)
      return if $game_map.interpreter.running?        # 判断是否有事件正在执行
      return if $game_system.menu_disabled            # 判断是否禁止菜单呼叫
      $game_temp.menu_beep = true                     # 设置音效标志
      $game_temp.next_scene = "menu"
    end
  end
  #--------------------------------------------------------------------------
  # ● 判断是否呼叫DEBUG场景（按下F9键）
  #--------------------------------------------------------------------------
  def update_call_debug
    if $TEST and Input.press?(Input::F9)    # 游戏测试并按下F9
      $game_temp.next_scene = "debug"
    end
  end
  #--------------------------------------------------------------------------
  # ● 执行场景交替
  #--------------------------------------------------------------------------
  def update_scene_change
    return if $game_player.moving?    # 判断主角是否移动中
    case $game_temp.next_scene
      when "battle"
        call_battle
      when "shop"
        call_shop
      when "name"
        call_name
      when "menu"
        call_menu
      when "save"
        call_save
      when "debug"
        call_debug
      when "gameover"
        call_gameover
      when "title"
        call_title
      else
        $game_temp.next_scene = nil
    end
  end
  #--------------------------------------------------------------------------
  # ● 切换至战斗画面
  #--------------------------------------------------------------------------
  def call_battle
    @spriteset.update
    Graphics.update
    $game_player.make_encounter_count
    $game_player.straighten
    $game_temp.map_bgm = RPG::BGM.last
    $game_temp.map_bgs = RPG::BGS.last
    RPG::BGM.stop
    RPG::BGS.stop
    Sound.play_battle_start
    $game_system.battle_bgm.play
    $game_temp.next_scene = nil
    $scene = Scene_Battle.new
  end
  #--------------------------------------------------------------------------
  # ● 切换至商店画面
  #--------------------------------------------------------------------------
  def call_shop
    $game_temp.next_scene = nil
    $scene = Scene_Shop.new
  end
  #--------------------------------------------------------------------------
  # ● 切换至名称输入画面
  #--------------------------------------------------------------------------
  def call_name
    $game_temp.next_scene = nil
    $scene = Scene_Name.new
  end
  #--------------------------------------------------------------------------
  # ● 切换至菜单画面
  #--------------------------------------------------------------------------
  def call_menu
    if $game_temp.menu_beep
      Sound.play_decision
      $game_temp.menu_beep = false
    end
    $game_temp.next_scene = nil
    $scene = Scene_Menu.new
  end
  #--------------------------------------------------------------------------
  # ● 切换至存档画面
  #--------------------------------------------------------------------------
  def call_save
    $game_temp.next_scene = nil
    $scene = Scene_File.new(true, false, true)
  end
  #--------------------------------------------------------------------------
  # ● 切换至DEBUG画面
  #--------------------------------------------------------------------------
  def call_debug
    Sound.play_decision
    $game_temp.next_scene = nil
    $scene = Scene_Debug.new
  end
  #--------------------------------------------------------------------------
  # ● 切换至游戏结束画面
  #--------------------------------------------------------------------------
  def call_gameover
    $game_temp.next_scene = nil
    $scene = Scene_Gameover.new
  end
  #--------------------------------------------------------------------------
  # ● 切换至标题画面
  #--------------------------------------------------------------------------
  def call_title
    $game_temp.next_scene = nil
    $scene = Scene_Title.new
    fadeout(60)
  end
  #--------------------------------------------------------------------------
  # ● 执行战斗渐变
  #--------------------------------------------------------------------------
  def perform_battle_transition
    Graphics.transition(80, "Graphics/System/BattleStart", 80)
    Graphics.freeze
  end
end

#==============================================================================
# ■ Scene_Menu
#------------------------------------------------------------------------------
# 　处理菜单画面的类。
#==============================================================================

class Scene_Menu < Scene_Base
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     menu_index : 命令窗口光标初始位置
  #--------------------------------------------------------------------------
  def initialize(menu_index = 0)
    @menu_index = menu_index
  end
  #--------------------------------------------------------------------------
  # ● 开始处理
  #--------------------------------------------------------------------------
  def start
    super
    create_menu_background
    create_command_window
    @gold_window = Window_Gold.new(0, 360)
    @status_window = Window_MenuStatus.new(160, 0)
  end
  #--------------------------------------------------------------------------
  # ● 结束处理
  #--------------------------------------------------------------------------
  def terminate
    super
    dispose_menu_background
    @command_window.dispose
    @gold_window.dispose
    @status_window.dispose
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    update_menu_background
    @command_window.update
    @gold_window.update
    @status_window.update
    if @command_window.active
      update_command_selection
    elsif @status_window.active
      update_actor_selection
    end
  end
  #--------------------------------------------------------------------------
  # ● 生成命令窗口
  #--------------------------------------------------------------------------
  def create_command_window
    s1 = Vocab::item
    s2 = Vocab::skill
    s3 = Vocab::equip
    s4 = Vocab::status
    s5 = Vocab::save
    s6 = Vocab::game_end
    @command_window = Window_Command.new(160, [s1, s2, s3, s4, s5, s6])
    @command_window.index = @menu_index
    if $game_party.members.size == 0          # 如果队伍为空
      @command_window.draw_item(0, false)     # 无效化物品选项
      @command_window.draw_item(1, false)     # 无效化技能选项
      @command_window.draw_item(2, false)     # 无效化装备选项
      @command_window.draw_item(3, false)     # 无效化状态选项
    end
    if $game_system.save_disabled             # 如果禁止存档
      @command_window.draw_item(4, false)     # 无效化存档选项
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新命令窗口
  #--------------------------------------------------------------------------
  def update_command_selection
    if Input.trigger?(Input::B)
      Sound.play_cancel
      $scene = Scene_Map.new
    elsif Input.trigger?(Input::C)
      if $game_party.members.size == 0 and @command_window.index < 4
        Sound.play_buzzer
        return
      elsif $game_system.save_disabled and @command_window.index == 4
        Sound.play_buzzer
        return
      end
      Sound.play_decision
      case @command_window.index
        when 0      # 物品
          $scene = Scene_Item.new
        when 1,2,3  # 技能、装备、状态
          start_actor_selection
        when 4      # 存档
          $scene = Scene_File.new(true, false, false)
        when 5      # 结束游戏
          $scene = Scene_End.new
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 角色选择开始
  #--------------------------------------------------------------------------
  def start_actor_selection
    @command_window.active = false
    @status_window.active = true
    if $game_party.last_actor_index < @status_window.item_max
      @status_window.index = $game_party.last_actor_index
    else
      @status_window.index = 0
    end
  end
  #--------------------------------------------------------------------------
  # ● 角色选择结束
  #--------------------------------------------------------------------------
  def end_actor_selection
    @command_window.active = true
    @status_window.active = false
    @status_window.index = -1
  end
  #--------------------------------------------------------------------------
  # ● 角色选择更新
  #--------------------------------------------------------------------------
  def update_actor_selection
    if Input.trigger?(Input::B)
      Sound.play_cancel
      end_actor_selection
    elsif Input.trigger?(Input::C)
      $game_party.last_actor_index = @status_window.index
      Sound.play_decision
      case @command_window.index
        when 1  # 技能
          $scene = Scene_Skill.new(@status_window.index)
        when 2  # 装备
          $scene = Scene_Equip.new(@status_window.index)
        when 3  # 状态
          $scene = Scene_Status.new(@status_window.index)
      end
    end
  end
end

#==============================================================================
# ■ Scene_Status
#------------------------------------------------------------------------------
# 　处理状态画面的类。
#==============================================================================

class Scene_Status < Scene_Base
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     actor_index : 角色位置
  #--------------------------------------------------------------------------
  def initialize(actor_index = 0)
    @actor_index = actor_index
  end
  #--------------------------------------------------------------------------
  # ● 开始处理
  #--------------------------------------------------------------------------
  def start
    super
    create_menu_background
    @actor = $game_party.members[@actor_index]
    @status_window = Window_Status.new(@actor)
  end
  #--------------------------------------------------------------------------
  # ● 结束处理
  #--------------------------------------------------------------------------
  def terminate
    super
    dispose_menu_background
    @status_window.dispose
  end
  #--------------------------------------------------------------------------
  # ● 回到原画面
  #--------------------------------------------------------------------------
  def return_scene
    $scene = Scene_Menu.new(3)
  end
  #--------------------------------------------------------------------------
  # ● 切换至下一角色画面
  #--------------------------------------------------------------------------
  def next_actor
    @actor_index += 1
    @actor_index %= $game_party.members.size
    $scene = Scene_Status.new(@actor_index)
  end
  #--------------------------------------------------------------------------
  # ● 切换至上一角色画面
  #--------------------------------------------------------------------------
  def prev_actor
    @actor_index += $game_party.members.size - 1
    @actor_index %= $game_party.members.size
    $scene = Scene_Status.new(@actor_index)
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    update_menu_background
    @status_window.update
    if Input.trigger?(Input::B)
      Sound.play_cancel
      return_scene
   elsif Input.trigger?(Input::R)
     Sound.play_cursor
      next_actor
    elsif Input.trigger?(Input::L)
      Sound.play_cursor
      prev_actor
    end
    super
  end
end

#==============================================================================
# ■ Scene_Equip
#------------------------------------------------------------------------------
# 　处理装备画面的类。
#==============================================================================

class Scene_Equip < Scene_Base
  #--------------------------------------------------------------------------
  # ● 常量
  #--------------------------------------------------------------------------
  EQUIP_TYPE_MAX = 5                      # 最大装备数
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     actor_index : 角色位置
  #     equip_index : 装备位置
  #--------------------------------------------------------------------------
  def initialize(actor_index = 0, equip_index = 0)
    @actor_index = actor_index
    @equip_index = equip_index
  end
  #--------------------------------------------------------------------------
  # ● 开始处理
  #--------------------------------------------------------------------------
  def start
    super
    create_menu_background
    @actor = $game_party.members[@actor_index]
    @help_window = Window_Help.new
    create_item_windows
    @equip_window = Window_Equip.new(208, 56, @actor)
    @equip_window.help_window = @help_window
    @equip_window.index = @equip_index
    @status_window = Window_EquipStatus.new(0, 56, @actor)
  end
  #--------------------------------------------------------------------------
  # ● 结束处理
  #--------------------------------------------------------------------------
  def terminate
    super
    dispose_menu_background
    @help_window.dispose
    @equip_window.dispose
    @status_window.dispose
    dispose_item_windows
  end
  #--------------------------------------------------------------------------
  # ● 回到原画面
  #--------------------------------------------------------------------------
  def return_scene
    $scene = Scene_Menu.new(2)
  end
  #--------------------------------------------------------------------------
  # ● 切换至下一角色画面
  #--------------------------------------------------------------------------
  def next_actor
    @actor_index += 1
    @actor_index %= $game_party.members.size
    $scene = Scene_Equip.new(@actor_index, @equip_window.index)
  end
  #--------------------------------------------------------------------------
  # ● 切换至上一角色画面
  #--------------------------------------------------------------------------
  def prev_actor
    @actor_index += $game_party.members.size - 1
    @actor_index %= $game_party.members.size
    $scene = Scene_Equip.new(@actor_index, @equip_window.index)
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    update_menu_background
    @help_window.update
    update_equip_window
    update_status_window
    update_item_windows
    if @equip_window.active
      update_equip_selection
    elsif @item_window.active
      update_item_selection
    end
  end
  #--------------------------------------------------------------------------
  # ● 生成装备物品窗口
  #--------------------------------------------------------------------------
  def create_item_windows
    @item_windows = []
    for i in 0...EQUIP_TYPE_MAX
      @item_windows[i] = Window_EquipItem.new(0, 208, 544, 208, @actor, i)
      @item_windows[i].help_window = @help_window
      @item_windows[i].visible = (@equip_index == i)
      @item_windows[i].y = 208
      @item_windows[i].height = 208
      @item_windows[i].active = false
      @item_windows[i].index = -1
    end
  end
  #--------------------------------------------------------------------------
  # ● 释放装备物品窗口
  #--------------------------------------------------------------------------
  def dispose_item_windows
    for window in @item_windows
      window.dispose
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新装备物品窗口
  #--------------------------------------------------------------------------
  def update_item_windows
    for i in 0...EQUIP_TYPE_MAX
      @item_windows[i].visible = (@equip_window.index == i)
      @item_windows[i].update
    end
    @item_window = @item_windows[@equip_window.index]
  end
  #--------------------------------------------------------------------------
  # ● 更新装备窗口
  #--------------------------------------------------------------------------
  def update_equip_window
    @equip_window.update
  end
  #--------------------------------------------------------------------------
  # ● 更新状态窗口
  #--------------------------------------------------------------------------
  def update_status_window
    if @equip_window.active
      @status_window.set_new_parameters(nil, nil, nil, nil)
    elsif @item_window.active
      temp_actor = @actor.clone
      temp_actor.change_equip(@equip_window.index, @item_window.item, true)
      new_atk = temp_actor.atk
      new_def = temp_actor.def
      new_spi = temp_actor.spi
      new_agi = temp_actor.agi
      @status_window.set_new_parameters(new_atk, new_def, new_spi, new_agi)
    end
    @status_window.update
  end
  #--------------------------------------------------------------------------
  # ● 更新装备区域选择
  #--------------------------------------------------------------------------
  def update_equip_selection
    if Input.trigger?(Input::B)
      Sound.play_cancel
      return_scene
    elsif Input.trigger?(Input::R)
      Sound.play_cursor
      next_actor
    elsif Input.trigger?(Input::L)
      Sound.play_cursor
      prev_actor
    elsif Input.trigger?(Input::C)
      if @actor.fix_equipment
        Sound.play_buzzer
      else
        Sound.play_decision
        @equip_window.active = false
        @item_window.active = true
        @item_window.index = 0
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新装备物品选择
  #--------------------------------------------------------------------------
  def update_item_selection
    if Input.trigger?(Input::B)
      Sound.play_cancel
      @equip_window.active = true
      @item_window.active = false
      @item_window.index = -1
    elsif Input.trigger?(Input::C)
      Sound.play_equip
      @actor.change_equip(@equip_window.index, @item_window.item)
      @equip_window.active = true
      @item_window.active = false
      @item_window.index = -1
      @equip_window.refresh
      for item_window in @item_windows
        item_window.refresh
      end
    end
  end
end

#==============================================================================
# ■ Scene_Item
#------------------------------------------------------------------------------
# 　处理物品画面的类。
#==============================================================================

class Scene_Item < Scene_Base
  #--------------------------------------------------------------------------
  # ● 开始处理
  #--------------------------------------------------------------------------
  def start
    super
    create_menu_background
    @viewport = Viewport.new(0, 0, 500, 416)
    @help_window = Window_Help.new
   #@help_window.viewport = @viewport
    @item_window = Window_Item.new(0, 56, 544, 360)
   @item_window.viewport = @viewport
    @item_window.help_window = @help_window
    @item_window.active = false
    @target_window = Window_MenuStatus.new(0, 0)
    #@bitmap = Cache.system("Title")
    #@sp1 = Sprite.new(@viewport)
    #@sp1.bitmap = @bitmap
    hide_target_window
  end
  #--------------------------------------------------------------------------
  # ● 结束处理
  #--------------------------------------------------------------------------
  def terminate
    super
    dispose_menu_background
    @viewport.dispose
    @help_window.dispose
    @item_window.dispose
    @target_window.dispose
  end
  #--------------------------------------------------------------------------
  # ● 回到原画面
  #--------------------------------------------------------------------------
  def return_scene
    $scene = Scene_Menu.new(0)
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    update_menu_background
    @help_window.update
    @item_window.update
    @target_window.update
    if @item_window.active
      update_item_selection
    elsif @target_window.active
      update_target_selection
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新物品选择
  #--------------------------------------------------------------------------
  def update_item_selection
    if Input.trigger?(Input::B)
      Sound.play_cancel
      return_scene
    elsif Input.trigger?(Input::C)
      @item = @item_window.item
      if @item != nil
        $game_party.last_item_id = @item.id
      end
      if $game_party.item_can_use?(@item)
        Sound.play_decision
        determine_item
      else
        Sound.play_buzzer
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 确认物品
  #--------------------------------------------------------------------------
  def determine_item
    if @item.for_friend?
      show_target_window(@item_window.index % 2 == 0)
      if @item.for_all?
        @target_window.index = 99
      else
        if $game_party.last_target_index < @target_window.item_max
          @target_window.index = $game_party.last_target_index
        else
          @target_window.index = 0
        end
      end
    else
      use_item_nontarget
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新目标选择
  #--------------------------------------------------------------------------
  def update_target_selection
    if Input.trigger?(Input::B)
      Sound.play_cancel
      if $game_party.item_number(@item) == 0    # 判断物品是否耗尽
        @item_window.refresh                    # 刷新窗口内容
      end
      hide_target_window
    elsif Input.trigger?(Input::C)
      if not $game_party.item_can_use?(@item)
        Sound.play_buzzer
      else
        determine_target
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 确认目标
  #    目标无效时（如对无法战斗的角色使用回复药水）则播放冻结SE。
  #--------------------------------------------------------------------------
  def determine_target
    used = false
    if @item.for_all?
      for target in $game_party.members
        target.item_effect(target, @item)
        used = true unless target.skipped
      end
    else
      $game_party.last_target_index = @target_window.index
      target = $game_party.members[@target_window.index]
      target.item_effect(target, @item)
      used = true unless target.skipped
    end
    if used
      use_item_nontarget
    else
      Sound.play_buzzer
    end
  end
  #--------------------------------------------------------------------------
  # ● 显示目标窗口
  #     right : 靠又对齐标签（为false时则靠左）
  #--------------------------------------------------------------------------
  def show_target_window(right)
    @item_window.active = false
    width_remain = 544 - @target_window.width
    @target_window.x = right ? width_remain : 0
    @target_window.visible = true
    @target_window.active = true
    if right
      @viewport.rect.set(0, 0, width_remain, 416)
      @viewport.ox = 0
    else
      @viewport.rect.set(@target_window.width, 0, width_remain, 416)
      @viewport.ox = @target_window.width
    end
  end
  #--------------------------------------------------------------------------
  # ● 隐藏目标窗口
  #--------------------------------------------------------------------------
  def hide_target_window
    @item_window.active = true
    @target_window.visible = false
    @target_window.active = false
    @viewport.rect.set(0, 0, 544, 416)
    @viewport.ox = 0
  end
  #--------------------------------------------------------------------------
  # ● 非同伴目标使用物品
  #--------------------------------------------------------------------------
  def use_item_nontarget
    Sound.play_use_item
    $game_party.consume_item(@item)
    @item_window.draw_item(@item_window.index)
    @target_window.refresh
    if $game_party.all_dead?
      $scene = Scene_Gameover.new
    elsif @item.common_event_id > 0
      $game_temp.common_event_id = @item.common_event_id
      $scene = Scene_Map.new
    end
  end
end

#==============================================================================
# ■ Scene_Skill
#------------------------------------------------------------------------------
# 　处理特技画面的类。
#==============================================================================

class Scene_Skill < Scene_Base
  #--------------------------------------------------------------------------
  # ● 初始化对像
  #     actor_index : 角色位置
  #--------------------------------------------------------------------------
  def initialize(actor_index = 0, equip_index = 0)
    @actor_index = actor_index
  end
  #--------------------------------------------------------------------------
  # ● 开始处理
  #--------------------------------------------------------------------------
  def start
    super
    create_menu_background
    @actor = $game_party.members[@actor_index]
    @viewport = Viewport.new(0, 0, 544, 416)
    @help_window = Window_Help.new
    @help_window.viewport = @viewport
    @status_window = Window_SkillStatus.new(0, 56, @actor)
    @status_window.viewport = @viewport
    @skill_window = Window_Skill.new(0, 112, 544, 304, @actor)
    @skill_window.viewport = @viewport
    @skill_window.help_window = @help_window
    @target_window = Window_MenuStatus.new(0, 0)
    hide_target_window
  end
  #--------------------------------------------------------------------------
  # ● 结束处理
  #--------------------------------------------------------------------------
  def terminate
    super
    dispose_menu_background
    @help_window.dispose
    @status_window.dispose
    @skill_window.dispose
    @target_window.dispose
  end
  #--------------------------------------------------------------------------
  # ● 回到原画面
  #--------------------------------------------------------------------------
  def return_scene
    $scene = Scene_Menu.new(1)
  end
  #--------------------------------------------------------------------------
  # ● 切换至下一角色画面
  #--------------------------------------------------------------------------
  def next_actor
    @actor_index += 1
    @actor_index %= $game_party.members.size
    $scene = Scene_Skill.new(@actor_index)
  end
  #--------------------------------------------------------------------------
  # ● 切换至上一角色画面
  #--------------------------------------------------------------------------
  def prev_actor
    @actor_index += $game_party.members.size - 1
    @actor_index %= $game_party.members.size
    $scene = Scene_Skill.new(@actor_index)
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    update_menu_background
    @help_window.update
    @status_window.update
    @skill_window.update
    @target_window.update
    if @skill_window.active
      update_skill_selection
    elsif @target_window.active
      update_target_selection
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新技能选择
  #--------------------------------------------------------------------------
  def update_skill_selection
    if Input.trigger?(Input::B)
      Sound.play_cancel
      return_scene
    elsif Input.trigger?(Input::R)
      Sound.play_cursor
      next_actor
    elsif Input.trigger?(Input::L)
      Sound.play_cursor
      prev_actor
    elsif Input.trigger?(Input::C)
      @skill = @skill_window.skill
      if @skill != nil
        @actor.last_skill_id = @skill.id
      end
      if @actor.skill_can_use?(@skill)
        Sound.play_decision
        determine_skill
      else
        Sound.play_buzzer
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 确认技能
  #--------------------------------------------------------------------------
  def determine_skill
    if @skill.for_friend?
      show_target_window(@skill_window.index % 2 == 0)
      if @skill.for_all?
        @target_window.index = 99
      elsif @skill.for_user?
        @target_window.index = @actor_index + 100
      else
        if $game_party.last_target_index < @target_window.item_max
          @target_window.index = $game_party.last_target_index
        else
          @target_window.index = 0
        end
      end
    else
      use_skill_nontarget
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新目标选择
  #--------------------------------------------------------------------------
  def update_target_selection
    if Input.trigger?(Input::B)
      Sound.play_cancel
      hide_target_window
    elsif Input.trigger?(Input::C)
      if not @actor.skill_can_use?(@skill)
        Sound.play_buzzer
      else
        determine_target
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 确认目标
  #    目标无效时（如对无法战斗的角色使用回复技能）则播放冻结SE。
  #--------------------------------------------------------------------------
  def determine_target
    used = false
    if @skill.for_all?
      for target in $game_party.members
        target.skill_effect(@actor, @skill)
        used = true unless target.skipped
      end
    elsif @skill.for_user?
      target = $game_party.members[@target_window.index - 100]
      target.skill_effect(@actor, @skill)
      used = true unless target.skipped
    else
      $game_party.last_target_index = @target_window.index
      target = $game_party.members[@target_window.index]
      target.skill_effect(@actor, @skill)
      used = true unless target.skipped
    end
    if used
      use_skill_nontarget
    else
      Sound.play_buzzer
    end
  end
  #--------------------------------------------------------------------------
  # ● 显示目标窗口
  #     right : 靠又对齐标签（为false时则靠左）
  #--------------------------------------------------------------------------
  def show_target_window(right)
    @skill_window.active = false
    width_remain = 544 - @target_window.width
    @target_window.x = right ? width_remain : 0
    @target_window.visible = true
    @target_window.active = true
    if right
      @viewport.rect.set(0, 0, width_remain, 416)
      @viewport.ox = 0
    else
      @viewport.rect.set(@target_window.width, 0, width_remain, 416)
      @viewport.ox = @target_window.width
    end
  end
  #--------------------------------------------------------------------------
  # ● 隐藏目标窗口
  #--------------------------------------------------------------------------
  def hide_target_window
    @skill_window.active = true
    @target_window.visible = false
    @target_window.active = false
    @viewport.rect.set(0, 0, 544, 416)
    @viewport.ox = 0
  end
  #--------------------------------------------------------------------------
  # ● 非同伴目标使用物品
  #--------------------------------------------------------------------------
  def use_skill_nontarget
    Sound.play_use_skill
    @actor.mp -= @actor.calc_mp_cost(@skill)
    @status_window.refresh
    @skill_window.refresh
    @target_window.refresh
    if $game_party.all_dead?
      $scene = Scene_Gameover.new
    elsif @skill.common_event_id > 0
      $game_temp.common_event_id = @skill.common_event_id
      $scene = Scene_Map.new
    end
  end
end

#==============================================================================
# ■ Scene_Battle
#------------------------------------------------------------------------------
# 　处理战斗画面的类。
#==============================================================================

class Scene_Battle < Scene_Base
  #--------------------------------------------------------------------------
  # ● 开始处理
  #--------------------------------------------------------------------------
  def start
    super
    $game_temp.in_battle = true
    @spriteset = Spriteset_Battle.new
    @message_window = Window_BattleMessage.new
    @action_battlers = []
    create_info_viewport
  end
  #--------------------------------------------------------------------------
  # ● 开始後处理
  #--------------------------------------------------------------------------
  def post_start
    super
    process_battle_start
  end
  #--------------------------------------------------------------------------
  # ● 结束处理
  #--------------------------------------------------------------------------
  def terminate
    super
    dispose_info_viewport
    @message_window.dispose
    @spriteset.dispose
    unless $scene.is_a?(Scene_Gameover)
      $scene = nil if $BTEST
    end
  end
  #--------------------------------------------------------------------------
  # ● 基本更新处理
  #     main : 从main里调用
  #--------------------------------------------------------------------------
  def update_basic(main = false)
    Graphics.update unless main     # 更新游戏画面
    Input.update unless main        # 更新输入处理
    $game_system.update             # 更新计时器
    $game_troop.update              # 更新敌人队伍
    @spriteset.update               # 更新活动块组
    @message_window.update          # 更新讯息窗口
  end
  #--------------------------------------------------------------------------
  # ● 等待
  #     duration : 等待时间（祯数）
  #     no_fast  : 无效化瞬间显示
  #    一个在场景类更新中等待时间用的方法。一般来说，update每祯都会被调用一次。
  #    但是在战斗中不容易掌握流程，所以这个方法是作为一个例外使用。
  #--------------------------------------------------------------------------
  def wait(duration, no_fast = false)
    for i in 0...duration
      update_basic
      break if not no_fast and i >= duration / 2 and show_fast?
    end
  end
  #--------------------------------------------------------------------------
  # ● 等待讯息结束
  #--------------------------------------------------------------------------
  def wait_for_message
    @message_window.update
    while $game_message.visible
      update_basic
    end
  end
  #--------------------------------------------------------------------------
  # ● 等待动画结束
  #--------------------------------------------------------------------------
  def wait_for_animation
    while @spriteset.animation?
      update_basic
    end
  end
  #--------------------------------------------------------------------------
  # ● 判断是否瞬间显示
  #--------------------------------------------------------------------------
  def show_fast?
    return (Input.press?(Input::A) or Input.press?(Input::C))
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    update_basic(true)
    update_info_viewport                  # 更新资讯显示端口
    if $game_message.visible
      @info_viewport.visible = false
      @message_window.visible = true
    end
    unless $game_message.visible          # 除非讯息显示中
      return if judge_win_loss            # 判断胜负结果
      update_scene_change
      if @target_enemy_window != nil
        update_target_enemy_selection     # 选择目标敌人
      elsif @target_actor_window != nil
        update_target_actor_selection     # 选择目标角色
      elsif @skill_window != nil
        update_skill_selection            # 选择技能
      elsif @item_window != nil
        update_item_selection             # 选择物品
      elsif @party_command_window.active
        update_party_command_selection    # 选择队伍命令
      elsif @actor_command_window.active
        update_actor_command_selection    # 选择角色命令
      else
        process_battle_event              # 战斗事件处理
        process_action                    # 战斗行动
        process_battle_event              # 战斗事件处理
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 生成资讯显示端口
  #--------------------------------------------------------------------------
  def create_info_viewport
    @info_viewport = Viewport.new(0, 288, 544, 128)
    @info_viewport.z = 100
    @status_window = Window_BattleStatus.new
    @party_command_window = Window_PartyCommand.new
    @actor_command_window = Window_ActorCommand.new
    @status_window.viewport = @info_viewport
    @party_command_window.viewport = @info_viewport
    @actor_command_window.viewport = @info_viewport
    @status_window.x = 128
    @actor_command_window.x = 544
    @info_viewport.visible = false
  end
  #--------------------------------------------------------------------------
  # ● 释放资讯显示端口
  #--------------------------------------------------------------------------
  def dispose_info_viewport
    @status_window.dispose
    @party_command_window.dispose
    @actor_command_window.dispose
    @info_viewport.dispose
  end
  #--------------------------------------------------------------------------
  # ● 更新资讯显示端口
  #--------------------------------------------------------------------------
  def update_info_viewport
    @party_command_window.update
    @actor_command_window.update
    @status_window.update
    if @party_command_window.active and @info_viewport.ox > 0
      @info_viewport.ox -= 16
    elsif @actor_command_window.active and @info_viewport.ox < 128
      @info_viewport.ox += 16
    end
  end
  #--------------------------------------------------------------------------
  # ● 战斗事件处理
  #--------------------------------------------------------------------------
  def process_battle_event
    loop do
      return if judge_win_loss
      return if $game_temp.next_scene != nil
      $game_troop.interpreter.update
      $game_troop.setup_battle_event
      wait_for_message
      process_action if $game_troop.forcing_battler != nil
      return unless $game_troop.interpreter.running?
      update_basic
    end
  end
  #--------------------------------------------------------------------------
  # ● 判断胜负结果
  #--------------------------------------------------------------------------
  def judge_win_loss
    if $game_temp.in_battle
      if $game_party.all_dead?
        process_defeat
        return true
      elsif $game_troop.all_dead?
        process_victory
        return true
      else
        return false
      end
    else
      return true
    end
  end
  #--------------------------------------------------------------------------
  # ● 结束战斗
  #     result : 结果（0：胜利，1：逃跑，2：失败）
  #--------------------------------------------------------------------------
  def battle_end(result)
    if result == 2 and not $game_troop.can_lose
      call_gameover
    else
      $game_party.clear_actions
      $game_party.remove_states_battle
      $game_troop.clear
      if $game_temp.battle_proc != nil
        $game_temp.battle_proc.call(result)
        $game_temp.battle_proc = nil
      end
      unless $BTEST
        $game_temp.map_bgm.play
        $game_temp.map_bgs.play
      end
      $scene = Scene_Map.new
      @message_window.clear
      Graphics.fadeout(30)
    end
    $game_temp.in_battle = false
  end
  #--------------------------------------------------------------------------
  # ● 转到输入下一个角色的命令
  #--------------------------------------------------------------------------
  def next_actor
    loop do
      if @actor_index == $game_party.members.size-1
        start_main
        return
      end
      @status_window.index = @actor_index += 1
      @active_battler = $game_party.members[@actor_index]
      if @active_battler.auto_battle
        @active_battler.make_action
        next
      end
      break if @active_battler.inputable?
    end
    start_actor_command_selection
  end
  #--------------------------------------------------------------------------
  # ● 转到输入上一个角色的命令
  #--------------------------------------------------------------------------
  def prior_actor
    loop do
      if @actor_index == 0
        start_party_command_selection
        return
      end
      @status_window.index = @actor_index -= 1
      @active_battler = $game_party.members[@actor_index]
      next if @active_battler.auto_battle
      break if @active_battler.inputable?
    end
    start_actor_command_selection
  end
  #--------------------------------------------------------------------------
  # ● 开始队伍命令选择
  #--------------------------------------------------------------------------
  def start_party_command_selection
    if $game_temp.in_battle
      @status_window.refresh
      @status_window.index = @actor_index = -1
      @active_battler = nil
      @info_viewport.visible = true
      @message_window.visible = false
      @party_command_window.active = true
      @party_command_window.index = 0
      @actor_command_window.active = false
      $game_party.clear_actions
      if $game_troop.surprise or not $game_party.inputable?
        start_main
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新队伍命令选择
  #--------------------------------------------------------------------------
  def update_party_command_selection
    if Input.trigger?(Input::C)
      case @party_command_window.index
        when 0  # 战斗
          Sound.play_decision
          @status_window.index = @actor_index = -1
          next_actor
        when 1  # 逃跑
          if $game_troop.can_escape == false
            Sound.play_buzzer
            return
          end
          Sound.play_decision
          process_escape
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 开始角色命令选择
  #--------------------------------------------------------------------------
  def start_actor_command_selection
    @party_command_window.active = false
    @actor_command_window.setup(@active_battler)
    @actor_command_window.active = true
    @actor_command_window.index = 0
  end
  #--------------------------------------------------------------------------
  # ● 更新角色命令选择
  #--------------------------------------------------------------------------
  def update_actor_command_selection
    if Input.trigger?(Input::B)
      Sound.play_cancel
      prior_actor
    elsif Input.trigger?(Input::C)
      case @actor_command_window.index
        when 0  # 攻击
          Sound.play_decision
          @active_battler.action.set_attack
          start_target_enemy_selection
        when 1  # 技能
          Sound.play_decision
          start_skill_selection
        when 2  # 防御
          Sound.play_decision
          @active_battler.action.set_guard
          next_actor
        when 3  # 物品
          Sound.play_decision
          start_item_selection
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 开始敌人目标选择
  #--------------------------------------------------------------------------
  def start_target_enemy_selection
    @target_enemy_window = Window_TargetEnemy.new
    @target_enemy_window.y = @info_viewport.rect.y
    @info_viewport.rect.x += @target_enemy_window.width
    @info_viewport.ox += @target_enemy_window.width
    @actor_command_window.active = false
  end
  #--------------------------------------------------------------------------
  # ● 结束敌人目标选择
  #--------------------------------------------------------------------------
  def end_target_enemy_selection
    @info_viewport.rect.x -= @target_enemy_window.width
    @info_viewport.ox -= @target_enemy_window.width
    @target_enemy_window.dispose
    @target_enemy_window = nil
    if @actor_command_window.index == 0
      @actor_command_window.active = true
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新敌人目标选择
  #--------------------------------------------------------------------------
  def update_target_enemy_selection
    @target_enemy_window.update
    if Input.trigger?(Input::B)
      Sound.play_cancel
      end_target_enemy_selection
    elsif Input.trigger?(Input::C)
      Sound.play_decision
      @active_battler.action.target_index = @target_enemy_window.enemy.index
      end_target_enemy_selection
      end_skill_selection
      end_item_selection
      next_actor
    end
  end
  #--------------------------------------------------------------------------
  # ● 开始同伴目标选择
  #--------------------------------------------------------------------------
  def start_target_actor_selection
    @target_actor_window = Window_BattleStatus.new
    @target_actor_window.index = 0
    @target_actor_window.active = true
    @target_actor_window.y = @info_viewport.rect.y
    @info_viewport.rect.x += @target_actor_window.width
    @info_viewport.ox += @target_actor_window.width
    @actor_command_window.active = false
  end
  #--------------------------------------------------------------------------
  # ● 结束同伴目标选择
  #--------------------------------------------------------------------------
  def end_target_actor_selection
    @info_viewport.rect.x -= @target_actor_window.width
    @info_viewport.ox -= @target_actor_window.width
    @target_actor_window.dispose
    @target_actor_window = nil
  end
  #--------------------------------------------------------------------------
  # ● 更新同伴目标选择
  #--------------------------------------------------------------------------
  def update_target_actor_selection
    @target_actor_window.update
    if Input.trigger?(Input::B)
      Sound.play_cancel
      end_target_actor_selection
    elsif Input.trigger?(Input::C)
      Sound.play_decision
      @active_battler.action.target_index = @target_actor_window.index
      end_target_actor_selection
      end_skill_selection
      end_item_selection
      next_actor
    end
  end
  #--------------------------------------------------------------------------
  # ● 开始技能选择
  #--------------------------------------------------------------------------
  def start_skill_selection
    @help_window = Window_Help.new
    @skill_window = Window_Skill.new(0, 56, 544, 232, @active_battler)
    @skill_window.help_window = @help_window
    @actor_command_window.active = false
  end
  #--------------------------------------------------------------------------
  # ● 结束技能选择
  #--------------------------------------------------------------------------
  def end_skill_selection
    if @skill_window != nil
      @skill_window.dispose
      @skill_window = nil
      @help_window.dispose
      @help_window = nil
    end
    @actor_command_window.active = true
  end
  #--------------------------------------------------------------------------
  # ● 更新技能选择
  #--------------------------------------------------------------------------
  def update_skill_selection
    @skill_window.active = true
    @skill_window.update
    @help_window.update
    if Input.trigger?(Input::B)
      Sound.play_cancel
      end_skill_selection
    elsif Input.trigger?(Input::C)
      @skill = @skill_window.skill
      if @skill != nil
        @active_battler.last_skill_id = @skill.id
      end
      if @active_battler.skill_can_use?(@skill)
        Sound.play_decision
        determine_skill
      else
        Sound.play_buzzer
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 确认技能
  #--------------------------------------------------------------------------
  def determine_skill
    @active_battler.action.set_skill(@skill.id)
    @skill_window.active = false
    if @skill.need_selection?
      if @skill.for_opponent?
        start_target_enemy_selection
      else
        start_target_actor_selection
      end
    else
      end_skill_selection
      next_actor
    end
  end
  #--------------------------------------------------------------------------
  # ● 开始物品选择
  #--------------------------------------------------------------------------
  def start_item_selection
    @help_window = Window_Help.new
    @item_window = Window_Item.new(0, 56, 544, 232)
    @item_window.help_window = @help_window
    @actor_command_window.active = false
  end
  #--------------------------------------------------------------------------
  # ● 结束物品选择
  #--------------------------------------------------------------------------
  def end_item_selection
    if @item_window != nil
      @item_window.dispose
      @item_window = nil
      @help_window.dispose
      @help_window = nil
    end
    @actor_command_window.active = true
  end
  #--------------------------------------------------------------------------
  # ● 更新物品选择
  #--------------------------------------------------------------------------
  def update_item_selection
    @item_window.active = true
    @item_window.update
    @help_window.update
    if Input.trigger?(Input::B)
      Sound.play_cancel
      end_item_selection
    elsif Input.trigger?(Input::C)
      @item = @item_window.item
      if @item != nil
        $game_party.last_item_id = @item.id
      end
      if $game_party.item_can_use?(@item)
        Sound.play_decision
        determine_item
      else
        Sound.play_buzzer
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 确认物品
  #--------------------------------------------------------------------------
  def determine_item
    @active_battler.action.set_item(@item.id)
    @item_window.active = false
    if @item.need_selection?
      if @item.for_opponent?
        start_target_enemy_selection
      else
        start_target_actor_selection
      end
    else
      end_item_selection
      next_actor
    end
  end
  #--------------------------------------------------------------------------
  # ● 战斗开始处理
  #--------------------------------------------------------------------------
  def process_battle_start
    @message_window.clear
    wait(10)
    for name in $game_troop.enemy_names
      text = sprintf(Vocab::Emerge, name)
      $game_message.texts.push(text)
    end
    if $game_troop.preemptive
      text = sprintf(Vocab::Preemptive, $game_party.name)
      $game_message.texts.push(text)
    elsif $game_troop.surprise
      text = sprintf(Vocab::Surprise, $game_party.name)
      $game_message.texts.push(text)
    end
    wait_for_message
    @message_window.clear
    make_escape_ratio
    process_battle_event
    start_party_command_selection
  end
  #--------------------------------------------------------------------------
  # ● 生成逃跑机率
  #--------------------------------------------------------------------------
  def make_escape_ratio
    actors_agi = $game_party.average_agi
    enemies_agi = $game_troop.average_agi
    @escape_ratio = 150 - 100 * enemies_agi / actors_agi
  end
  #--------------------------------------------------------------------------
  # ● 逃跑处理
  #--------------------------------------------------------------------------
  def process_escape
    @info_viewport.visible = false
    @message_window.visible = true
    text = sprintf(Vocab::EscapeStart, $game_party.name)
    $game_message.texts.push(text)
    if $game_troop.preemptive
      success = true
    else
      success = (rand(100) < @escape_ratio)
    end
    Sound.play_escape
    if success
      wait_for_message
      battle_end(1)
    else
      @escape_ratio += 10
      $game_message.texts.push('\.' + Vocab::EscapeFailure)
      wait_for_message
      $game_party.clear_actions
      start_main
    end
  end
  #--------------------------------------------------------------------------
  # ● 胜利处理
  #--------------------------------------------------------------------------
  def process_victory
    @info_viewport.visible = false
    @message_window.visible = true
    RPG::BGM.stop
    $game_system.battle_end_me.play
    unless $BTEST
      $game_temp.map_bgm.play
      $game_temp.map_bgs.play
    end
    display_exp_and_gold
    display_drop_items
    display_level_up
    battle_end(0)
  end
  #--------------------------------------------------------------------------
  # ● 显示所获得的金钱和经验值
  #--------------------------------------------------------------------------
  def display_exp_and_gold
    exp = $game_troop.exp_total
    gold = $game_troop.gold_total
    $game_party.gain_gold(gold)
    text = sprintf(Vocab::Victory, $game_party.name)
    $game_message.texts.push('\|' + text)
    if exp > 0
      text = sprintf(Vocab::ObtainExp, exp)
      $game_message.texts.push('\.' + text)
    end
    if gold > 0
      text = sprintf(Vocab::ObtainGold, gold, Vocab::gold)
      $game_message.texts.push('\.' + text)
    end
    wait_for_message
  end
  #--------------------------------------------------------------------------
  # ● 显示所获得的掉落物品
  #--------------------------------------------------------------------------
  def display_drop_items
    drop_items = $game_troop.make_drop_items
    for item in drop_items
      $game_party.gain_item(item, 1)
      text = sprintf(Vocab::ObtainItem, item.name)
      $game_message.texts.push(text)
    end
    wait_for_message
  end
  #--------------------------------------------------------------------------
  # ● 显示升级
  #--------------------------------------------------------------------------
  def display_level_up
    exp = $game_troop.exp_total
    for actor in $game_party.existing_members
      last_level = actor.level
      last_skills = actor.skills
      actor.gain_exp(exp, true)
    end
    wait_for_message
  end
  #--------------------------------------------------------------------------
  # ● 失败处理
  #--------------------------------------------------------------------------
  def process_defeat
    @info_viewport.visible = false
    @message_window.visible = true
    text = sprintf(Vocab::Defeat, $game_party.name)
    $game_message.texts.push(text)
    wait_for_message
    battle_end(2)
  end
  #--------------------------------------------------------------------------
  # ● 执行画面切换
  #--------------------------------------------------------------------------
  def update_scene_change
    case $game_temp.next_scene
      when "map"
        call_map
      when "gameover"
        call_gameover
      when "title"
        call_title
      else
        $game_temp.next_scene = nil
    end
  end
  #--------------------------------------------------------------------------
  # ● 切换至地图画面
  #--------------------------------------------------------------------------
  def call_map
    $game_temp.next_scene = nil
    battle_end(1)
  end
  #--------------------------------------------------------------------------
  # ● 切换至游戏结束画面
  #--------------------------------------------------------------------------
  def call_gameover
    $game_temp.next_scene = nil
    $scene = Scene_Gameover.new
    @message_window.clear
  end
  #--------------------------------------------------------------------------
  # ● 切换至标题画面
  #--------------------------------------------------------------------------
  def call_title
    $game_temp.next_scene = nil
    $scene = Scene_Title.new
    @message_window.clear
    Graphics.fadeout(60)
  end
  #--------------------------------------------------------------------------
  # ● 开始执行战斗处理
  #--------------------------------------------------------------------------
  def start_main
    $game_troop.increase_turn
    @info_viewport.visible = false
    @info_viewport.ox = 0
    @message_window.visible = true
    @party_command_window.active = false
    @actor_command_window.active = false
    @status_window.index = @actor_index = -1
    @active_battler = nil
    @message_window.clear
    $game_troop.make_actions
    make_action_orders
    wait(20)
  end
  #--------------------------------------------------------------------------
  # ● 生成行动顺序
  #--------------------------------------------------------------------------
  def make_action_orders
    @action_battlers = []
    unless $game_troop.surprise
      @action_battlers += $game_party.members
    end
    unless $game_troop.preemptive
      @action_battlers += $game_troop.members
    end
    for battler in @action_battlers
      battler.action.make_speed
    end
    @action_battlers.sort! do |a,b|
      b.action.speed - a.action.speed
    end
  end
  #--------------------------------------------------------------------------
  # ● 战斗行动处理
  #--------------------------------------------------------------------------
  def process_action
    return if judge_win_loss
    return if $game_temp.next_scene != nil
    set_next_active_battler
    if @active_battler == nil
      turn_end
      return
    end
    @message_window.clear
    wait(5)
    @active_battler.white_flash = true
    unless @active_battler.action.forcing
      @active_battler.action.prepare
    end
    if @active_battler.action.valid?
      execute_action
    end
    unless @active_battler.action.forcing
      @message_window.clear
      remove_states_auto
      display_current_state
    end
    @active_battler.white_flash = false
    @message_window.clear
  end
  #--------------------------------------------------------------------------
  # ● 执行战斗行动
  #--------------------------------------------------------------------------
  def execute_action
    case @active_battler.action.kind
      when 0  # 基本
        case @active_battler.action.basic
          when 0  # 攻击
            execute_action_attack
          when 1  # 防御
            execute_action_guard
          when 2  # 逃跑
            execute_action_escape
          when 3  # 等待
            execute_action_wait
        end
      when 1  # 使用技能
        execute_action_skill
      when 2  # 使用物品
        execute_action_item
    end
  end
  #--------------------------------------------------------------------------
  # ● 回合结束
  #--------------------------------------------------------------------------
  def turn_end
    $game_troop.turn_ending = true
    $game_party.slip_damage_effect
    $game_troop.slip_damage_effect
    $game_party.do_auto_recovery
    $game_troop.preemptive = false
    $game_troop.surprise = false
    process_battle_event
    $game_troop.turn_ending = false
    start_party_command_selection
  end
  #--------------------------------------------------------------------------
  # ● 设置下一战斗者行动
  #    当「强制战斗行动」事件命令被执行时，设置该战斗者并将他从列表中移除
  #    否则从列表顶端开始。当角色不在队伍之中时（可能因事件命令而离开）则
  #    直接跳过。
  #--------------------------------------------------------------------------
  def set_next_active_battler
    loop do
      if $game_troop.forcing_battler != nil
        @active_battler = $game_troop.forcing_battler
        @action_battlers.delete(@active_battler)
        $game_troop.forcing_battler = nil
      else
        @active_battler = @action_battlers.shift
      end
      return if @active_battler == nil
      return if @active_battler.index != nil
    end
  end
  #--------------------------------------------------------------------------
  # ● 自动解除状态
  #--------------------------------------------------------------------------
  def remove_states_auto
    last_st = @active_battler.states
    @active_battler.remove_states_auto
    if @active_battler.states != last_st
      wait(5)
      display_state_changes(@active_battler)
      wait(30)
      @message_window.clear
    end
  end
  #--------------------------------------------------------------------------
  # ● 显示当前状态
  #--------------------------------------------------------------------------
  def display_current_state
    state_text = @active_battler.most_important_state_text
    unless state_text.empty?
      wait(5)
      text = @active_battler.name + state_text
      @message_window.add_instant_text(text)
      wait(45)
      @message_window.clear
    end
  end
  #--------------------------------------------------------------------------
  # ● 执行战斗行动：攻击
  #--------------------------------------------------------------------------
  def execute_action_attack
    text = sprintf(Vocab::DoAttack, @active_battler.name)
    @message_window.add_instant_text(text)
    targets = @active_battler.action.make_targets
    display_attack_animation(targets)
    wait(20)
    for target in targets
      target.attack_effect(@active_battler)
      display_action_effects(target)
    end
  end
  #--------------------------------------------------------------------------
  # ● 执行战斗行动：防御
  #--------------------------------------------------------------------------
  def execute_action_guard
    text = sprintf(Vocab::DoGuard, @active_battler.name)
    @message_window.add_instant_text(text)
    wait(45)
  end
  #--------------------------------------------------------------------------
  # ● 执行战斗行动：逃跑
  #--------------------------------------------------------------------------
  def execute_action_escape
    text = sprintf(Vocab::DoEscape, @active_battler.name)
    @message_window.add_instant_text(text)
    @active_battler.escape
    Sound.play_escape
    wait(45)
  end
  #--------------------------------------------------------------------------
  # ● 执行战斗行动：等待
  #--------------------------------------------------------------------------
  def execute_action_wait
    text = sprintf(Vocab::DoWait, @active_battler.name)
    @message_window.add_instant_text(text)
    wait(45)
  end
  #--------------------------------------------------------------------------
  # ● 执行战斗行动：使用技能
  #--------------------------------------------------------------------------
  def execute_action_skill
    skill = @active_battler.action.skill
    text = @active_battler.name + skill.message1
    @message_window.add_instant_text(text)
    unless skill.message2.empty?
      wait(10)
      @message_window.add_instant_text(skill.message2)
    end
    targets = @active_battler.action.make_targets
    display_animation(targets, skill.animation_id)
    @active_battler.mp -= @active_battler.calc_mp_cost(skill)
    $game_temp.common_event_id = skill.common_event_id
    for target in targets
      target.skill_effect(@active_battler, skill)
      display_action_effects(target, skill)
    end
  end
  #--------------------------------------------------------------------------
  # ● 执行战斗行动：使用物品
  #--------------------------------------------------------------------------
  def execute_action_item
    item = @active_battler.action.item
    text = sprintf(Vocab::UseItem, @active_battler.name, item.name)
    @message_window.add_instant_text(text)
    targets = @active_battler.action.make_targets
    display_animation(targets, item.animation_id)
    $game_party.consume_item(item)
    $game_temp.common_event_id = item.common_event_id
    for target in targets
      target.item_effect(@active_battler, item)
      display_action_effects(target, item)
    end
  end
  #--------------------------------------------------------------------------
  # ● 显示动画
  #     targets      : 目标数组
  #     animation_id : 动画 ID（─1：与普通攻击相同）
  #--------------------------------------------------------------------------
  def display_animation(targets, animation_id)
    if animation_id < 0
      display_attack_animation(targets)
    else
      display_normal_animation(targets, animation_id)
    end
    wait(20)
    wait_for_animation
  end
  #--------------------------------------------------------------------------
  # ● 显示攻击动画
  #     targets : 目标数组
  #    敌人的场合，播放「敌人普通攻击」音效和等待。
  #    角色的场合，则包含双刀派（将左手武器动画翻转作为右手武器动画）。
  #--------------------------------------------------------------------------
  def display_attack_animation(targets)
    if @active_battler.is_a?(Game_Enemy)
      Sound.play_enemy_attack
      wait(15, true)
    else
      aid1 = @active_battler.atk_animation_id
      aid2 = @active_battler.atk_animation_id2
      display_normal_animation(targets, aid1, false)
      display_normal_animation(targets, aid2, true)
    end
    wait_for_animation
  end
  #--------------------------------------------------------------------------
  # ● 显示普通动画
  #     targets      : 目标数组
  #     animation_id : 动画 ID
  #     mirror       : 横向翻转
  #--------------------------------------------------------------------------
  def display_normal_animation(targets, animation_id, mirror = false)
    animation = $data_animations[animation_id]
    if animation != nil
      to_screen = (animation.position == 3)       # 判断位置是否为画面
      for target in targets.uniq
        target.animation_id = animation_id
        target.animation_mirror = mirror
        wait(20, true) unless to_screen           # 单体，等待
      end
      wait(20, true) if to_screen                 # 全体，等待
    end
  end
  #--------------------------------------------------------------------------
  # ● 显示行动结果
  #     target : 目标
  #     obj    : 技能或物品
  #--------------------------------------------------------------------------
  def display_action_effects(target, obj = nil)
    unless target.skipped
      line_number = @message_window.line_number
      wait(5)
      display_critical(target, obj)
      display_damage(target, obj)
      display_state_changes(target, obj)
      if line_number == @message_window.line_number
        display_failure(target, obj) unless target.states_active?
      end
      if line_number != @message_window.line_number
        wait(30)
      end
      @message_window.back_to(line_number)
    end
  end
  #--------------------------------------------------------------------------
  # ● 显示会心一击
  #     target : 目标
  #     obj    : 技能或物品
  #--------------------------------------------------------------------------
  def display_critical(target, obj = nil)
    if target.critical
      if target.actor?
        text = Vocab::CriticalToActor
      else
        text = Vocab::CriticalToEnemy
      end
      @message_window.add_instant_text(text)
      wait(20)
    end
  end
  #--------------------------------------------------------------------------
  # ● 显示伤害
  #     target : 目标
  #     obj    : 技能或物品
  #--------------------------------------------------------------------------
  def display_damage(target, obj = nil)
    if target.missed
      display_miss(target, obj)
    elsif target.evaded
      display_evasion(target, obj)
    else
      display_hp_damage(target, obj)
      display_mp_damage(target, obj)
    end
  end
  #--------------------------------------------------------------------------
  # ● 显示落空
  #     target : 目标
  #     obj    : 技能或物品
  #--------------------------------------------------------------------------
  def display_miss(target, obj = nil)
    if obj == nil or obj.physical_attack
      if target.actor?
        text = sprintf(Vocab::ActorNoHit, target.name)
      else
        text = sprintf(Vocab::EnemyNoHit, target.name)
      end
      Sound.play_miss
    else
      text = sprintf(Vocab::ActionFailure, target.name)
    end
    @message_window.add_instant_text(text)
    wait(30)
  end
  #--------------------------------------------------------------------------
  # ● 显示逃跑
  #     target : 目标
  #     obj    : 技能或物品
  #--------------------------------------------------------------------------
  def display_evasion(target, obj = nil)
    if target.actor?
      text = sprintf(Vocab::ActorEvasion, target.name)
    else
      text = sprintf(Vocab::EnemyEvasion, target.name)
    end
    Sound.play_evasion
    @message_window.add_instant_text(text)
    wait(30)
  end
  #--------------------------------------------------------------------------
  # ● 显示体力伤害
  #     target : 目标
  #     obj    : 技能或物品
  #--------------------------------------------------------------------------
  def display_hp_damage(target, obj = nil)
    if target.hp_damage == 0                # 无伤害
      return if obj != nil and obj.damage_to_mp
      return if obj != nil and obj.base_damage == 0
      fmt = target.actor? ? Vocab::ActorNoDamage : Vocab::EnemyNoDamage
      text = sprintf(fmt, target.name)
    elsif target.absorbed                   # 吸收
      fmt = target.actor? ? Vocab::ActorDrain : Vocab::EnemyDrain
      text = sprintf(fmt, target.name, Vocab::hp, target.hp_damage)
    elsif target.hp_damage > 0              # 伤害
      if target.actor?
        text = sprintf(Vocab::ActorDamage, target.name, target.hp_damage)
        Sound.play_actor_damage
        $game_troop.screen.start_shake(5, 5, 10)
      else
        text = sprintf(Vocab::EnemyDamage, target.name, target.hp_damage)
        Sound.play_enemy_damage
        target.blink = true
      end
    else                                    # 回复
      fmt = target.actor? ? Vocab::ActorRecovery : Vocab::EnemyRecovery
      text = sprintf(fmt, target.name, Vocab::hp, -target.hp_damage)
      Sound.play_recovery
    end
    @message_window.add_instant_text(text)
    wait(30)
  end
  #--------------------------------------------------------------------------
  # ● 显示魔力伤害
  #     target : 目标
  #     obj    : 技能或物品
  #--------------------------------------------------------------------------
  def display_mp_damage(target, obj = nil)
    return if target.dead?
    return if target.mp_damage == 0
    if target.absorbed                      # 吸收
      fmt = target.actor? ? Vocab::ActorDrain : Vocab::EnemyDrain
      text = sprintf(fmt, target.name, Vocab::mp, target.mp_damage)
    elsif target.mp_damage > 0              # 伤害
      fmt = target.actor? ? Vocab::ActorLoss : Vocab::EnemyLoss
      text = sprintf(fmt, target.name, Vocab::mp, target.mp_damage)
    else                                    # 回复
      fmt = target.actor? ? Vocab::ActorRecovery : Vocab::EnemyRecovery
      text = sprintf(fmt, target.name, Vocab::mp, -target.mp_damage)
      Sound.play_recovery
    end
    @message_window.add_instant_text(text)
    wait(30)
  end
  #--------------------------------------------------------------------------
  # ● 显示更改状态
  #     target : 目标
  #     obj    : 技能或物品
  #--------------------------------------------------------------------------
  def display_state_changes(target, obj = nil)
    return if target.missed or target.evaded
    return unless target.states_active?
    if @message_window.line_number < 4
      @message_window.add_instant_text("")
    end
    display_added_states(target, obj)
    display_removed_states(target, obj)
    display_remained_states(target, obj)
    if @message_window.last_instant_text.empty?
      @message_window.back_one
    else
      wait(10)
    end
  end
  #--------------------------------------------------------------------------
  # ● 显示附加状态
  #     target : 目标
  #     obj    : 技能或物品
  #--------------------------------------------------------------------------
  def display_added_states(target, obj = nil)
    for state in target.added_states
      if target.actor?
        next if state.message1.empty?
        text = target.name + state.message1
      else
        next if state.message2.empty?
        text = target.name + state.message2
      end
      if state.id == 1                      # 无法战斗
        target.perform_collapse
      end
      @message_window.replace_instant_text(text)
      wait(20)
    end
  end
  #--------------------------------------------------------------------------
  # ● 显示移除状态
  #     target : 目标
  #     obj    : 技能或物品
  #--------------------------------------------------------------------------
  def display_removed_states(target, obj = nil)
    for state in target.removed_states
      next if state.message4.empty?
      text = target.name + state.message4
      @message_window.replace_instant_text(text)
      wait(20)
    end
  end
  #--------------------------------------------------------------------------
  # ● 显示不变状态
  #     target : 目标
  #     obj    : 技能或物品
  #    当尝试将以睡着的人附加睡眠状态等时用的。
  #--------------------------------------------------------------------------
  def display_remained_states(target, obj = nil)
    for state in target.remained_states
      next if state.message3.empty?
      text = target.name + state.message3
      @message_window.replace_instant_text(text)
      wait(20)
    end
  end
  #--------------------------------------------------------------------------
  # ● 显示失败
  #     target : 目标（角色）
  #     obj    : 技能或物品
  #--------------------------------------------------------------------------
  def display_failure(target, obj)
    text = sprintf(Vocab::ActionFailure, target.name)
    @message_window.add_instant_text(text)
    wait(20)
  end
end

#==============================================================================
# ■ Scene_Debug
#------------------------------------------------------------------------------
# 　处理调试画面的类。
#==============================================================================

class Scene_Debug < Scene_Base
  #--------------------------------------------------------------------------
  # ● 开始处理
  #--------------------------------------------------------------------------
  def start
    super
    create_menu_background
    @left_window = Window_DebugLeft.new(0, 0)
    @right_window = Window_DebugRight.new(176, 0)
    @help_window = Window_Base.new(176, 272, 368, 144)
    @left_window.top_row = $game_temp.debug_top_row
    @left_window.index = $game_temp.debug_index
    @right_window.mode = @left_window.mode
    @right_window.top_id = @left_window.top_id
  end
  #--------------------------------------------------------------------------
  # ● 结束处理
  #--------------------------------------------------------------------------
  def terminate
    super
    dispose_menu_background
    $game_map.refresh
    @left_window.dispose
    @right_window.dispose
    @help_window.dispose
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    update_menu_background
    @right_window.mode = @left_window.mode
    @right_window.top_id = @left_window.top_id
    @left_window.update
    @right_window.update
    $game_temp.debug_top_row = @left_window.top_row
    $game_temp.debug_index = @left_window.index
    if @left_window.active
      update_left_input
    elsif @right_window.active
      update_right_input
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新左方窗口输入
  #--------------------------------------------------------------------------
  def update_left_input
    if Input.trigger?(Input::B)
      Sound.play_cancel
      $scene = Scene_Map.new
      return
    elsif Input.trigger?(Input::C)
      Sound.play_decision
      wlh = 24
      if @left_window.mode == 0
        text1 = "C键 (回车) : 开 / 关"
        @help_window.contents.draw_text(4, 0, 336, wlh, text1)
      else
        text1 = "← (左)       :  -1"
        text2 = "→ (右)       :  +1"
        text3 = "L  (Pageup)   : -10"
        text4 = "R  (Pagedown) : +10"
        @help_window.contents.draw_text(4, wlh * 0, 336, wlh, text1)
        @help_window.contents.draw_text(4, wlh * 1, 336, wlh, text2)
        @help_window.contents.draw_text(4, wlh * 2, 336, wlh, text3)
        @help_window.contents.draw_text(4, wlh * 3, 336, wlh, text4)
      end
      @left_window.active = false
      @right_window.active = true
      @right_window.index = 0
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新右方窗口输入
  #--------------------------------------------------------------------------
  def update_right_input
    if Input.trigger?(Input::B)
      Sound.play_cancel
      @left_window.active = true
      @right_window.active = false
      @right_window.index = -1
      @help_window.contents.clear
    else
      current_id = @right_window.top_id + @right_window.index
      if @right_window.mode == 0
        if Input.trigger?(Input::C)
          Sound.play_decision
          $game_switches[current_id] = (not $game_switches[current_id])
          @right_window.refresh
        end
      elsif @right_window.mode == 1
        last_value = $game_variables[current_id]
        if Input.repeat?(Input::RIGHT)
          $game_variables[current_id] += 1
        elsif Input.repeat?(Input::LEFT)
          $game_variables[current_id] -= 1
        elsif Input.repeat?(Input::R)
          $game_variables[current_id] += 10
        elsif Input.repeat?(Input::L)
          $game_variables[current_id] -= 10
        end
        if $game_variables[current_id] > 99999999
          $game_variables[current_id] = 99999999
        elsif $game_variables[current_id] < -99999999
          $game_variables[current_id] = -99999999
        end
        if $game_variables[current_id] != last_value
          Sound.play_cursor
          @right_window.draw_item(@right_window.index)
        end
      end
    end
  end
end



#==============================================================================
# ■ Scene_End
#------------------------------------------------------------------------------
# 　处理游戏结束画面的类。
#==============================================================================

class Scene_End < Scene_Base
  #--------------------------------------------------------------------------
  # ● 开始处理
  #--------------------------------------------------------------------------
  def start
    super
    create_menu_background
    create_command_window
  end
  #--------------------------------------------------------------------------
  # ● 执行渐变
  #--------------------------------------------------------------------------
  def post_start
    super
    open_command_window
  end
  #--------------------------------------------------------------------------
  # ● 结束前处理
  #--------------------------------------------------------------------------
  def pre_terminate
    super
    close_command_window
  end
  #--------------------------------------------------------------------------
  # ● 结束处理
  #--------------------------------------------------------------------------
  def terminate
    super
    dispose_command_window
    dispose_menu_background
  end
  #--------------------------------------------------------------------------
  # ● 回到原画面
  #--------------------------------------------------------------------------
  def return_scene
    $scene = Scene_Menu.new(5)
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    update_menu_background
    @command_window.update
    if Input.trigger?(Input::B)
      Sound.play_cancel
      return_scene
    elsif Input.trigger?(Input::C)
      case @command_window.index
        when 0  # 回到标题画面
          command_to_title
        when 1  # 离开游戏
          command_shutdown
        when 2  # 取消
          command_cancel
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 更新菜单画面背景
  #--------------------------------------------------------------------------
  def update_menu_background
    super
    @menuback_sprite.tone.set(0, 0, 0, 128)
  end
  #--------------------------------------------------------------------------
  # ● 生成命令窗口
  #--------------------------------------------------------------------------
  def create_command_window
    s1 = Vocab::to_title
    s2 = Vocab::shutdown
    s3 = Vocab::cancel
    @command_window = Window_Command.new(172, [s1, s2, s3])
    @command_window.x = (544 - @command_window.width) / 2
    @command_window.y = (416 - @command_window.height) / 2
    @command_window.openness = 0
  end
  #--------------------------------------------------------------------------
  # ● 释放命令窗口
  #--------------------------------------------------------------------------
  def dispose_command_window
    @command_window.dispose
  end
  #--------------------------------------------------------------------------
  # ● 开启命令窗口
  #--------------------------------------------------------------------------
  def open_command_window
    @command_window.open
    begin
      @command_window.update
      Graphics.update
    end until @command_window.openness == 255
  end
  #--------------------------------------------------------------------------
  # ● 关闭命令窗口
  #--------------------------------------------------------------------------
  def close_command_window
    @command_window.close
    begin
      @command_window.update
      Graphics.update
    end until @command_window.openness == 0
  end
  #--------------------------------------------------------------------------
  # ● 执行「回到标题画面」命令
  #--------------------------------------------------------------------------
  def command_to_title
    Sound.play_decision
    RPG::BGM.fade(800)
    RPG::BGS.fade(800)
    RPG::ME.fade(800)
    $scene = Scene_Title.new
    close_command_window
    Graphics.fadeout(60)
  end
  #--------------------------------------------------------------------------
  # ● 执行「离开游戏」命令
  #--------------------------------------------------------------------------
  def command_shutdown
    Sound.play_decision
    RPG::BGM.fade(800)
    RPG::BGS.fade(800)
    RPG::ME.fade(800)
    $scene = nil
  end
  #--------------------------------------------------------------------------
  # ● 执行「取消」命令
  #--------------------------------------------------------------------------
  def command_cancel
    Sound.play_decision
    return_scene
  end
end

#==============================================================================
# ■ Scene_Gameover
#------------------------------------------------------------------------------
# 　处理游戏结束画面的类。
#==============================================================================

class Scene_Gameover < Scene_Base
  #--------------------------------------------------------------------------
  # ● 开始处理
  #--------------------------------------------------------------------------
  def start
    super
    RPG::BGM.stop
    RPG::BGS.stop
    $data_system.gameover_me.play
    Graphics.transition(120)
    Graphics.freeze
    create_gameover_graphic
  end
  #--------------------------------------------------------------------------
  # ● 结束处理
  #--------------------------------------------------------------------------
  def terminate
    super
    dispose_gameover_graphic
    $scene = nil if $BTEST
  end
  #--------------------------------------------------------------------------
  # ● 更新画面
  #--------------------------------------------------------------------------
  def update
    super
    if Input.trigger?(Input::C)
      $scene = Scene_Title.new
      Graphics.fadeout(120)
    end
  end
  #--------------------------------------------------------------------------
  # ● 执行渐变
  #--------------------------------------------------------------------------
  def perform_transition
    Graphics.transition(180)
  end
  #--------------------------------------------------------------------------
  # ● 生成游戏结束图档
  #--------------------------------------------------------------------------
  def create_gameover_graphic
    @sprite = Sprite.new
    @sprite.bitmap = Cache.system("GameOver")
  end
  #--------------------------------------------------------------------------
  # ● 释放游戏结束图档
  #--------------------------------------------------------------------------
  def dispose_gameover_graphic
    @sprite.bitmap.dispose
    @sprite.dispose
  end
end

class Test
  def initialize
 # @map = load_data(sprintf("Data/Map%03d.rvdata", 1))
  #create_tilemap
  end

  def create_tilemap
    @tilemap = Tilemap.new(@viewport1)
    @tilemap.bitmaps[0] = Cache.system("TileA1")
    @tilemap.bitmaps[1] = Cache.system("TileA2")
    @tilemap.bitmaps[2] = Cache.system("TileA3")
    @tilemap.bitmaps[3] = Cache.system("TileA4")
    @tilemap.bitmaps[4] = Cache.system("TileA5")
    @tilemap.bitmaps[5] = Cache.system("TileB")
    @tilemap.bitmaps[6] = Cache.system("TileC")
    @tilemap.bitmaps[7] = Cache.system("TileD")
    @tilemap.bitmaps[8] = Cache.system("TileE")
    @tilemap.map_data = @map.data
   # @tilemap.passages = @map.passages
  end
  
  def test
    Graphics.freeze
    Graphics.transition(10)
    while true
      Graphics.update
      Input.update
      @tilemap.update
    end
  end

  def file_test
   
   file = File.open("Save1","w")
   Marshal.dump("123", file)
   file.close

   file = File.open("Save1","r")
   ss = Marshal.load(file)
   file.close

   entries = Dir.glob("Sav*")
   Debug.test(entries)
  end

  def Script_test
  scripts = load_data("Data/Scripts.rvdata")
  zstream = Zlib::Inflate.new
  scripts.each do |script_file|
  bootloader.AddScriptFile(script_file[0], script_file[1])
  end
  end
end
bootloader.AddScriptFile("1","2")
#test = Test.new
#test.Script_test




Font.default_name = ["黑体", "DFKai-SB", "標楷體", "Verdana", "Arial Unicode MS"]
data_enemies       = load_data("Data/Enemies.rvdata")
data_items = load_data("Data/Items.rvdata")
Graphics.freeze
$scene = Scene_Title.new
$scene.main while $scene != nil
Graphics.transition(30)


