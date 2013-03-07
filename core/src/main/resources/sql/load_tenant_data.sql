--
-- The Archetype is configured with "hibernate.hbm2ddl.auto" value="create-drop" in "persistence.xml".
--
-- This will cause hibernate to populate the database when the application is started by processing the files that
-- were configured in the hibernate.hbm2ddl.import_files property.
--
-- This file is responsible for loading the the catalog data used in the Archetype.   Implementers can change this file
-- to load their initial catalog.
--

INSERT INTO BLC_CATALOG (CATALOG_ID, NAME) VALUES (1, "test1");
INSERT INTO BLC_CATALOG (CATALOG_ID, NAME) VALUES (2, "test2");

INSERT INTO BLC_SITE (SITE_ID, NAME, SITE_IDENTIFIER_TYPE, SITE_IDENTIFIER_VALUE, PRODUCTION_SANDBOX_ID) VALUES (1, "test1", "SITE", "test1", NULL);
INSERT INTO BLC_SITE (SITE_ID, NAME, SITE_IDENTIFIER_TYPE, SITE_IDENTIFIER_VALUE, PRODUCTION_SANDBOX_ID) VALUES (2, "test2", "SITE", "test2", NULL);

INSERT INTO BLC_TENANT (TENANT_ID, NAME, SITE_ID) VALUES (1, "test1", 1);
INSERT INTO BLC_TENANT (TENANT_ID, NAME, SITE_ID) VALUES (2, "test2", 2);

INSERT INTO BLC_TENANT_CATALOG (TENANT_ID, CATALOG_ID) VALUES (1,1);
INSERT INTO BLC_TENANT_CATALOG (TENANT_ID, CATALOG_ID) VALUES (1,2);

INSERT INTO BLC_TENANT_CATALOG (TENANT_ID, CATALOG_ID) VALUES (2,1);