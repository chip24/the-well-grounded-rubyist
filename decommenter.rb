module DeCommenter
    def self.decomment(infile, outfile, comment_re = /\A\s*#/)
        infile.each do |inline|
            outfile.print inline unless inline =~ comment_re
        end
    end
end

File.open("class_variables.rb") do |inf|
    File.open("class_variables.rb.out", "w") do |outf|
        DeCommenter.decomment(inf, outf)
    end
end