#!/bin/bash

echo "SP_CERTIFICATE=\"${SP_CERTIFICATE}\"" > /app/python_saml_prover/saml_config.py
echo "SP_CERTIFICATE_KEY=\"${SP_CERTIFICATE_KEY}\"" >> /app/python_saml_prover/saml_config.py
echo "IDP_CERTIFICATE=\"${IDP_CERTIFICATE}\"" >> /app/python_saml_prover/saml_config.py
echo "IDP_DISPLAY_NAME=\"IDP\"" >> /app/python_saml_prover/saml_config.py
echo "IDP_ENTITY_ID=\"${IDP_ENTITY_ID}\"" >> /app/python_saml_prover/saml_config.py
echo "IDP_SSO_URL=\"${IDP_SSO_URL}\"" >> /app/python_saml_prover/saml_config.py
echo "IDP_SLO_URL=\"${IDP_SLO_URL}\"" >> /app/python_saml_prover/saml_config.py
echo "HTTP_HOSTNAME=\"${HTTP_HOSTNAME}\"" >> /app/python_saml_prover/saml_config.py
echo "HTTP_PORT=8080" >> /app/python_saml_prover/saml_config.py
echo "HTTP_BIND_ADDRESS=\"0.0.0.0\"" >> /app/python_saml_prover/saml_config.py
echo "MAX_TOKENS=65000" >> /app/python_saml_prover/saml_config.py
echo "SECRET=\"${SECRET}\"" >> /app/python_saml_prover/saml_config.py

/usr/bin/python3 /app/python_saml_prover/authenticator_server.py
