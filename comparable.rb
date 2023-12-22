class Bid
    include Comparable
    attr_accessor :estimate
    def <=>(other_bid)
        if self.estimate < other_bid.estimate
            -1
        elsif self.estimate > other_bid.estimate
            1
        else
            0
        end
    end
end

# you can abbreviate the above method to just:
# def <=>(other_bid)
#    self.estimate <=> other_bid.estimate
# end
# because Bid's <=> can piggyback on the <=> method of the Integer and Float classes

bid1 = Bid.new
bid2 = Bid.new
bid1.estimate = 100
bid2.estimate = 105
puts bid1 < bid2


