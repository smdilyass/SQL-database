CREATE TABLE Membre(
   Id_Membre INT,
   nom VARCHAR(50),
   prénom VARCHAR(50),
   email VARCHAR(50),
   date_d_adhésion DATE,
   PRIMARY KEY(Id_Membre)
);

CREATE TABLE participant(
   Id_participant INT,
   nom VARCHAR(50),
   prenom VARCHAR(50),
   email VARCHAR(50),
   statut VARCHAR(50),
   PRIMARY KEY(Id_participant)
);

CREATE TABLE evenements(
   Id_evenements INT,
   nom VARCHAR(50),
   date_et_l_heure DATETIME,
   _le_lieu VARCHAR(50),
   PRIMARY KEY(Id_evenements)
);

CREATE TABLE sponsors(
   Id_sponsors INT,
   nom VARCHAR(50),
   email VARCHAR(50),
   tele VARCHAR(50),
   PRIMARY KEY(Id_sponsors)
);

CREATE TABLE role(
   Id_role INT,
   nom VARCHAR(50),
   Id_Membre INT NOT NULL,
   PRIMARY KEY(Id_role),
   FOREIGN KEY(Id_Membre) REFERENCES Membre(Id_Membre)
);

CREATE TABLE organise(
   Id_Membre INT,
   Id_evenements INT,
   PRIMARY KEY(Id_Membre, Id_evenements),
   FOREIGN KEY(Id_Membre) REFERENCES Membre(Id_Membre),
   FOREIGN KEY(Id_evenements) REFERENCES evenements(Id_evenements)
);

CREATE TABLE participe(
   Id_participant INT,
   Id_evenements INT,
   PRIMARY KEY(Id_participant, Id_evenements),
   FOREIGN KEY(Id_participant) REFERENCES participant(Id_participant),
   FOREIGN KEY(Id_evenements) REFERENCES evenements(Id_evenements)
);

CREATE TABLE sponsor(
   Id_evenements INT,
   Id_sponsors INT,
   PRIMARY KEY(Id_evenements, Id_sponsors),
   FOREIGN KEY(Id_evenements) REFERENCES evenements(Id_evenements),
   FOREIGN KEY(Id_sponsors) REFERENCES sponsors(Id_sponsors)
);
