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

{ #category : #initialization }
Counter class >> startingAt: anInteger [
	"comment stating purpose of class-side method"
	"scope: class-variables  &  class-instance-variables"	
			
	^ self new count: anInteger.
]

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

{ #category : #accessing }
Counter >> decrement [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
	count := count - 1
]

{ #category : #accessing }
Counter >> increment [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
	count := count +1
]

{ #category : #initialization }
Counter >> initialize [
	"set the initial value of the value to 0"
	count:=0.
]

{ #category : #printing }
Counter >> printOn: aStream [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	super printOn: aStream.
	aStream nextPutAll: ' with value: ', count printString.
]
