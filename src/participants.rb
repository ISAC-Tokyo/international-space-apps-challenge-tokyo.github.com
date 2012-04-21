#!/usr/bin/env ruby
require 'rubygems'
require 'nokogiri'
require 'open-uri'


url = 'http://spaceappschallenge.org/location/university-of-tokyo'
doc = Nokogiri::HTML(open(url))

names = []
doc.xpath('//img').each do |img|
	img.attributes.each do |attr|
		if attr[0] == 'alt' then
			names << attr[1].value
		end
	end
end

puts names.sort


