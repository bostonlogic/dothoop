module RequestStubHelpers
  def api_fixture(fixture_name)
    Pathname.new('./test/fixtures/').join("#{fixture_name}.json").read
  end
end
