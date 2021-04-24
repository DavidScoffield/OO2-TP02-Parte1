Class {
	#name : #Album,
	#superclass : #Object,
	#instVars : [
		'temas',
		'titulo'
	],
	#category : #'OO2-SpOOtify-Model'
}

{ #category : #'instance creation' }
Album class >> newConTitulo: unTitulo [
	^ self new
		initializeConTitulo: unTitulo;
		yourself
]

{ #category : #adding }
Album >> addCancion: unaCancion [
	^ temas add: unaCancion
]

{ #category : #'accessing-query' }
Album >> buscarPorTitulo: aString [
	^ temas select: [ :tema | tema miTituloContiene: aString ]
]

{ #category : #initialization }
Album >> initialize [
	temas := OrderedCollection new
]

{ #category : #initialization }
Album >> initializeConTitulo: unTitulo [
	titulo := unTitulo
]

{ #category : #comparing }
Album >> miTituloContiene: aString [
	^ titulo includesSubstring: aString caseSensitive: false
]

{ #category : #comparing }
Album >> temas [
	^ temas
]
