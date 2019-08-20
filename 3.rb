class Vehicle
    def initialize(model, year)
        @model = model
        @year = year
        @start = false
    end
    def engine_start
        @start = true
    end
end

class Car < Vehicle
    @@instancias = 0
    def initialize()
        @@instancias +=1
    end
    
    def self.cantidad_instacias
        @@instancias
    end    

    def engine_start
        super
        puts 'El motor se ha encendido!'
    end
end    

10.times do |c|
    Car.new.engine_start
end

puts "se han creado #{Car.cantidad_instacias} automoviles"