class OutpostActivity < ActiveRecord::Base
  has_many :all_outposts, dependent: :destroy
  has_many :outposts, through: :all_outposts
end