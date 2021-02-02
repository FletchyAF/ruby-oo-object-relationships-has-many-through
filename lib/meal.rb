class Meal

    attr_accessor :waiter, :customer, :total, :tip

    @@all = []

    def initialize(waiter, customer, total, tip=0)
        @waiter = waiter
        @customer = customer
        @total = total
        @tip = tip
        @@all << self
    end

    def self.all
        @@all
    end

    def meals
        customer_meals = Meal.all.find_all {|meal| meal.customer == self}
        customer_meals.select {|meal| self}
    end
end