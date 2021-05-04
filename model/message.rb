# -*- coding: utf-8 -*-

module Plugin::Gobocalypse
  class Message < Diva::Model
    include Diva::Model::MessageMixin

    register :gobocalypse_message, name: "ゴボゴボボゴゴボボボ"

    field.has :user, Plugin::Gobocalypse::User, required: true
    field.string :description, required: true
    field.time :created, required: true
  end
end
