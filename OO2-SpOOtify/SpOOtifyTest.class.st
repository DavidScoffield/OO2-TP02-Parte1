Class {
	#name : #SpOOtifyTest,
	#superclass : #TestCase,
	#instVars : [
		'spootify',
		'estrellaMinuscula',
		'estrellaDelCielo'
	],
	#category : #'OO2-SpOOtify-Test'
}

{ #category : #running }
SpOOtifyTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

	| enBuscaDelSol dontForgetYou forever noDaProblemas conociElMundo sniffing function album1 album3 album4 album5 martin jose micaela |
	spootify := SpOOtify new.
	"instanciacion de canciones"
	estrellaMinuscula := Cancion newConTitulo: 'estrella'.
	estrellaDelCielo := Cancion newConTitulo: 'goy estrella del cielo'.
	enBuscaDelSol := Cancion newConTitulo: 'en busca del sol'.
	dontForgetYou := Cancion newConTitulo: 'dont forget you'.
	forever := Cancion newConTitulo: 'forever'.
	noDaProblemas := Cancion newConTitulo: 'ella no da problemas'.
	conociElMundo := Cancion newConTitulo: 'conoci el mundo'.
	sniffing := Cancion newConTitulo: 'sniffing'.
	function := Cancion newConTitulo: 'function'.

	"instanciacion de albumes"
	album1 := Album newConTitulo: 'Album1'.
	album3 := Album newConTitulo: 'Album3'.
	album4 := Album newConTitulo: 'Album4'.
	album5 := Album newConTitulo: 'Album5'.

	"instanciacion de autores"
	martin := spootify agregarAutor: 'Martin Sul'.
	jose := spootify agregarAutor: 'Jose martin salomon'.
	micaela := spootify agregarAutor: 'Micaela Honem'.


	"relaciones alb-cancion"
	album1 addCancion: estrellaMinuscula.
	album1 addCancion: enBuscaDelSol.
	album3 addCancion: dontForgetYou.
	album3 addCancion: forever.
	album3 addCancion: noDaProblemas.
	album4 addCancion: conociElMundo.
	album5 addCancion: function.
	album5 addCancion: sniffing.
	album5 addCancion: estrellaDelCielo.

	"relaciones autor-alb"
	martin addAlbum: album1.
	micaela addAlbum: album3.
	jose addAlbum: album4.
	martin addAlbum: album5
]

{ #category : #tests }
SpOOtifyTest >> testBuscarPorAlbum [
	self assert: (spootify buscarPorAlbum: 'album') size equals: 9.
	self assert: (spootify buscarPorAlbum: 'album1') size equals: 2.
	self assert: (spootify buscarPorAlbum: 'album4') size equals: 1
]

{ #category : #tests }
SpOOtifyTest >> testBuscarPorAutor [
	self assert: (spootify buscarPorAutor: 'martin') size equals: 6.
	self assert: (spootify buscarPorAutor: 'micaela') size equals: 3
]

{ #category : #tests }
SpOOtifyTest >> testBuscarPorTitulo [
	| cancionesConTituloEstrella |
	cancionesConTituloEstrella := spootify buscarPorTitulo: 'estrella'.
	self assert: cancionesConTituloEstrella size equals: 2.
	self assert: (cancionesConTituloEstrella includes: estrellaMinuscula).
	self assert: (cancionesConTituloEstrella includes: estrellaDelCielo)
]
