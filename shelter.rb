class Shelter

  def initialize(a_name, animal_list, new_animal, new_client, client_list)
    @name = a_name
    @animal_list = animal_list
    @new_animal = new_animal
    @new_client = new_client
    @client_list = client_list
  end

  def name
    @name
  end

  def animal_list
    @animal_list
  end

  def client_list
    @client_list
  end


end