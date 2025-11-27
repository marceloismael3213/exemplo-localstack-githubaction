provider "aws" {
  access_key                  = "test"
  secret_key                  = "test"
  region                      = "us-east-1"

  s3_use_path_style           = true

  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_region_validation      = true
  skip_metadata_api_check     = true
  skip_s3_checksum            = true

  # ESSENCIAL PARA EVITAR O ERRO
  skip_s3_control_endpoint    = true

  endpoints {
    s3 = "http://localhost:4566"
  }
}
