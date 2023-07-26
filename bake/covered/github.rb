# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2023, by Samuel Williams.

# Annotate the GitHub pull request with coverage information.
# @parameter minimum [Float] The minimum required coverage in order to pass.
# @parameter input [Covered::Statistics] the input statistics.
def annotate(minimum: 1.0, input:)
	input.paths.each do |path, coverage|
		ratio = coverage.ratio
		if ratio < minimum
			percent = ratio.to_f.round(2)
			puts "::error file=#{path}::Coverage ratio #{format_percent(ratio)} is less than minimum #{format_percent(minimum)}."
		end
	end
	
	# Print statistics:
	input.print($stderr)
	
	# Validate statistics and raise an error if they are not met:
	input.validate!(minimum)
end

private

def format_percent(ratio)
	"#{(ratio * 100.0).round(2)}%"
end
