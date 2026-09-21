USE BD_FF14
GO


--//Insertion des serveurs
insert into SGC.Server (Nom, Region) values ('Cactuar', 'Japan');
insert into SGC.Server (Nom, Region) values ('Moogle', 'Europe');
insert into SGC.Server (Nom, Region) values ('Chocobo', 'NA');
insert into SGC.Server (Nom, Region) values ('Tonberry', 'NA');
insert into SGC.Server (Nom, Region) values ('Behemoth', 'Europe');
insert into SGC.Server (Nom, Region) values ('Odin', 'Japan');
insert into SGC.Server (Nom, Region) values ('Shiva', 'Europe');
insert into SGC.Server (Nom, Region) values ('Ultros', 'NA');
insert into SGC.Server (Nom, Region) values ('Phoenix', 'Japan');
insert into SGC.Server (Nom, Region) values ('Ragnarok', 'Japan');
GO


--//INSERTION GRANDES COMPANY

GO
insert into SGC.GrandeCompagnie (Nom, Leaders) values ('Maelstrom', 'Admiral Merlwyb Bloefhiswyn')
insert into SGC.GrandeCompagnie (Nom, Leaders) values ('Twin Adder', 'Sergeant V''khet')
insert into SGC.GrandeCompagnie (Nom, Leaders) values ('Immortal Flames', 'Flamine')
GO




GO
--//Insertion des armes
insert into Item.Weapon ( Nom, AutoAttack) values ( 'Dragon''s Breath Staff', 43.21);
insert into Item.Weapon ( Nom, AutoAttack) values ( 'Earthquake Mace', 76.43);
insert into Item.Weapon ( Nom, AutoAttack) values ( 'Soulreaper Scimitar', 76.43);
insert into Item.Weapon ( Nom, AutoAttack) values ('Soulreaper Scimitar', 43.76);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Starfall Crossbow', 65.87);
insert into Item.Weapon (Nom, AutoAttack) values ('Shadowstrike Katana', 76.43);
insert into Item.Weapon (Nom, AutoAttack) values ('Thunderstorm Rapier', 67.89);
insert into Item.Weapon (Nom, AutoAttack) values ('Sunbeam Staff', 65.1);
insert into Item.Weapon (Nom, AutoAttack) values ('Soulreaper Scimitar', 65.1);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Doombringer Greatsword', 65.1);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Flameburst Flail', 89.01);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Stormbringer Rapier', 43.76);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Earthshaker Hammer', 32.87);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Stormbringer Rapier', 65.1);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Frostbite Claw', 67.89);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Starlight Bow', 32.87);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Sunbeam Staff', 43.98);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Earthshaker Hammer', 65.1);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Moonlight Dagger', 32.87);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Sunburst Lance', 90.12);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Duskblade Halberd', 98.43);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Sunbeam Staff', 32.87);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Frostbite Claw', 43.76);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Soulreaper Scimitar', 78.9);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Moonshadow Scythe', 65.87);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Doombringer Greatsword', 43.98);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Nightfall Crossbow', 21.65);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Lightning Bolt Wand', 65.1);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Nightfall Crossbow', 87.98);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Sunrise Scepter', 90.12);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Frostbite Claw', 65.54);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Sunburst Lance', 43.76);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Iceshatter Dagger', 10.98);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Sunfire Lance', 21.65);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Sunrise Scepter', 54.32);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Thunderclap Hammer', 98.43);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Earthshaker Hammer', 21.98);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Sunbeam Staff', 76.43);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Earthquake Mace', 45.67);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Doombringer Greatsword', 23.45);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Thunderclap Hammer', 98.21);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Blazefury Sword', 32.89);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Earthshaker Hammer', 76.43);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Thunderclap Hammer', 43.76);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Stormbringer Rapier', 65.87);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Moonshadow Scythe', 76.43);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Earthshaker Hammer', 65.1);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Frostbite Claw', 65.54);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Stormbringer Rapier', 98.43);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Soulreaper Scimitar', 54.76);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Sunbeam Staff', 67.89);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Abyssal Trident', 98.1);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Sword of the Phoenix', 54.32);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Sunrise Scepter', 87.32);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Doombringer Greatsword', 10.98);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Sunburst Lance', 54.32);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Abyssal Trident', 87.54);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Thunderstrike Axe', 21.98);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Shadowflame Flail', 54.32);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Iceshatter Dagger', 87.98);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Icewind Scepter', 76.65);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Moonlight Dagger', 78.9);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Thunderclap Hammer', 76.43);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Moonlight Dagger', 43.76);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Soulreaper Scimitar', 98.1);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Thunderstrike Axe', 43.21);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Abyssal Trident', 90.12);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Duskblade Halberd', 89.01);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Sunfire Lance', 98.21);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Stardust Scythe', 65.54);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Starlight Bow', 43.76);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Duskblade Halberd', 54.32);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Flameburst Flail', 65.1);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Sunrise Scepter', 43.76);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Duskblade Halberd', 12.34);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Nightfall Crossbow', 90.12);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Lightning Bolt Wand', 54.32);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Moonshadow Scythe', 21.43);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Frostbite Claw', 65.1);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Icewind Scepter', 32.87);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Flameburst Flail', 43.76);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Lightning Bolt Wand', 98.21);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Shadowstrike Katana', 32.87);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Flameburst Flail', 32.87);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Stardust Scythe', 87.98);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Icewind Scepter', 87.98);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Sunburst Lance', 54.32);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Abyssal Trident', 90.12);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Thunderstrike Axe', 21.76);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Sword of the Phoenix', 98.1);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Iceshatter Dagger', 21.43);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Soulreaper Scimitar', 87.65);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Thunderclap Hammer', 76.43);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Sword of the Phoenix', 32.1);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Doombringer Greatsword', 76.43);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Stormbringer Rapier', 32.89);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Moonshadow Scythe', 87.32);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Dragon''s Breath Staff', 65.1);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Frostbite Dagger', 98.76);
insert into Item.Weapon (Nom, AutoAttack) values ( 'Starfall Crossbow', 54.32);
GO


GO
--//Insertion des potions 
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Potion of the Shadow', 180, 25);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Brew of the Celestial', 230, 110);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Tonic of the Wyrm', 110, 40);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Draught of the Cosmos', 110, 45);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Potion of the Astral', 210, 75);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Potion of the Celestial', 170, 105);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Potion of the Shadow', 180, 70);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Mystic Brew of the Wyrm', 80, 95);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Potion of the Storm', 220, 70);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Elixir of the Serpent', 160, 90);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Elixir of the Sun', 170, 50);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Potion of the Moon', 170, 60);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Elixir of the Starlight', 190, 70);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Tonic of the Wyrm', 250, 85);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Elixir of the Celestial', 150, 60);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Mystic Brew of the Wyrm', 50, 50);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Elixir of the Celestial', 190, 75);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Elixir of the Phoenix', 170, 60);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Elixir of the Phoenix', 170, 30);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Elixir of the Void', 80, 30);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Potion of the Void', 110, 45);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Draught of the Sun', 50, 30);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Potion of the Celestial', 20, 125);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Draught of the Shadow', 190, 60);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Potion of the Moon', 40, 30);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Potion of the Storm', 210, 65);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Elixir of the Sun', 220, 55);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Elixir of the Moon', 20, 60);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Elixir of the Wyrm', 230, 105);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Essence of the Void', 190, 55);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Brew of the Celestial', 30, 70);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Potion of the Astral', 120, 110);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Tonic of the Shadow', 140, 40);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Tonic of the Wyrm', 10, 55);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Brew of the Starlight', 80, 55);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Draught of the Serpent', 170, 70);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Potion of the Astral', 190, 55);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Draught of the Cosmos', 20, 65);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Potion of the Celestial', 130, 115);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Potion of the Astral', 240, 90);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Elixir of the Sun', 60, 90);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Draught of the Shadow', 60, 80);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Potion of the Starlight', 60, 40);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Draught of the Sun', 30, 85);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Elixir of the Phoenix', 170, 125);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Mystic Brew of the Wyrm', 210, 40);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Tonic of the Wyrm', 120, 95);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Potion of the Moon', 170, 75);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Essence of the Void', 100, 5);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Potion of the Moon', 250, 125);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Elixir of the Serpent', 220, 65);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Elixir of the Moon', 120, 55);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Draught of the Shadow', 10, 95);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Mystic Brew of the Dragon', 150, 85);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Brew of the Starlight', 70, 75);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Tonic of the Phoenix', 100, 40);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Brew of the Starlight', 150, 25);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Potion of the Moon', 10, 100);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Potion of the Astral', 190, 80);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Brew of the Starlight', 230, 105);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ( 'Essence of the Sun', 70, 125);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Potion of the Starlight', 170, 70);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Elixir of the Sun', 160, 75);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Potion of the Shadow', 70, 115);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Elixir of the Starlight', 30, 95);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Draught of the Cosmos', 220, 115);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Tonic of the Wyrm', 60, 10);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Tonic of the Wyrm', 170, 95);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Tonic of the Phoenix', 150, 5);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Draught of the Serpent', 110, 5);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Elixir of the Sun', 250, 105);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Elixir of the Phoenix', 230, 115);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Elixir of the Starlight', 200, 5);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Essence of the Cosmos', 250, 35);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Draught of the Serpent', 70, 5);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Essence of the Cosmos', 160, 100);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Tonic of the Wyrm', 100, 95);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Tonic of the Wyrm', 180, 5);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Elixir of the Wyrm', 200, 105);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Elixir of the Celestial', 230, 60);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Elixir of the Starlight', 220, 100);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Draught of the Sun', 190, 60);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Tonic of the Shadow', 240, 15);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Elixir of the Phoenix', 90, 35);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Tonic of the Astral', 150, 55);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Elixir of the Moon', 100, 25);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Elixir of the Void', 230, 75);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Elixir of the Moon', 10, 95);
insert into Item.Consommable (Nom, HpRegenere, MpRegenere) values ('Draught of the Serpent', 210, 35);
GO


GO
INSERT INTO Item.Item(WeaponId,Nom,TypeItem, Description)
SELECT WeaponId, Nom, 'Weapon', 'Une arme puissante nommé'+ Nom FROM Item.Weapon
GO


GO
INSERT INTO Item.Item(ConsommableId,Nom,TypeItem, Description)
SELECT ConsommableId, Nom, 'Consommable', 'Une potion magique nommé'+ Nom  FROM Item.Consommable
GO




--//INSERTION PERSONNAGES
GO
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '8/21/2013', 1, 'oallsupp0', 'Elezen', 'Summoner');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '2/20/2000', 2, 'kblewitt1', 'Miqo''te', 'Samurai');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '9/16/2021', 3, 'plevings2', 'Hrothgar', 'Bard');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '12/18/2013', 4, 'lsimmans3', 'Lalafell', 'Black Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '3/30/2001', 5, 'djoinsey4', 'Miqo''te', 'Red Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '2/22/2017', 6, 'mgenever5', 'Viera', 'Monk');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '12/13/2001', 7, 'biacovolo6', 'Hrothgar', 'Red Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '7/31/2020', 8, 'mfilkin7', 'Miqo''te', 'Blue Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '4/8/2016', 9, 'nporrett8', 'Viera', 'Gunbreaker');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '8/20/2005', 10, 'erickis9', 'Lalafell', 'Gunbreaker');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '5/4/2015', 10, 'rreasona', 'Miqo''te', 'Dark Knight');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '10/10/2000', 1, 'mstureb', 'Lalafell', 'Gunbreaker');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '11/12/2011', 2, 'cwoolcocksc', 'Hrothgar', 'Paladin');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '1/10/2018', 3, 'icrissild', 'Roegadyn', 'Bard');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '2/26/2007', 4, 'tbowditche', 'Hyur', 'Black Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '5/3/2006', 5, 'kedwardsonf', 'Viera', 'Astrologian');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '5/29/2001', 6, 'rnowillg', 'Viera', 'White Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '7/23/2007', 7, 'jzorzinh', 'Au Ra', 'Dark Knight');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '8/7/2019', 8, 'fmontgomeryi', 'Au Ra', 'Dragoon');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '8/29/2008', 9, 'wdangelij', 'Roegadyn', 'Dragoon');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '7/29/2008', 10, 'edeplacidok', 'Hyur', 'Blue Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '7/19/2000', 1, 'amyattl', 'Elezen', 'Samurai');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '1/11/2010', 2, 'plinkiem', 'Hrothgar', 'Black Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '12/22/2005',3, 'hmccreadien', 'Lalafell', 'Dragoon');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '6/13/2003', 4, 'wnansomo', 'Hyur', 'Dancer');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '11/7/2020', 5, 'lloosleyp', 'Viera', 'Summoner');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '7/2/2008', 6, 'nhorseyq', 'Hyur', 'Blue Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '5/1/2018', 7, 'cinglishr', 'Viera', 'Bard');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '6/27/2019',8, 'abadgers', 'Elezen', 'Dark Knight');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '10/11/2005', 9, 'ashervingtont', 'Elezen', 'Black Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '10/18/2022', 10, 'tlempkeu', 'Elezen', 'Red Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '8/11/2021', 1, 'tboggasv', 'Hyur', 'Monk');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '4/18/2001', 2, 'ljonesw', 'Miqo''te', 'Blue Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '10/31/2010',3 , 'kdearthx', 'Hyur', 'Machinist');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '11/5/2019', 4, 'cbreachy', 'Roegadyn', 'Machinist');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '8/31/2019', 5, 'prouselz', 'Hyur', 'Samurai');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '11/18/2001',6, 'bmcphillimey10', 'Roegadyn', 'Monk');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '8/9/2022', 7, 'joverel11', 'Au Ra', 'Machinist');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '9/24/2013', 8, 'ggonzalvo12', 'Au Ra', 'Warrior');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '2/5/2008', 9, 'btapper13', 'Hyur', 'Astrologian');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '12/14/2009',10, 'hcawsey14', 'Viera', 'Bard');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '11/28/2006', 1, 'lvedyasov15', 'Elezen', 'Blue Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '11/24/2016', 2, 'jrykert16', 'Hyur', 'Dancer');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '9/24/2016', 4, 'naslott17', 'Miqo''te', 'Monk');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '10/16/2008', 5, 'llawton18', 'Viera', 'Machinist');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '12/9/2019', 6, 'asabater19', 'Lalafell', 'Summoner');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '5/16/2012', 7, 'bsully1a', 'Au Ra', 'Scholar');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '8/21/2021', 8, 'jcarrington1b', 'Hyur', 'Black Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '6/2/2014', 9, 'klacase1c', 'Lalafell', 'Dark Knight');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '7/25/2003', 10, 'bcropper1d', 'Miqo''te', 'Gunbreaker');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '10/26/2014', 1, 'hhanscom1e', 'Hyur', 'Dragoon');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '3/12/2004', 2, 'jstrowger1f', 'Lalafell', 'Dancer');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '9/20/2001',3, 'ctilling1g', 'Hrothgar', 'Dark Knight');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '8/30/2022', 4, 'rwatmore1h', 'Hyur', 'Astrologian');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '12/6/2021', 5, 'hlaugheran1i', 'Viera', 'Dragoon');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '9/20/2005', 6, 'cmatthisson1j', 'Elezen', 'Black Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '4/26/2002', 7, 'gjirka1k', 'Lalafell', 'Machinist');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '7/31/2018', 8, 'lpinckstone1l', 'Hyur', 'Astrologian');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '6/10/2022', 9, 'jminette1m', 'Hrothgar', 'Scholar');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '9/8/2004', 10, 'msends1n', 'Hyur', 'Paladin');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '4/5/2016', 1, 'sgladhill1o', 'Au Ra', 'Astrologian');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '6/14/2013', 2, 'lgeldert1p', 'Au Ra', 'White Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '7/20/2007', 3, 'khastwell1q', 'Au Ra', 'Blue Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '8/9/2010', 4, 'dmarsden1r', 'Roegadyn', 'Samurai');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '3/28/2016', 5, 'wcohani1s', 'Au Ra', 'Gunbreaker');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '1/19/2001', 6, 'fguillem1t', 'Roegadyn', 'White Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '8/27/2004', 7, 'cajean1u', 'Viera', 'Dragoon');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '11/8/2020', 8, 'fwingar1v', 'Hrothgar', 'Paladin');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '12/29/2007',9, 'myeldon1w', 'Au Ra', 'Red Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '12/31/2004', 10, 'sunthank1x', 'Roegadyn', 'Dancer');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '3/24/2013', 1, 'gwands1y', 'Elezen', 'Paladin');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '7/5/2020', 2, 'jbreeder1z', 'Elezen', 'Dragoon');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '8/17/2001', 3, 'gnayshe20', 'Viera', 'Summoner');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '2/13/2000',4, 'bliell21', 'Hrothgar', 'Machinist');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '6/9/2022', 5, 'ssimonutti22', 'Elezen', 'Ninja');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '11/2/2007', 6, 'ksolway23', 'Au Ra', 'Blue Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '4/15/2019', 7, 'tcutts24', 'Miqo''te', 'Scholar');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '10/13/2012', 8, 'pmcgreal25', 'Lalafell', 'Red Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '9/13/2011', 9, 'wwoolaghan26', 'Au Ra', 'Black Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '6/13/2003', 10, 'yclooney27', 'Miqo''te', 'Black Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '6/28/2019', 1, 'rfullard28', 'Hrothgar', 'Gunbreaker');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '1/21/2005', 2, 'jlewin29', 'Viera', 'Paladin');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '11/15/2021', 3, 'acritchell2a', 'Hrothgar', 'Scholar');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '6/1/2021', 4, 'mavramchik2b', 'Elezen', 'Monk');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '2/3/2021', 5, 'jdabbes2c', 'Hyur', 'Blue Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '3/2/2005', 6, 'gsemper2d', 'Hrothgar', 'Monk');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '4/9/2008', 7, 'bprince2e', 'Roegadyn', 'Machinist');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '8/19/2011',8, 'zheritege2f', 'Hyur', 'Scholar');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '4/14/2021',9, 'hcharlo2g', 'Hrothgar', 'Machinist');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '6/26/2014',10, 'cwimpenny2h', 'Elezen', 'Bard');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '6/4/2010', 1, 'hlappine2i', 'Hrothgar', 'Dark Knight');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '5/10/2015', 2, 'jwindrum2j', 'Miqo''te', 'Dragoon');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '5/16/2007', 3, 'mchew2k', 'Viera', 'Dark Knight');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '6/21/2013', 4, 'cdecarlo2l', 'Hrothgar', 'Black Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '3/22/2012', 5, 'csayre2m', 'Hrothgar', 'Warrior');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (3, '4/19/2021', 6, 'shammor2n', 'Miqo''te', 'Black Mage');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '6/20/2005', 7, 'rhaycock2o', 'Au Ra', 'Astrologian');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '6/17/2022', 8, 'hwytchard2p', 'Lalafell', 'Ninja');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (2, '12/19/2005',9, 'lminichi2q', 'Viera', 'Samurai');
insert into Personnage.Personnage (GrandeCompagnieId, DateCreation, ServerId, Pseudo, race, Classe) values (1, '5/14/2004', 10, 'abuzine2r', 'Au Ra', 'Dark Knight');
GO



USE BD_FF14
GO
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (1, 71);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (2, 74); 
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (3, 10); 
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (4, 11); 
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (5, 40); 
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (6, 61); 
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (7, 3);  
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (8, 49); 
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (9, 80); 
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (10, 60);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (11, 24);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (12, 1); 
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (13, 9);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (14, 30);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (15, 2);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (16, 85);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (17, 83);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (18, 21);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (19, 18);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (20, 50);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (21, 69);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (22, 83);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (23, 28);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (24, 9);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (25, 43);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (26, 31);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (27, 17);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (28, 53);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (29, 80);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (30, 11);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (31, 87);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (32, 52);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (33, 58);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (34, 78);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (35, 22);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (36, 24);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (37, 25);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (38, 13);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (39, 58);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (40, 18);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (41, 75);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (42, 18);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (43, 9);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (44, 34);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (45, 57);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (46, 78);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (47, 14);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (48, 61);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (49, 60);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (50, 30);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (51, 49);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (52, 42);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (53, 80);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (54, 30);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (55, 15);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (56, 79);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (57, 69);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (58, 35);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (59, 59);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (60, 76);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (61, 10);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (62, 15);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (63, 26);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (64, 23);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (65, 84);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (66, 26);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (67, 20);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (68, 83);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (69, 47);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (70, 2);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (71, 40);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (72, 82);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (73, 57);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (74, 88);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (75, 4);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (76, 42);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (77, 39);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (78, 84);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (79, 86);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (80, 52);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (81, 87);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (82, 77);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (83, 5);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (84, 34);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (85, 87);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (86, 53);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (87, 73);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (88, 47);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (89, 37);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (90, 47);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (91, 31);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (92, 84);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (93, 29);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (94, 30);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (95, 23);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (96, 80);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (97, 23);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (98, 79);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (99, 70);
INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (100, 88);
GO

--//INSERTION DES ITEM DANS L'INVENTAIRE DU PERSONNAGE

--USE BD_FF15
--GO
-- Inserting random pairs of PersonnageId and ItemId
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (101, 32);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (102, 59);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (103, 41);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (104, 11);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (105, 85);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (106, 48);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (107, 19);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (108, 24);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (109, 37);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (110, 64);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (111, 6);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (112, 15);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (113, 77);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (114, 83);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (115, 2);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (116, 60);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (117, 50);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (118, 66);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (119, 74);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (120, 88);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (121, 36);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (122, 52);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (123, 29);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (124, 76);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (125, 18);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (126, 8);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (127, 4);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (128, 69);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (129, 12);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (130, 45);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (131, 72);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (132, 55);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (133, 13);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (134, 87);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (135, 27);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (136, 26);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (137, 51);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (138, 5);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (139, 70);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (140, 22);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (141, 10);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (142, 44);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (143, 49);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (144, 62);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (145, 65);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (146, 39);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (147, 73);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (148, 61);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (149, 56);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (150, 38);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (151, 59);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (152, 34);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (153, 16);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (154, 9);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (155, 41);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (156, 78);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (157, 71);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (158, 40);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (159, 79);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (160, 68);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (161, 33);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (162, 75);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (163, 20);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (164, 53);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (165, 43);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (166, 23);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (167, 46);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (168, 30);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (169, 28);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (170, 25);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (171, 69);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (172, 81);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (173, 29);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (174, 83);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (175, 74);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (176, 47);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (177, 18);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (178, 17);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (179, 42);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (180, 57);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (181, 63);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (182, 11);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (183, 37);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (184, 48);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (185, 19);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (186, 65);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (187, 62);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (188, 66);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (189, 31);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (190, 60);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (191, 54);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (192, 59);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (193, 68);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (194, 20);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (195, 73);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (196, 75);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (197, 18);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (198, 9);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (199, 53);
--INSERT INTO Personnage.PersonnageItem (PersonnageId, ItemId) VALUES (200, 50);

--GO