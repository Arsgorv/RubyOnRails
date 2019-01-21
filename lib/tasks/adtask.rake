# namespace :counter do
#  desc 'Hello, World!'
#  task hello_world: :environment do
#   puts 'Hello, guys!'
#  end

#  desc 'Count Ruby files'
#  task cnt_rb_f: :environment do
    # check: find . -name *.rb |wc -l
#    puts Dir['**/*'].select{|f| File.extname(f) == '.rb'}.length
#  end

#  desc 'Count lines in Ruby files'
#  task cnt_rb_l: :environment do
    # check: find . -name *.rb | xargs cat | wc -l
#    cnt = 0
#    puts Dir['**/*'].select{|f| File.extname(f) == '.rb'}.length
#                    .each { |fn| f = File.open(fn, "r");
#                                 f.each(|l| cnt= cnt + 1)}
#    puts cnt
#  end
#end

#Посмотри эти задачи, когда изучишь Ruby