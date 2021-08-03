function Get-FirstDuplicateInString
{
    <#
    .SYNOPSIS 
       Returns first matched duplicate letter in string else returns null
     .DESCRIPTION
        Takes parameter either through passed parameter or from pipe
        Formatting is not PS standard but I find it works better for me to show matching brackets
    .PARAMETER PassedString
        String to evaluate
    #>
    [CmdletBinding()]
    param(
        [Parameter(Mandatory,ValueFromPipeline)]
        [string]$PassedString
    )
    begin
    {
        $arr = New-Object System.Collections.Generic.HashSet[char]
    }
    process
    {
        for ($i = 0;  $i -lt $PassedString.Length; $i++)
        {
            $char = $PassedString[$i]
            if (-not $arr.Add($char))
            {
                return $char
            }
        }
    }
}
