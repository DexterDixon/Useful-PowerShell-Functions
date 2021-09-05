Function Ask-ToRun($section)
{
    $title = "Run $section"
    $message = "Do you want to run $(section)?"

    $yes = New-Object System.Management.Automation.Host.ChoiceDescription "&Yes", "Run $($section)."
    $yno = New-Object System.Management.Automation.Host.ChoiceDescription "&No", "Do not run $($section)."
    $options [System.Management.Automation.Host.ChoiceDescription[]]($yes,$no)
    $result = $host.ui.PromptForChoice($title,$message,$options,0)
    switch($results)
    {
        0 {$true}
        1 {$false}
    }


}