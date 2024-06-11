If (!(Get-Command scoop -ErrorAction SilentlyContinue))
{
  Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
  Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
}

# add extra bucket
# add non-portable bucket
# add install from package list
