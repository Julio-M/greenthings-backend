class LeisureLocation < ActiveRecord::Base
  has_many :leisure_activities, dependent: :destroy
end