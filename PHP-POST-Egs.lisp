;;*********************** PHP POST EXAMPLES ********************
;;
;;Page 25
Example 1-3. Processing a form (form.php)
<html>
<head>
<title>Personalized Greeting Form</title>
</head>
<body>
<?php if(!empty($_POST['name'])) {
echo "Greetings, {$_POST['name']}, and welcome.";
} ?>
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
Enter your name: <input type="text" name="name" />
<input type="submit" />
</form>
</body>
</html>
The form and the message are shown in Figure 1-4.


Page 101
Example 4-1. Extracting URLs from an HTML page
<?php
if (getenv('REQUEST_METHOD') == 'POST') {
$url = $_POST['url'];
}
else {
$url = $_GET['url'];
}
?>
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
<p>URL: <input type="text" name="url" value="<?php echo $url ?>" /><br />
<input type="submit">
</form>
<?php
if ($url) {
$remote = fopen($url, 'r'); {
$html = fread($remote, 1048576); // read up to 1 MB of HTML
}
fclose($remote);
$urls = '(http|telnet|gopher|file|wais|ftp)';
$ltrs = '\w';
$gunk = '/#~:.?+=&%@!\-';
$punc = '.:?\-';
$any = "{$ltrs}{$gunk}{$punc}";
preg_match_all("{
\b # start at word boundary
{$urls}: # need resource and a colon
[{$any}] +? # followed by one or more of any valid
# characters—but be conservative
# and take only what you need
(?= # the match ends at
[{$punc}]* # punctuation
[^{$any}] # followed by a non-URL character
| # or
\$ # the end of the string
)
}x", $html, $matches);
printf("I found %d URLs<P>\n", sizeof($matches[0]));
foreach ($matches[0] as $u) {
$link = $_SERVER['PHP_SELF'] . '?url=' . urlencode($u);
echo "<a href=\"{$link}\">{$u}</a><br />\n";
}
}

Page 120
addItUp(11, 2);
addItUp(15, 3);
addItUp(24, 5);
addItUp(49, 7);
If the array is empty, array_reduce() returns the default value. If no default value is given and the array is empty, array_reduce() returns NULL.
Searching for Values
The in_array() function returns true or false, depending on whether the first argument is an element in the array given as the second argument:
if (in_array(to_find, array [, strict])) { ... }
If the optional third argument is true, the types of to_find and the value in the array must match. The default is to not check the data types.
Here's a simple example:
$addresses = array("spam@cyberpromo.net", "abuse@example.com", "root@example.com");
$gotSpam = in_array("spam@cyberpromo.net", $addresses); // $gotSpam is true
$gotMilk = in_array("milk@tucows.com", $addresses); // $gotMilk is false
PHP automatically indexes the values in arrays, so in_array() is generally much faster than a loop checking every value in the array to find the one you want.
Example 5-2 checks whether the user has entered information in all the required fields in a form.
Example 5-2. Searching an array
<?php
function hasRequired($array, $requiredFields) {
$array =
$keys = array_keys ( $array );
foreach ( $requiredFields as $fieldName ) {
if (! in_array ( $fieldName, $keys )) {
return false;
}
}
return true;
}
if ($_POST ['submitted']) {
$testArray = array_filter($_POST);
echo "<p>You ";
echo hasRequired ( $testArray, array (
'name',
'email_address'
) ) ? "did" : "did not";
echo " have all the required fields.</p>";
}
?>
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
<p>
Name: <input type="text" name="name" /><br /> Email address: <input
type="text" name="email_address" /><br /> Age (optional): <input
type="text" name="age" />
</p>
<p align="center">
<input type="submit" value="submit" name="submitted" />
</p>
</form>
A variation

Page 123
User-defined ordering requires that you provide a function that takes two values and returns a value that specifies the order of the two values in the sorted array. The function should return 1 if the first value is greater than the second, -1 if the first value is less than the second, and 0 if the values are the same for the purposes of your custom sort order.
Example 5-3 is a program that lets you try the various sorting functions on the same data.
Example 5-3. Sorting arrays
<?php
function userSort($a, $b)
{
// smarts is all-important, so sort it first
if ($b == "smarts") {
return 1;
}
else if ($a == "smarts") {
return -1;
}
return ($a == $b) ? 0 : (($a < $b) ? -1 : 1);
}
$values = array(
'name' => "Buzz Lightyear",
'email_address' => "buzz@starcommand.gal",
'age' => 32,
'smarts' => "some"
);
if ($_POST['submitted']) {
$sortType = $_POST['sort_type'];
if ($sortType == "usort" || $sortType == "uksort" || $sortType == "uasort") {
$sortType($values, "user_sort");
}
else {
$sortType($values);
}
} ?>
<form action="<?php echo $_SERVER['PHP_SELF']; ?> " method="post">
<p>
<input type="radio" name="sort_type"
value="sort" checked="checked" /> Standard<br />
<input type="radio" name="sort_type" value="rsort" /> Reverse<br />
<input type="radio" name="sort_type" value="usort" /> User-defined<br />
<input type="radio" name="sort_type" value="ksort" /> Key<br />
<input type="radio" name="sort_type" value="krsort" /> Reverse key<br />
<input type="radio" name="sort_type"
value="uksort" /> User-defined key<br />
<input type="radio" name="sort_type" value="asort" /> Value<br />
<input type="radio" name="sort_type"
value="arsort" /> Reverse value<br />
<input type="radio" name="sort_type"
value="uasort" /> User-defined value<br />
</p>
<p align="center"><input type="submit" value="Sort" name="submitted" /></p>
<p>Values <?= $_POST['submitted'] ? "sorted by {$sortType}" : "unsorted"; ?>:</p>
<ul>
<?php foreach ($values as $key => $value) {
echo "<li><b>{$key}</b>: {$value}</li>";
} ?>
</ul>
</form>
Natural


