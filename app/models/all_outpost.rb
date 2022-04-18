class AllOutpost < ActiveRecord::Base
  belongs_to :outpost_activity
  belongs_to :outpost
end