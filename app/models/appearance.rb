class Appearance < ApplicationRecord
  has_one :guest
  has_one :episode
end
