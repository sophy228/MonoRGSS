module RPG
  class BaseItem
    def initialize
      @id = 0
      @name = ""
      @icon_index = 0
      @description = ""
      @note = ""
    end

    attr_accessor :id
    attr_accessor :name
    attr_accessor :icon_index
    attr_accessor :description
    attr_accessor :note
  end

  class UsableItem < BaseItem
    def initialize
      super
      @scope = 0
      @occasion = 0
      @speed = 0
      @animation_id = 0
      @common_event_id = 0
      @base_damage = 0
      @variance = 20
      @atk_f = 0
      @spi_f = 0
      @physical_attack = false
      @damage_to_mp = false
      @absorb_damage = false
      @ignore_defense = false
      @element_set = []
      @plus_state_set = []
      @minus_state_set = []
    end

    def for_opponent?
      return [1, 2, 3, 4, 5, 6].include?(@scope)
    end

    def for_friend?
      return [7, 8, 9, 10, 11].include?(@scope)
    end

    def for_dead_friend?
      return [9, 10].include?(@scope)
    end

    def for_user?
      return [11].include?(@scope)
    end

    def for_one?
      return [1, 3, 4, 7, 9, 11].include?(@scope)
    end

    def for_two?
      return [5].include?(@scope)
    end

    def for_three?
      return [6].include?(@scope)
    end

    def for_random?
      return [4, 5, 6].include?(@scope)
    end

    def for_all?
      return [2, 8, 10].include?(@scope)
    end

    def dual?
      return [3].include?(@scope)
    end

    def need_selection?
      return [1, 3, 7, 9].include?(@scope)
    end

    def battle_ok?
      return [0, 1].include?(@occasion)
    end

    def menu_ok?
      return [0, 2].include?(@occasion)
    end

    attr_accessor :scope
    attr_accessor :occasion
    attr_accessor :speed
    attr_accessor :animation_id
    attr_accessor :common_event_id
    attr_accessor :base_damage
    attr_accessor :variance
    attr_accessor :atk_f
    attr_accessor :spi_f
    attr_accessor :physical_attack
    attr_accessor :damage_to_mp
    attr_accessor :absorb_damage
    attr_accessor :ignore_defense
    attr_accessor :element_set
    attr_accessor :plus_state_set
    attr_accessor :minus_state_set
  end
  class Item < UsableItem
    def initialize
      super
      @scope = 7
      @price = 0
      @consumable = true
      @hp_recovery_rate = 0
      @hp_recovery = 0
      @mp_recovery_rate = 0
      @mp_recovery = 0
      @parameter_type = 0
      @parameter_points = 0
    end

    attr_accessor :price
    attr_accessor :consumable
    attr_accessor :hp_recovery_rate
    attr_accessor :hp_recovery
    attr_accessor :mp_recovery_rate
    attr_accessor :mp_recovery
    attr_accessor :parameter_type
    attr_accessor :parameter_points
  end
  class Actor
    def initialize
      @id = 0
      @name = ""
      @class_id = 1
      @initial_level = 1
      @exp_basis = 25
      @exp_inflation = 35
      @character_name = ""
      @character_index = 0
      @face_name = ""
      @face_index = 0
      @parameters = Table.new(6,100)
      for i in 1..99
        @parameters[0,i] = 400+i*50
        @parameters[1,i] = 80+i*10
        @parameters[2,i] = 15+i*5/4
        @parameters[3,i] = 15+i*5/4
        @parameters[4,i] = 20+i*5/2
        @parameters[5,i] = 20+i*5/2
      end
      @weapon_id = 0
      @armor1_id = 0
      @armor2_id = 0
      @armor3_id = 0
      @armor4_id = 0
      @two_swords_style = false
      @fix_equipment = false
      @auto_battle = false
      @super_guard = false
      @pharmacology = false
      @critical_bonus = false
    end
    attr_accessor :id
    attr_accessor :name
    attr_accessor :class_id
    attr_accessor :initial_level
    attr_accessor :exp_basis
    attr_accessor :exp_inflation
    attr_accessor :character_name
    attr_accessor :character_index
    attr_accessor :face_name
    attr_accessor :face_index
    attr_accessor :parameters
    attr_accessor :weapon_id
    attr_accessor :armor1_id
    attr_accessor :armor2_id
    attr_accessor :armor3_id
    attr_accessor :armor4_id
    attr_accessor :two_swords_style
    attr_accessor :fix_equipment
    attr_accessor :auto_battle
    attr_accessor :super_guard
    attr_accessor :pharmacology
    attr_accessor :critical_bonus
  end
end