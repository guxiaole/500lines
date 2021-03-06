require 'test/unit'
require 'rack/test'
require_relative '../../pedometer'

class LiveDataMaleTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_walk
    get '/upload/test/data/male-180-78_1-100-10-walk-a.txt'
    assert_equal 200, last_response.status

    get '/upload/test/data/male-180-78_2-100-10-walk-a.txt'
    assert_equal 200, last_response.status

    get '/upload/test/data/male-180-78_1-100-10-walk-g.txt'
    assert_equal 200, last_response.status

    get '/upload/test/data/male-180-78_2-100-10-walk-g.txt'
    assert_equal 200, last_response.status
  end

  def test_run
    get '/upload/test/data/male-180-78_1-100-10-run-a.txt'
    assert_equal 200, last_response.status

    get '/upload/test/data/male-180-78_2-100-10-run-a.txt'
    assert_equal 200, last_response.status

    get '/upload/test/data/male-180-78_1-100-10-run-g.txt'
    assert_equal 200, last_response.status

    get '/upload/test/data/male-180-78_2-100-10-run-g.txt'
    assert_equal 200, last_response.status
  end

  def test_bagwalk
    get '/upload/test/data/male-180-78_1-100-10-bagwalk-a.txt'
    assert_equal 200, last_response.status

    get '/upload/test/data/male-180-78_1-100-10-bagwalk-g.txt'
    assert_equal 200, last_response.status

    get '/upload/test/data/male-180-78_2-100-10-bagwalk-g.txt'
    assert_equal 200, last_response.status
  end

end