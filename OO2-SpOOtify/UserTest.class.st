Class {
	#name : #UserTest,
	#superclass : #TestCase,
	#instVars : [
		'user',
		'estrella'
	],
	#category : #'OO2-SpOOtify-Test'
}

{ #category : #running }
UserTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

	estrella := Cancion newConTitulo: 'Estrella'.
	user := User newConNombre: 'David'.
	user agregar: estrella
]

{ #category : #tests }
UserTest >> testAgregar [
	| cancion |
	cancion := Cancion newConTitulo: 'cancion'.
	self deny: (user contieneCancion: cancion).
	user agregar: cancion.
	user assert: (user contieneCancion: cancion)
]

{ #category : #tests }
UserTest >> testRemover [
	self assert: (user contieneCancion: estrella).
	user remover: estrella.
	self deny: (user contieneCancion: estrella).
	user remover: (Cancion newConTitulo: 'byeva')
]
