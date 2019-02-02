;;****************************** PHP-C7web-techniques.lisp **************************
;;

;;FROM PROGRAMMING PHP 2012
;;
#|
CHAPTER 7. WEB TECHNIQUES

PHP was designed as a web-scripting language and, although it is possible to use it in purely command-line and GUI scripts, the Web accounts for the vast majority of PHP uses. A dynamic website may have forms, sessions, and sometimes redirection, and this chapter explains how to implement those things in PHP. You'll learn how PHP provides access to form parameters and uploaded files, how to send cookies and redirect the browser, how to use PHP sessions, and more.

HTTP Basics
The Web runs on HTTP, or HyperText Transfer Protocol. This protocol governs how web browsers request files from web servers and how the servers send the files back. To understand the various techniques we'll show you in this chapter, you need to have a basic understanding of HTTP. For a more thorough discussion of HTTP, see the HTTP Pocket Reference by Clinton Wong (O'Reilly).
When a web browser requests a web page, it sends an HTTP request message to a web server. The request message always includes some header information, and it sometimes also includes a body. The web server responds with a reply message, which always includes header information and usually contains a body. 
xxx
The first line of an HTTP request looks like this:
GET /index.html HTTP/1.1
This line specifies an HTTP command, called a method, 
followed by the ADDRESS OF A DOCUMENT and the version of the HTTP protocol being used.
 In this case, the request is using the GET method to ask for the index.html document using HTTP 1.1. After this initial line, the request can contain
 OPTIONAL HEADER INFORMATION that gives the server additional data about the request. For example:
USER-AGENT: Mozilla/5.0 (Windows 2000; U) Opera 6.0  [en]
ACCEPT: image/gif, image/jpeg, text/*, */*
The USER-AGENT HEADER provides information about the web browser, while the 
ACCEPT HEADER specifies the MIME types that the browser accepts. After any headers, the request contains A BLANK LINE TO INDICATE THE END OF THE HEADER SECTION. 
The request can also contain additional data, if that is appropriate for the method being used (e.g., with the POST method, as we'll discuss shortly). If the request doesn't contain any data, it ends with a blank line.
The WEB SERVER RECEIVES THE REQUEST, PROCESSES IT, AND SENDS A RESPONSE.
 The first line of an HTTP response looks like this:
HTTP/1.1 200 OK
This line specifies the protocol version, A STATUS CODE, AND A DESCRIPTION OF THAT CODE. In this case, the status CODE IS "200", MEANING THAT THE REQUEST WAS SUCCESSFUL (hence the description "OK"). 
After the status line, the response contains headers that give the client additional information about the response. For example:
Date: Thu, 31 May 2012 14:07:50 GMT
Server: Apache/2.2.14 (Ubuntu)
Content-Type: text/html
Content-Length: 1845
The Server header provides information about the web server software, while the 
CONTENT-TYPE HEADER specifies the MIME type of the data included in the response. After the headers,
 the response contains A BLANK LINE, FOLLOWED BY THE REQUESTED DATA if the request was successful.
The two most common HTTP methods are GET and POST. The GET method is designed for retrieving information, such as a document, an image, or the results of a database query, from the server.
 The POST method is meant for posting information, such as a credit card number or information that is to be stored in a database, to the server. The GET method is what a web browser uses when the user types in a URL or clicks on a link. 
When the user SUBMITS A FORM, EITHER the GET or POST method can be used, as specified by the method attribute of the form tag. We'll discuss the GET and POST methods in more detail in the section Processing Forms.

< 
> 
xxx
VARIABLES
Server configuration and request information—including form parameters and cookies—are accessible in three different ways from your PHP scripts, as described in this section. Collectively, this information is referred to as EGPCS (environment, GET, POST, cookies, and server).
PHP creates SIX GLOBAL ARRAYS that contain the EGPCS information.
THE GLOBAL ARRAYS ARE:
$_COOKIE
Contains any COOKIE VALUES PASSED as part of the request, where the keys of the array are the names of the cookies
$_GET
Contains any PARAMETERS that are part of a GET request, where the KEYS of the array are the NAMES of the form parameters
xxx
$_POST
Contains any PARAMETERS that are part of a POST request, where the KEYS of the array are the NAMES of the form parameters
$_FILES
Contains information about any UPLOADED FILES
$_SERVER
Contains useful information about the web server, as described in the next section
xxx
$_ENV
Contains the values of any ENVIRONMENT VARIABLES, where the KEYS of the array are the NAMES of the environment variables
These variables are not only global, but are ALSO VISIBLE FROM WITHIN FUNCTION DEFINITIONS. 
xxx
The $_REQUEST array is also created by PHP automatically. 
The $_REQUEST array contains the ELEMENTS of the $_GET, $_POST, and $_COOKIE arrays ALL IN ONE ARRAY VARIABLE.

< 
> 
SERVER INFORMATION
The $_SERVER array contains a lot of useful information from the web server. Much of this information comes from the environment variables required in the CGI specification.

Here is a COMPLETE LIST OF THE ENTRIEs in $_SERVER that come from CGI:
xxx
PHP_SELF
The NAME OF THE CURRENT SCRIPT, RELATIVE TO THE DOCUMENT ROOT 
(e.g., /store/cart.php). You should already have noted seeing this used in some of the sample code in earlier chapters. This variable is USEFUL WHEN CREATING SELF-REFERENCING SCRIPTS, as we'll see later.
SERVER_SOFTWARE
A string that identifies the server (e.g., "Apache/1.3.33 (Unix) mod_perl/1.26 PHP/5.0.4").
SERVER_NAME
The hostname, DNS alias, or IP address for self-referencing URLs (e.g., www.example.com).
GATEWAY_INTERFACE
The version of the CGI standard being followed (e.g., "CGI/1.1").
SERVER_PROTOCOL
The name and revision of the request protocol (e.g., "HTTP/1.1").
SERVER_PORT
The server port number to which the request was sent (e.g., "80").
xxx
REQUEST_METHOD
The method the client used to fetch the document (e.g., "GET").
PATH_INFO
Extra path elements given by the client (e.g., /list/users).
PATH_TRANSLATED
The value of PATH_INFO, translated by the server into a filename (e.g., /home/httpd/htdocs/list/users).
xxx
SCRIPT_NAME
The URL path to the current page, which is useful for self-referencing scripts (e.g., /~me/menu.php).
xxx
QUERY_STRING
Everything after the ? in the URL (e.g., name=Fred+age=35).
xxx
REMOTE_HOST
The hostname of the machine that requested this page (e.g., "dialup-192-168-0-1.example.com (http://dialup-192-168-0-1.example.com)"). If there's no DNS for the machine, this is blank and REMOTE_ADDR is the only information given.
xxx
REMOTE_ADDR
A string containing the IP address of the machine that requested this page (e.g., "192.168.0.250").
xxx
AUTH_TYPE
If the page is password-protected, this is the authentication method used to protect the page (e.g., "basic").
xxx
REMOTE_USER
If the page is password-protected, this is the username with which the client authenticated (e.g., "fred"). Note that there's no way to find out what password was used.
xxx
REMOTE_IDENT
If the server is configured to use identd (RFC 931) identification checks, this is the username fetched from the host that made the web request (e.g., "barney"). Do not use this string for authentication purposes, as it is easily spoofed.
xxx
CONTENT_TYPE
The content type of the information attached to queries such as PUT and POST (e.g., "x-url-encoded").
CONTENT_LENGTH
The length of the information attached to queries such as PUT and POST (e.g., "3,952").
The Apache server also creates entries in the $_SERVER array for each HTTP header in the request. For each key, the header name is converted to uppercase, hyphens (-) are turned into underscores (_), and the string "HTTP_" is prepended. For example, the entry for the User-Agent header has the key "HTTP_USER_AGENT". The two most common and useful headers are:
HTTP_USER_AGENT
The string the browser used to identify itself (e.g., "Mozilla/5.0 (Windows 2000; U) Opera 6.0 [en]")
xxx
HTTP_REFERER
The page the browser said it came from to get to the current page (e.g., http://www.example.com/last_page.html)
TO COPY THE COMPLETE LIST, COPY:
PHP_SELF
SERVER_SOFTWARE
SERVER_NAME
GATEWAY_INTERFACE
SERVER_PROTOCOL
SERVER_PORT
REQUEST_METHOD
PATH_INFO
PATH_TRANSLATED
SCRIPT_NAME
QUERY_STRING
REMOTE_HOST
REMOTE_ADDR
AUTH_TYPE
REMOTE_USER
REMOTE_IDENT
CONTENT_TYPE
CONTENT_LENGTH
HTTP_USER_AGENT
HTTP_REFERER

< 
> 
PROCESSING FORMS
It's easy to process forms with PHP, as the form parameters are available in the $_GET and $_POST arrays. There are many tricks and techniques for working with forms, though, which are described in this section.
Methods
As we already discussed, there are two HTTP methods that a client can use to pass form data to the server: GET and POST. The method that a particular form uses is specified with the method attribute to the form tag. In theory, methods are case-insensitive in the HTML, but in practice some broken browsers require the method name to be in all uppercase.
A GET request encodes the form parameters in the URL in what is called a query string; the text that follows the ? is the query string:
/path/to/chunkify.php?word=despicable&length=3
A POST request passes the form parameters in the body of the HTTP request, leaving the URL untouched.
The most visible difference between GET and POST is the URL line. Because all of a form's parameters are encoded in the URL with a GET request, users can bookmark GET queries. They cannot do this with POST requests, however.
The biggest difference between GET and POST requests, however, is far subtler. The HTTP specification says that GET requests are idempotent—that is, one GET request for a particular URL, including form parameters, is the same as two or more requests for that URL. Thus, web browsers can cache the response pages for GET requests, because the response page doesn't change regardless of how many times the page is loaded. Because of idempotence, GET requests should be used only for queries such as splitting a word into smaller chunks or multiplying numbers, where the response page is never going to change.
POST requests are not idempotent. This means that they cannot be cached, and the server is re-contacted every time the page is displayed. You've probably seen your web browser prompt you with "Repost form data?" before displaying or reloading certain pages. This makes POST requests the appropriate choice for queries whose response pages may change over time—for example, displaying the contents of a shopping cart or the current messages in a bulletin board.
That said, idempotence is often ignored in the real world. Browser caches are generally so poorly implemented, and the Reload button is so easy to hit, that programmers tend to use GET and POST simply based on whether they want the query parameters shown in the URL or not. What you need to remember is that GET requests should not be used for any actions that cause a change in the server, such as placing an order or updating a database.
The type of method that was used to request a PHP page is available through $_SERVER['REQUEST_METHOD']. For example:
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
  // handle a GET request
}
else {
  die("You may only GET this page.");
}
Parameters
Use the $_POST, $_GET, and $_FILES arrays to access form parameters from your PHP code. The keys are the parameter names, and the values are the values of those parameters. Because periods are legal in HTML field names but not in PHP variable names, periods in field names are converted to underscores (_) in the array.
Example 7-1 shows an HTML form that chunkifies a string supplied by the user. The form contains two fields: one for the string (parameter name word) and one for the size of chunks to produce (parameter name number).
Example 7-1. The chunkify form (chunkify.html)
<html>
  <head><title>Chunkify Form</title></head>

  <body>
    <form action="chunkify.php" method="POST">
    Enter a word: <input type="text" name="word" /><br />

    How long should the chunks be?
    <input type="text" name="number" /><br />
    <input type="submit" value="Chunkify!">
  </form>
</body>

</html>
Example 7-2 lists the PHP script, chunkify.php, to which the form in Example 7-1 submits. The script copies the parameter values into variables and uses them.
Example 7-2. The chunkify script (chunkify.php)
$word   = $_POST['word'];
$number = $_POST['number'];

$chunks = ceil(strlen($word) / $number);

echo "The {$number}-letter chunks of '{$word}' are:<br />\n";

for ($i = 0; $i < $chunks; $i++) {
  $chunk = substr($word, $i * $number, $number);
  printf("%d: %s<br />\n", $i + 1, $chunk);
}
Figure 7-1 shows both the chunkify form and the resulting output.
 
Figure 7-1. The chunkify form and its output
Self-Processing Pages
One PHP page can be used to both generate a form and process it. If the page shown in Example 7-3 is requested with the GET method, it prints a form that accepts a Fahrenheit temperature. If called with the POST method, however, the page calculates and displays the corresponding Celsius temperature.
Example 7-3. A self-processing temperature-conversion page (temp.php)
<html>
<head><title>Temperature Conversion</title></head>
<body>

<?php if ($_SERVER['REQUEST_METHOD'] == 'GET') { ?>
  <form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="POST">
    Fahrenheit temperature:
    <input type="text" name="fahrenheit" /><br />
    <input type="submit" value="Convert to Celsius!" />
  </form>

<?php }
else if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  $fahrenheit = $_POST['fahrenheit'];
  $celsius = ($fahrenheit - 32) * 5 / 9;

  printf("%.2fF is %.2fC", $ fahrenheit, $celsius);
}
else {
  die("This script only works with GET and POST requests.");
} ?>

</body>
</html>
Figure 7-2 shows the temperature-conversion page and the resulting output.
Another way for a script to decide whether to display a form or process it is to see whether or not one of the parameters has been supplied. This lets you write a self-processing page that uses the GET method to submit values. Example 7-4 shows a new version of the temperature-conversion page that submits parameters using a GET request. This page uses the presence or absence of parameters to determine what to do.
In Example 7-4, we copy the form parameter value into $fahrenheit. If we weren't given that parameter, $fahrenheit contains NULL, so we can use is_null() to test whether we should display the form or process the form data.
 
Figure 7-2. The temperature-conversion page and its output
Example 7-4. Temperature conversion using the GET method (temp2.php)
<html>
<head>
<title>Temperature Conversion</title>
</head>
<body>
<?php
if (isset ( $_GET ['fahrenheit'] )) {
    $fahrenheit = $_GET ['fahrenheit'];
} else {
    $fahrenheit = null;
}
if (is_null ( $fahrenheit )) {
    ?>
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="GET">
        Fahrenheit temperature: <input type="text" name="fahrenheit" /><br />
        <input type="submit" value="Convert to Celsius!" />
    </form>
<?php
} else {
    $celsius = ($fahrenheit - 32) * 5 / 9;
    printf ( "%.2fF is %.2fC", $fahrenheit, $celsius );
}
?>
</body>
</html>
Sticky Forms
Many websites use a technique known as sticky forms, in which the results of a query are accompanied by a search form whose default values are those of the previous query. For instance, if you search Google for "Programming PHP," the top of the results page contains another search box, which already contains "Programming PHP." To refine your search to "Programming PHP from O'Reilly," you can simply add the extra keywords.
This sticky behavior is easy to implement. Example 7-5 shows our temperature-conversion script from Example 7-4, with the form made sticky. The basic technique is to use the submitted form value as the default value when creating the HTML field.
Example 7-5. Temperature conversion with a sticky form (sticky_form.php)
<html>
<head><title>Temperature Conversion</title></head>
<body>
<?php $fahrenheit = $_GET['fahrenheit']; ?>

<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="GET">
  Fahrenheit temperature:
  <input type="text" name="fahrenheit" value="<?php echo $fahrenheit; ?>" /><br />
  <input type="submit" value="Convert to Celsius!" />
</form>

<?php if (!is_null($fahrenheit)) {
  $celsius = ($fahrenheit - 32) * 5 / 9;
  printf("%.2fF is %.2fC", $fahrenheit, $celsius);
} ?>

</body>
</html>
Multivalued Parameters
HTML selection lists, created with the select tag, can allow multiple selections. To ensure that PHP recognizes the multiple values that the browser passes to a form-processing script, you need to make the name of the field in the HTML form end with []. For example:
<select name="languages[]">
  <option name="c">C</input>
  <option name="c++">C++</input>
  <option name="php">PHP</input>
  <option name="perl">Perl</input>
</select>
Now, when the user submits the form, $_GET['languages'] contains an array instead of a simple string. This array contains the values that were selected by the user.
Example 7-6 illustrates multiple selections of values within an HTML selection list. The form provides the user with a set of personality attributes. When the user submits the form, he gets a (not very interesting) description of his personality.
Example 7-6. Multiple selection values with a select box (select_array.php)
<html>
<head><title>Personality</title></head>
<body>

<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="GET">
  Select your personality attributes:<br />
  <select name="attributes[]" multiple>
    <option value="perky">Perky</option>
    <option value="morose">Morose</option>
    <option value="thinking">Thinking</option>
    <option value="feeling">Feeling</option>
    <option value="thrifty">Spend-thrift</option>
    <option value="shopper">Shopper</option>
  </select><br />
  <input type="submit" name="s" value="Record my personality!" />
</form>
<?php if (array_key_exists('s', $_GET)) {
   $description = join(' ', $_GET['attributes']);
   echo "You have a {$description} personality.";
} ?>

</body>
</html>
In Example 7-6, the submit button has a name, "s". We check for the presence of this parameter value to see whether we have to produce a personality description. Figure 7-3 shows the multiple-selection page and the resulting output.
The same technique applies for any form field where multiple values can be returned. Example 7-7 shows a revised version of our personality form that is rewritten to use checkboxes instead of a select box. Notice that only the HTML has changed—the code to process the form doesn't need to know whether the multiple values came from checkboxes or a select box.
 
Figure 7-3. Multiple-selection page and its output
Example 7-7. Multiple selection values in checkboxes (checkbox_array.php)
<html>
<head><title>Personality</title></head>
<body>

<form action="<?php $_SERVER['PHP_SELF']; ?>" method="GET">
  Select your personality attributes:<br />
  <input type="checkbox" name="attributes[]" value="perky" /> Perky<br />
  <input type="checkbox" name="attributes[]" value="morose" /> Morose<br />
  <input type="checkbox" name="attributes[]" value="thinking" /> Thinking<br />
  <input type="checkbox" name="attributes[]" value="feeling" /> Feeling<br />
  <input type="checkbox" name="attributes[]" value="thrifty" />Spend-thrift<br />
  <input type="checkbox" name="attributes[]" value="shopper" /> Shopper<br />
  <br />
  <input type="submit" name="s" value="Record my personality!" />
</form>
<?php if (array_key_exists('s', $_GET)) {
  $description = join (' ', $_GET['attributes']);
  echo "You have a {$description} personality.";
} ?>

</body>
</html>
Sticky Multivalued Parameters
So now you're probably wondering, can I make multiple-selection-form elements sticky? You can, but it isn't easy. You'll need to check to see whether each possible value in the form was one of the submitted values. For example:
Perky: <input type="checkbox" name="attributes[]" value="perky"
<?php
if (is_array($_GET['attributes']) && in_array('perky', $_GET['attributes'])) {
  echo "checked";
} ?> /><br />
You could use this technique for each checkbox, but that's repetitive and error-prone. At this point, it's easier to write a function to generate the HTML for the possible values and work from a copy of the submitted parameters. Example 7-8 shows a new version of the multiple-selection checkboxes, with the form made sticky. Although this form looks just like the one in Example 7-7, behind the scenes there are substantial changes to the way the form is generated.
Example 7-8. Sticky multivalued checkboxes (checkbox_array2.php)
<html>
<head><title>Personality</title></head>
<body>
<?php // fetch form values, if any
$attrs = $_GET['attributes'];

if (!is_array($attrs)) {
  $attrs = array();
}

// create HTML for identically named checkboxes

function makeCheckboxes($name, $query, $options)
{
  foreach ($options as $value => $label) {
    $checked = in_array($value, $query) ? "checked" : '';

    echo "<input type=\"checkbox\" name=\"{$name}\"
         value=\"{$value}\" {$checked} />";
    echo "{$label}<br />\n";
  }
}

// the list of values and labels for the checkboxes
$personalityAttributes = array(
  'perky'    => "Perky",
  'morose'   => "Morose",
  'thinking' => "Thinking",
  'feeling'  => "Feeling",
  'thrifty'  => "Spend-thrift",
  'prodigal' => "Shopper"
); ?>

<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="GET">
  Select your personality attributes:<br />
  <?php makeCheckboxes('attributes[]', $attrs, $personalityAttributes); ?><br />

  <input type="submit" name="s" value="Record my personality!" />
</form>

<?php if (array_key_exists('s', $_GET)) {
  $description = join (' ', $_GET['attributes']);
  echo "You have a {$description} personality.";
} ?>

</body>
</html>
The heart of this code is the makeCheckboxes() function. It takes three arguments: the name for the group of checkboxes, the array of on-by-default values, and the array mapping values to descriptions. The list of options for the checkboxes is in the $personalityAttributes array.
File Uploads
To handle file uploads (supported in most modern browsers), use the $_FILES array. Using the various authentication and file upload functions, you can control who is allowed to upload files and what to do with those files once they're on your system. Security concerns to take note of are described in Chapter 12.
The following code displays a form that allows file uploads to the same page:
<form enctype="multipart/form-data"
    action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
  <input type="hidden" name="MAX_FILE_SIZE" value="10240">
  File name: <input name="toProcess" type="file" />
  <input type="submit" value="Upload" />
</form>
The biggest problem with file uploads is the risk of getting a file that is too large to process. PHP has two ways of preventing this: a hard limit and a soft limit. The upload_max_filesize option in php.ini gives a hard upper limit on the size of uploaded files (it is set to 2 MB by default). If your form submits a parameter called MAX_FILE_SIZE before any file field parameters, PHP uses that value as the soft upper limit. For instance, in the previous example, the upper limit is set to 10 KB. PHP ignores attempts to set MAX_FILE_SIZE to a value larger than upload_max_filesize.
Also, notice that the form tag takes an enctype attribute with the value "multipart/form-data".
Each element in $_FILES is itself an array, giving information about the uploaded file. The keys are:
name
The name of the uploaded file as supplied by the browser. It's difficult to make meaningful use of this, as the client machine may have different filename conventions than the web server (e.g., if the client is a Windows machine that tells you the file is D:\PHOTOS\ME.JPG, while the web server runs Unix, to which that path is meaningless).
type
The MIME type of the uploaded file as guessed at by the client.
size
The size of the uploaded file (in bytes). If the user attempted to upload a file that was too large, the size would be reported as 0.
tmp_name
The name of the temporary file on the server that holds the uploaded file. If the user attempted to upload a file that was too large, the name is given as "none".
The correct way to test whether a file was successfully uploaded is to use the function is_uploaded_file(), as follows:
if (is_uploaded_file($_FILES['toProcess']['tmp_name'])) {
  // successfully uploaded
}
Files are stored in the server's default temporary files directory, which is specified in php.ini with the upload_tmp_dir option. To move a file, use the move_uploaded_file() function:
move_uploaded_file($_FILES['toProcess']['tmp_name'], "path/to/put/file/{$file}");
The call to move_uploaded_file() automatically checks whether it was an uploaded file. When a script finishes, any files uploaded to that script are deleted from the temporary directory.
Form Validation
When you allow users to input data, you typically need to validate that data before using it or storing it for later use. There are several strategies available for validating data. The first is JavaScript on the client side. However, since the user can choose to turn JavaScript off, or may even be using a browser that doesn't support it, this cannot be the only validation you do.
A more secure choice is to use PHP to do the validation. Example 7-9 shows a self-processing page with a form. The page allows the user to input a media item; three of the form elements—the name, media type, and filename—are required. If the user neglects to give a value to any of them, the page is presented anew with a message detailing what's wrong. Any form fields the user already filled out are set to the values she entered. Finally, as an additional clue to the user, the text of the submit button changes from "Create" to "Continue" when the user is correcting the form.
Example 7-9. Form validation (data_validation.php)
<?php
$name = $_POST['name'];
$mediaType = $_POST['media_type'];
$filename = $_POST['filename'];
$caption = $_POST['caption'];
$status = $_POST['status'];

$tried = ($_POST['tried'] == 'yes');

if ($tried) {
  $validated = (!empty($name) && !empty($mediaType) && !empty($filename));

  if (!$validated) { ?>
    <p>The name, media type, and filename are required fields. Please fill
    them out to continue.</p>
  <?php }
}

if ($tried && $validated) {
  echo "<p>The item has been created.</p>";
}

// was this type of media selected? print "selected" if so
function mediaSelected($type)
{
  global $mediaType;

  if ($mediaType == $type) {
    echo "selected"; }
} ?>

<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
  Name: <input type="text" name="name" value="<?= $name; ?>" /><br />

  Status: <input type="checkbox" name="status" value="active"
  <?php if ($status == "active") { echo "checked"; } ?> /> Active<br />

  Media: <select name="media_type">
    <option value="">Choose one</option>
    <option value="picture" <?php mediaSelected("picture"); ?> />Picture</option>
    <option value="audio" <?php mediaSelected("audio"); ?> />Audio</option>
    <option value="movie" <?php mediaSelected("movie"); ?> />Movie</option>
  </select><br />

  File: <input type="text" name="filename" value="<?= $filename; ?>" /><br />

  Caption: <textarea name="caption"><?= $caption; ?></textarea><br />

  <input type="hidden" name="tried" value="yes" />
  <input type="submit" value="<?php echo $tried ? "Continue" : "Create"; ?>" />
</form>
In this case, the validation is simply a check that a value was supplied. We set $validated to be true only if $name, $type, and $filename are all nonempty. Other possible validations include checking that an email address is valid or checking that the supplied filename is local and exists.
For example, to validate an age field to ensure that it contains a nonnegative integer, use this code:
$age = $_POST['age'];
$validAge = strspn($age, "1234567890") == strlen($age);
The call to strspn() finds the number of digits at the start of the string. In a nonnegative integer, the whole string should be composed of digits, so it's a valid age if the entire string is made of digits. We could also have done this check with a regular expression:
$validAge = preg_match('/^\d+$/', $age);
Validating email addresses is a nigh-impossible task. There's no way to take a string and see whether it corresponds to a valid email address. However, you can catch typos by requiring the user to enter the email address twice (into two different fields). You can also prevent people from entering email addresses like "me" or "me@aol" by requiring an at sign (@) and a period after it, and for bonus points you can check for domains to which you don't want to send mail (e.g., whitehouse.gov, or a competitor). For example:
$email1 = strtolower($_POST['email1']);
$email2 = strtolower($_POST['email2']);

if ($email1 !== $email2) {
  die("The email addresses didn't match");
}

if (!preg_match('/@.+\..+$/', $email1)) {
  die("The email address is malformed");
}

if (strpos($email1, "whitehouse.gov")) {
  die("I will not send mail to the White House");
}
Field validation is basically string manipulation. In this example, we've used regular expressions and string functions to ensure that the string provided by the user is the type of string we expect.

< 
> 
Setting Response Headers
As we've already discussed, the HTTP response that a server sends back to a client contains headers that identify the type of content in the body of the response, the server that sent the response, how many bytes are in the body, when the response was sent, etc. PHP and Apache normally take care of the headers for you, identifying the document as HTML, calculating the length of the HTML page, and so on. Most web applications never need to set headers themselves. However, if you want to send back something that's not HTML, set the expiration time for a page, redirect the client's browser, or generate a specific HTTP error, you'll need to use the header() function.
The only catch to setting headers is that you must do so before any of the body is generated. This means that all calls to header() (or setcookie(), if you're setting cookies) must happen at the very top of your file, even before the <html> tag. For example:
<?php header("Content-Type: text/plain"); ?>
Date: today
From: fred
To: barney
Subject: hands off!

My lunchbox is mine and mine alone. Get your own,
you filthy scrounger!
Attempting to set headers after the document has started results in this warning:
Warning:  Cannot add header information - headers already sent
You can instead use an output buffer; see ob_start(), ob_end_flush(), and related functions for more information on using output buffers.
Different Content Types
The Content-Type header identifies the type of document being returned. Ordinarily this is "text/html", indicating an HTML document, but there are other useful document types. For example, "text/plain" forces the browser to treat the page as plain text. This type is like an automatic "view source," and it is useful when debugging.
In Chapter 9 and Chapter 10, we'll make heavy use of the Content-Type header as we generate documents that are really graphic images and Adobe PDF files.
Redirections
To send the browser to a new URL, known as a redirection, you set the Location header. Generally, you'll also immediately exit afterwards, so the script doesn't bother generating and outputting the remainder of the code listing:
header("Location: http://www.example.com/elsewhere.html");
exit();
When you provide a partial URL (e.g., /elsewhere.html), the web server handles this redirection internally. This is only rarely useful, as the browser generally won't learn that it isn't getting the page it requested. If there are relative URLs in the new document, the browser interprets those URLs as being relative to the requested document, rather than to the document that was ultimately sent. In general, you'll want to redirect to an absolute URL.
Expiration
A server can explicitly inform the browser, and any proxy caches that might be between the server and browser, of a specific date and time for the document to expire. Proxy and browser caches can hold the document until that time or expire it earlier. Repeated reloads of a cached document do not contact the server. However, an attempt to fetch an expired document does contact the server.
To set the expiration time of a document, use the Expires header:
header("Expires: Fri, 18 Jan 2006 05:30:00 GMT");
To expire a document three hours from the time the page was generated, use time() and gmstrftime() to generate the expiration date string:
$now = time();
$then = gmstrftime("%a, %d %b %Y %H:%M:%S GMT", $now + 60 * 60 * 3);

header("Expires: {$then}");
To indicate that a document "never" expires, use the time a year from now:
$now = time();
$then = gmstrftime("%a, %d %b %Y %H:%M:%S GMT", $now + 365 * 86440);

header("Expires: {$then}");
To mark a document as expired, use the current time or a time in the past:
$then = gmstrftime("%a, %d %b %Y %H:%M:%S GMT");

header("Expires: {$then}");
This is the best way to prevent a browser or proxy cache from storing your document:
header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
header("Cache-Control: no-store, no-cache, must-revalidate");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");
For more information on controlling the behavior of browser and web caches, see Chapter 6 of Web Caching by Duane Wessels (O'Reilly).
Authentication
HTTP authentication works through request headers and response statuses. A browser can send a username and password (the credentials) in the request headers. If the credentials aren't sent or aren't satisfactory, the server sends a "401 Unauthorized" response and identifies the realm of authentication (a string such as "Mary's Pictures" or "Your Shopping Cart") via the WWW-Authenticate header. This typically pops up an "Enter username and password for . . ." dialog box on the browser, and the page is then re-requested with the updated credentials in the header.
To handle authentication in PHP, check the username and password (the PHP_AUTH_USER and PHP_AUTH_PW items of $_SERVER) and call header() to set the realm and send a "401 Unauthorized" response:
header('WWW-Authenticate: Basic realm="Top Secret Files"');
header("HTTP/1.0 401 Unauthorized");
You can do anything you want to authenticate the username and password; for example, you could consult a database, read a file of valid users, or consult a Microsoft domain server.
This example checks to make sure that the password is the username reversed (not the most secure authentication method, to be sure!):
$authOK = false;

$user = $_SERVER['PHP_AUTH_USER'];
$password = $_SERVER['PHP_AUTH_PW'];

if (isset($user) && isset($password) && $user === strrev($password)) {
  $authOK = true;
}

if (!$authOK) {
  header('WWW-Authenticate: Basic realm="Top Secret Files"');
  header('HTTP/1.0 401 Unauthorized');

  // anything else printed here is only seen if the client hits "Cancel"
  exit;
}

<!-- your password-protected document goes here -->
If you're protecting more than one page, put the above code into a separate file and include it at the top of every protected page.
If your host is using the CGI version of PHP rather than an Apache module, these variables cannot be set and you'll need to resort to using some other form of authentication; for example, by gathering the username and password through an HTML form.
< 
> 
Maintaining State
HTTP is a stateless protocol, which means that once a web server completes a client's request for a web page, the connection between the two goes away. In other words, there is no way for a server to recognize that a sequence of requests all originate from the same client.
State is useful, though. You can't build a shopping-cart application, for example, if you can't keep track of a sequence of requests from a single user. You need to know when a user puts an item in his cart, when he adds items, when he removes them, and what's in the cart when he decides to check out.
To get around the Web's lack of state, programmers have come up with many tricks to keep track of state information between requests (also known as session tracking). One such technique is to use hidden form fields to pass around information. PHP treats hidden form fields just like normal form fields, so the values are available in the $_GET and $_POST arrays. Using hidden form fields, you can pass around the entire contents of a shopping cart. However, a more common technique is to assign each user a unique identifier and pass the ID around using a single hidden form field. While hidden form fields work in all browsers, they work only for a sequence of dynamically generated forms, so they aren't as generally useful as some other techniques.
Another technique is URL rewriting, where every local URL on which the user might click is dynamically modified to include extra information. This extra information is often specified as a parameter in the URL. For example, if you assign every user a unique ID, you might include that ID in all URLs, as follows:
http://www.example.com/catalog.php?userid=123
If you make sure to dynamically modify all local links to include a user ID, you can now keep track of individual users in your application. URL rewriting works for all dynamically generated documents, not just forms, but actually performing the rewriting can be tedious.
The third and most widespread technique for maintaining state is to use cookies. A cookie is a bit of information that the server can give to a client. On every subsequent request the client will give that information back to the server, thus identifying itself. Cookies are useful for retaining information through repeated visits by a browser, but they're not without their own problems. The main problem is that most browsers allow users to disable cookies. So any application that uses cookies for state maintenance needs to use another technique as a fallback mechanism. We'll discuss cookies in more detail shortly.
The best way to maintain state with PHP is to use the built-in session-tracking system. This system lets you create persistent variables that are accessible from different pages of your application, as well as in different visits to the site by the same user. Behind the scenes, PHP's session-tracking mechanism uses cookies (or URLs) to elegantly solve most problems that require state, taking care of all the details for you. We'll cover PHP's session-tracking system in detail later in this chapter.
Cookies
A cookie is basically a string that contains several fields. A server can send one or more cookies to a browser in the headers of a response. Some of the cookie's fields indicate the pages for which the browser should send the cookie as part of the request. The value field of the cookie is the payload—servers can store any data they like there (within limits), such as a unique code identifying the user, preferences, etc.
Use the setcookie() function to send a cookie to the browser:
setcookie(name [, value [, expire [, path [, domain [, secure ]]]]]);
This function creates the cookie string from the given arguments and creates a Cookie header with that string as its value. Because cookies are sent as headers in the response, setcookie() must be called before any of the body of the document is sent. The parameters of setcookie() are:
name
A unique name for a particular cookie. You can have multiple cookies with different names and attributes. The name must not contain whitespace or semicolons.
value
The arbitrary string value attached to this cookie. The original Netscape specification limited the total size of a cookie (including name, expiration date, and other information) to 4 KB, so while there's no specific limit on the size of a cookie value, it probably can't be much larger than 3.5 KB.
expire
The expiration date for this cookie. If no expiration date is specified, the browser saves the cookie in memory and not on disk. When the browser exits, the cookie disappears. The expiration date is specified as the number of seconds since midnight, January 1, 1970 (GMT). For example, pass time() + 60 * 60 * 2 to expire the cookie in two hours' time.
path
The browser will return the cookie only for URLs below this path. The default is the directory in which the current page resides. For example, if /store/front/cart.php sets a cookie and doesn't specify a path, the cookie will be sent back to the server for all pages whose URL path starts with /store/front/.
domain
The browser will return the cookie only for URLs within this domain. The default is the server hostname.
secure
The browser will transmit the cookie only over https connections. The default is false, meaning that it's OK to send the cookie over insecure connections.
When a browser sends a cookie back to the server, you can access that cookie through the $_COOKIE array. The key is the cookie name, and the value is the cookie's value field. For instance, the following code at the top of a page keeps track of the number of times the page has been accessed by this client:
$pageAccesses = $_COOKIE['accesses'];
setcookie('accesses', ++$pageAccesses);
When decoding cookies, any periods (.) in a cookie's name are turned into underscores. For instance, a cookie named tip.top is accessible as $_COOKIE['tip_top'].
Example 7-10 shows an HTML page that gives a range of options for background and foreground colors.
Example 7-10. Preference selection (colors.php)
<html>
<head><title>Set Your Preferences</title></head>
<body>
<form action="prefs.php" method="post">
  <p>Background:
  <select name="background">
    <option value="black">Black</option>
    <option value="white">White</option>
    <option value="red">Red</option>
    <option value="blue">Blue</option>
  </select><br />

  Foreground:
  <select name="foreground">
    <option value="black">Black</option>
    <option value="white">White</option>
    <option value="red">Red</option>
    <option value="blue">Blue</option>
  </select></p>

  <input type="submit" value="Change Preferences">
</form>

</body>
</html>
The form in Example 7-10 submits to the PHP script prefs.php, which is shown in Example 7-11. This script sets cookies for the color preferences specified in the form. Note that the calls to setcookie() are made before the HTML page is started.
Example 7-11. Setting preferences with cookies (prefs.php)
<html>
<head><title>Preferences Set</title></head>
<body>

<?php
$colors = array(
  'black' => "#000000",
  'white' => "#ffffff",
  'red'   => "#ff0000",
  'blue'  => "#0000ff"
);

$backgroundName = $_POST['background'];
$foregroundName = $_POST['foreground'];

setcookie('bg', $colors[$backgroundName]);
setcookie('fg', $colors[$foregroundName]);
?>

<p>Thank you. Your preferences have been changed to:<br />
Background: <?= $backgroundName; ?><br />
Foreground: <?= $foregroundName; ?></p>

<p>Click <a href="prefs_demo.php">here</a> to see the preferences
in action.</p>

</body>
</html>
The page created by Example 7-11 contains a link to another page, shown in Example 7-12, that uses the color preferences by accessing the $_COOKIE array.
Example 7-12. Using the color preferences with cookies (prefs_demo.php)
<html>
<head><title>Front Door</title></head>
<?php
$backgroundName = $_COOKIE['bg'];
$foregroundName = $_COOKIE['fg'];
?>
<body bgcolor="<?= $backgroundName; ?>" text="<?= $foregroundName; ?>">

<h1>Welcome to the Store</h1>

<p>We have many fine products for you to view. Please feel free to browse
the aisles and stop an assistant at any time. But remember, you break it
you bought it!</p>

<p>Would you like to <a href="colors.php">change your preferences?</a></p>

</body>
</html>
There are plenty of caveats about the use of cookies. Not all clients support or accept cookies, and even if the client does support cookies, the user may have turned them off. Furthermore, the cookie specification says that no cookie can exceed 4 KB in size, only 20 cookies are allowed per domain, and a total of 300 cookies can be stored on the client side. Some browsers may have higher limits, but you can't rely on that. Finally, you have no control over when browsers actually expire cookies—if they are at capacity and need to add a new cookie, they may discard a cookie that has not yet expired. You should also be careful of setting cookies to expire quickly. Expiration times rely on the client's clock being as accurate as yours. Many people do not have their system clocks set accurately, so you can't rely on rapid expirations.
Despite these limitations, cookies are very useful for retaining information through repeated visits by a browser.
Sessions
PHP has built-in support for sessions, handling all the cookie manipulation for you to provide persistent variables that are accessible from different pages and across multiple visits to the site. Sessions allow you to easily create multipage forms (such as shopping carts), save user authentication information from page to page, and store persistent user preferences on a site.
Each first-time visitor is issued a unique session ID. By default, the session ID is stored in a cookie called PHPSESSID. If the user's browser does not support cookies or has cookies turned off, the session ID is propagated in URLs within the website.
Every session has a data store associated with it. You can register variables to be loaded from the data store when each page starts and saved back to the data store when the page ends. Registered variables persist between pages, and changes to variables made on one page are visible from others. For example, an "add this to your shopping cart" link can take the user to a page that adds an item to a registered array of items in the cart. This registered array can then be used on another page to display the contents of the cart.
Session basics
Sessions are started automatically when a script begins running. A new session ID is generated if necessary, possibly creating a cookie to be sent to the browser, and loads any persistent variables from the store.
You can register a variable with the session by passing the name of the variable to the $_SESSION[] array. For example, here is a basic hit counter:
session_start();
$_SESSION['hits'] = $_SESSION['hits'] + 1;

echo "This page has been viewed {$_SESSION['hits']} times.";
The session_start() function loads registered variables into the associative array $_SESSION. The keys are the variables' names (e.g., $_SESSION['hits']). If you're curious, the session_id() function returns the current session ID.
To end a session, call session_destroy(). This removes the data store for the current session, but it doesn't remove the cookie from the browser cache. This means that, on subsequent visits to sessions-enabled pages, the user will have the same session ID she had before the call to session_destroy(), but none of the data.
Example 7-13 shows the code from Example 7-11 rewritten to use sessions instead of manually setting cookies.
Example 7-13. Setting preferences with sessions (prefs_session.php)
<html>
<head><title>Preferences Set</title></head>
<body>
<?php
session_start();

$colors = array(
  'black' => "#000000",
  'white' => "#ffffff",
  'red'   => "#ff0000",
  'blue'  => "#0000ff"
);

$backgroundName = $_POST['background'];
$foregroundName = $_POST['foreground'];

$_SESSION['backgroundName'] = $backgroundName;
$_SESSION['foregroundName'] = $foregroundName;
?>

<p>Thank you. Your preferences have been changed to:<br />
Background: <?= $backgroundName; ?><br />
Foreground: <?= $foregroundName; ?></p>

<p>Click <a href="prefs_session_demo.php">here</a> to see the preferences
in action.</p>

</body>
</html>
Example 7-14 shows Example 7-12 rewritten to use sessions. Once the session is started, the $bg and $fg variables are created, and all the script has to do is use them.
Example 7-14. Using preferences from sessions (prefs_session_demo.php)
<?php
session_start() ;
$backgroundName = $_SESSION['bg'] ;
$foregroundName = $_SESSION['fg'] ;
?>
<html>
<head><title>Front Door</title></head>
<body bgcolor="<?= $backgroundName; ?>" text="<?= $foregroundName; ?>">

<h1>Welcome to the Store</h1>

<p>We have many fine products for you to view. Please feel free to browse
the aisles and stop an assistant at any time. But remember, you break it
you bought it!</p>

<p>Would you like to <a href="colors.php">change your preferences?</a></p>

</body>
</html>
By default, PHP session ID cookies expire when the browser closes. That is, sessions don't persist after the browser ceases to exist. To change this, you'll need to set the session.cookie_lifetime option in php.ini to the lifetime of the cookie in seconds.
Alternatives to cookies
By default, the session ID is passed from page to page in the PHPSESSID cookie. However, PHP's session system supports two alternatives: form fields and URLs. Passing the session ID via hidden fields is extremely awkward, as it forces you to make every link between pages to be a form's submit button. We will not discuss this method further here.
The URL system for passing around the session ID, however, is somewhat more elegant. PHP can rewrite your HTML files, adding the session ID to every relative link. For this to work, though, PHP must be configured with the -enable-trans-id option when compiled. There is a performance penalty for this, as PHP must parse and rewrite every page. Busy sites may wish to stick with cookies, as they do not incur the slowdown caused by page rewriting. In addition, this exposes your session IDs, potentially allowing for man-in-the-middle attacks.
Custom storage
By default, PHP stores session information in files in your server's temporary directory. Each session's variables are stored in a separate file. Every variable is serialized into the file in a proprietary format. You can change all of these values in the php.ini file.
You can change the location of the session files by setting the session.save_path value in php.ini. If you are on a shared server with your own installation of PHP, set the directory to somewhere in your own directory tree, so other users on the same machine cannot access your session files.
PHP can store session information in one of two formats in the current session store—either PHP's built-in format, or WDDX. You can change the format by setting the session.serialize_handler value in your php.ini file to either php for the default behavior, or wddx for WDDX format.
Combining Cookies and Sessions
Using a combination of cookies and your own session handler, you can preserve state across visits. Any state that should be forgotten when a user leaves the site, such as which page the user is on, can be left up to PHP's built-in sessions. Any state that should persist between user visits, such as a unique user ID, can be stored in a cookie. With the user's ID, you can retrieve the user's more permanent state, such as display preferences, mailing address, and so on, from a permanent store, such as a database.
Example 7-15 allows the user to select text and background colors and stores those values in a cookie. Any visits to the page within the next week send the color values in the cookie.
Example 7-15. Saving state across visits (save_state.php)
<?php
if($_POST['bgcolor']) {
  setcookie('bgcolor', $_POST['bgcolor'], time() + (60 * 60 * 24 * 7));
}

if (isset($_COOKIE['bgcolor'])) {
  $backgroundName = $_COOKIE['bgcolor'];
}
else if (isset($_POST['bgcolor'])) {
  $backgroundName = $_POST['bgcolor'];
}
else {
  $backgroundName = "gray";
} ?>
<html>
<head><title>Save It</title></head>
<body bgcolor="<?= $backgroundName; ?>">

<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
  <p>Background color:
  <select name="bgcolor">
    <option value="gray">Gray</option>
    <option value="white">White</option>
    <option value="black">Black</option>
    <option value="blue">Blue</option>
    <option value="green">Green</option>
    <option value="red">Red</option>
  </select></p>

  <input type="submit" />
</form>

</body>
</html>
< 
> 
SSL
The Secure Sockets Layer (SSL) provides a secure channel over which regular HTTP requests and responses can flow. PHP doesn't specifically concern itself with SSL, so you cannot control the encryption in any way from PHP. An https:// URL indicates a secure connection for that document, unlike an http:// URL.
The HTTPS entry in the $_SERVER array is set to 'on' if the PHP page was generated in response to a request over an SSL connection. To prevent a page from being generated over a non-encrypted connection, simply use:
if ($_SERVER['HTTPS'] !== 'on') {
  die("Must be a secure connection.");
}
A common mistake is to send a form over a secure connection (e.g., https://www.example.com/form.html), but have the action of the form submit to an http:// URL. Any form parameters then entered by the user are sent over an insecure connection—a trivial packet sniffer can reveal them.



|#