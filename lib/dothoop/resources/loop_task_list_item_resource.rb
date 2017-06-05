module Dothoop
  class LoopTaskListItemResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do

      # GET /profile/:profile_id/loop/:loop_id/tasklist/:task_list_id/task
      action :all do
        verb :get
        path "#{Dothoop.configuration.path_url}/profile/:profile_id/loop/:loop_id/tasklist/:task_list_id/task"
        handler(200) { |response| LoopTaskListItemMapping.extract_collection(response.body, :read) }
      end

      # GET /profile/:profile_id/loop/:loop_id/tasklist/:task_list_id/task/:task_list_item_id
      action :find do
        verb :get
        path "#{Dothoop.configuration.path_url}/profile/:profile_id/loop/:loop_id/tasklist/:task_list_id/task/:task_list_item_id"
        handler(200) { |response| LoopTaskListItemMapping.extract_single(response.body, :read) }
      end

    end

  end
end
