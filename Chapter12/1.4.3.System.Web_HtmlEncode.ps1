'<h1>{0}</h1>' -f [System.Web.HttpUtility]::HtmlEncode('Files > 100MB')

# Expects:
# <h1>Files &gt; 100MB</h1>