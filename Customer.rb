#!/usr/bin/ruby -w

class Customer

    def initialize(name, id)
        @social_number = Integer(id)
        @name = name
    end

    def getName()
        @name
    end

    def getId()
        @social_number
    end

end


