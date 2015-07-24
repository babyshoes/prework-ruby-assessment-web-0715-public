# code you methods for the 003_method spec here
# Note: You will need to pass the school variable to each of these methods to include it in scope

# returns the grade of a student, given the student's name

  school = { 
  :name => "Happy Funtime School",
  :location => "NYC",
  :instructors => [ 
    {:name=>"Blake", :subject=>"being awesome" },
    {:name=>"Ashley", :subject=>"being better than blake"},
    {:name=>"Jeff", :subject=>"karaoke"}
  ],
  :students => [ 
    {:name => "Marissa", :grade => "B"},
    {:name=>"Billy", :grade => "F"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"}
  ]
}

def get_grade(school, name)
  school[:students].each do |student|
    if student[:name] == name
      return student[:grade]
    end
  end
end

def update_subject(school, name, subject)
  school[:instructors].each do |instructor|
    if instructor[:name] == name
      instructor[:subject] = subject
    end
  end
end

def add_new_student(school, name = "New Student", grade = "C")
  school[:students] << {:name => name, :grade => grade}
end

def add_new_key(school, key, value)
  school[key] = value
end

