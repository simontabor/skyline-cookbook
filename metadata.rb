maintainer        "Simon Tabor"
maintainer_email  "me@simontabor.com"
license           "Apache 2.0"
description       "Installs and starts Etsy's Skyline service"
version           "0.0.0"

recipe "mongodb", "Default recipe simply includes the mongodb::apt recipe"

supports "ubuntu"
supports "debian" # IN THEORY, NOT TESTED
