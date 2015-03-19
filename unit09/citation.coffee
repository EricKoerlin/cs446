#This is a simple program that writes IEEE citations for websites

#keeps track of how many citations we have
citNum = 0

#our citation class with a default for the citation number
class citation
	#basic constructor
	constructor: (@author, @date, @title, @url, @number = citNum) ->
		citNum += 1
		
	#function to create the citation
	create: ->
		"#{@author}. (#{@date}). #{@title} [online]. Available: http://www.#{@url}"
	
#creating a basic citation (this would be gathered from an HTML form
cit = new citation("James", "Jan 6, 1411", "Some Work", "test.com")

#calling the create function, and writing it to the HTML doc
document.writeln cit.create()

#Another citation created here
cit2 = new citation("Steve", "Jan 13, 1911", "Some New Work", "testing.com")


document.writeln cit2.create()