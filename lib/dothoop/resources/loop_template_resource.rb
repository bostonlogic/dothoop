module Dothoop
  class LoopTemplateResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      # GET /profile/:profile_id/loop-template
      action :all do
        verb :get
        path "#{Dothoop.configuration.path_url}/profile/:profile_id/loop-template"
        handler(200) { |response| LoopTemplateMapping.extract_collection(response.body, :read) }
      end

      # GET /profile/:profile_id/loop/:loop_id/tasklist/:task_list_id
      action :find do
        verb :get
        path "#{Dothoop.configuration.path_url}/profile/:profile_id/loop-template/:loop_template_id"
        handler(200) { |response| LoopTemplateMapping.extract_single(response.body, :read) }
      end
    end
  end
end
