module Herviboro
  @@definir = 'Sólo me alimento de vegetales!'

  def self.definir
    @@definir
  end

  def dieta
    puts "Soy un Herviboro!"
  end
end

class Animal
  def saludar
    puts "Soy un animal!"
  end
end

class Conejo < Animal 
  def initialize(name)
    @name = name
  end
  def saludar
    super
  end
  include Herviboro
end

conejo = Conejo.new('Bugs Bunny')
conejo.saludar
conejo.dieta
puts Herviboro.definir