module Test
    def result(nota1, nota2)
        promedio = (nota1+nota2)/2.0
        if promedio > 4
            puts "estudiante Aprobado"
        else
            puts "Estudiante Reprobado"    

        end
    end    
end
    
module Attendance
        def self.Student_quantity
        puts Student.cantidad_estudiantes    
        end
end    

class Student
    include Test
    include Attendance
    @@quantity = 0
    attr_accessor :nombre, :nota1, :nota2
    def initialize(:nombre ="Nombre de pueba", :nota1, :nota2)
    @@quantity =1
    @@nombre = nombre
    @@nota1= nota1
    @@nota2 = nota2
    end
end    

def self.cantidad_estudiantes
    @@quantity
end    


10.times do |x|
    alumno = Student.new("Alumno #{x}", rand(0..7), rand(0..7))
    puts "#{alumo.nombre} > NOTAS #{alumno.nota1} y #{alumno.nota2} #{alumno.result(alumno.nota1, alumno.result.nota2)}"
end

puts Attendance.Student_quantity
