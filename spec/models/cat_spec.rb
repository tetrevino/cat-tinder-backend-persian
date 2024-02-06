require 'rails_helper'

RSpec.describe Cat, type: :model do
  it "should validate name" do
    cat = Cat.create(age: 2, enjoys: 'Walks in the park', image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80')
    expect(cat.errors[:name]).to_not be_empty
  end
  it "should validate age" do
    cat = Cat.create(name:'Whiskers', enjoys: 'Tuna & Friskies', image:'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80' )
  end
  it "should validate enjoys" do
    car = Cat.create(name:'SnowBall', age: 1, image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80')
  end
  it "should validate image" do
    cat = Cat.create(name: 'Mittens', age: 3, enjoys: 'Head scratches and chasing yarn')
  end
  it " should validate enjoys minimum character length" do
    cat = Cat.create(enjoys: 'Walks')
    expect(cat.errors[:enjoys]).to_not be_empty
  end
end