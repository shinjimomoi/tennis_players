class Skill < ApplicationRecord
  has_many :player_skills
  has_many :player, through: :player_skills
  validates :name, presence: true, uniqueness: true
end
