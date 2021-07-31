#######yan_entity_linking_example.py########

import yan_entity_linking

o = yan_entity_linking.entity_linking("I study at Heriot-Watt University Dubai, but I live at Abu Dhabi. I want to work at Apple. I was born in China, 1997")

for e in o:
	print(e)

'''
{'entity_wikipage_id': '3956428', 'sentence': 'I live at Abu Dhabi but study in Heriot-Watt University Dubai.', 'mention': 'heriot watt university dubai'}
{'entity_wikipage_id': '18950756', 'sentence': 'I live at Abu Dhabi but study in Heriot-Watt University Dubai.', 'mention': 'abu dhabi'}
''' 
#######yan_entity_linking_example.py########