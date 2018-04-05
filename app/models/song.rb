class Song < ApplicationRecord
  belongs_to :playlist, optional: true
end
