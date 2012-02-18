module CoopCli
  require 'httparty'
  require 'json'
  
  VERSION = '0.0.1'

  class Coop
    include HTTParty

    def initialize(base_uri)
      self.class.base_uri base_uri
    end

    def basic_auth(user,pass)
      self.class.basic_auth user, pass
    end

    def user_agent
      "coop_cli (v: #{CoopCli::VERSION})"
    end

    def post_as_user(path,message)
      self.class.post(path, :query => { :status => message }, :headers => { "User-Agent" => self.user_agent })
    end

    def post_as_cobot(path,message,cobotkey)
      self.class.post(path, :query => { :status => message, :key => cobotkey }, :headers => { "User-Agent" => self.user_agent, "Accept"        => "application/json",
        "Content-Type"  => "application/json; charset=utf-8" })
    end

  end

end
