class ItemTag < ApplicationRecord


  belongs_to :item
belongs_to :tags, :class_name => "Tag"
end
