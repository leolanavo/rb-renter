#!/usr/bin/ruby -w

class Car
    def initialize(model, year, type, price)
        @type = type
        @model = model
        @year_of_lauch = year
        @price_per_day = Integer(price)
    end

    def getType()
        @type
    end

    def getYear()
        @year_of_lauch
    end

    def getModel()
        @model
    end

    def getRentPrice(days)
        case days
        when String
            @price_per_day*Integer(days)
        when Fixnum
            @price_per_day*days
        end
    end
end

def main()
    stock = IO.readlines(ARGV[0])

    stock.each do |item|
        item = item.split

        car = Car.new(item[0], item[1], item[2], item[3])

        year = car.getYear()
        type = car.getType()
        model = car.getModel()
        price = car.getRentPrice(item[4])
 
        puts "The #{model} was lauched in #{year} and it's a #{type}\n"
        puts "Total price is --> R$#{price}\n\n"
    end

end

main()
