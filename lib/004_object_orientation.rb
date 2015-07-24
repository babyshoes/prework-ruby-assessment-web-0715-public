class School
  attr_accessor :students, :instructors
  attr_reader :name, :location, :ranking

  @@schools = []
  @@count = 0

  def initialize(name, location, ranking, students=[], instructors=[])
    @name = name
    @location = location
    @ranking = ranking
    @students = students
    @instructors = instructors
    @@count += 1
    @@schools << self
  end

  def self.all
    @@schools
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@schools = []
    @@count = 0
  end

  def add_student(name, grade, semester)
    @students << {:name => name,
                  :grade => grade,
                  :semester => semester}
  end

  def remove_student(name)
    @students.each {|student| student.delete if student.include?(name)}
  end

end
