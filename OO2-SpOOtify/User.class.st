Class {
	#name : #User,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'myMusic'
	],
	#category : #'OO2-SpOOtify-Model'
}

{ #category : #'instance creation' }
User class >> newConNombre: unNombre [
	^ self new
		initializeConNombre: unNombre;
		yourself
]

{ #category : #'as yet unclassified' }
User >> agregar: aSong [
	myMusic add: aSong
]

{ #category : #'as yet unclassified' }
User >> contieneCancion: cancion [
	^ myMusic includes: cancion
]

{ #category : #initialization }
User >> initialize [
	myMusic := Set new
]

{ #category : #initialization }
User >> initializeConNombre: unNombre [
	nombre := unNombre
]

{ #category : #'as yet unclassified' }
User >> remover: aSong [
	myMusic remove: aSong ifAbsent: nil
]
