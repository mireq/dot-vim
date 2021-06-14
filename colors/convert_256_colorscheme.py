import sys
import re

def convertToColor(code):
	q1 = ['00', '5f', '87', 'af', 'd7', 'ff']
	q2 = ['08', '12', '1c', '26', '30', '3a', '44', '4e', '58', '62', '6c', '76', '80', '8a', '94', '9e', 'a8', 'b2', 'bc', 'c6', 'd0', 'da', 'e4', 'ee']
	syscolors = ['000000', 'cd0000', '00cd00', 'cdcd00', '0000ee', 'cd00cd', '00cdcd', 'e5e5e5', '7f7f7f', 'ff0000', '00ff00', 'ffff00', '5c5cff', 'ff00ff', '00ffff', 'ffffff']
	out = ""
	if code >= 0 and code <= 15:
		out = syscolors[code]
	elif code >= 16 and code <= 231:
		code = code - 16
		for i in range(3):
			pom = code % 6
			out = q1[pom] + out
			code = (code - pom) / 6
	elif code >= 232:
		for i in range(3):
			out = out + q2[code - 232]
	return '#' + out

class Attribute:
	def __init__(self, name, value):
		self.__valWidth = -1
		self.__name = name
		self.__value = value

	def setValWidth(self, width):
		self.__valWidth = width

	def toString(self):
		width = ''
		if self.__valWidth >= 0:
			width = ':' + str(self.__valWidth)
		return ("{0}={1" + width + "}").format(self.__name, self.__value)

class TextLine:
	__stdAttributes = ['ctermfg', 'ctermbg', 'guifg', 'guibg']
	__convert = {'ctermfg': 'guifg', 'ctermbg': 'guibg'}

	def __init__(self, text):
		self.__nameWidth = -1
		self.__text = text
		self.__name = ""
		self.__attributes = None
		m = re.search("^hi[ ]+([^ ]+)[ ]+(.+)$", text)
		if m:
			self.__name = m.group(1)
			self.__attributes = self.getAttributes(m.group(2))
	
	def setNameWidth(self, width):
		self.__nameWidth = width

	def getAttributes(self, attrString):
		attributes = {}
		attrString = attrString.strip();
		attrArr = attrString.split(" ")
		for attr in attrArr:
			m = re.search("^[ ]*([^ =]+)=([^ =]+)[ ]*$", attr)
			if m:
				name = m.group(1)
				val  = m.group(2)
				attributes[name] = Attribute(name, val)
				if name in self.__convert.keys():
					try:
						val = int(val)
						if val >= 0 and val <= 255:
							newVal = convertToColor(val)
							newName = self.__convert[name]
							attributes[newName] = Attribute(newName, newVal)
					except:
						sys.stderr.write("Nepodarilo sa konvertovat '" + val + "' na cislo.")
						pass
		return attributes

	def getLine(self):
		if self.__attributes is None:
			return self.__text
		else:
			width = ''
			if self.__nameWidth >= 0:
				width = ':' + str(self.__nameWidth)

			line = []
			for key in self.__stdAttributes:
				try:
					self.__attributes[key].setValWidth(3)
					line.append("{0:13}".format(self.__attributes[key].toString()))
				except KeyError:
					pass

			for key in self.__attributes.keys():
				if key in self.__stdAttributes:
					continue
				line.append(self.__attributes[key].toString())
			#line = "hi " + self.__name + " " + " ".join(line)
			#line = ("{0" + width + "}").format(self.__name)
			line = "hi " + ("{0" + width + "}").format(self.__name) + " " + " ".join(line)
			return line

def printHelp():
	print("Spravne pouzitie:\n" + sys.argv[0] + " subor")

def main():
	if len(sys.argv) != 2:
		printHelp()
	filename = sys.argv[1];
	try:
		f = open(filename)
		for line in f:
			line = line.replace("\n", "")
			l = TextLine(line)
			l.setNameWidth(15)
			print(l.getLine())
		f.close()
	except IOError as e:
		print("Chyba pri citani")
		return

if __name__ == "__main__":
	main()
