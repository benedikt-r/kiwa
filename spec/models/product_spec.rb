require 'rails_helper'

describe Product do
  context 'when the product has comments' do
    let(:product) {Product.create!(name:"Knorr Voletto", description:"test", image_url:"/stroller.jpg", price:"400", color:"red")}
    let(:user) {User.create!(first_name:"John", last_name:"Doo", email:"jd@dj.com", password:"123456789")}

    it "returns the average rating of all comments" do
      product.comments.create!(rating: 1, user: user, body: "Awful stroller!")
      product.comments.create!(rating: 3, user: user, body: "Ok stroller!")
      product.comments.create!(rating: 5, user: user, body: "Great stroller!")
      expect(product.average_rating).to eq(3)
   end
     it "is not valid without a name" do
      expect(Product.new(description:"nice buggy")).not_to be_valid
   end
  end
end
