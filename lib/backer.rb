class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project = [] 
        ProjectBacker.all.select do |pb| 
            if pb.backer == self
                project << pb.project 
            end
        end
        project 
    end
end