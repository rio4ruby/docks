#!/usr/bin/env ruby

require 'json'
require 'prettyprint'

info = JSON.parse(`docker inspect skywalker`)
puts info[0]['NetworkSettings']['IPAddress']
