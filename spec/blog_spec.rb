require 'rails_helper'


RSpec.describe Post, type: :model do
    it 'should have a title' do
        expect(Post.new).to respond_to :title
    end
end 

RSpec.describe Comment, type: :model do
    it 'should have a body' do
        expect(Comment.new).to respond_to :body
    end
end 

RSpec.describe 'routes to named controller', :type => :routing do
    it 'routes to #index' do 
        get("/").should route_to("posts#index")
    end

    it 'routes to #index' do 
        get("/comments").should route_to("comments#index")
    end

    it 'routes to #index' do 
        get("/users/sign_in").should route_to("users/sessions#new")
    end

end