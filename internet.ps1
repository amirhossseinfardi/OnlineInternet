

# First we create the request.
$HTTP_Request = [System.Net.WebRequest]::Create('http://google.com')

# We then get a response from the site.
$HTTP_Response = $HTTP_Request.GetResponse()

# We then get the HTTP code as an integer.
$HTTP_Status = [int]$HTTP_Response.StatusCode

If ($HTTP_Status -eq 200) {
    Write-Host "Internet is OK!"
}
Else {
    Write-Host "Oh, no internet connection . . . i will try to connect"
$username = "username" 
$password = "password"
$ie = New-Object -com InternetExplorer.Application 
$ie.visible=$false
$ie.navigate("https://hotspot.um.ac.ir/login")
while($ie.ReadyState -ne 4) {start-sleep -m 100} 
$ie.document.getElementById("username").value= "$username" 
$ie.document.getElementById("passwordInput").value = "$password" 
$ie.document.getElementById("submitButton").Click()
start-sleep 10
$ie.Parent.Quit()
}

# Finally, we clean up the http request by closing it.

sleep 5
