# name: embed-etherpad-lite
# about: Embed Etherpad Lite pads using Onebox.
# version: 1.0
# authors: Bernhard Fürst
# url: https://github.com/fuerst/embed-etherpad-lite

class Onebox::Engine::EtherpadLiteOnebox
  include Onebox::Engine
  # Try to guess Etherpad Lite links like http(s)://domain.tld/p/pad-id
  matches_regexp /^https?:\/\/[^\/]+\/p\/[^\/]+/

  # See https://github.com/ether/etherpad-lite/wiki/Embed-Parameters
  def to_html
    "<iframe name='embed_readwrite' src='#{@url}?showControls=true&showChat=true&showLineNumbers=true&useMonospaceFont=false' style='border-width:0' frameborder='0' scrolling='no' width='100%' height=600></iframe><br><a href='#{@url}' target='_blank'>Goto this EtherPad</a>"
  end
end
