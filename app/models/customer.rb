# a customer has many drinks
class Customer < ActiveRecord::Base
    has_many :drinks
end

# attributes:
# name: string