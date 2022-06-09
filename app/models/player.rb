class Player < ApplicationRecord
  has_one_attached :photo
  has_many :player_skills, dependent: :destroy
  has_many :skills, through: :player_skills
  validates :name, presence: true, uniqueness: true
end
