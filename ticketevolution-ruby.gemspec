# -*- encoding: utf-8 -*-
require File.join(File.dirname(File.expand_path(__FILE__)), 'lib', 'ticket_evolution', 'version.rb')

Gem::Specification.new do |s|
  s.name        = 'ticketevolution-ruby'
  s.version     = TicketEvolution::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['David Malin', 'Ticket Evolution']
  s.email       = ['dev@ticketevolution.com']
  s.homepage    = 'http://api.ticketevolution.com'
  s.summary     = 'Integration gem for Ticket Evolution\'s api'
  s.description = ''

  s.required_rubygems_version = '>= 1.3.5'

  s.add_dependency 'activesupport'
  s.add_dependency 'i18n'
  s.add_dependency 'curb'
  s.add_dependency 'yajl-ruby'
  s.add_dependency 'multi_json'

  s.files        = `git ls-files`.split('\n')
  s.executables  = `git ls-files`.split('\n').map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
