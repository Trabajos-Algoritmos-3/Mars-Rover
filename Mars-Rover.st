!classDefinition: #MarsRoverTests category: 'Mars-Rover'!
TestCase subclass: #MarsRoverTests
	instanceVariableNames: 'E N S W'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mars-Rover'!

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 17:43:30'!
setUp
	N _ North new.
	S _ South new.
	E _ East new.
	W _ West new.! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 18:12:31'!
test01WithoutCommandsDoesNotMove
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: N.
	
	marsRover moveTo: ''.
	
	self assert: marsRover isAt equals: 5@5.
	self assert: marsRover pointsTo equals: N cardinalDirection.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 18:12:47'!
test02MoveForwardPointingNorth
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: N.
	
	marsRover moveTo: 'f'.
	
	self assert: marsRover isAt equals: 5@6.
	self assert: marsRover pointsTo equals: N cardinalDirection.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 18:12:53'!
test03MoveBackwardPointingNorth
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: N.
	
	marsRover moveTo: 'b'.
	
	self assert: marsRover isAt equals: 5@4.
	self assert: marsRover pointsTo equals: N cardinalDirection.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 18:13:12'!
test04MoveForwardPointingSouth
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: S.
	
	marsRover moveTo: 'f'.
	
	self assert: marsRover isAt equals: 5@4.
	self assert: marsRover pointsTo equals: S cardinalDirection.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 18:13:24'!
test05MoveBarckwardPointingSouth
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: S.
	
	marsRover moveTo: 'b'.
	
	self assert: marsRover isAt equals: 5@6.
	self assert: marsRover pointsTo equals: S cardinalDirection.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 18:13:39'!
test06MoveForwardPointingEast
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: E.
	
	marsRover moveTo: 'f'.
	
	self assert: marsRover isAt equals: 6@5.
	self assert: marsRover pointsTo equals: E cardinalDirection.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 18:13:49'!
test07MoveBackwardPointingEast
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: E.
	
	marsRover moveTo: 'b'.
	
	self assert: marsRover isAt equals: 4@5.
	self assert: marsRover pointsTo equals: E cardinalDirection.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 18:13:58'!
test08MoveForwardPointingWest
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: W.
	
	marsRover moveTo: 'f'.
	
	self assert: marsRover isAt equals: 4@5.
	self assert: marsRover pointsTo equals: W cardinalDirection.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 18:14:06'!
test09MoveBackwardPointingWest
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: W.
	
	marsRover moveTo: 'b'.
	
	self assert: marsRover isAt equals: 6@5.
	self assert: marsRover pointsTo equals: W cardinalDirection.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 18:14:22'!
test10PointingNorthRotateRight
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: N.
	
	marsRover moveTo: 'r'.
	
	self assert: marsRover pointsTo equals: E cardinalDirection.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 18:14:32'!
test11PointingNorthRotateLeft
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: N.
	
	marsRover moveTo: 'l'.
	
	self assert: marsRover pointsTo equals: W cardinalDirection.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 18:14:43'!
test12PointingSouthRotateRight
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: S.
	
	marsRover moveTo: 'r'.
	
	self assert: marsRover pointsTo equals: W cardinalDirection.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 18:14:54'!
test13PointingSouthRotateLeft
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: S.
	
	marsRover moveTo: 'l'.
	
	self assert: marsRover pointsTo equals: E cardinalDirection.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 18:15:04'!
test14PointingEastRotateRight
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: E.
	
	marsRover moveTo: 'r'.
	
	self assert: marsRover pointsTo equals: S cardinalDirection.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 18:15:17'!
test15PointingEastRotateLeft
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: E.
	
	marsRover moveTo: 'l'.
	
	self assert: marsRover pointsTo equals: N cardinalDirection.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 18:15:39'!
test16PointingWestRotateRight
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: W.
	
	marsRover moveTo: 'r'.
	
	self assert: marsRover pointsTo equals: N cardinalDirection.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 18:15:50'!
test17PointingWestRotateLeft
	|marsRover|
	
	marsRover _ MarsRover createAt: 5@5 pointingTo: W.
	
	marsRover moveTo: 'l'.
	
	self assert: marsRover pointsTo equals: S cardinalDirection.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 18:16:03'!
test18MoveInDifferentDirections
	|marsRover|
	
	marsRover _ MarsRover createAt: 0@0 pointingTo: N.
	
	marsRover moveTo: 'ffrblfb'.
	
	self assert: marsRover isAt equals: -1@2.
	self assert: marsRover pointsTo equals: N cardinalDirection.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 18:16:18'!
test19OnCommandFailureStopsMoving
	|marsRover|
	
	marsRover _ MarsRover createAt: 0@0 pointingTo: N.
	
	self
		should: [ marsRover moveTo: 'ffybfff' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = MarsRover notValidMovementException ].
	
	self assert: marsRover isAt equals: 0@2.
	self assert: marsRover pointsTo equals: N cardinalDirection.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 18:16:33'!
test20WithUpperCaseCommandDoesNotMove
	|marsRover|
	
	marsRover _ MarsRover createAt: 0@0 pointingTo: N.
	
	self
		should: [ marsRover moveTo: 'FBF' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = MarsRover notValidMovementException ].
	
	self assert: marsRover isAt equals: 0@0.
	self assert: marsRover pointsTo equals: N cardinalDirection.
	
	
	
	! !

!MarsRoverTests methodsFor: 'as yet unclassified' stamp: 'fran 7/1/2021 18:16:40'!
test21WithNumericCommandDoesNotMove
	|marsRover|
	
	marsRover _ MarsRover createAt: 0@0 pointingTo: N.
	
	self
		should: [ marsRover moveTo: '66' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = MarsRover notValidMovementException ].
	
	self assert: marsRover isAt equals: 0@0.
	self assert: marsRover pointsTo equals: N cardinalDirection.
	
	
	
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

!East methodsFor: 'direction' stamp: 'fran 6/29/2021 19:36:24'!
cardinalDirection
	^  1@0! !


!classDefinition: #North category: 'Mars-Rover'!
CardinalDirection subclass: #North
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mars-Rover'!

!North methodsFor: 'direction' stamp: 'fran 6/29/2021 19:36:00'!
cardinalDirection
	^  0@1! !


!classDefinition: #South category: 'Mars-Rover'!
CardinalDirection subclass: #South
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mars-Rover'!

!South methodsFor: 'direction' stamp: 'fran 6/29/2021 19:36:42'!
cardinalDirection
	^  0@-1! !


!classDefinition: #West category: 'Mars-Rover'!
CardinalDirection subclass: #West
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mars-Rover'!

!West methodsFor: 'direction' stamp: 'fran 6/29/2021 19:36:50'!
cardinalDirection
	^  -1@0! !


!classDefinition: #Commands category: 'Mars-Rover'!
Object subclass: #Commands
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mars-Rover'!

!Commands methodsFor: 'movement' stamp: 'fran 6/30/2021 22:32:48'!
move: aMarsRover
	self subclassResponsibility.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Commands class' category: 'Mars-Rover'!
Commands class
	instanceVariableNames: ''!

!Commands class methodsFor: 'instance creation' stamp: 'fran 6/30/2021 23:25:53'!
canHandle: aCommand
	self subclassResponsibility.! !

!Commands class methodsFor: 'instance creation' stamp: 'fran 6/30/2021 23:26:21'!
for: aCommand
	self subclassResponsibility.! !

!Commands class methodsFor: 'instance creation' stamp: 'fran 6/30/2021 23:28:47'!
with: commandString
	^ (self allSubclasses detect: [:aClass | aClass canHandle: commandString ]) for: commandString.! !


!classDefinition: #Backward category: 'Mars-Rover'!
Commands subclass: #Backward
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mars-Rover'!

!Backward methodsFor: 'movement' stamp: 'fran 6/30/2021 22:31:54'!
move: aMarsRover
	aMarsRover moveBackward.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Backward class' category: 'Mars-Rover'!
Backward class
	instanceVariableNames: ''!

!Backward class methodsFor: 'instance creation' stamp: 'fran 6/30/2021 22:23:02'!
canHandle: aCommand
	^ aCommand = 'b'.! !

!Backward class methodsFor: 'instance creation' stamp: 'fran 6/30/2021 22:24:21'!
for: aCommand
	^ self new.! !


!classDefinition: #CommandNotValid category: 'Mars-Rover'!
Commands subclass: #CommandNotValid
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mars-Rover'!

!CommandNotValid methodsFor: 'movement' stamp: 'fran 6/30/2021 22:47:16'!
move: aMarsRover
	^ aMarsRover notValidMovement.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CommandNotValid class' category: 'Mars-Rover'!
CommandNotValid class
	instanceVariableNames: ''!

!CommandNotValid class methodsFor: 'instance creation' stamp: 'fran 6/30/2021 22:56:04'!
canHandle: aCommand
	^ (aCommand = 'f') not and: [(aCommand = 'b') not and: [(aCommand = 'l') not and: [(aCommand = 'r') not]]].! !

!CommandNotValid class methodsFor: 'instance creation' stamp: 'fran 6/30/2021 22:41:18'!
for: aCommand
	^ self new.! !


!classDefinition: #Forward category: 'Mars-Rover'!
Commands subclass: #Forward
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mars-Rover'!

!Forward methodsFor: 'movement' stamp: 'fran 6/30/2021 22:32:10'!
move: aMarsRover
	aMarsRover moveForward.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Forward class' category: 'Mars-Rover'!
Forward class
	instanceVariableNames: ''!

!Forward class methodsFor: 'instance creation' stamp: 'fran 6/30/2021 22:23:17'!
canHandle: aCommand
	^ aCommand = 'f'.! !

!Forward class methodsFor: 'instance creation' stamp: 'fran 6/30/2021 22:24:27'!
for: aCommand
	^ self new.! !


!classDefinition: #RotateLeft category: 'Mars-Rover'!
Commands subclass: #RotateLeft
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mars-Rover'!

!RotateLeft methodsFor: 'movement' stamp: 'fran 6/30/2021 22:32:22'!
move: aMarsRover
	aMarsRover rotateLeft.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'RotateLeft class' category: 'Mars-Rover'!
RotateLeft class
	instanceVariableNames: ''!

!RotateLeft class methodsFor: 'instance creation' stamp: 'fran 6/30/2021 22:23:26'!
canHandle: aCommand
	^ aCommand = 'l'.! !

!RotateLeft class methodsFor: 'instance creation' stamp: 'fran 6/30/2021 22:24:31'!
for: aCommand
	^ self new.! !


!classDefinition: #RotateRight category: 'Mars-Rover'!
Commands subclass: #RotateRight
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mars-Rover'!

!RotateRight methodsFor: 'movement' stamp: 'fran 6/30/2021 22:32:32'!
move: aMarsRover
	aMarsRover rotateRight.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'RotateRight class' category: 'Mars-Rover'!
RotateRight class
	instanceVariableNames: ''!

!RotateRight class methodsFor: 'instance creation' stamp: 'fran 6/30/2021 22:23:33'!
canHandle: aCommand
	^ aCommand = 'r'.! !

!RotateRight class methodsFor: 'instance creation' stamp: 'fran 6/30/2021 22:24:34'!
for: aCommand
	^ self new.! !


!classDefinition: #MarsRover category: 'Mars-Rover'!
Object subclass: #MarsRover
	instanceVariableNames: 'currentPosition currentCardinalDirection'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mars-Rover'!

!MarsRover methodsFor: 'movement' stamp: 'fran 6/30/2021 23:32:35'!
moveTo: aCommandString
	|commandString command|

	1 to: aCommandString size do: [ :atIndex | 
			commandString _ (aCommandString at: atIndex) asString.
			command _ Commands with: commandString.
			command move: self.
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


!MarsRover methodsFor: 'private' stamp: 'fran 6/30/2021 23:32:06'!
moveBackward
	currentPosition _ currentPosition - currentCardinalDirection! !

!MarsRover methodsFor: 'private' stamp: 'fran 6/30/2021 23:32:10'!
moveForward
	currentPosition _ currentPosition + currentCardinalDirection! !

!MarsRover methodsFor: 'private' stamp: 'fran 6/30/2021 23:04:22'!
notValidMovement
	^ self error: MarsRover notValidMovementException.! !

!MarsRover methodsFor: 'private' stamp: 'fran 6/30/2021 23:32:16'!
rotateLeft
	currentCardinalDirection _ (currentCardinalDirection rotatedBy: (Float pi / 2)) truncated! !

!MarsRover methodsFor: 'private' stamp: 'fran 6/30/2021 23:32:21'!
rotateRight
	currentCardinalDirection _ (currentCardinalDirection rotatedBy: (3 * Float pi / 2)) truncated! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MarsRover class' category: 'Mars-Rover'!
MarsRover class
	instanceVariableNames: ''!

!MarsRover class methodsFor: 'instance creation' stamp: 'fran 7/1/2021 17:42:59'!
createAt: aPosition pointingTo: aCardinalDirection
	^ self new initializeWith: aPosition pointingTo: aCardinalDirection.! !


!MarsRover class methodsFor: 'error description' stamp: 'fran 6/30/2021 23:03:05'!
notValidMovementException
	^ 'The movement is not valid'.! !
