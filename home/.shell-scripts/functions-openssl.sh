#!/bin/bash

# Setup process and initial configuration for OpenSSL...
function setup-openssl {
  cd ~
  
  # Setup directory structure...
  mkdir -p OpenSSL/myCA/private
  mkdir OpenSSL/signed_certs
  mkdir OpenSSL/requests
  
  cd OpenSSL
  
  echo '01' > serial && touch index
  
  cp ~/GitHub/Scripts-Settings/Bash/FuncLib/caconfig.cnf myCA/
  
  # Create the Root CA certificate...
  openssl req -x509 -newkey rsa:4096 -out myCA/cacert.pem -outform PEM -days 1825 -config ~/OpenSSL/myCA/caconfig.cnf
  
  # Strip all certificate metadata leaving only the CERTIFICATE section...
  openssl x509 -in myCA/cacert.pem -out myCA/cacert.crt -config ~/OpenSSL/myCA/caconfig.cnf
}

#function generate-ca-signed-cert {
#  openssl ca -policy open_policy -cert myCA/cacert.pem -in requests/iis_cert_req.txt -keyfile myCA/private/cakey.pem -days 365 -out signed_certs/iis_x509_01.crt
#  openssl x509 -in iis_x509_01.crt -out iis_x509.cer
#}
