Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'tests' }
CounterTest >> testCounterIsOk [

	| c | 
	c:= Counter new count: 1. 
	self assert: c count equals: 1
]

{ #category : 'tests' }
CounterTest >> testDecrement [

	| c |
	c := Counter new count: 28.
	c decrement.
	self assert: c count equals: 27 
]

{ #category : 'tests' }
CounterTest >> testIncrement [

	| c |
	c := Counter new count: 28.
	c increment.
	self assert: c count equals: 29 
]

{ #category : 'tests' }
CounterTest >> testInitialize [

	self assert: Counter new count equals: 0 
]

{ #category : 'tests' }
CounterTest >> testStartingAt [ 

	| c | 
	c := Counter startingAt: 20. 
	self assert: c count equals: 20
]
