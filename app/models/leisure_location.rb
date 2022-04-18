class LeisureLocation < ActiveRecord::Base
  has_many :all_leisures, dependent: :destroy
  has_many :leisure_activities, through: :all_leisures
end