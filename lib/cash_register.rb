# require 'pry'


class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []

    end

    def add_item(name, price, qty=1)
        self.total += price * qty
        qty.times do
            items << name
        end
        self.last_transaction = price * qty
    end

    def apply_discount
        if discount != 0
            self.total = (total * ((100.0 - discount.to_f)/100)).to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction

        self.total -= self.last_transaction

    end

end





# binding.pry



# Add items of varying quantities and prices
# Calculate discounts
# Keep track of what's been added to it
# Void the last transaction
























# # require 'pry'


# class CashRegister
#     attr_accessor :total, :discount

#     def initialize(total=0, discount=20)
#         @total = total
#         @discount = discount
#     end

#     def add_item(item, price, quantity=1)
#         price *= quantity
#         self.total += price
#     end

#     def apply_discount
#         self.total = self.total - self.total * @discount / 100.00
#         self.total = self.total.to_i

#         p "After the discount, the total comes to $#{self.total}."
        
#     end

# end

# register = CashRegister.new

# register.add_item("macbook air", 1000)

# # binding.pry

