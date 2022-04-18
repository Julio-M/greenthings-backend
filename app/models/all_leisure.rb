class AllLeisure < ActiveRecord::Base
  belongs_to :leisure_activity
  belongs_to :leisure_location
end