class PlayerSkill < ApplicationRecord
  belongs_to :player
  belongs_to :skill
  validates :skill, uniqueness: { scope: :player }
end
