module Dothoop
  class LoopDetailResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do

      # GET /profile/:profile_id/loop/:loop_id/detail
      action :info do
        verb :get
        path "#{Dothoop.configuration.path_url}/profile/:profile_id/loop/:loop_id/detail"
        handler(200) { |response| LoopDetailMapping.extract_single(response.body, :read) }
      end

      # PATCH /profile/:profile_id/loop/:loop_id/detail
      action :patch do
        verb :patch
        body do |object|
          proc = Proc.new { |k, v| v.kind_of?(Hash) ? (v.delete_if(&proc); nil) : v.nil? }
          LoopDetailMapping.hash_for(:patch, object).delete_if(&proc).to_json
        end
        path "#{Dothoop.configuration.path_url}/profile/:profile_id/loop/:loop_id/detail"
        handler(200) { |response| LoopDetailMapping.extract_single(response.body, :read) }
      end
    end

  end
end
