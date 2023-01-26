# a drink belongs to one customer
class Drink < ActiveRecord::Base
    belongs_to :customer
end

# name :string
# ordered_at :timestamp
# decaf :boolean
# price :float
# ingredients :????
# customer_id :integer
