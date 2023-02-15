# a drink belongs to one customer
class Drink < ActiveRecord::Base
    belongs_to :shop
end

# name :string
# decaf :boolean
# price :float
# ingredients :???? array?
# description :string
# shop_id :integer <<foreign key