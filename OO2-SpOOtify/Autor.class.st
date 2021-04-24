Class {
	#name : #Autor,
	#superclass : #Object,
	#instVars : [
		'albumes',
		'nombre'
	],
	#category : #'OO2-SpOOtify-Model'
}

{ #category : #'instance creation' }
Autor class >> newConNombre: unNombre [
	^ self new
		initializeConNombre: unNombre;
		yourself
]

{ #category : #adding }
Autor >> addAlbum: unAlbum [
	^ albumes add: unAlbum
]

{ #category : #'accessing-query' }
Autor >> buscarPorAlbum: aString [
	^ (albumes select: [ :album | album miTituloContiene: aString ])
		flatCollect: [ :albumCorrecto | albumCorrecto temas ]
]

{ #category : #'accessing-query' }
Autor >> buscarPorTitulo: aString [
	^ albumes flatCollect: [ :album | album buscarPorTitulo: aString ]
]

{ #category : #initialization }
Autor >> initialize [
	albumes := OrderedCollection new
]

{ #category : #initialization }
Autor >> initializeConNombre: unNombre [
	nombre := unNombre
]

{ #category : #'accessing-query' }
Autor >> miNombreContiene: aString [
	^ nombre includesSubstring: aString caseSensitive: false
]

{ #category : #accesing }
Autor >> temas [
	^ albumes flatCollect: [ :album | album temas ]
]
