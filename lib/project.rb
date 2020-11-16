class Project
    def initialize(title)
        @title = title
    end
    attr_accessor :title, :backer
    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end
    def backers
        temp = ProjectBacker.all.select{|x| x.project == self}
        temp.map{|y| y.backer}
    end
end