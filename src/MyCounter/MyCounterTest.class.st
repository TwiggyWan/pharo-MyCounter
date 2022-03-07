Class {
	#name : #MyCounterTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #tests }
MyCounterTest >> testCountIsSetAndRead [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	| c |
	c := Counter new.
	c count: 7.
	self assert: c count equals: 7
]

{ #category : #tests }
MyCounterTest >> testCounterStartingAt6 [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	self assert: (Counter startingAt: 6) count equals: 6
]

{ #category : #tests }
MyCounterTest >> testCounterWellInitialized [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	self
		assert: (Counter new
				 increment;
				 increment;
				 count)
		equals: 2
]

{ #category : #tests }
MyCounterTest >> testDecrement [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	| c |
	c := Counter new.
	c
		count: 0;
		decrement.
	self assert: c count equals: -1
]

{ #category : #tests }
MyCounterTest >> testIncrement [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	| c |
	c := Counter new.
	c
		count: 0;
		increment.
	self assert: c count equals: 1
]

{ #category : #tests }
MyCounterTest >> testInitialize [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	| c |
	c := Counter new.

	self assert: c count equals: 0
]
