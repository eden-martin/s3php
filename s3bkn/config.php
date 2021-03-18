<?php
// Bucket Name
$bucket="my-exported-vms2";
require_once('S3.php');			
//AWS access info
$awsAccessKey = 'AKIA32WS7TFXDPYCH6UF';
$awsSecretKey = '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';
//instantiate the class
$s3 = new S3($awsAccessKey, $awsSecretKey);
$s3->putBucket($bucket, S3::ACL_PUBLIC_READ);
?>