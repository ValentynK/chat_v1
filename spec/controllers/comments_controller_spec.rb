require 'rails_helper'
include ControllerHelpers

 RSpec.describe CommentsController do
   describe "access control" do
     it "should deny access to 'create'" do
       sign_in
       
       get :new

       response.should redirect_to(root_url)
     end
     end

   describe "GET index" do
     it "assigns @comment" do
       comment = Comment.create
       get :new
       expect(assigns(:comment)).to eq([comment])
     end

     it "renders the index template" do
       get :new
       expect(response).to render_template("new")
     end
   end
 end