class Backer
    def initialize(name)
        @name = name
    end
    attr_accessor :name
    def back_project(project)
        ProjectBacker.new(project, self)
    end
    def backed_projects
        temp = ProjectBacker.all.select{|x| x.backer == self}
        temp.map{|y| y.project}
    end
end