module Dothoop
  class LoopTaskListResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      # GET /profile/:profile_id/loop/:loop_id/tasklist/
      action :all do
        verb :get
        path "#{Dothoop.configuration.path_url}/profile/:profile_id/loop/:loop_id/tasklist/"
        handler(200) { |response| LoopTaskListMapping.extract_collection(response.body, :read) }
      end

      # GET /profile/:profile_id/loop/:loop_id/tasklist/:task_list_id
      action :find do
        verb :get
        path "#{Dothoop.configuration.path_url}/profile/:profile_id/loop/:loop_id/tasklist/:task_list_id"
        handler(200) { |response| LoopTaskListMapping.extract_single(response.body, :read) }
      end
    end
  end
end
