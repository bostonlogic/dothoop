require 'test_helper'

class DothoopTest < Minitest::Test
  
  def test_that_it_has_a_version_number
    refute_nil ::Dothoop::VERSION
  end

  def test_error_is_initialized
    assert Dothoop::Error
  end

  def test_unauthorized_error_is_initialized
    assert Dothoop::UnauthorizedError
  end

  def test_forbidden_error_is_initialized
    assert Dothoop::ForbiddenError
  end

  def test_not_found_error_is_initialized
    assert Dothoop::NotFoundError
  end

  def test_unprocessable_entity_error_is_initialized
    assert Dothoop::UnprocessableEntityError
  end

  def test_too_many_requests_error_is_initialized
    assert Dothoop::TooManyRequestsError
  end

end
