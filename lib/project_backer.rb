class Project 

    attr_reader :title

    def initialize(title)
        @title = title
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def class_backers
        ProjectBacker.all.select {|backer| backer.project ==self}
    end 

    def backers 
        class_backers.map {|backer| backer.backer}
    end 

end 
