#!/bin/sh

# Decrypt the file
mkdir $HOME/secrets

# --batch to prevent iteractive command
# --yes to assume "yes" for questions
gpg --quiet --batch --yes --decrypt --passphrase="$LARGE_SECRET_PASSPHRASE" --output $HOME/secrets/.top_secret_decrypted .top_secret.gpg
