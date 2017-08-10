module Dothoop
  class LoopItResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do

      # POST /loop-it?profile_id=<profile_id>
      action :create do
        verb :post
        query_keys :profile_id
        body do |object|
          hoop = LoopItMapping.hash_for(:create, object)
          hoop[:participants] = ParticipantMapping.hash_collection_for(:create, object.participants)
          hoop.to_json
        end
        path "#{Dothoop.configuration.path_url}/loop-it"
        handler(201) { |response| LoopItMapping.extract_single(response.body, :read) }
      end

    end

  end
end
