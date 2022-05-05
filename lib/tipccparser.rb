# frozen_string_literal: true

require_relative "tipccparser/version"
require 'json'

module Tipccparser
  class Error < StandardError; end
  def parse()
    namea = self.split(' ')
    senderID1 = namea[1].sub "<@", ""
    senderID = senderID1.sub ">", ""
    receiverID1 = namea[3].sub "<@", ""
    receiverID = receiverID1.sub ">", ""
    value = namea[4]
    currency = namea[5]
    usd1 = namea[7].sub "$", ""
    usd = usd1.sub ").", ""
    all = "#{senderID} #{receiverID} #{value} #{currency} #{usd}"
    lol = all.split(" ")
  end
end

class String
  include Tipccparser
end