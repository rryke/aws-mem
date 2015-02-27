# aws-mem-cookbook

TODO: Enter the cookbook description here.

## Supported Platforms

Ubuntu 14.04

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['aws-mem']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
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

Author:: Ryan Ryke - ryan@itsacloudlife.com
