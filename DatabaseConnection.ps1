Function Get-DatabaseConnection()
{
    try {
        {
            $conn = New-Object System.Data.SqlClient.SqlConnection("Server=<server>; Database=<database>; user id= <user id>; Password = <password>" )
            $conn.Open()
            $conn
        }
    }
    catch 
    {
       Write-Host "Error connecting to database. $($_)"
       throw "Error connecting to database."
    }

    try {
        $conn = Get-DatabaseConnection
        if($Conn.State -ne "Open") {
            Write-Host "Database connection state is $($conn.State)"
            Exit 1
        }
        $conn.Close()

    } 
    catch {
        Write-Host "Unable to query database."
        Exit 1
    }
}