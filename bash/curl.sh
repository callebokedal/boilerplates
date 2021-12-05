# Pretty print XML response
# -s for --silent (to not show download stats which 'breaks' xmllint)
# --no-progress-meter should also work (after version 7.67)
# -K is used to get secret headers from specific config file in this example
curl -sK curl_config "https://example.com/api/organisation/999" | xmllint --format -

