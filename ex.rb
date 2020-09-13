REGEX= /^\d{2,3}\/\d{3,4}/#comece com um numero e tenha no começo pelo menos 2 no max 3 numeros. / e tenha depois da barra pelo menos 3 numeros para evitar dar match com a data

# if "18/" =~ REGEX
#     puts "true"
# end

File.open("./engsoft.txt") do |file|
    file.each_line do |line|
        s= line
        if ! line.valid_encoding?
            s = line.encode("UTF-16be", :invalid=>:replace, :replace=>"?").encode('UTF-8')
            
    
          end
        array = s.split(" ")
        test = array.select{|word|
            word.match(REGEX)

        }


          
        if test.size>0
            array.each do |palavra|
                print palavra
                print " "
            end
            print "\n"
        end
     
        
    end
end