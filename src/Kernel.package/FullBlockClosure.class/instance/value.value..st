evaluating
value: firstArg value: secondArg
	"Activate the receiver, creating a closure activation (MethodContext)
	 whose closure is the receiver and whose caller is the sender of this
	 message. Supply the arguments and copied values to the activation
	 as its arguments and copied temps. Primitive. Essential."
	<primitive: 207>
	| newContext |
	numArgs ~= 2 ifTrue:
		[self numArgsError: 2].
	false
		ifTrue: "Old code to simulate the closure value primitive on VMs that lack it."
			[newContext := self asContextWithSender: thisContext sender.
			newContext at: 1 put: firstArg.
			newContext at: 2 put: secondArg.
			thisContext privSender: newContext]
		ifFalse: [self primitiveFailed]