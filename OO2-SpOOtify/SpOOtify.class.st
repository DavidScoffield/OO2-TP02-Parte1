Class {
	#name : #SpOOtify,
	#superclass : #Object,
	#instVars : [
		'usuarios',
		'autores'
	],
	#category : #'OO2-SpOOtify-Model'
}

{ #category : #operations }
SpOOtify >> agregarAutor: unNombre [
	^ autores add: (Autor newConNombre: unNombre)
]

{ #category : #operations }
SpOOtify >> agregarUsuario: unNombre [
	^ usuarios add: (User newConNombre: unNombre)
]

{ #category : #'as yet unclassified' }
SpOOtify >> buscarPorAlbum: aString [
	^ autores flatCollect: [ :autor | autor buscarPorAlbum: aString ]
]

{ #category : #'as yet unclassified' }
SpOOtify >> buscarPorAutor: aString [
	^ (autores select: [ :autor | autor miNombreContiene: aString ])
		flatCollect: [ :autor | autor temas ]
]

{ #category : #'as yet unclassified' }
SpOOtify >> buscarPorTitulo: aString [
	^ autores flatCollect: [ :autor | autor buscarPorTitulo: aString ]
]

{ #category : #initialization }
SpOOtify >> initialize [
	usuarios := OrderedCollection new.
	autores := OrderedCollection new
]
