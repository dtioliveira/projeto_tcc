class Agency < ActiveRecord::Base
  belongs_to :city
  belongs_to :bank

  has_many :customers, dependent: :destroy
end
