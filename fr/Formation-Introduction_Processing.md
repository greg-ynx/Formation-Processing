# Formation : Introduction à Processing

## Introduction
La programmation est un vaste domaine de l'informatique permettant le développement d'applications et de services exécutables par ordinateur. Apprendre un langage de programmation est à la portée de tous. Néanmoins, cet apprentissage nécessite une logique et une capacité d'analyse accrue afin de pouvoir écrire les algorithmes structurant vos créations. Dans ce cours, vous allez apprendre les bases de la programmation en utilisant Processing dans le but de créer quelques un mini-jeux tel que "Pong".

## Processing
Processing est un carnet de croquis logiciel flexible et un langage de programmation (PL) pour apprendre à coder dans le contexte des arts visuels. Depuis 2001, Processing fait la promotion de la littératie logicielle dans les arts visuels et de la littératie visuelle dans la technologie. Il y a des dizaines de milliers d’étudiants, d’artistes, de concepteurs, de chercheurs et d’amateurs qui utilisent le traitement pour l’apprentissage et le prototypage.

Processing peut donc être utilisé dans tout domaines des arts visuelles tels que celui des jeux vidéo jusqu'au traitement d'images, par exemple, la dectection de mouvement.

### Installation

![installation01](../src/assets/img/installation01.png)

Rendez-vous sur [le site officiel de Processing](https://processing.org), descendez vers la section "Getting started", dans la catégorie "Get the software" vous retrouvez un bouton "Download Processing". Cliquer sur le bouton, vous serez redirigé vers la page de téléchargement, vous avez plus qu'a choisir la version du logiciel Processing (peut importe laquelle) qui correspond à votre système d'opération (OS) c'est-à-dire Windows, MacOS ou Linux.


![installation02](../src/assets/img/installation02.png)

Section "Getting started"


![installation03](../src/assets/img/installation03.png)

Catégorie "Get the software" avec le bouton "Download Processing"


![installation04](../src/assets/img/installation04.png)
Page de téléchargement


Suite au téléchargement, vous obtiendrez un document .zip qu'il faudra décompresser dans le dossier de votre choix : 

![installation05](../src/assets/img/installation05.png)


Vous pouvez maintenant acceder à l'application Processing:

![installation06](../src/assets/img/installation06.png)


### Présentation de l'IDE Processing

Un Environnement de Développement Intégré (IDE) est le logiciel qui vous premettra de "coder" des applications, en effet, ces logiciels vous permettent d'écrire dans les différents langages de programmation (que nous appelerons PL pour "Programming Language") supportés.

L'IDE Processing supporte de base les langages Java et Python. Ici, nous utiliserons Java pour le reste du cours.

Voici la page d'acceuil : 

![ide01](../src/assets/img/ide01.png)

Les fichiers/programmes sont appelés "sketch" contenant le code écrit pour votre programme.


![ide02](../src/assets/img/ide02.png)

1. Menu
2. Bouton "Run" : Execute le sketch
3. Bouton "Stop" : Arrête l'exécution du sketch
4. Bouton debugage
5. Menu défilant des options (choix des PL)
6. Barre d'onglets
7. Sketch
8. Console et console d'erreurs


### Hello world

Nous allons écrire notre premier programme ! Ce dernier devra renvoyer la phrase "Hello World!" dans la console : 

Pour cela, il existe une fonction (Nous définirons ce terme plus tard) qui affiche du contenu dans la console. Nous parlons de la fonction ```println()```.

Ecrivez la ligne suivante dans le sketch :

```java
println("Hello World!");
```


![hello_world](../src/assets/img/hello_world.png)


## Structure d'un sketch Processing

On retrouve dans chaque sketch deux fonctions fondamentales nommées ```setup()``` et ```draw()``` que nous allons étudier:

### setup()

```setup()``` est une fonction qui s'exécute qu'une seule fois lors du début du programme. Elle est codée de la manière suivante :

```java
void setup() {
	// Instructions
}
```

Le mot-clé "void" est le type de l'élément de retour de cette fonction, ici, la fonction setup() ne renvoie rien, c'est pourquoi sont type de retour est dit "vide".

### draw()

```draw()``` est une fonction qui s'exécute en boucle en lisant les instructions de haut en bas tant que l'exécution du sketch n'est pas arrêté.
Elle est codée de la manière suivante :

```java
void draw() {
	// Instructions
}
```

La fonction ```draw()``` est de type "void" comme la fonction ```setup()```.

Voyons ce que ça donne à l'exécution :

![setup_draw_exemple](../src/assets/gif/setupdraw_exemple.gif)

## Variables

## Types

## Opérateurs logiques

## Instructions conditionnelles

## Boucles

## Fonctions

## Programmation Orientée Objets