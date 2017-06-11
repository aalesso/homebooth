class Tag < ApplicationRecord

  has_one :item_tag, :foreign_key => "tags_id", :dependent => :destroy
end
