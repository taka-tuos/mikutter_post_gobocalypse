# -*- coding: utf-8 -*-

module Plugin::Gobocalypse
  class User < Diva::Model
    include Diva::Model::UserMixin

    register :gobocalypse_user, name: "ゴボゴボゴボ"

    field.string :username, required: true
    field.string :nodename, required: true

    def self.instance
      new(username: Etc.getlogin, **Etc.uname)
    end

    def name
      "#{username}@#{nodename}"
    end

    def icon
      Skin['list.png']
    end

  end
end
