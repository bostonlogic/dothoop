module Dothoop
  class ProfileResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do

      # GET /profile
      action :all do
        verb :get
        path "#{Dothoop.configuration.path_url}/profile"
        handler(200) { |response| ProfileMapping.extract_collection(response.body, :read) }
      end

      # GET /profile/:profile_id
      action :find do
        verb :get
        path "#{Dothoop.configuration.path_url}/profile/:profile_id"
        handler(200) { |response| ProfileMapping.extract_single(response.body, :read) }
      end

      # POST /profile
      action :create do
        verb :post
        body { |object| ProfileMapping.representation_for(:create, object) }
        path "#{Dothoop.configuration.path_url}/profile"
        handler(201) { |response| ProfileMapping.extract_single(response.body, :read) }
      end

      # PATCH /profile/:profile_id
      action :patch do
        verb :patch
        body { |object| ProfileMapping.hash_for(:create, object).select{ |_, value| !value.nil? }.to_json }
        path "#{Dothoop.configuration.path_url}/profile/:profile_id"
        handler(200) { |response| ProfileMapping.extract_single(response.body, :read) }
      end

    end

  end
end
