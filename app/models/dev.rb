class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    # Dev#received_one?(item_name)
    # accepts an item_name (string) and returns true if any of the freebies associated with the dev has that item_name, otherwise returns false
    def received_one?(item_name) # choose your own adventure
        # self.freebies.pluck(:item_name).include?(item_name)

        # names = self.freebies.map { |freebie| freebie.item_name }
        # names.include?(item_name)

        self.freebies.where(item_name: item_name).count > 0
    end

    # What are we doing to access the data? Iteration? An attribute?
    # What do we need the method to return? True/false? An instance? A string?
    # What other questions can you ask about the problem?
    # What does it want? How can we start from the end and work backwards?
    # Is there logic in the problem? Do we need a conditional?
    # Can you write it in javascript and translate it?
    # Do my catch all methods work here? Can I use .where or similar?

    # Dev#give_away(dev, freebie)
    # accepts a Dev instance and a Freebie instance, changes the freebie's dev to be the given dev; your code should only make the change if the freebie belongs to the dev who's giving it away
    def give_away(dev, freebie)
        if self == freebie.dev
            freebie.update(dev: dev)
        else
            "stop it rick"
        end

        # self.freebies.where(id: freebie.id).update(dev: dev)

        # Freebie.where(dev_id: self.id).update(dev_id: dev.id)
    end

end
