require_relative 'shelter'
require_relative 'client'
require_relative 'animal'

class Main

  def initialize

  end

  def display_menu_items

  end
  def adopt_animal(new_animal)
    @animal_list << @new_animal
  end
  def add_animal_to_shelter
  end

  def donate_animal
    @animals.push(animal)
  end
  def new_client
    @new_client
    # @clients << Client.new(name, age, gender, kids, animal)
  end

  def new_animal
    @new_animal
  end
end