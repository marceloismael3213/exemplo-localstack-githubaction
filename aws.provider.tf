provider "aws" {
  access_key                  = "test"
  secret_key                  = "test"
  region                      = "us-east-1"

  # Permite endpoints locais
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_region_validation      = true

  s3_use_path_style = true

  endpoints {
    s3         = "http://localstack:4566"
    s3control  = "http://localhost" # bloqueia chamada ao S3 Control
  }
}
