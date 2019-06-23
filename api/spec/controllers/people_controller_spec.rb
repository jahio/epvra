require 'rails_helper'

RSpec.describe PeopleController, type: :controller do

  #
  # Valid headers to be enclosed with each request
  #
  let(:headers) {
    {
      'X-Application-Token' => SecureRandom.hex(32),
      'Content-Type' => 'application/json'
    }
  }

  describe "as a public user" do
    describe 'GET index' do
    end

    describe 'GET show' do
    end

    describe 'PUT id' do
    end

    describe 'POST new' do
    end

    describe 'DELETE id' do
    end
  end

  describe "as a logged in user" do
    describe 'GET index' do
    end

    describe 'GET show' do
    end

    describe 'PUT id' do
    end

    describe 'POST new' do
    end

    describe 'DELETE id' do
    end
  end

  describe "as an admin" do
    describe 'GET index' do
    end

    describe 'GET show' do
    end

    describe 'PUT id' do
    end

    describe 'POST new' do
    end

    describe 'DELETE id' do
    end
  end
end
