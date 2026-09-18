<?php

/**
 * Database Configuration
 */
define("DATABASE_HOST", getenv("DB_HOST") ?: "getcontact-mysql");
define("DATABASE_NAME", getenv("DB_NAME") ?: "getcontact_web");
define("DATABASE_USER", getenv("DB_USER") ?: "root");
define("DATABASE_PASS", getenv("DB_PASS") ?: "root");

/**
 * Production
 */
// define("DATABASE_HOST", "");
// define("DATABASE_NAME", "");
// define("DATABASE_USER", "");
// define("DATABASE_PASS", "");