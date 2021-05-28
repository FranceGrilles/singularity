# Image Singularity de France Grilles

## Images disponibles

Les images suivantes sont disponibles :
* irods

## iRODS

### Installation

Pour récupérer l'image, vous pouvez utiliser la commande suivante :
```
singularity pull --name irods.sif https://grand-est.fr/resources/CLOUD/irods.sif
```

L'image peut également être construite à partir du fichier source
disponible dans ce dépôt GitHub :
```
$ git clone https://github.com/FranceGrilles/singularity-images
$ cd singularity-images/irods
$ singulary build irods.sif irods-client-ubuntu-18.def
```

### Fonctionnement

Les commandes CLI iRODS peuvent être utilisées avec :
```
$ singularity exec irods.sif ils
/FranceGrillesZone/home/<username>:
  foo.bin
```

Pour que les commandes iRODS fonctionnent, il est nécessaire que le
fichier `~/.irods/irods_environment.json` existe et soit
correctement renseigné. Un exemple de ce fichier est donné dans la
[https://github.com/FranceGrilles/user-docs/releases/download/1.0/fg-irods-user-guide.pdf](documentation du service FG-iRODS).

Il est également possible de *sourcer* le fichier `irods.sh` disponible dans
le répertoire `singularity-images/irods`. Cela permet de créer les
alias des commandes iRODS. Il faut veiller à bien définir la variable
**IMAGE_DIRECTORY** dans ce fichier, elle correspond au chemin vers le
répertoire contenant l'image `irods.sif`.
