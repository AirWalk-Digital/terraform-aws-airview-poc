{
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect":"Allow",
        "Action": [
          "s3:GetObject",
          "s3:GetObjectVersion",
          "s3:GetBucketVersioning",
          "s3:PutObjectAcl",
          "s3:PutObject"
        ],
        "Resource": [
          "${bucket_arn}",
          "${bucket_arn}/*"
        ]
      },
      {
        "Effect": "Allow",
        "Action": [
          "codestar-connections:UseConnection"
        ],
        "Resource": "${codestar_connection_arn}"
      },
      {
        "Effect": "Allow",
        "Action": [
          "codebuild:BatchGetBuilds",
          "codebuild:StartBuild"
        ],
        "Resource": "*"
      }
    ]
  }