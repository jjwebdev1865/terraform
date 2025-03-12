# Project - S3 static website

- project scope found at: https://github.com/lm-academy/terraform-course/blob/main/projects/proj01-s3-static-website.md
- project completed in directory *proj01-s3-static-website*

## Key Notes
- all outputs should go in a specified *outputs.tf* file
    * outputs will been seen at the end of apply command

## Implementation Notes
1) create provider.tf with terraform object and provider object
2) create s3.tf file to create s3 resources

- End of video one: should be able to see S3 bucket in console
3) need to enable bucket access (done in s3.tf at "aws_s3_bucket_public_access_block")
- End of video two: should be able to see bucket.
    * when clicking into the bucket and selecting *Permissions*, should be able to see the bucket policy

4) have a static website
- end of video three: created a static s3 website using terraform. this was done with uploading files

5) upload html files using terraform


