class Outpost < ActiveRecord::Base
  has_many :all_outposts, dependent: :destroy
  has_many :outpost_activities, through: :all_outposts
end