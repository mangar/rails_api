class RoutesTest < ActionDispatch::IntegrationTest

  test 'authors' do
    assert_generates '/authors', { controller: 'authors', action: 'index' } 
    assert_generates '/authors/new', { controller: 'authors', action: 'new' } 
  end

end




