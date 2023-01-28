# a customer has many drinks
class Shop < ActiveRecord::Base
    has_many :drinks
end

# attributes:
# name: string
# location: string