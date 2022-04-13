{
	"contents": {
		"16ba7534-ade0-4b93-b2a1-6b721f94681e": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "test.myworkflow",
			"subject": "MyWorkflow",
			"name": "MyWorkflow",
			"documentation": "workflow modeling",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"0df848ef-23e6-43bd-9c98-11f6338b01c7": {
					"name": "Assign and Approve Order"
				},
				"0e5162f8-d45c-4a05-b7fc-3a37239bdf77": {
					"name": "Fetch the User git Details"
				},
				"86864aeb-8778-4886-aace-5a07e9081af5": {
					"name": "Set user and Order Value"
				},
				"0236d054-f5d2-4a61-980b-7a8a5c9cd354": {
					"name": "Mail notification"
				}
			},
			"sequenceFlows": {
				"da492184-7b7a-4bd6-97c3-b0d305a038b6": {
					"name": "SequenceFlow4"
				},
				"3d8f7729-0bd4-4b43-b0c5-2955217d11fe": {
					"name": "SequenceFlow5"
				},
				"18579dc1-9c1c-45a6-9644-4c9f545ace37": {
					"name": "SequenceFlow6"
				},
				"d10dca1d-5a4a-4ec4-8603-1ba466c5ebd3": {
					"name": "SequenceFlow8"
				},
				"cf53af9f-b2e2-4864-ac59-27296d76cd89": {
					"name": "SequenceFlow9"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"0df848ef-23e6-43bd-9c98-11f6338b01c7": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "dddsds",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.createdBy}",
			"formReference": "/forms/MyWorkflow/approvalFrm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalfrm"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask3",
			"name": "Assign and Approve Order"
		},
		"0e5162f8-d45c-4a05-b7fc-3a37239bdf77": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "GIT_API",
			"path": "/user",
			"httpMethod": "POST",
			"id": "servicetask1",
			"name": "Fetch the User git Details"
		},
		"86864aeb-8778-4886-aace-5a07e9081af5": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/MyWorkflow/setValue.js",
			"id": "scripttask1",
			"name": "Set user and Order Value"
		},
		"0236d054-f5d2-4a61-980b-7a8a5c9cd354": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "Mail notification",
			"mailDefinitionRef": "6e18c7e3-4c70-4169-b916-1940d99a57d7"
		},
		"da492184-7b7a-4bd6-97c3-b0d305a038b6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "0df848ef-23e6-43bd-9c98-11f6338b01c7"
		},
		"3d8f7729-0bd4-4b43-b0c5-2955217d11fe": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "0df848ef-23e6-43bd-9c98-11f6338b01c7",
			"targetRef": "0e5162f8-d45c-4a05-b7fc-3a37239bdf77"
		},
		"18579dc1-9c1c-45a6-9644-4c9f545ace37": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "0e5162f8-d45c-4a05-b7fc-3a37239bdf77",
			"targetRef": "86864aeb-8778-4886-aace-5a07e9081af5"
		},
		"d10dca1d-5a4a-4ec4-8603-1ba466c5ebd3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "0236d054-f5d2-4a61-980b-7a8a5c9cd354",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"cf53af9f-b2e2-4864-ac59-27296d76cd89": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "86864aeb-8778-4886-aace-5a07e9081af5",
			"targetRef": "0236d054-f5d2-4a61-980b-7a8a5c9cd354"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"04a60ce1-6af7-49f7-942a-b6c072c59d7d": {},
				"f7a8de7e-2779-4d08-a767-5fcae7b02c10": {},
				"e8a46937-5094-48ba-8aa8-02421ec28f5e": {},
				"1732794d-be3f-4342-862c-fb6726282137": {},
				"41b9c4d6-ed25-4b35-ab9b-39258a0f3c1e": {},
				"5b358824-8aad-4f49-9299-5686514b7f6e": {},
				"b7d4407e-9288-4fef-8a30-fe71a06a4c81": {},
				"9b80da68-9364-4fe0-a65c-ae0ba4160e7b": {},
				"9230a4bf-c163-4243-bb7b-b9cf98bbeaab": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 43,
			"y": 113,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 797,
			"y": 113,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"04a60ce1-6af7-49f7-942a-b6c072c59d7d": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 145,
			"y": 100,
			"width": 100,
			"height": 60,
			"object": "0df848ef-23e6-43bd-9c98-11f6338b01c7"
		},
		"f7a8de7e-2779-4d08-a767-5fcae7b02c10": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "59,126.5 165,126.5",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "04a60ce1-6af7-49f7-942a-b6c072c59d7d",
			"object": "da492184-7b7a-4bd6-97c3-b0d305a038b6"
		},
		"e8a46937-5094-48ba-8aa8-02421ec28f5e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 317,
			"y": 100,
			"width": 100,
			"height": 60,
			"object": "0e5162f8-d45c-4a05-b7fc-3a37239bdf77"
		},
		"1732794d-be3f-4342-862c-fb6726282137": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "195,130 367,130",
			"sourceSymbol": "04a60ce1-6af7-49f7-942a-b6c072c59d7d",
			"targetSymbol": "e8a46937-5094-48ba-8aa8-02421ec28f5e",
			"object": "3d8f7729-0bd4-4b43-b0c5-2955217d11fe"
		},
		"41b9c4d6-ed25-4b35-ab9b-39258a0f3c1e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 467,
			"y": 100,
			"width": 100,
			"height": 60,
			"object": "86864aeb-8778-4886-aace-5a07e9081af5"
		},
		"5b358824-8aad-4f49-9299-5686514b7f6e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "367,130 517,130",
			"sourceSymbol": "e8a46937-5094-48ba-8aa8-02421ec28f5e",
			"targetSymbol": "41b9c4d6-ed25-4b35-ab9b-39258a0f3c1e",
			"object": "18579dc1-9c1c-45a6-9644-4c9f545ace37"
		},
		"b7d4407e-9288-4fef-8a30-fe71a06a4c81": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 632.25,
			"y": 100.25,
			"width": 100,
			"height": 60,
			"object": "0236d054-f5d2-4a61-980b-7a8a5c9cd354"
		},
		"9b80da68-9364-4fe0-a65c-ae0ba4160e7b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "682.25,130.375 814.5,130.375",
			"sourceSymbol": "b7d4407e-9288-4fef-8a30-fe71a06a4c81",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "d10dca1d-5a4a-4ec4-8603-1ba466c5ebd3"
		},
		"9230a4bf-c163-4243-bb7b-b9cf98bbeaab": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "517,130 647,130",
			"sourceSymbol": "41b9c4d6-ed25-4b35-ab9b-39258a0f3c1e",
			"targetSymbol": "b7d4407e-9288-4fef-8a30-fe71a06a4c81",
			"object": "cf53af9f-b2e2-4864-ac59-27296d76cd89"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 1,
			"sequenceflow": 9,
			"startevent": 1,
			"endevent": 1,
			"usertask": 3,
			"servicetask": 1,
			"scripttask": 1,
			"mailtask": 1
		},
		"6e18c7e3-4c70-4169-b916-1940d99a57d7": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "dasd",
			"subject": "dasfd",
			"text": " cddacd",
			"id": "maildefinition1"
		}
	}
}