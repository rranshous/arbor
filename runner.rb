
# run the story.
# assumes each file to be included starts w/ a float (or int)
# we will then require them in that order

to_skip = ['runner.rb']

Dir["*.rb"].sort do |a, b|
  a = a.split('_')[0].to_f
  b = b.split('_')[0].to_f
  a <=> b
end.each do |file|
  next if to_skip.include? file
  puts "reading #{file}"
  require "./#{file}"
end
