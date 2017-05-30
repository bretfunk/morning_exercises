require './mod1'
require './mod4'
require 'pry'

class Student
  #include Mod1
  #include Mod4
attr_accessor :name, :school, :cohort, :program
  def initialize(name, cohort, program)
  @name = name
  @school = "Turing"
  @cohort = cohort
  @program = program
  end
binding.pry
end

bret = Student.new("Bret", "1705", "backend")
