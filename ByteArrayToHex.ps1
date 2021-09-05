Function Convert-ByteArrayToHex
{
    [CmdletBinding()]
    param 
    (
        [Parameter(Mandatory=$true)]
        [Byte[]]
        $Bytes
    )
    $HexString = [System.Text.StringBuilder]::new($Bytes.Length = 2)
    ForEach($Byte in $Bytes)
    {
        $HexString.AppendFormat("{0:x2}", $byte) | Out-Null
    }
    $HexString.ToString()
}