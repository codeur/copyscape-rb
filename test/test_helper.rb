# frozen_string_literal: true

require 'mocha'
require 'minitest/autorun'
require 'shoulda/context'
require 'mocha/minitest'

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
require 'copyscape'

Copyscape.username = 'joe'
Copyscape.api_key = '123abc'
