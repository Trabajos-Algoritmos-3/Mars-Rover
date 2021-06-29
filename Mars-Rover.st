!classDefinition: #MarsRoverTests category: 'Mars-Rover'!
TestCase subclass: #MarsRoverTests
	instanceVariableNames: 'E N S W'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mars-Rover'!

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 19:38:09'!
setUp
	N _ North new.
	S _ South new.
	E _ East new.
	W _ West new.! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 19:51:48'!
test01WithoutCommandsDoesNotMove
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: N.
	
	marsRover moveTo: ' '.
	
	self assert: marsRover isAt equals: 5@5.
	self assert: marsRover pointsTo equals: 0@1.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 19:39:04'!
test02MoveForwardPointingNorth
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: N.
	
	marsRover moveTo: 'f'.
	
	self assert: marsRover isAt equals: 5@6.
	self assert: marsRover pointsTo equals: 0@1.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 19:39:08'!
test03MoveBackwardPointingNorth
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: N.
	
	marsRover moveTo: 'b'.
	
	self assert: marsRover isAt equals: 5@4.
	self assert: marsRover pointsTo equals: 0@1.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 19:39:12'!
test04MoveForwardPointingSouth
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: S.
	
	marsRover moveTo: 'f'.
	
	self assert: marsRover isAt equals: 5@4.
	self assert: marsRover pointsTo equals: 0@-1.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 19:39:16'!
test05MoveBarckwardPointingSouth
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: S.
	
	marsRover moveTo: 'b'.
	
	self assert: marsRover isAt equals: 5@6.
	self assert: marsRover pointsTo equals: 0@-1.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 19:39:20'!
test06MoveForwardPointingEast
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: E.
	
	marsRover moveTo: 'f'.
	
	self assert: marsRover isAt equals: 6@5.
	self assert: marsRover pointsTo equals: 1@0.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 19:39:24'!
test07MoveBackwardPointingEast
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: E.
	
	marsRover moveTo: 'b'.
	
	self assert: marsRover isAt equals: 4@5.
	self assert: marsRover pointsTo equals: 1@0.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 19:39:33'!
test08MoveForwardPointingWest
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: W.
	
	marsRover moveTo: 'f'.
	
	self assert: marsRover isAt equals: 4@5.
	self assert: marsRover pointsTo equals: -1@0.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 19:39:41'!
test09MoveBackwardPointingWest
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: W.
	
	marsRover moveTo: 'b'.
	
	self assert: marsRover isAt equals: 6@5.
	self assert: marsRover pointsTo equals: -1@0.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 19:51:29'!
test10PointingNorthRotateRight
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: N.
	
	marsRover moveTo: 'r'.
	
	self assert: marsRover pointsTo equals: 1@0.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 19:49:59'!
test11PointingNorthRotateLeft
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: N.
	
	marsRover moveTo: 'l'.
	
	self assert: marsRover pointsTo equals: -1@0.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 19:50:07'!
test12PointingSouthRotateRight
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: S.
	
	marsRover moveTo: 'r'.
	
	self assert: marsRover pointsTo equals: -1@0.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 19:50:12'!
test13PointingSouthRotateLeft
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: S.
	
	marsRover moveTo: 'l'.
	
	self assert: marsRover pointsTo equals: 1@0.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 19:50:17'!
test14PointingEastRotateRight
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: E.
	
	marsRover moveTo: 'r'.
	
	self assert: marsRover pointsTo equals: 0@-1.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 19:50:39'!
test15PointingEastRotateLeft
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: E.
	
	marsRover moveTo: 'l'.
	
	self assert: marsRover pointsTo equals: 0@1.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 19:50:43'!
test16PointingWestRotateRight
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: W.
	
	marsRover moveTo: 'r'.
	
	self assert: marsRover pointsTo equals: 0@1.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 19:50:47'!
test17PointingWestRotateLeft
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: W.
	
	marsRover moveTo: 'l'.
	
	self assert: marsRover pointsTo equals: 0@-1.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 19:50:58'!
test18MoveInDifferentDirections
	|marsRover|
	
	marsRover _ MarsRover createAt: 0@0 pointingTo: N.
	
	marsRover moveTo: 'ffrblfb'.
	
	self assert: marsRover isAt equals: -1@2.
	self assert: marsRover pointsTo equals: 0@1.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 6/29/2021 19:40:26'!
test19OnCommandFailureStopsMoving
	|marsRover|
	
	marsRover _ MarsRover createAt: 0@0 pointingTo: N.
	
	marsRover moveTo: 'ffybfff'.
	
	self assert: marsRover isAt equals: 0@2.
	self assert: marsRover pointsTo equals: 0@1.
	
	
	
	! !


!classDefinition: #CardinalDirection category: 'Mars-Rover'!
Object subclass: #CardinalDirection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mars-Rover'!


!classDefinition: #East category: 'Mars-Rover'!
CardinalDirection subclass: #East
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mars-Rover'!

!East methodsFor: 'private' stamp: 'fran 6/29/2021 19:36:24'!
cardinalDirection
	^  1@0! !


!classDefinition: #North category: 'Mars-Rover'!
CardinalDirection subclass: #North
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mars-Rover'!

!North methodsFor: 'private' stamp: 'fran 6/29/2021 19:36:00'!
cardinalDirection
	^  0@1! !


!classDefinition: #South category: 'Mars-Rover'!
CardinalDirection subclass: #South
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mars-Rover'!

!South methodsFor: 'private' stamp: 'fran 6/29/2021 19:36:42'!
cardinalDirection
	^  0@-1! !


!classDefinition: #West category: 'Mars-Rover'!
CardinalDirection subclass: #West
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mars-Rover'!

!West methodsFor: 'private' stamp: 'fran 6/29/2021 19:36:50'!
cardinalDirection
	^  -1@0! !


!classDefinition: #MarsRover category: 'Mars-Rover'!
Object subclass: #MarsRover
	instanceVariableNames: 'currentPosition currentCardinalDirection'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mars-Rover'!

!MarsRover methodsFor: 'movement' stamp: 'fran 6/29/2021 19:49:38'!
moveTo: aCommandString
	|command|

	1 to: aCommandString size do: [ :atIndex | 
			command := (aCommandString at: atIndex) asString.
			(command = 'f') ifTrue: [currentPosition := currentPosition + currentCardinalDirection ].
			(command = 'b') ifTrue: [currentPosition := currentPosition - currentCardinalDirection ].
			(command = 'l') ifTrue: [currentCardinalDirection := (currentCardinalDirection rotatedBy: (Float pi / 2)) truncated ].	
			(command = 'r') ifTrue: [currentCardinalDirection := (currentCardinalDirection rotatedBy: (3 * Float pi / 2)) truncated ].	
			(command = 'f' or: command = 'l' or: command = 'b' or: command = 'r') ifFalse: [^ nil].
	]! !


!MarsRover methodsFor: 'position' stamp: 'fran 6/28/2021 23:21:03'!
isAt
	^ currentPosition.! !

!MarsRover methodsFor: 'position' stamp: 'fran 6/29/2021 18:20:40'!
pointsTo
	^ currentCardinalDirection.! !


!MarsRover methodsFor: 'initialization' stamp: 'fran 6/29/2021 19:37:26'!
initializeWith: aPosition pointingTo: aCardinalDirection
	currentPosition _ aPosition.
	currentCardinalDirection  _ aCardinalDirection cardinalDirection.
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MarsRover class' category: 'Mars-Rover'!
MarsRover class
	instanceVariableNames: ''!

!MarsRover class methodsFor: 'as yet unclassified' stamp: 'fran 6/28/2021 23:11:46'!
createAt: aPosition pointingTo: aCardinalPoint
	^ self new initializeWith: aPosition pointingTo: aCardinalPoint.! !
