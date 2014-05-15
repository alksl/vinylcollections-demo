class Collection < ActiveRecord::Base
  has_many :collection_items
  has_many :issues, through: :collection_items
end
