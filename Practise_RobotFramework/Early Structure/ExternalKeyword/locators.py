import json
import jsonpath

def read_value_from_jasonfile(locatorname):
    objFile = open("C:/Users/rchethana/Documents/Practise_RobotFramework/JsonFiles/Element.json","r")
    response = json.loads(objFile.read())
    value = jsonpath.jsonpath(response,locatorname)
    return value[0]
#
# print("MyValue = "+ read_value_from_jasonfile('NewAccount.FirstName_TextBox'))
# print("MyValue = "+ read_value_from_jasonfile('NewAccount.LastName_TextBox'))
# print("MyValue = "+ read_value_from_jasonfile('NewAccount.Mobile_Email_TextBox'))
# print("MyValue = "+ read_value_from_jasonfile('NewAccount.Password_TextBox'))