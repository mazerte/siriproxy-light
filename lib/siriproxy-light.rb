class SiriProxy::Plugin::Light < SiriProxy::Plugin
  def initialize(config = {})
    @config = config 
  end

  listen_for /(allume|éteins) la lampe (.+)/i do |action, color|
    case action
    when "allume"
      result = "allumé"
    when "éteins"
      result = "éteins"
    end 
    say "J'ai #{result} la lampe #{color}"
  end
  
end