class Song < ActiveRecord::Base
  belongs_to :composer
  belongs_to :category
end
