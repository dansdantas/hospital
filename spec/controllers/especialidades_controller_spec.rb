require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe EspecialidadesController do

  # This should return the minimal set of attributes required to create a valid
  # Especialidade. As you add validations to Especialidade, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "descricao" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EspecialidadesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all especialidades as @especialidades" do
      especialidade = Especialidade.create! valid_attributes
      get :index, {}, valid_session
      assigns(:especialidades).should eq([especialidade])
    end
  end

  describe "GET show" do
    it "assigns the requested especialidade as @especialidade" do
      especialidade = Especialidade.create! valid_attributes
      get :show, {:id => especialidade.to_param}, valid_session
      assigns(:especialidade).should eq(especialidade)
    end
  end

  describe "GET new" do
    it "assigns a new especialidade as @especialidade" do
      get :new, {}, valid_session
      assigns(:especialidade).should be_a_new(Especialidade)
    end
  end

  describe "GET edit" do
    it "assigns the requested especialidade as @especialidade" do
      especialidade = Especialidade.create! valid_attributes
      get :edit, {:id => especialidade.to_param}, valid_session
      assigns(:especialidade).should eq(especialidade)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Especialidade" do
        expect {
          post :create, {:especialidade => valid_attributes}, valid_session
        }.to change(Especialidade, :count).by(1)
      end

      it "assigns a newly created especialidade as @especialidade" do
        post :create, {:especialidade => valid_attributes}, valid_session
        assigns(:especialidade).should be_a(Especialidade)
        assigns(:especialidade).should be_persisted
      end

      it "redirects to the created especialidade" do
        post :create, {:especialidade => valid_attributes}, valid_session
        response.should redirect_to(Especialidade.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved especialidade as @especialidade" do
        # Trigger the behavior that occurs when invalid params are submitted
        Especialidade.any_instance.stub(:save).and_return(false)
        post :create, {:especialidade => { "descricao" => "invalid value" }}, valid_session
        assigns(:especialidade).should be_a_new(Especialidade)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Especialidade.any_instance.stub(:save).and_return(false)
        post :create, {:especialidade => { "descricao" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested especialidade" do
        especialidade = Especialidade.create! valid_attributes
        # Assuming there are no other especialidades in the database, this
        # specifies that the Especialidade created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Especialidade.any_instance.should_receive(:update_attributes).with({ "descricao" => "MyString" })
        put :update, {:id => especialidade.to_param, :especialidade => { "descricao" => "MyString" }}, valid_session
      end

      it "assigns the requested especialidade as @especialidade" do
        especialidade = Especialidade.create! valid_attributes
        put :update, {:id => especialidade.to_param, :especialidade => valid_attributes}, valid_session
        assigns(:especialidade).should eq(especialidade)
      end

      it "redirects to the especialidade" do
        especialidade = Especialidade.create! valid_attributes
        put :update, {:id => especialidade.to_param, :especialidade => valid_attributes}, valid_session
        response.should redirect_to(especialidade)
      end
    end

    describe "with invalid params" do
      it "assigns the especialidade as @especialidade" do
        especialidade = Especialidade.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Especialidade.any_instance.stub(:save).and_return(false)
        put :update, {:id => especialidade.to_param, :especialidade => { "descricao" => "invalid value" }}, valid_session
        assigns(:especialidade).should eq(especialidade)
      end

      it "re-renders the 'edit' template" do
        especialidade = Especialidade.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Especialidade.any_instance.stub(:save).and_return(false)
        put :update, {:id => especialidade.to_param, :especialidade => { "descricao" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested especialidade" do
      especialidade = Especialidade.create! valid_attributes
      expect {
        delete :destroy, {:id => especialidade.to_param}, valid_session
      }.to change(Especialidade, :count).by(-1)
    end

    it "redirects to the especialidades list" do
      especialidade = Especialidade.create! valid_attributes
      delete :destroy, {:id => especialidade.to_param}, valid_session
      response.should redirect_to(especialidades_url)
    end
  end

end
