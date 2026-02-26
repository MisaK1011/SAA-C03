# Create Website 1

## Create a bucket

```sh
aws s3 mb s3://cors-fun-ab-36252-1253
```

## Change block public access

```sh
aws s3api put-public-access-block \
--bucket cors-fun-ab-36252-1253 \
--public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
```

## Create a bucket policy

```sh
aws s3api put-bucket-policy --bucket cors-fun-ab-36252-1253 --policy file://bucket-policy.json
```

## Turn on static website hosting

```sh
aws s3api put-bucket-website --bucket cors-fun-ab-36252-1253 --website-configuration file://website.json
```

## Upload our index.html file and include a resource that would be cross-origin

aws s3 cp index.html s3://cors-fun-ab-36252-1253

## View the website and see if the index.html is there.


It this for ca-central-1
http://cors-fun-ab-36252-1253.s3-website.ca-central-1.amazonaws.com

Other regions might ue a hyphen instead
http://cors-fun-ab-36252-1253.s3-website-ap-southeast-2.amazonaws.com/

# Create Website 2

```sh
aws s3 mb s3://cors-fun2-ab-36252-1253
```

## Change block public access

```sh
aws s3api put-public-access-block \
--bucket cors-fun2-ab-36252-1253 \
--public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
```

## Create a bucket policy

```sh
aws s3api put-bucket-policy --bucket cors-fun2-ab-36252-1253 --policy file://bucket-policy2.json
```

## Turn on static website hosting

```sh
aws s3api put-bucket-website --bucket cors-fun2-ab-36252-1253 --website-configuration file://website.json
```

## Upload our javascript file

aws s3 cp hello.js s3://cors-fun2-ab-36252-1253

## Create API Gateway with mock response and then test the endpoint


curl -X POST -H "Content-Type: application/json" https://x5nmu1pu1l.execute-api.ap-southeast-2.amazonaws.com/prod/hello


## Set CORS on our bucket

aws s3api put-bucket-cors --bucket cors-fun-ab-36252-1253 --cors-configuration file://cors.json