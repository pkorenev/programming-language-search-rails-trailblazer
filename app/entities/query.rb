# frozen_string_literal: true

# Represents query object. Has options for search.
#
class Query
  attr_accessor :must_exclude, :should_include, :must_include

  def initialize(must_exclude: [], should_include: [], must_include: [])
    @must_exclude = must_exclude
    @should_include = should_include
    @must_include = must_include
  end

  def empty?
    must_exclude.empty? && should_include.empty? && must_include.empty?
  end
end
