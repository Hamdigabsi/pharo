comparing
= anObject 
	self == anObject ifTrue: [^true].
	self class = anObject class ifFalse: [^false].
	self body = anObject body ifFalse: [^false].
	self arguments size = anObject arguments size ifFalse: [^false].
	self arguments with: anObject arguments do: [:first :second | first = second ifFalse: [^false]].
	^true