class Client

  def initialize(a_name, an_age, a_gender, animals)
    @name = a_name
    @age = an_age
    @gender = a_gender
    @animals = animals
  end

  def name
    @name
  end
  def age
    @age
  end
  def gender
    @gender
  end
  def animal_list
    @animals
  end

  def add_animal(animal)
    @animals << animal
  end

  def remove_animal(index)
    @animals.delete_at(index)
  end

end