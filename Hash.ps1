Function hash($request)
{
    $hasher = [System.Security.Cryptography.SHA256]::Create()
    $content = [Text.Encoding]::UTF8.GetBytes($request)
    $hash = $hasher.ComputeHash($content)
    return $hash
}