module Dothoop
  class ContactResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do

      # GET /contact[?batch_size=<batch_size>&batch_number=<batch_number>&updated_min=<updated_min>]
      action :all do
        verb :get
        query_keys :batch_size, :batch_number, :updated_min
        path "#{Dothoop.configuration.path_url}/contact"
        handler(200) { |response| ContactMapping.extract_collection(response.body, :read) }
      end

      # GET /contact/:contact_id
      action :find do
        verb :get
        path "#{Dothoop.configuration.path_url}/contact/:contact_id"
        handler(200) { |response| ContactMapping.extract_single(response.body, :read) }
      end

      # POST /contact
      action :create do
        verb :post
        body { |object| ContactMapping.representation_for(:create, object) }
        path "#{Dothoop.configuration.path_url}/contact"
        handler(201) { |response| ContactMapping.extract_single(response.body, :read) }
      end

      # PATCH /contact/:contact_id
      action :patch do
        verb :patch
        body { |object| ContactMapping.hash_for(:create, object).select{ |_, value| !value.nil? }.to_json }
        path "#{Dothoop.configuration.path_url}/contact/:contact_id"
        handler(200) { |response| ContactMapping.extract_single(response.body, :read) }
      end

      # DELETE /contact/:contact_id
      action :destroy do
        verb :delete
        path "#{Dothoop.configuration.path_url}/contact/:contact_id"
        handler(204) { |_| true }
      end

    end

  end
end
