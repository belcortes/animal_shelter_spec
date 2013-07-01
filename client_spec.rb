# * Track their names, ages, gender, 
# kids and the number of pets they have.

require_relative 'client'

class ClientSpec
  describe Client do
    before do
      @a_name = 'Bob'
      @an_age = 27
      @a_gender = 'male'
      @animals = ['Mindy', 'Alex']
      @client = Client.new(@a_name, @an_age, @a_gender, @animals)
    end
    it 'has a name' do
      @client.name.should eq @a_name
    end

    it 'has an age' do
      @client.age.should eq @an_age
    end
    it 'has a gender' do
      @client.gender.should eq @a_gender
    end
    it 'has a list of animals' do
      @client.animal_list.should be_an_instance_of Array
      @client.animal_list.should eq @animals
    end
    it "adds animal to animal list" do
      numAnimals = @animals.length
      @client.add_animal(0)
      @client.animal_list.length.should eq (numAnimals + 1) 
    end
    it 'removes animal from animal list' do
      numAnimals = @animals.length
      @client.remove_animal(0)
      @client.animal_list.length.should eq (numAnimals - 1) 
    end
  end
end




