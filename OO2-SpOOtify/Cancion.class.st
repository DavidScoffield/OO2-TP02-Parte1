Class {
	#name : #Cancion,
	#superclass : #Object,
	#instVars : [
		'titulo'
	],
	#category : #'OO2-SpOOtify-Model'
}

{ #category : #'instance creation' }
Cancion class >> newConTitulo: unTitulo [
	^ self new
		initializeConTitulo: unTitulo;
		yourself
]

{ #category : #initialization }
Cancion >> initializeConTitulo: unTitulo [
	titulo := unTitulo
]

{ #category : #comparing }
Cancion >> miTituloContiene: aString [
	^ titulo includesSubstring: aString caseSensitive: false
]
