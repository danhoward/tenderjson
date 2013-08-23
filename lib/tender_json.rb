require './lib/tender_json/parser'
require './lib/tender_json/tokenizer'
require 'stringio'

module TENDERJSON

	def self.load(json)
		input		= StringIO.new json
		tok 		= TENDERJSON::Tokenizer.new input
		parser		= TENDERJSON::Parser.new tok
		handler 	= parser.parse
		handler.result
	end
end