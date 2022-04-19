class Outpost < ActiveRecord::Base
  has_many :outpost_activities, dependent: :destroy
end