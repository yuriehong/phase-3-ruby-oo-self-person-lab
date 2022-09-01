# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_accessor :happiness
    attr_accessor :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene =8
    end
    def happiness=(value)
        if value >10
            @happiness = 10
        
        elsif value <0
            @happiness = 0
        
        else
            @happiness = value
        end
    end
    def hygiene=(value)
        if value >10
            @hygiene = 10
        
        elsif value <0
            @hygiene = 0
        
        else
            @hygiene = value
        end
    end

    def clean?
        if self.hygiene > 7
            return true
        end
        return false
    end

    def happy?
        if self.happiness >7
            return true
        end
        return false
    end

    def get_paid(amount)
        self.bank_account += amount
        return "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = self.hygiene-3
        self.happiness += 2
        return '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -=2
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            person.happiness +=1
            self.happiness +=1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end


end