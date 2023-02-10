class Shop < ActiveRecord::Base
    has_many :drinks

    #def initialize(name, location, description, drinks)
    #    @name=name
    #    @location=location
    #    @description=description
    #    @drinks=[]
    #end
end

# initialize shop with drinks empty array