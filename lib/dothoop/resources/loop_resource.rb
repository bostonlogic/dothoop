module Dothoop
  class LoopResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do

      # GET /profile/:profile_id/loop[?batch_size=<batch_size>&batch_number=<batch_number>&sort=<sort>&updated_min=<updated_min>]
      action :all do
        verb :get
        query_keys :batch_size, :batch_number, :sort, :updated_min
        path "#{Dothoop.configuration.path_url}/profile/:profile_id/loop"
        handler(200) { |response| LoopMapping.extract_collection(response.body, :read) }
      end

      # GET /profile/:profile_id/loop/:loop_id
      action :find do
        verb :get
        path "#{Dothoop.configuration.path_url}/profile/:profile_id/loop/:loop_id"
        handler(200) { |response| LoopMapping.extract_single(response.body, :read) }
      end

      # POST /profile/:profile_id/loop
      action :create do
        verb :post
        body { |object| LoopMapping.representation_for(:create, object) }
        path "#{Dothoop.configuration.path_url}/profile/:profile_id/loop"
        handler(201) { |response| LoopMapping.extract_single(response.body, :read) }
      end

      # PATCH /profile/:profile_id/loop/:loop_id
      action :patch do
        verb :patch
        body { |object| LoopMapping.hash_for(:create, object).select{ |_, value| !value.nil? }.to_json }
        path "#{Dothoop.configuration.path_url}/profile/:profile_id/loop/:loop_id"
        handler(200) { |response| LoopMapping.extract_single(response.body, :read) }
      end


    end

  end
end
