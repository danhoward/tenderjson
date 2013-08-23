

rule '.rb' => '.y' do |t|
	sh "racc -1 -o #{t.name} #{t.source}"
end

task compile: 'lib/tender_json/parser.rb'

task test: :compile