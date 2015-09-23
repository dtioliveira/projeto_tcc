class Agency < ActiveRecord::Base
  belongs_to :city
  belongs_to :bank
end
