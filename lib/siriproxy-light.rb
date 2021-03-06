# -*- encoding: utf-8 -*-
require 'httparty'
require 'json'

class SiriProxy::Plugin::Light < SiriProxy::Plugin
  def initialize(config = {})
    @config = config 
  end

  listen_for /(allume|éteins) la lampe (\w+)/i do |action, color|
    case action
    when "allume"
      result = "allumé"
      state = "on"
    when "éteins"
      result = "éteins"
      state = "off"
    end 
    
    case color
    when "jaune"
      led = "yellow"
    when "rouge"
      led = "red"
    end
    
    Thread.new {
      page = HTTParty.get("http://rpi.home:1313/push?led=#{led}&state=#{state}").body rescue nil
      say "J'ai #{result} la lampe #{color}"
      request_completed
    }
  end
  
end