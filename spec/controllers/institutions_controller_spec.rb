require 'rails_helper'

RSpec.describe InstitutionsController, type: :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      institution = Institution.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      institution = Institution.create! valid_attributes
      get :show, params: {id: institution.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      institution = Institution.create! valid_attributes
      get :edit, params: {id: institution.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Institution" do
        expect {
          post :create, params: {institution: valid_attributes}, session: valid_session
        }.to change(Institution, :count).by(1)
      end

      it "redirects to the created institution" do
        post :create, params: {institution: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Institution.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {institution: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested institution" do
        institution = Institution.create! valid_attributes
        put :update, params: {id: institution.to_param, institution: new_attributes}, session: valid_session
        institution.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the institution" do
        institution = Institution.create! valid_attributes
        put :update, params: {id: institution.to_param, institution: valid_attributes}, session: valid_session
        expect(response).to redirect_to(institution)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        institution = Institution.create! valid_attributes
        put :update, params: {id: institution.to_param, institution: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested institution" do
      institution = Institution.create! valid_attributes
      expect {
        delete :destroy, params: {id: institution.to_param}, session: valid_session
      }.to change(Institution, :count).by(-1)
    end

    it "redirects to the institutions list" do
      institution = Institution.create! valid_attributes
      delete :destroy, params: {id: institution.to_param}, session: valid_session
      expect(response).to redirect_to(institutions_url)
    end
  end

end
