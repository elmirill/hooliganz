AWS_CONFIG = {
  'access_key_id' => ENV["aws_access_key_id"],
  'secret_access_key' => ENV["aws_secret_access_key"],
  'bucket' => ENV["s3_bucket_name"],
  'acl' => 'public-read',
  'key_start' => 'uploads/'
}