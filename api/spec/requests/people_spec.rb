require 'rails_helper'

RSpec.describe "People", type: :request do
  describe "as public" do
    let(:headers) {
      {
        'Content-Type' => 'application/json'
      }
    }
    describe "GET /people" do
      it "returns a blank 401" do
        get '/people', headers: headers
        expect(response.status).to eq 401
      end
    end

    describe "GET /people/:id" do
      before do
        @person = create(:person)
      end

      it "returns a blank 401" do
        get "/people/#{@person.id}", headers: headers
        expect(response.status).to eq 401
      end
    end

    describe "PUT /people/:id" do
      before do
        @person = create(:person)
      end

      it "returns a blank 401" do
        put "/people/#{@person.id}", headers: headers
        expect(response.status).to eq 401
      end
    end

    describe "POST /people" do
      before do
        @person = build(:person)
      end

      it "returns a blank 401" do
        expect {
          post '/people', params: @person.to_json, headers: headers
          expect(response.status).to eq 401
        }.to_not change(Person, :count)
      end
    end

    describe "DELETE /people/:id" do
      before do
        @person = create(:person)
      end
      it "returns a blank 401" do
        expect {
          delete "/people/#{@person.id}", headers: headers
          expect(response.status).to eq 401
        }.to_not change(Person, :count)
      end
    end
  end

  describe "as user" do
    let(:headers) {
      {
        'Content-Type' => 'application/json',
        'X-Auth-Token' => SecureRandom.hex(32)
      }
    }
  end

  describe "as admin" do
    let(:headers) {
      {
        'Content-Type' => 'application/json',
        'X-Auth-Token' => SecureRandom.hex(32)
      }
    }

    describe "GET /people" do
    end

    describe "GET /people/:id" do
    end

    describe "PUT /people/:id" do
    end

    describe "POST /people" do
    end

    describe "DELETE /people/:id" do
    end
  end

  # describe "GET /people" do
  #   it "works! (now write some real specs)" do
  #     get people_path
  #     expect(response).to have_http_status(200)
  #   end
  # end
end
