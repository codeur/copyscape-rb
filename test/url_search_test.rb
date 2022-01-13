# frozen_string_literal: true

require 'test_helper'

class UrlSearchTest < Minitest::Test
  context 'request_url' do
    should 'have the correct url' do
      Copyscape::UrlSearch.expects(:get).once.returns(url_search_response_duplicate).with do |path, options|
        params = options[:query]
        assert_equal '/', path
        assert_equal 'joe', params[:u]
        assert_equal '123abc', params[:k]
        assert_equal 'http://www.someurl.com/blah.html', params[:q]
        assert_equal 'csearch', params[:o]
      end
      @search = Copyscape::UrlSearch.new('http://www.someurl.com/blah.html')
    end
  end

  private

  def url_search_response_duplicate
    o = Object.new
    o.stubs(:body).returns(File.read(File.expand_path('url_search_response_duplicate.xml', __dir__)))
    o
  end
end
