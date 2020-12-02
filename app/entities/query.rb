# frozen_string_literal: true

# Represents query object. Has options for search.
# TODO: Think whether we need both `must_include` and `exact_matches` options.
#   Probably they are the same? If so, we can remove one.
#
class Query
  attr_accessor :exact_matches, :must_exclude, :should_include, :must_include

  def initialize(exact_matches: [], must_exclude: [], should_include: [], must_include: [])
    @exact_matches = exact_matches
    @must_exclude = must_exclude
    @should_include = should_include
    @must_include = must_include
  end

  def empty?
    exact_matches.empty? && must_exclude.empty? && should_include.empty? && must_include.empty?
  end
end
