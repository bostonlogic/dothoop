module Dothoop
  class LoopParticipantResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do

      # GET /profile/:profile_id/loop/:loop_id/participant
      action :all do
        verb :get
        path "#{Dothoop.configuration.path_url}/profile/:profile_id/loop/:loop_id/participant"
        handler(200) { |response| ParticipantMapping.extract_collection(response.body, :read) }
      end

      # GET /profile/:profile_id/loop/:loop_id/participant/:participant_id
      action :find do
        verb :get
        path "#{Dothoop.configuration.path_url}/profile/:profile_id/loop/:loop_id/participant/:participant_id"
        handler(200) { |response| ParticipantMapping.extract_single(response.body, :read) }
      end

      # POST /profile/:profile_id/loop/:loop_id/participant
      action :create do
        verb :post
        body { |object| ParticipantMapping.representation_for(:create, object)}
        path "#{Dothoop.configuration.path_url}/profile/:profile_id/loop/:loop_id/participant"
        handler(201) { |response| ParticipantMapping.extract_single(response.body, :read) }
      end

      # PATCH /profile/:profile_id/loop/:loop_id/participant/:participant_id
      action :patch do
        verb :patch
        body { |object| ParticipantMapping.hash_for(:create, object).select{ |_, value| !value.nil? }.to_json }
        path "#{Dothoop.configuration.path_url}/profile/:profile_id/loop/:loop_id/participant/:participant_id"
        handler(200) { |response| ParticipantMapping.extract_single(response.body, :read) }
      end

      # DELETE /profile/:profile_id/loop/:loop_id/participant/:participant_id
      action :destroy do
        verb :delete
        path "#{Dothoop.configuration.path_url}/profile/:profile_id/loop/:loop_id/participant/:participant_id"
        handler(204) { |_| true }
      end
    end
  end
end
