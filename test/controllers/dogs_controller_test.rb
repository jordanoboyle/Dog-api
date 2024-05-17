require "test_helper"

class DogsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "index" do
    get "/products.json"
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal Product.count, data.length
  end
  
  test "create" do
    assert_difference "Product.count", 1 do
      post "/products.json", params: { name: "test product", price: 1, image_url: "image.jpg", description: "test description"  }
    end
  end
  
  test "show" do
    get "/products/#{Product.first.id}.json"
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal ["id", "name", "price", "image_url", "description", "created_at", "updated_at"], data.keys
  end
  
  test "update" do
    photo = Photo.first
    patch "/photos/#{photo.id}.json", params: { name: "Updated name" }
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end
  
  test "destroy" do
    assert_difference "Photo.count", -1 do
      delete "/photos/#{Photo.first.id}.json"
      assert_response 200
    end
  end
end
