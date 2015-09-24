class Agency < ActiveRecord::Base
  belongs_to :city
  belongs_to :bank

  has_many :customers, dependent: :destroy

  validates :number, :digit, numericality: true
  validates :number, :digit, :bank_id, :city_id, presence: true
end
