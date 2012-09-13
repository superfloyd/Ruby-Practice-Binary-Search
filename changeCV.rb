module ChangeDoc
 require 'win32ole' 
   def self.changeLetter(filename, newCompanyName)
    word = WIN32OLE.new('Word.Application')
    doc = word.Documents.Open(filename)
    {
      'company' => newName
    }.each do |key, value|     
    
    word.Selection.HomeKey(unit=6)
    find = word.Selection.Find
    find.Text = "[#{key}]"
    
    while word.Selection.Find.Execute
          word.Selection.TypeText(text=value)
    end
   
      doc.SaveAs(filename)
      doc.Close

    end
 end
end 

file = ARGV[0]
replace = ARGV[1]
ChangeDoc.changeLetter(file, replace) 
