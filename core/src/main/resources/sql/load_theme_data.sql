--
-- This file creates three Broadleaf Sites and two sample ThemeDefinitions
--
            
-----------------------------------------------------------------------------------------------------------------------------------
-- SAMPLE THEME 
-----------------------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_THEME_DEFINITION (THEME_DEFINITION_ID, THEME_NAME, THEME_DESCRIPITON, THEME_PATH) VALUES (1, 'Default Theme', 'Default theme used if a site does not specify a theme', 'default-theme/') ;
INSERT INTO BLC_THEME_DEFINITION (THEME_DEFINITION_ID, THEME_NAME, THEME_DESCRIPITON, THEME_PATH) VALUES (2, 'Custom Theme 1', 'Custom theme 1', 'theme2/') ;

-----------------------------------------------------------------------------------------------------------------------------------
-- SAMPLE THEME CONFIGURATIONS
--      Site 1 maps to custom theme1
--      Site 2 maps to custom theme1
--      Site 3 maps directly to the default theme
--      Site 4 doesn't map to a theme and therefore uses the default
-----------------------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_THEME_CONFIGURATION (THEME_CONFIGURATION_ID, SITE_ID, THEME_DEFINITION_ID, DEFAULT_THEME) VALUES (1, null, 1, true);
INSERT INTO BLC_THEME_CONFIGURATION (THEME_CONFIGURATION_ID, SITE_ID, THEME_DEFINITION_ID, DEFAULT_THEME) VALUES (2, 1, 2, true);
INSERT INTO BLC_THEME_CONFIGURATION (THEME_CONFIGURATION_ID, SITE_ID, THEME_DEFINITION_ID, DEFAULT_THEME) VALUES (3, 2, 2, true);
INSERT INTO BLC_THEME_CONFIGURATION (THEME_CONFIGURATION_ID, SITE_ID, THEME_DEFINITION_ID, DEFAULT_THEME) VALUES (4, 3, 1, true);

--
-- Site 4 has customized the color
--
INSERT INTO BLC_THEME_FLD(THEME_FLD_ID, FLD_KEY, THEME_CONFIGURATION_ID, VALUE) VALUES (1, '__headerColor__', 4, '4E81BE');
INSERT INTO BLC_THEME_FLD_MAP(MAP_KEY, THEME_FLD_ID, THEME_CONFIGURATION_ID) VALUES ('__headerColor__', 1, 4);



