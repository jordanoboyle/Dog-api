require "test_helper"

class DogsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "index" do
    get "/dogs.json"
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal Dog.count, data.length
  end
  
  test "create" do
    assert_difference "Dog.count", 1 do
      post "/dogs.json", params: { species: "test dog", color: "1", weight: 1, image_url: "test description"  }
    end
  end
  
  test "show" do
    get "/dogs/#{Dog.first.id}.json"
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal ["id", "species", "color", "weight", "image_url", "created_at", "updated_at"], data.keys
  end
  
  test "update" do
    dog = Dog.first
    patch "/dogs/#{dog.id}.json", params: { species: "Updated name" }
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal "Updated name", data["species"]
  end
  
  test "destroy" do
    assert_difference "Dog.count", -1 do
      delete "/dogs/#{Dog.first.id}.json"
      assert_response 200
    end
  end
end
