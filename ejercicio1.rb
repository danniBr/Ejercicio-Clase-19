class MiClase
    def de_instancia
        puts 'Método de instancia!'
    end
    def self.de_clase
        puts 'Método de clase!'
    end
end

puts MiClase.new.de_instancia
puts MiClase.de_clase