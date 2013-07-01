require_relative 'shelter'
require_relative 'client'
require_relative 'animal'

class Main
  attr_accessor :answer, :shelter, :clients, :animals
  def initialize
    @animal_1 = Animal.new("Cartman", "bunny", 1, "female", "plushie")
    animal_2 = Animal.new("Bob", "cat", 5, "male", "blanket")

    client_1 = Client.new("Brandon", 21, "male", 1)
    client_2 = Client.new("Julia", 25, "female", 2)

    @animals = [@animal_1, animal_2]
    @clients = [client_1, client_2]

  end

  def display_menu_items
    "What would you like to do today?\n
   (1) Get list of animals\n
   (2) Get list of clients\n
   (3) Create New Animal\n
   (4) Become a new client\n
   (5) Adopt an animal\n
   (6) Donate an animal to the shelter\n
   (Q) for Exit"
    @answer = gets.chomp

  end
  def adopt_animal(index)
    @animals.delete(index)
  end

  def donate_animal(index)
    @animals.push(index)
  end
  def new_client
    "New Client"
    "Name: "
    a_name = gets.chomp
    "Age: "
    an_age = gets.to_i
    "Gender: "
    a_gender = gets.chomp
    "Number of Animals: "
    animal_list = gets.chomp.capitalize
    @client_list = Client.new(a_name, an_age, a_gender, animal_list)
  end

  def new_animal
    "Name: "
    a_name = gets.chomp
    "Breed: "
    a_breed = gets.chomp
    "Age: "
    a_age = gets.to_i
    "Gender: "
    a_gender = gets.chomp
    "Species: "
    species = gets.chomp
    "Toys: "
    favorite_toys = gets.chomp.split
    $shelter.animals[name] = Animal.new(a_name, a_breed, a_age, a_gender, a_species)
    $shelter.animals[name].favorite_toys = favorite_toys
  end
end