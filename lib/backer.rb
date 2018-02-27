require 'pry'

class Backer

  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []

  end

  def back_project(title)
      p = Project.new(title)
      p.backers << self
      @backed_projects << p.title

      # binding.pry
  end

end
