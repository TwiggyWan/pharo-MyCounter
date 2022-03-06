"
Counter is a simple concrete class which supports incrementing and
decrementing a counter.
Its API is
- decrement, increment
- count
Its creation API is message startingAt
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter >> count [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	^count
]

{ #category : #accessing }
Counter >> count: anInteger [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
	count := anInteger 	
]
