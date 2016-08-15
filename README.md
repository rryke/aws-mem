# aws-mem-cookbook

Basic cookbook to download AWS monitoring script, install it, and enter it in cron. This could also work for a basic download and unzip of almost any file though.

This will need an IAM role configured with the appropriate permissions. File source here: http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/mon-scripts-perl.html

## Supported Platforms

Ubuntu 14.04

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><tt>['aws-mem']['localpath']</tt></td>
    <td>path</td>
    <td>where you want the local install dir</td>
  </tr>
  <tr>  
    <td><tt>['aws-mem']['remotepath']</tt></td>
    <td>url</td>
    <td>location of file</td>
  </tr>  
    <td><tt>['aws-mem']['filename']</tt></td>
    <td>url</td>
    <td>filename</td>
  </tr>
</table>

## Usage

### aws-mem::default

Include `aws-mem` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[aws-mem::default]"
  ]
}
```

## License and Authors

Author:: Ryan Ryke - ryan@itsacloudlife.com - www.cloudlifeconsulting.com


This is an update to test code deploy
and another update to demo
