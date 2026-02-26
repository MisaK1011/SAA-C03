## Create a bucket

aws s3 mb s3://bucket-policy-example-ab-5235-76429

## Create bucket policy

aws s3api put-bucket-policy --bucket bucket-policy-example-ab-5235-76429 --policy file://policy.json

# In the other account access the bucket

touch bootcamp.txt
aws s3 cp bootcamp.txt s3://bucket-policy-example-ab-5235-76429
aws s3 ls s3://bucket-policy-example-ab-5235-76429


## Cleanup

aws s3 rm s3://bucket-policy-example-ab-5235-76429/bootcamp.txt
aws s3 rb s3://bucket-policy-example-ab-5235-76429