cat <<EOF > .env
# App port to run on
PORT=8080

# The domain that this website is on
DEFAULT_DOMAIN="$DOMAIN"

# Postgres database credential details
DB_HOST=$POSTGRESQL_ADDON_HOST
DB_PORT=$POSTGRESQL_ADDON_PORT
DB_NAME=$POSTGRESQL_ADDON_DB
DB_USER=$POSTGRESQL_ADDON_USER
DB_PASSWORD=$POSTGRESQL_ADDON_PASSWORD

# ONLY NEEDED FOR MIGRATION !!1!
# Neo4j database credential details
NEO4J_DB_URI="bolt://localhost"
NEO4J_DB_USERNAME=neo4j
NEO4J_DB_PASSWORD=BjEphmupAf1D5pDD

# Redis host and port
REDIS_HOST="$REDIS_HOST"
REDIS_PORT="$REDIS_PORT"
REDIS_PASSWORD="$REDIS_PASSWORD"

# The daily limit for each user
USER_LIMIT_PER_DAY=50

# Create a cooldown for non-logged in users in minutes
# Set 0 to disable
NON_USER_COOLDOWN=0

# Max number of visits for each link to have detailed stats
DEFAULT_MAX_STATS_PER_LINK=5000

# Use HTTPS for links with custom domain
CUSTOM_DOMAIN_USE_HTTPS=true

# A passphrase to encrypt JWT. Use a long and secure key.
JWT_SECRET="$JWT_SECRET"

# Admin emails so they can access admin actions on settings page
# Comma seperated
ADMIN_EMAILS="$ADMIN_EMAILS"

# Invisible reCaptcha secret key
# Create one in https://www.google.com/recaptcha/intro/
RECAPTCHA_SITE_KEY="$RECAPTCHA_SITE_KEY"
RECAPTCHA_SECRET_KEY="$RECAPTCHA_SECRET_KEY"

# Google Cloud API to prevent from users from submitting malware URLs.
# Get it from https://developers.google.com/safe-browsing/v4/get-started
GOOGLE_SAFE_BROWSING_KEY=

# Google Analytics tracking ID for universal analytics.
# Example: UA-XXXX-XX
GOOGLE_ANALYTICS=
GOOGLE_ANALYTICS_UNIVERSAL=

# Google Analytics tracking ID for universal analytics
# This one is used for links
# GOOGLE_ANALYRICS_UNIVERSAL=

# Your email host details to use to send verification emails.
# More info on http://nodemailer.com/
# Mail from example "Kutt <support@kutt.it>". Leave empty to use MAIL_USER
MAIL_HOST="$MAIL_HOST"
MAIL_PORT="$MAIL_PORT"
MAIL_SECURE=true
MAIL_USER="$MAIL_USER"
MAIL_FROM="$MAIL_FROM"
MAIL_PASSWORD="$MAIL_PASSWORD"

# The email address that will receive submitted reports.
REPORT_MAIL=

# Support email to show on the app
CONTACT_EMAIL=

SITE_NAME="Kutt"
EOF
