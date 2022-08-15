# your code goes here
require 'pry'
class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        self.happiness = happiness
        self.hygiene = hygiene
    end

    def happiness=(num)
        if num > 10
            @happiness = 10
        elsif num < 0
            @happiness = 0
        else
            @happiness = num
        end
    end

    def happiness
        @happiness
    end

    def hygiene=(num)
        if num > 10
            @hygiene = 10
        elsif num < 0
            @hygiene = 0
        else
            @hygiene = num
        end
    end

    def hygiene
        @hygiene
    end

    def happy?
        if self.happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if self.hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return 'all about the benjamins'
    end

    def take_bath
        new_num = @hygiene + 4
        self.hygiene=(new_num)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        hyg = @hygiene - 3
        hp = @happiness + 2
        self.hygiene=(hyg)
        self.happiness=(hp)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(ps)
        caller_nm = @happiness + 3
        ps.happiness=(ps.happiness+3)
        self.happiness=(caller_nm)
        return "Hi #{ps.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness=(self.happiness-2)
            person.happiness=(person.happiness-2)
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness=(self.happiness+1)
            person.happiness=(person.happiness+1)
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end

end