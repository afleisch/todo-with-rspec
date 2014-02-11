require "spec_helper"

describe TodosController do 
  
  describe "GET new" do
    before(:each) do
      @todo = mock_model("Todo") #this is the class name of the object that will eventually exist in our code
      allow(Todo).to receive(:new).and_return(@todo) #when you call the new method on the Todo model, we allow it to return an instance of the model
    end
    it "should assign @todo" do
      get :new #calling the new method
      expect(assigns(:todo)).to eq(@todo) #Check if @todo is some instance of a Todo
    end
    it "should render :new template" do
        get :new
        expect(response).to render_template("new")
    end
  end

  describe "POST create" do

    before(:each) do
      todo = mock_model("Todo")
      allow(Todo).to receive(:create)
    end
    it "should create a Todo" do 
    expect(Todo).to receive(:create).with({"title" => "get something done!"})
    post :create, {todo: {title: "get something done!"}}
    end

    it "should redirect_to '/todos/new'" do
      expect(response).to redirect_to("/todos/new")

   end
  end
end