class ProductsController < ApplicationController

  get "/fruits" do
    fruits = Product.all.where(category: "fruit")
    fruits.to_json
  end

  get "/vegetables" do
    vegetables = Product.all.where(category: "vegetable")
    vegetables.to_json
  end

  get "/products" do
    Product.all.to_json
  end

  get "/products/:id" do
    product = find_product
    product.to_json
  end

  
  post "/products" do
    prod = Product.create(name: params["name"])
    # binding.pry
    if prod.id
      prod.to_json
    else
      prod.errors.full_messages.to_sentence.to_json
    end
  end

  
  get "/products/:id" do
    product = find_product
  end

  patch "/products/:id" do
    products = find_product
  end


  delete "/products/:id" do
    product = find_product
  end

  private

  def find_product
    Product.find_by(id: params["id"])
  end

end