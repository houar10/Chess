# Compte rendu – Myg Chess

J'ai commencé par télécharger le projet **Myg Chess** et lire son contenu afin de comprendre comment il était organisé.

En parcourant le projet, j'ai trouvé la classe **`MyPawn`**, qui permet de gérer les déplacements des pions. J'ai ensuite créé une classe de tests **`MyPawnTests`** pour vérifier le comportement de cette classe.

J'ai commencé par créer un premier test **`testMoves`** pour vérifier le déplacement d'un pion. Ce test a fonctionné correctement.

Ensuite, j'ai créé un deuxième test **`testPawnCannotCaptureForward`** pour vérifier qu'un pion ne peut pas capturer une pièce qui se trouve directement devant lui. Ce test n'a pas fonctionné, ce qui m'a permis d'identifier un **bug dans le programme**.

J'ai donc compris l'intérêt des tests : ils permettent de vérifier le comportement attendu du programme et surtout de détecter les problèmes avant de modifier le code.

Pour la suite, je vais essayer de comprendre pourquoi le test échoue et corriger le comportement du pion.
