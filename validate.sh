#!/usr/bin/env bash
cd example/exampleA || return
<<<<<<< Updated upstream
rm .terraform/ -fr
=======
rm .terraform/ -fr 
>>>>>>> Stashed changes
terraform init
terraform validate
