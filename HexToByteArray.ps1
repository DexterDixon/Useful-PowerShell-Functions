Function Convert-HexToByteArray
{
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [String]
        $HexString
    )
    $Bytes = [Byte[]]::new($HexString.Length/2)
    for($i=0; $i -lt $HexString.Length; $i+=2)
    {
        $Bytes[$i/2] = [convert]::ToByte($HexString.Substring($i, 2), 16)
    }
    $Bytes
}