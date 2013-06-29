# * A client will want to list the animals in the shelter
require_relative 'shelter'
require_relative 'animal'
require_relative 'client'

class ShelterSpec
  describe Shelter do
    before do
      @a_name = 'HappiTails'
      @animal_list = []
      @client_list = []
      @shelter = Shelter.new(@a_name, @animal_list, @client_list)
    end
    it 'has a name' do
      @shelter.name.should eq @a_name
    end

    it 'has a list of animals' do
      @shelter.animal_list.should be_an_instance_of Array
      @shelter.animal_list.should eq @animal_list
    end
    it 'has a list of clients' do
      @shelter.client_list.should be_an_instance_of Array
      @shelter.client_list.should eq @client_list
    end
  end
end
