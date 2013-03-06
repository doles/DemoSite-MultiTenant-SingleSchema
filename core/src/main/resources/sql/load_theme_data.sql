--
-- The Archetype is configured with "hibernate.hbm2ddl.auto" value="create-drop" in "persistence.xml".
--
-- This will cause hibernate to populate the database when the application is started by processing the files that
-- were configured in the hibernate.hbm2ddl.import_files property.
--
-- This file loads some sample content pages and structured content data.
--

-----------------------------------------------------------------------------------------------------------------------------------
-- SAMPLE THEME 
-----------------------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_THEME_DEFINITION (THEME_DEFINITION_ID, THEME_NAME, THEME_DESCRIPITON, THEME_PATH) VALUES (1, 'Default Theme', 'Default theme used if a site does not specify a theme', 'default-theme/') ;
INSERT INTO BLC_THEME_DEFINITION (THEME_DEFINITION_ID, THEME_NAME, THEME_DESCRIPITON, THEME_PATH) VALUES (2, 'Custom Theme 1', 'Custom theme 1', 'theme2/') ;

-----------------------------------------------------------------------------------------------------------------------------------
-- SAMPLE THEME CONFIGURATION 
-----------------------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_THEME_CONFIGURATION (THEME_CONFIGURATION_ID, SITE_ID, THEME_DEFINITION_ID, DEFAULT_THEME) VALUES (1, null, 1, true);
INSERT INTO BLC_THEME_CONFIGURATION (THEME_CONFIGURATION_ID, SITE_ID, THEME_DEFINITION_ID, DEFAULT_THEME) VALUES (2, 2, 2, true);



