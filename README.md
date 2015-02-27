# aws-mem-cookbook

Basic cookbook to download AWS monitoring script, install it, and enter it in cron. This could also work for a basic download and unzip of almost any file though. 

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
    <td><tt>['aws-mem']['remotepath']</tt></td>
    <td>url</td>
    <td>location of file</td>
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
