# Créer un nouveau projet 
symfony new --webapp symfonyApp

# Lancer le serveur
cd dossier
symfony server:start

# Créer un controller
cd dossier
symfony php bin/console make:controller

# Créer la database
php bin/console doctrine:database:create

# Créer une table 
php bin/console make:user

# Génère la version
php bin/console make:migration

# Migrer la version vers SQL
php bin/console doctrine:migrations:migrate ou php bin/console d:m :m

# Ajouter d'autres champs
php bin/console make:entity
php bin/console make:entity Evenement -> Evenement.php

# Taper entrer pour sortir une fois créé
# A chaque fois il faut migrer quand on modifie

# Créer un form
php bin/console make:form
UserType
User

# dd(variable)

# Migration apres modification
exemple : ajouter un controller Contact
php bin/console make:migration        
php bin/console doctrine:migrations:migrate

# createdAt detecte que c'est une date


 php bin/console cache:clear    