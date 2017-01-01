class Item < ApplicationRecord
  has_one :shelf
  has_one :user
end
