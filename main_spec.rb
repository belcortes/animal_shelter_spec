require_relative 'shelter'
require_relative 'animal'
require_relative 'client'
require_relative 'main'

class MainSpec
  describe Main do
    before do
      @m = Main.new
    end
    it 'displays menu items' do
    end
    it 'adds new client' do
      @m.new_client.should @clients << Client.new(@a_name, @an_age, @a_gender, @animal_list)
    end
    it 'adopt animal from shelter' do
    end
    it 'donate animal to shelter' do
    end
    it 'adds animal to shelter' do
    end

    #   it 'adds animal to shelter' do #add animal to animal_list array
    #     @shelter.adopt_animal(@new_animal)
    #     @shelter.new_animal.should eq @new_animal
    #   end
    #   it 'adds new client' do
    #     @shelter.new_client.should eq @new_client
    #   end
    # end
    # describe 'shelter#accept_animal' do
    #   context 'for new client' do
    #     it 'increment client list by 1'
    #   end

    #   context 'for existing client' do
    #     it 'does not change the size of client list'
    #   end

    #   context 'animal was a stray' do
    #     it 'does not affect client list'
    #   end
  end
end
