import PyPDF2

# creating a pdf file object
pdfFileObj = open('ananda408_1.pdf', 'rb')

# creating a pdf reader object
pdfReader = PyPDF2.PdfFileReader(pdfFileObj)

# printing number of pages in pdf file
print(pdfReader.numPages)

# creating a page object
pageObj = pdfReader.getPage(0)

# extracting text from that page
print(pageObj.extractText())

# closing the pdf file object
pdfFileObj.close()

## Logic need to apply for subject aligned with Marks


