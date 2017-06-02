module Dothoop
  class AccountResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do

      # POST /account
      action :info do
        verb :get
        path "#{Dothoop.configuration.path_url}/account"
        handler(200) { |response| AccountMapping.extract_single(response.body, :read) }
      end

    end

  end
end
