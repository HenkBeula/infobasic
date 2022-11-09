PROGRAM Prog
  name="Henk Beula"
  company="CPC"
  address = "Matola-rio \ Mozal \ Djuba \ 123"

  CRT name
  CRT company
  CRT address

  CRT "My name is:": name :"i work for": UPCASE(company)
  CRT "I live on": address

  street = address [12, 17]
  houseNumb = address [29, 32]

  CRT "Street ": street
  CRT "houseNumb ": houseNumb
  CRT "My first name is: ":
  
END