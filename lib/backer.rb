class Backer

  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(title)
      p = Project.new(title)
      @backed_projects << p.title
      p.backers << self

  end

end
