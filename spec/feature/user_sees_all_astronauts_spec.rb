require "rails_helper"

describe "astronaut index" do

  before (:each) do
    @astronaut_1 = Astronaut.create(name: "Neil Armstrong", age: 37, job: "Commander")

    @mission_1 = @astronaut_1.space_missions.create(title: "Apollo 13", trip_length: 234)

  describe "they visit /astronauts" do


      visit '/astronauts'

      expect(page).to have_content(@astronaut_1.name
      expect(page).to have_content(@astronaut_1.age)
      expect(page).to have_content(@astronaut_1.job)

    end

    it "shows the space missions for each astronaut" do

      visit '/astronauts'

      expect(page).to have_content(@astronaut_1.space_missions.title)
    end
  end
end
