class Backer 

    attr_reader :name 

    def initialize(name)
        @name = name 
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def projects 
        ProjectBacker.all.select {|project| project.backer ==self}
    end 

    def backed_projects 
        projects.map {|project| project.project}
    end 
    

end 