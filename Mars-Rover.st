!classDefinition: #MarsRoverTests category: 'Mars-Rover'!
TestCase subclass: #MarsRoverTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mars-Rover'!

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/28/2021 23:22:27'!
test01
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: #N.
	
	marsRover moveTo: ' '.
	
	self assert: marsRover isAt equals: 5@5.
	self assert: marsRover pointsTo equals: 0@1.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/28/2021 23:23:01'!
test02
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: #N.
	
	marsRover moveTo: 'f'.
	
	self assert: marsRover isAt equals: 5@6.
	self assert: marsRover pointsTo equals: 0@1.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/28/2021 23:32:36'!
test03
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: #N.
	
	marsRover moveTo: 'b'.
	
	self assert: marsRover isAt equals: 5@4.
	self assert: marsRover pointsTo equals: 0@1.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/28/2021 23:34:46'!
test04
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: #S.
	
	marsRover moveTo: 'f'.
	
	self assert: marsRover isAt equals: 5@4.
	self assert: marsRover pointsTo equals: 0@-1.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/28/2021 23:42:55'!
test05
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: #N.
	
	marsRover moveTo: 'if'.
	
	self assert: marsRover isAt equals: 4@5.
	self assert: marsRover pointsTo equals: -1@0.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 00:04:05'!
test06
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: #N.
	
	marsRover moveTo: 'd'.
	
	self assert: marsRover pointsTo equals: 1@0.
	
	
	
	! !


!classDefinition: #MarsRover category: 'Mars-Rover'!
Object subclass: #MarsRover
	instanceVariableNames: 'currentPosition currentCardinalPoint'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mars-Rover'!

!MarsRover methodsFor: 'as yet unclassified' stamp: 'fran 6/28/2021 23:47:48'!
initializeWith: aPosition pointingTo: aCardinalPoint
	currentPosition _ aPosition.
	
	(aCardinalPoint = #N) ifTrue: [currentCardinalPoint _ 0@1].
	(aCardinalPoint = #S) ifTrue: [currentCardinalPoint _ 0@-1].
	(aCardinalPoint = #E) ifTrue: [currentCardinalPoint _ 1@0].
	(aCardinalPoint = #O) ifTrue: [currentCardinalPoint _ -1@0].
	! !

!MarsRover methodsFor: 'as yet unclassified' stamp: 'fran 6/28/2021 23:21:03'!
isAt
	^ currentPosition.! !

!MarsRover methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 00:06:13'!
moveTo: aCommandString
	1 to: aCommandString size do: [ :atIndex | 
			((aCommandString at: atIndex) asString = 'f') ifTrue: [currentPosition := currentPosition + currentCardinalPoint ].
			((aCommandString at: atIndex) asString = 'b') ifTrue: [currentPosition := currentPosition - currentCardinalPoint ].
			((aCommandString at: atIndex) asString = 'i') ifTrue: [currentCardinalPoint := (currentCardinalPoint rotatedBy: (Float pi / 2)) truncated ].	
			((aCommandString at: atIndex) asString = 'd') ifTrue: [currentCardinalPoint := (currentCardinalPoint rotatedBy: (3 * Float pi / 2)) truncated ].	
	]
! !

!MarsRover methodsFor: 'as yet unclassified' stamp: 'fran 6/28/2021 23:21:17'!
pointsTo
	^ currentCardinalPoint.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MarsRover class' category: 'Mars-Rover'!
MarsRover class
	instanceVariableNames: ''!

!MarsRover class methodsFor: 'as yet unclassified' stamp: 'fran 6/28/2021 23:11:46'!
createAt: aPosition pointingTo: aCardinalPoint
	^ self new initializeWith: aPosition pointingTo: aCardinalPoint.! !
