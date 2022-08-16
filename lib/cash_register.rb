class CashRegister
    attr_accessor :total, :discount, :items, :last_item_price
    

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_item_price = 0
    end
    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        @last_item_price = price * quantity
        quantity.times { self.items << title }
    end
    def apply_discount
        if self.discount > 0 
        @total = self.total - self.total * self.discount / 100
        return "After the discount, the total comes to $#{total}."
        else
            return "There is no discount to apply."
        end
    end
    def items
       @items
    end
    def void_last_transaction
        self.total -= @last_item_price
    end
end
