
require_relative 'matcher'
require_relative 'formatter'
require_relative 'match_reporter'

module Recog
module MatcherFactory
  def self.build(options)
    formatter = Formatter.new(options, $stdout)
    reporter  = MatchReporter.new(options, formatter)
    Matcher.new(options.fingerprints, reporter, options.multi_match)
  end
end
end
