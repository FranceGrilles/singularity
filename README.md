# Image Singularity / Apptainer de France Grilles

## Singularity / Apptainer

Apptainer / Singularity est un logiciel de gestion de conteneurs applicatifs conçu pour faciliter la portabilité des applications. Il est notamment utilisé dans les environnements de calcul de haute performance. Apptainer est le nouveau nom du logiciel libre Singularity. L'installation de l'outil est détaillé sur la documentation utilisateur: https://apptainer.org/docs/user/latest/.

## Images disponibles

Les images suivantes sont disponibles :
* irods

## iRODS

### Installation

Pour récupérer l'image, vous pouvez utiliser la commande suivante :
```
apptainer pull --name irods.sif https://grand-est.fr/resources/CLOUD/irods.sif
```

L'image peut également être construite à partir du fichier source
disponible dans ce dépôt GitHub :
```
$ git clone https://github.com/FranceGrilles/singularity-images
$ cd singularity-images/irods
$ apptainer build irods.sif irods-client-ubuntu-18.def
```

### Fonctionnement

Les commandes CLI iRODS peuvent être utilisées avec :
```
$ apptainer exec irods.sif ils
/FranceGrillesZone/home/<username>:
  foo.bin
```

Pour que les commandes iRODS fonctionnent, il est nécessaire que le
fichier `~/.irods/irods_environment.json` existe et soit
correctement renseigné. Un exemple de ce fichier est donné dans la
[documentation du service FG-iRODS](https://github.com/FranceGrilles/user-docs/releases/download/1.2/guide-utilisation-fg-irods.pdf).

Il est également possible de *sourcer* le fichier `irods.sh` disponible dans
le répertoire `singularity-images/irods`. Cela permet de créer les
alias des commandes iRODS. Il faut veiller à bien définir la variable
**IMAGE_DIRECTORY** dans ce fichier, elle correspond au chemin vers le
répertoire contenant l'image `irods.sif`.
