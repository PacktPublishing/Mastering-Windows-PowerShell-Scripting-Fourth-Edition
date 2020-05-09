$string = @'
<table>
    <tr><td>1</td><td>One</td></tr>
    <tr><td>11</td><td>Eleven</td></tr>
    <tr><td>111</td><td>One-hundred and eleven</td></tr>
</table>
'@
$string -match '(?<=<td>\d<.+?><td>).+(?=</td>)'
