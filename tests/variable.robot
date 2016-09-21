*** Variables ***
${var}	      Val
&{dict_var}   Val
@{list_var}   Val

${var with space}  Val

*** Test Cases ***
It Tokenizes Only Variable
   ${n}=     Convert To Integer		${n}