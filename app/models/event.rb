class Event < ActiveRecord::Base
  validates :title, presence: true, uniquenesss: true
end
