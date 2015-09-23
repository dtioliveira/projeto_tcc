class Bank < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :agencies, dependent: :destroy
  has_many :cities, through: :agencies
end
