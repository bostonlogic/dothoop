module ErrorHandlingResourcable
  def self.included(base)
    base.send(:resources) do
      default_handler do |response|
        if (200...299).include?(response.status)
          next
        elsif response.status == 301
          raise Dothoop::RedirectError.new({status: response.status, body: response.body, redirect: response.headers[:location]})
        elsif response.status == 401
          raise Dothoop::UnauthorizedError.new("#{response.status}: #{response.body}")
        elsif response.status == 403
          raise Dothoop::ForbiddenError.new("#{response.status}: #{response.body}")
        elsif response.status == 404
          raise Dothoop::NotFoundError.new("#{response.status}: #{response.body}")
        elsif response.status == 222
          raise Dothoop::UnprocessableEntityError.new("#{response.status}: #{response.body}")
        elsif response.status == 429
          raise Dothoop::TooManyRequestsError.new("#{response.status}: #{response.body}")
        else
          raise Dothoop::Error.new("#{response.status}: #{response.body}")
        end
      end
    end
  end
end
