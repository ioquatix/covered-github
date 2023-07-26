# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2023, by Samuel Williams.
# Copyright, 2023, by Michael Adams.

require 'covered/policy'
require 'covered/git/branch_changes'

def initialize(...)
	super
	
	require 'set'
	require 'rugged'
end

# Annotate the GitHub pull request with coverage information.
# @parameter input [Hash] the input statistics.
def annotate(input:)
	input[:paths].each do ||
		if modified_lines = modifications[coverage.source.path]
			scoped_coverage = coverage.for_lines(modified_lines)
			statistics << scoped_coverage
		end
	end
	
	return statistics
end
