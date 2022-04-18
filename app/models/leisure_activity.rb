class LeisureActivity < ActiveRecord::Base
  has_many :all_leisures, dependent: :destroy
  has_many :leisure_locations, through: :all_leisures
end