[Project 2: Using a Third Party API](http://www.theodinproject.com/ruby-on-rails/apis?ref=lnav)

Remember way back in the warm-up when you played with the Flickr API? Now it's time for you to actually use it. Huzzah! You'll create a simple photo widget that allows you to display photos from your Flickr feed (or someone else's). We'll rely on a tutorial for much of the heavy lifting but the principles of what you do here will be repeatable for use with other APIs.


[Fix for SSL error in windows](http://longhoang.ca/blog/resolve-the-opensslsslsslerror-omniauth-error-on-debianubuntu/)

download [ca-bundle.crt](http://curl.haxx.se/ca/ca-bundle.crt) in the lib/ directory

create fix_ssl.rb in app/config/initializers/

#app/config/initializers/fix_ssl.rb
require 'open-uri'
require 'net/https'

module Net
  class HTTP
    alias_method :original_use_ssl=, :use_ssl=
    
    def use_ssl=(flag)
      self.ca_file = 'lib/ca-bundle.crt'.to_s
      self.verify_mode = OpenSSL::SSL::VERIFY_PEER
      self.original_use_ssl = flag
    end
  end
end

restart rails server
