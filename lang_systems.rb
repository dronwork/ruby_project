# Ruby 2.5
require 'erb'
require 'ostruct'

namespace = OpenStruct.new(a: 2, b: 3)
template = 'Result: <%= a * b %>'
ERB.new(template).result(namespace.instance_eval { binding })