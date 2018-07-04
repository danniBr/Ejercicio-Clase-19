module Test
  def result(nota1, nota2)
    promedio = (nota1 + nota2) / 2

    if promedio > 4
      puts 'Estudiante aprobado'
    else
      puts 'Estudiante reprobado'
    end
  end
end

module Attendance
  def student_quantity
    "Cantidad de alumnos = #{self.quantity}"
  end
end

class Student
  include Test
  extend Attendance
  @@quantity = 0
  nota1, nota2 = 4

  def initialize(nombre, nota1, nota2)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @@quantity += 1
  end
  
  def self.quantity
  	@@quantity
  end
  
end

estudiante = Student.new('student', 5, 4 )


estudiante.result(4 , 6)

puts Student.student_quantity
