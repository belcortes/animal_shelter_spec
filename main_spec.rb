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
      @m.display_menu_items.should @answer
    end
    it 'adds new client' do
      @m.new_client.should @client
    end
    it 'adopt animal from shelter' do
      @m.adopt_animal(0).should  eq (@animal_list -1)
    end
    it 'donate animal to shelter' do
      @m.donate_animal(1).should eq (@animal_list +1)
    end
    it 'adds animal to shelter' do
      @m.new_animal.should @animal
    end
  end
end
