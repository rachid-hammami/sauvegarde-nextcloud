# 💾 Sauvegarde Nextcloud (Windows Batch)

Un script Batch Windows pour **sauvegarder automatiquement Nextcloud sous Docker**.  
Il sauvegarde les volumes **Nextcloud (HTML)** et **MariaDB (base de données)** dans des fichiers compressés `.tar.gz`.

---

## 📂 Contenu
- `sauvegarde_nextcloud.bat` → script principal

---

## 🚀 Utilisation
1. Téléchargez le fichier `sauvegarde_nextcloud.bat`.  
2. Vérifiez/éditez les variables au début du fichier si besoin :  
   - `TARGET_DIR` → dossier de sauvegarde (par défaut `C:\SauvegardeNextcloud`)  
   - `VOLUME_HTML` → nom du volume Nextcloud  
   - `VOLUME_DB` → nom du volume MariaDB  
3. Double-cliquez sur le script ou planifiez-le avec le **Planificateur de tâches Windows**.  

---

## 📦 Résultat
Deux fichiers compressés sont générés dans le dossier de sauvegarde :  

html.tar.gz → sauvegarde du volume Nextcloud
db.tar.gz → sauvegarde du volume MariaDB


---

## ⚙️ Pré-requis
- Windows avec **Docker Desktop** installé.  
- Nextcloud et MariaDB tournant dans des conteneurs Docker.  

---

## 📬 Contact
- 📧 [anzaikun@gmail.com](mailto:anzaikun@gmail.com)  
- 🔗 [Portfolio](https://rachid-hammami.github.io/portfolio)  
- 🔗 [GitHub](https://github.com/rachid-hammami)
