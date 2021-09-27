class Oystercard

    attr_accessor :balance
    LIMIT = 90

    def initialize
        @balance = 0
    end

    def top_up(amount)
        raise "Exceeded the maximum of #{LIMIT} balance" if @balance + amount >= LIMIT
        @balance += amount
    end

    def deduct(amount)
        @balance -= amount
    end
end