# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2023, by Samuel Williams.

require 'covered/github/version'
require 'covered/github/test'

describe Covered::GitHub do
	it "has a version number" do
		expect(Covered::GitHub::VERSION).to be =~ /\d+\.\d+\.\d+/
	end
end
