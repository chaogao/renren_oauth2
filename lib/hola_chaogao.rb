class Hola
	def self.say(language = :english)
		translator = Translator.new(language)
		translator.say
	end
end

require "hola/translator"