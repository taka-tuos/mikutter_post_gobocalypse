# -*- coding: utf-8 -*-
require_relative 'model/user'
require_relative 'model/message'

Plugin.create(:gobocalypse) do
  tab(:gobocalypse_timeline, "ゴボボゴゴゴゴボ") do
    timeline :gobocalypse_timeline
  end
  
  subscribe(:extract_receive_message, :mastodon_appear_toots).each do |message|
    timeline(:gobocalypse_timeline) << "あ" # これがあると死ぬ
  end
  
  def gobogobonize(input)
    resp = input.each_codepoint.to_a.map.with_index {|c, i| (c + i).even? ? 'ゴ' : 'ボ' }.join + 'ボ'
    resp = 'ゴ' + resp if resp.start_with?('ボ')
    resp
  end
end

