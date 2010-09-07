#!/usr/bin/env ruby

require 'rubygems'
require 'json'
require 'ricepaper'

class RIL2Instapaper
  def initialize(ril_file, user, password)
    File
    
    @ril_data = JSON.load(File.open(ril_file))
    @ricepaper = RicePaper.new(user, password)
  end
  
  def run
    items = @ril_data['list'].map {|item| item[1]}
    sorted = items.sort {|a,b| a['time_added'].to_i <=> b['time_added'].to_i}
    sorted.each do |item|
      if @ricepaper.add(item['url'], item['title'])
        puts "Added: #{item['title']}"
      else
        puts "Failed: #{item['title']}"
      end
    end
  end
end

runner = RIL2Instapaper.new 'ril.json', '', ''
runner.run 