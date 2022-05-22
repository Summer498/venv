Param
(
    [parameter(mandatory)][String]$venv_name,
    [float]$python_version
)

if($python_version -eq 0)  # Use python most prior on PATH
{
    [Console]::WriteLine("python -m venv $venv_name")
    python -m venv $venv_name
}
else  # Use specific python
{

    $pyver = $python_version

    # Convert Python versions expressed in decimals to integers.
    if($python_version -lt 10) # NOTE: Usable until python 10 comes
    {
        $pyver = [Math]::Round($python_version*10)
    }

    [Console]::WriteLine("C:/Program Files/python$pyver/python -m venv $venv_name")
    & "C:/Program Files/python$pyver/python" -m venv $venv_name
}

# Make activate.ps1
[Console]::WriteLine("echo $venv_name/Scripts/activate > activate.ps1")
echo $venv_name/Scripts/activate > activate.ps1
[Console]::WriteLine()
