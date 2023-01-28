# a drink belongs to one customer
class Drink < ActiveRecord::Base
    belongs_to :shop
end

# name :string
# ordered_at :timestamp
# size: string
# decaf :boolean
# price :float
# ingredients :???? array?
# notes :string
# shop_id :integer <<foreign key
