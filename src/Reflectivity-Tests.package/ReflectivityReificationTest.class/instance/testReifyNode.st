tests - allnodes
testReifyNode
	| varNode instance |
	varNode := (ReflectivityExamples>>#exampleIvarRead) ast body statements last value.
	link := MetaLink new 
		metaObject: self; 
		selector: #tagExec:;
		arguments: #(node).
	varNode link: link.
	self assert: varNode hasMetalink.
	self assert: (tag isNil).
	instance := ReflectivityExamples new .
	self assert: (instance exampleIvarRead = 33).
	self assert: (tag = varNode).

