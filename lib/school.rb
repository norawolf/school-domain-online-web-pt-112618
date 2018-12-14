require 'pry'
class School

attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name

  # original attempt, thinking to check if the grade being passed in already exists, and if so just add the name,
  #if not, create the key and add the students
  #   @roster.collect do |grade_number, name_array|
  #     if @roster[grade_number] == grade
  #       @roster[grade] << name
  #     else
  #      @roster[grade]
  #      @roster[grade] << name
  #   end
  # end
end

  def grade(grade_number)
      @roster[grade_number]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end

  end

end
