class Item < ApplicationRecord

  validates :user_id, :presence => true
  validates :suggested_price, :presence => true
  validates :location, :presence => true

  has_many :photos, :dependent => :destroy
  has_many :item_tags, :dependent => :destroy
  belongs_to :user


end
