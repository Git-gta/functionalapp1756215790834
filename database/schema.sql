CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    name VARCHAR(50),
    description TEXT,
    category VARCHAR(50),
    target_audience TEXT,
    logo_prompt TEXT,
    color_scheme VARCHAR(50)
);

CREATE TABLE Feature (
    feature_id INT PRIMARY KEY,
    project_id INT,
    feature_name VARCHAR(50)
);

CREATE TABLE TechStack (
    tech_id INT PRIMARY KEY,
    project_id INT,
    tech_name VARCHAR(50)
);

INSERT INTO Project (project_id, name, description, category, target_audience, logo_prompt, color_scheme)
VALUES (1, 'FunctionalApp1756215790834', 'Application SaaS complète avec dashboard interactif, authentification, base de données et API REST pour la gestion de projets', 'Gestion de Projet', 'Équipes de projet, chefs de projet, gestionnaires', 'Un logo moderne et épuré représentant la gestion de projets', '#0077B6,#00A8E8');

INSERT INTO Feature (feature_id, project_id, feature_name)
VALUES 
(1, 1, 'Dashboard interactif'),
(2, 1, 'Authentification sécurisée'),
(3, 1, 'Gestion de la base de données'),
(4, 1, 'API REST pour la gestion de projets');

INSERT INTO TechStack (tech_id, project_id, tech_name)
VALUES 
(1, 1, 'React'),
(2, 1, 'Node.js'),
(3, 1, 'PostgreSQL');