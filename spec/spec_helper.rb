# frozen_string_literal: true
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'pry-byebug'
require 'rspec/json_expectations'
require 'active_support'
require 'action_mailer'
require 'gmail_markup'

ActionMailer::Base.delivery_method = :test
ActionMailer::Base.prepend_view_path File.join(File.dirname(__FILE__), 'mailers/views')
