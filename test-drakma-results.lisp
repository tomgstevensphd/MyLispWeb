;;************************************ test-drakma-results.lisp ************************
;;
;;
;;TESTED THE FOLLOWING PAGES, AND ALL WERE RETURNED WITH FULL HTML
;; "http://www.csulb.edu/~tstevens/test/sendData.php" now works with sending data via drakma post
;;"http://www.csulb.edu/~tstevens/success/rtfs/1jstk.htm"
;;"http://www.csulb.edu/~tstevens/success/hidden/dataFile.txt"
;;  "http://www.csulb.edu/~tstevens"
;; "http://www.csulb.edu/~tstevens/health%20tips.htm"
;;  "http://www.csulb.edu/~tstevens/success/"
;; "http://www.csulb.edu"

;;TEST THE FOLLOWING
;; "http://www.csulb.edu/~tstevens/test/sendData.php"

;;XXX--------WORKING test results for ;; "http://www.csulb.edu/~tstevens/test/sendData.php" ------------------------
#|
NIL

In http-dcon, v1-body-or-stream= 
<HTML>
<HEAD>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
<TITLE>
MyData
</TITLE>

</HEAD>
<BODY>


<!--PHP FROM PhpProject1 Index.php except I wrote the myWrite function -------------------->

 TESTING--><br />
<b>Notice</b>:  Array to string conversion in <b>/home/dh/tstevens/htdocs/test/SendData.php</b> on line <b>37</b><br />
Array<br />
<b>Notice</b>:  Array to string conversion in <b>/home/dh/tstevens/htdocs/test/SendData.php</b> on line <b>38</b><br />
Array<br />
<b>Notice</b>:  Undefined variable: filename1 in <b>/home/dh/tstevens/htdocs/test/SendData.php</b> on line <b>52</b><br />
From myWrite; Success, wrote (My writing test with spaces) to file ()From myWrite; post = My writing test with spaces = (My writing test with spaces)<br />
<b>Notice</b>:  Undefined variable: filename1 in <b>/home/dh/tstevens/htdocs/test/SendData.php</b> on line <b>52</b><br />
From myWrite; Success, wrote (This is my DRAKMA test data 12345
                         written from LISP) to file ()From myWrite; post = This is my DRAKMA test data 12345
                         written from LISP = (This is my DRAKMA test data 12345
                         written from LISP)WROTE POST5 TO testdata.txtEND OF WRITING TO FILE
    </BODY>
</HTML>
 v2-status-code= 200
 v3-headers= ((DATE . Thu, 16 Jan 2014 06:59:49 GMT) (SERVER . Apache/2.0.63) (CONTENT-TYPE . text/html) (SET-COOKIE . CSULB=76.93.235.222.1389855589169699; path=/; max-age=10368000; domain=.csulb.edu) (CONNECTION . close))
 v4-uri3-newURI= http://www.csulb.edu/~tstevens/test/SendData.php
 v5-stream= #<FLEXI-STREAMS:FLEXI-IO-STREAM 200FE633>
 v6-must-close= T
 v7-reason-phrase= OK
 

 
"|#



;; xxx -------------------------------------- "http://www.csulb.edu/~tstevens/success/rtfs/1jstk.htm" --------------

;;FOR  "http://www.csulb.edu/~tstevens/success/rtfs/1jstk.htm" (prefixes range from  0 to 9)
;;RETURNS FULL TEST RESULTS (I deleted middle part bec of length)

#|
CL-USER 3 > (testdc)
"NIL

v1-body-or-stream= <HTML> 
<HEAD> 
<META HTTP-EQUIV=\"Content-Type\" CONTENT=\"text/html; charset=windows-1252\"> 
<title>YOUR Success and Happiness Attributes Questionnaire (SHAQ) Results</title> 
<meta name=\"Microsoft Theme\" content=\"indust 010, default\"> 
<meta name=\"Microsoft Border\" content=\"tb, default\"> 
</HEAD> 
<BODY> 
<p align=\"center\"><font color=\"#FF0000\" size=\"3\" face=\"ZapfHumnst BT\"><b> YOUR Success and Happiness Attributes Questionnaire (SHAQ) Results</b></font><br> <p><font color=\"#FF0000\"><b>Save your SHAQ Results IMMEDIATELY. &nbsp;</b></font><br>> <p><font color=\"#FF0000\"><b>IMPORTANT Read the following about your SHAQ Results:</b></font></p> <p><font color=\"#FF0000\"><b> 1-Study your results, then 2-Follow Help-Links for more information.</b></font></p> <ul> <li><font color=\"#000080\"><b>READ THIS BEFORE CLICKING ON ANY ITEM IN THE LEFT WINDOW OR THIS PAGE WILL DISAPPEAR!<br>The SHAQ Results in the Java Window will NOT delete until you close your Internet Browser</b></font></li><PRE> 
 
|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

                                    YOUR SHAQ CARES ASSESSMENT RESULTS

  SHAQ = Success and Happiness Attributes Questionnaire
  CARES = Computer Assessment and Recommendation Expert System

  From http://www.csulb.edu/~tstevens/success


|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

  Date: 2014/1/8  Time: 21:12
  Name: jason lee    UserID: 19216811
    Sex: male  Age: 28  Email: jlee2678@gmail.com
    zipCode: 30318
  Hours work/week: 0
  USER TYPE{Know more about myself, Want thorough assessment, Want help with problem}
  USER GOALS{Overcome procrastination, Improve time management, Meeting people, Overcome fear of being alone or lonely, Explore/develop values, Ovecome anger or aggression, }
________________________________________________________________________________


==>  Sorry, we cannot provide a Happiness Quotient (HQ) Score because SHAQ
does not have results for all the scales needed to calculate the HQ score.
________________________________________________________________________________

                              INFORMATION ABOUT YOUR SCALE AND QUESTION RESULTS
 Your results are presented in two main parts:
Part 1: Your Scale Score Results page describes how you scored on groups of questions related to a common life skill or other personal qualities such as \"Learning Skills\" or \"Intimacy\". Each scale includes the following information:
     1. The scale name and scale description. Often correlations with happiness or other outcomes are given. Correlations range from 0.0 to 1.000; .3 to .4 good, .4 to .6 very good, above .6 unusually high for this type of research. (Statistical note: correlations are significant at .001 level and sample N > 1500.)
     2. Data: your relative score (which ranges from 0.0 to 1.000). Normally the higher you score on a scale or question, the better. The SD (standard deviation) is a measure of how much variation you had among the scale items.  For example, if you answered all the questions the same, the standard deviation would be about 0.0.  The more your answers varied from each other, the greater the SD. The relative score is much more important than the SD.
     3. Graph line: A graph line is drawn that reflects your relative score (see #2 above). Normally, the longer the graph, the better the score.
     4. Rating: On many scales and questions you are given a rating, such as \"High\" or \"Average\". If you are unhappy with any of your scores or ratings, remember that you are the one that assessed your own attitudes and behavior. We cannot guarantee their accuracy. Our evaluation simply reflects your answers to what are generally very straightforward questions.  We made no attempt to write \"trick\" questions.
     5. Internet help link: Our web site contains brief, specific suggestions on how to improve yourself in most of the areas covered by this assessment. Each help page includes links to other Internet sites containing more help, and it lists of other resources such as courses, books, or personal (human) help.
==> WE STRONGLY SUGGEST THAT YOU FOLLOW THE INTERNET HELP LINKS ON YOUR TOP PRIORITY CHANGE AREAS!
     6. Suggestions: In some cases, brief suggestions are printed out under the scale or question; however, most suggestions are given on our Internet help links (see #5).

Part 2: Your Individual Question Results lists every question that you answered. They are grouped by the scale of which they are members. Questions that are not part of any scale are listed separately, and questions that are part of more than one scale are listed under each scale. Each question lists essentially the same information listed above under the scales (except SD). The following lists information provided for each question in addition to information already described above:
     1. The exact question you answered is listed.
     2. Your exact answer to the question is listed.
     3. Reverse scored questions.  If you answered a question that read, \"I read very well.\" with the answer \"I strongly agree\", then you would receive a high score. On the other hand, if the question had read, \"I read poorly.\" and you answered \"I strongly agree\", then you would receive a low score even though you gave the same \"strongly agree\" answer  (it would be scored in reverse). A note indicates when an item was scored in reverse.

THE VALUE OF YOUR RESULTS: Many of these scales and questions have been validated to some degree through previous research on more than 6,000 people. Our previous research and the research of many others has shown how important life skills (and other SHAQ factors) are for achieving success and happiness in college, career, marriage and other relationships, and other life areas. This web site has self-help information and Internet links for developing life skills that can eventually make a big difference in your life.

NOTE FOR COLLEGE STUDENTS: If you are a college student, you have a great opportunity in college to improve life skills while in college. College courses, student activities, counseling, workshops, and reading can help you develop Life skills such as interpersonal skills, self-management skills, and thinking skills that can increase your success and happiness.

TO DEVELOP YOUR LIFE SKILLS, follow our Internet links, take courses, get psychological or other) counseling, go to workshops, and read related books.

|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

                                     PART 1: YOUR SCALE SCORE RESULTS
________________________________________________________________________________

SCALE NAME: Emotional Coping Skills Scale-A key HQ scale   For 20 questions: {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, } RELATIVE SCALE SCORE==> 0.402 of possible 1.0: 
     GRAPH of Relative Score: ||llllllllllllllllllllllllllllllll________________________||   RATING==> Below Average-consider changes
SCALE DESCRIPTION: ,How you habitually react to emotionally stressful situations. This scale correlates .683 with overall happiness, .578 with low depression, .466 with low anxiety, .374 with low anger/aggressiveness, and .314 with good, intimate personal relationships.  It is also a moderate predictor of academic and career success.        [SD: 0.276]  
INFORMATION AND LINKS, GO TO WEB PAGE: Negative Emotions
 Internet Address(URL)=> http://www.csulb.edu/~tstevens/success/anxiety,_anger,_and_depression.htm
SUGGESTIONS: Look carefully at how you responded to this scale.  It should be obvious to you what you need to work on. Improving emotional coping skills is one of the simplest ways to lead a more successful and happier life (and escape negative habits like addictions, avoidance, and negativism).

===========================================================================

SCALE NAME: Life Themes and Values Scale 1: Achievement, Success, and Material Values   For 9 questions: {1, 2, 3, 4, 5, 6, 7, 8, 9, } RELATIVE SCALE SCORE==> 0.633 of possible 1.0: 
     GRAPH of Relative Score: ||llllllllllllllllllllllllllllllllllllllllllllllllll_______________||   RATING==> Average
SCALE DESCRIPTION: Values for achieving various types of accomplishment, power, and material success. Note the differences in your scores on more pure achievement items and your scores on income and possessions. Too high a desire for material possessions without a strong desire for achievement can lead to unrealistic thinking about your chances for attaining material wealth OR it can lead to dependency upon others whom you think will provide you with material well-being. It can also lead to a great fear of poverty. These are all common routes to misery.        [SD: 0.149]  
INFORMATION AND LINKS, GO TO WEB PAGE: Values and Meaning
 Internet Address(URL)=> http://www.csulb.edu/~tstevens/success/life_goals_and_meaning.htm
SUGGESTIONS: Developing high achievement motivation can help you be successful in whatever you do. However, there are potential pitfalls of making success the most important thing in life--including lack of life balance, poor relationships, or a great underlying fear of failure. Too much emphasis on material rewards or power probably won't bring peace of mind.

===========================================================================

SCALE NAME: Life Themes and Values Scale 2: Social and Interpersonal Values   For 10 questions: {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, } RELATIVE SCALE SCORE==> 0.73 of possible 1.0: 
     GRAPH of Relative Score: ||llllllllllllllllllllllllllllllllllllllllllllllllllllllllll___________||   RATING==> Above Average
SCALE DESCRIPTION: Degree of importance of interpersonal relationships and rewards in general. Valuing others and good relationships with them can be a great source of happiness if relationships are successful. Check individual questions to see what types of relationships and rewards are your most important. Persons who are more 'self-actualized' tend to prefer more intimate, long-term relationships above all others. Other potential problems include: being too dependent upon others for approval, respect, and/or love to a degree that it can lead to low self-esteem and assertiveness, victimization, loneliness, helplessness, and anxiety and depression. People from dysfunctional families often cannot escape the negativism of those families because they still seek approval and/or love that they will probably never receive from those family members.        [SD: 0.2]  
INFORMATION AND LINKS, GO TO WEB PAGE: Interpersonal Relations
 Internet Address(URL)=> http://www.csulb.edu/~tstevens/success/interpersonal.htm
SUGGESTIONS: If you scored low in intimacy or too high on items indicating too much dependency, then these factors may be having a significant impact upon your relationships and happiness. Go to our help links.

===========================================================================

SCALE NAME: Life Themes and Values Scale 3: Authority and Rule-Orientation Values   For 6 questions: {1, 2, 3, 4, 5, 6, } RELATIVE SCALE SCORE==> 0.867 of possible 1.0: 
     GRAPH of Relative Score: ||llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll______||   RATING==> High
SCALE DESCRIPTION: Giving too much importance to obedience to authority, following rules without question, and/or a protecting oneself from others may create a sense of powerlessness, non-assertiveness, defensiveness, victimization, and undermine self-esteem and happiness. It correlated .212 with HIGH anger/aggression.        [SD: 0.111]  
INFORMATION AND LINKS, GO TO WEB PAGE: Values and Meaning
 Internet Address(URL)=> http://www.csulb.edu/~tstevens/success/life_goals_and_meaning.htm

===========================================================================

SCALE NAME: Life Themes and Values Scale 4: Internal Mental or Spiritual Values   For 30 questions: {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, } RELATIVE SCALE SCORE==> 0.763 of possible 1.0: 
     GRAPH of Relative Score: ||llllllllllllllllllllllllllllllllllllllllllllllllllllllllllll__________||   RATING==> Moderately High
SCALE DESCRIPTION: Internal mental or spiritual values are general values like love, happiness, and integrity that you can achieve within your own mind. External social or material values are values that depend more upon events outside of your mind and body.  You have more direct control over internal values and therefore people whose top values are more internal, mental ones tend to have less anxiety and more peace and happiness. In addition general mental values also are more adaptable to a wider variety of external situations tending to give the person more adaptability and flexibility. The life themes and values that are your most important concerns in life will be one of the most powerful psychological determinants of your future choices and therefore success and happiness. A wise man once said, \"Beware of what you seek, because you may get it (and all that goes with it). It correlates .191 with overall happiness.\"        [SD: 0.108]  
INFORMATION AND LINKS, GO TO WEB PAGE: Values and Meaning
 Internet Address(URL)=> http://www.csulb.edu/~tstevens/success/life_goals_and_meaning.htm
SUGGESTIONS: If you life is not as successful or happy as you like, then questioning your deepest assumptions and values and replacing them with more constructive ones could have a dramatic effect. Making internal mental and/or spiritual themes your top values in life should help you achieve greater emotional stability, more peace of mind, less fear of potential negative events such as illness, poverty, failure, being alone, or death and greater adaptability to life changes.

===========================================================================

SCALE NAME: Unconditional Worth of Self and Others Scale-A key HQ scale   For 13 questions: {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, } RELATIVE SCALE SCORE==> 0.515 of possible 1.0: 
     GRAPH of Relative Score: ||llllllllllllllllllllllllllllllllllllllll____________________||   RATING==> Average
SCALE DESCRIPTION: The degree to which you value the health and happiness of yourself and others unconditionally. Unconditionally valuing yourself and others means that an important part of a person's worth is not dependent upon their success, income, appearance, personality, ethnic group, morality, or any other quality. Unconditional love of self and others reduces worry about success, status, and other life outcomes. It correlates .391 with overall happiness, .283 with low depression, .260 with low anxiety, and .300 with low anger/aggression.        [SD: 0.254]  
INFORMATION AND LINKS, GO TO WEB PAGE: Self-Esteem
 Internet Address(URL)=> http://www.csulb.edu/~tstevens/success/self-esteem.htm
SUGGESTIONS: If you didn't score high, then look over the individual items and focus on beliefs that may be more negative, lower self-esteem, lower self-effectiveness, or lower happiness. Also, check your score and responses on the Life Themes scale. Internal mental values can help you achieve greater unconditional self-worth. Then go to our help link.

===========================================================================

SCALE NAME: Life Beliefs Scale: Identity and Ethics   For 14 questions: {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, } RELATIVE SCALE SCORE==> 0.614 of possible 1.0: 
     GRAPH of Relative Score: ||llllllllllllllllllllllllllllllllllllllllllllllll________________||   RATING==> Average
SCALE DESCRIPTION: A high score indicates finding meaning in the whole and good, a balance between absolute and relativistic values, identifying with all humanity and seeing it as good, valuing inner spirit and goodness more than actions, and not being superstitious.        [SD: 0.185]  
INFORMATION AND LINKS, GO TO WEB PAGE: Negative Thinking
 Internet Address(URL)=> http://www.csulb.edu/~tstevens/success/negative_thinking.htm
SUGGESTIONS: If you are not as successful or happy as you like, then look over the individual items and see if these beliefs are affecting your feelings of guilt or unhappiness.

xxx ----------------------------------- DELETED MIDDLE PART ------------------------------------
;; --------------------------------------- end DELETED SECTION ----------------------------------------

QUESTION: 5. How often do you damage objects or property, hurt animals or people purposely, or break the law?
YOUR ANSWER: 1 to 5 per month
SCORE=> 5 of possible 8  equals RELATIVE SCORE=>0.625 of possible 1.0:  Item scored in REVERSE
     GRAPH of Relative Score: ||llllllllllllllllllllllllllllllllllllllllllllllllll_______________||   RATING==> Not Rated 
     INFORMATION AND LINKS, GO TO WEB PAGE: Anger & Aggression
_____Internet Address(URL)=> http://www.csulb.edu/~tstevens/success/anger-aggression.htm
|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

                         PART 3: RECOMMENDED PRIORITY SELF-DEVELOPMENT AREAS

________________________________________________________________________________

What areas of change can make the biggest differences in your success and happiness? 
You may want to focus your efforts on your lowest-scoring areas or on areas where you are the most unhappy. These are areas that may significantly effect your academic, career, relationship, or other personal success and happiness.
We strongly suggest that you:
     1. GO TO OUR WEB SITE HELP LINKS provided and examine the brief suggestions for each area. Click on the INTERNET HELP LINKS in the LEFT WINDOW (under the Results Help) to bring that web page into the RIGHT WINDOW (under the Results Text).
     2. SET GOALS AND PLAN: identify one or two areas you think will make the greatest impact upon your success and happiness. Set goals for what you want to accomplish, use our web site to help you plan, make your plan a priority, and GET STARTED. Spending only a little time each week or each month can make a huge difference over time. Those little bits of extra effort usually separate the most successful and happy from others in the long run.
     3. FOLLOW ADDITIONAL LINKS provided at our web site to get direct help.
     4. GET ADDITIONAL HELP from counseling, classes, books, or other resources suggested on our web page.
We wish you good fortune in your efforts.

IF YOU ARE UNHAPPY WITH YOUR RESULTS: SHAQ was designed so that only people with extremely high levels of skills or other attributes would score high on most scales. The purpose of SHAQ is to help everyone find areas for self-improvement--even people with high levels of the attributes. Receiving more moderate scores (and many recommendations for improvement) does NOT indicate that there is something wrong with you, it is meant only to help you find many possibilities to grow and find higher levels of success and happiness.
     Also, if you are a person who is very self-critical, you may have underrated yourself.  On the other hand, if you are someone who is somewhat self-deceptive and received extremely high scores, you may have overrated yourself.

________________________________________________________________________________



>>>>>>>>>>  WE WISH YOU A LIFE FILLED WITH HEALTH, SUCCESS, AND HAPPINESS  <<<<<<<<<<

  Author of SHAQ and Web Site: Tom G. Stevens PhD
 Psychologist/Professor Emeritus; California State University, Long Beach.
     Author of the book, \"You Can Choose To Be Happy: 'Rise Above' Anxiety, Anger, and Depression\"
          Visit my COMPANION WEB SITE for 100's of pages of free self-help information (including free on-line copy of the above book,   at:    http://www.csulb.edu/~tstevens
  EMAIL: tstevens@csulb.edu
  FEEDBACK: Please send your comments about your experience with SHAQ and any suggestions for improvement.

</PRE></body> 
</html>
  
XXX
 v2-status-code= NIL
 v3-headers= NIL
 v4-uri3-newURI= NIL
 v5-stream= NIL
 v6-must-close= NIL
 v7= NIL
 v8= NIL
 
"
CL-USER 4 > 
|#

;;xxx ----------------------------------------- "http://www.csulb.edu/~tstevens"  ----------------------------
;;FOR 
#|
CL-USER 1 > (testdc)
"NIL

v1-body-or-stream= <!DOCTYPE html>
<html dir=\"ltr\">

<!-- #BeginTemplate \"master.dwt\" -->

<head>
<meta content=\"en-us\" http-equiv=\"Content-Language\">
<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\">
<!-- #BeginEditable \"doctitle\" -->
   <title>You Can Choose To Be Happy:100s of pages of Free Tested Self Help Info+Tests</title>
   <meta name=\"Author\" content=\"Tom G. Stevens PhD\">
   <meta name=\"Description\" content=\"FREE ebook,'You Can Choose To Be Happy:Rise Above Anxiety,Anger,and Depression (with research results)'+relationship,emotion,dating,shyness,memory...+tests+research;Psychologist Tom G Stevens PhD\">
	<meta name=\"KeyWords\" content=\"happiness,happy,HQ,EQ,quotient,wisdom,love,emotion,relationship,research,self esteem,spiritual,anxiety,anger,depression,integrity,positive thinking,intimate,how to be happy,how can I,steps,negative thoughts,confidence,sad,control,optimism,failure,hope,cognitive therapy,research,tested,clinical,psychology,personality,self-actualization, philosophy,belief,value,core,peace,wise,mature.life,dream,hope\">

<style type=\"text/css\">


















































.auto-style45 {
	text-align: left;
}
.auto-style47 {
	border-width: 10px;
}
.auto-style60 {
	color: #0000FF;
}
.auto-style57 {
	font-weight: normal;
	font-style: normal;
}
.auto-style63 {
	font-size: small;
}
.auto-style64 {
	font-family: \"DomCasual BT\";
	font-size: x-large;
	font-weight: bold;
}
.auto-style65 {
	font-family: \"DomCasual BT\";
	font-size: xx-large;
	font-weight: 300;
	color: #FF0000;
	text-align: center;
}
.auto-style66 {
	font-family: \"DomCasual BT\";
	font-size: x-large;
	font-weight: 300;
	color: #FF0000;
	text-align: center;
}
.auto-style67 {
	text-align: center;
}
.auto-style68 {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	font-size: large;
	font-weight: bold;
	text-align: left;
}
</style>
<!-- #EndEditable -->
<style type=\"text/css\">

.auto-style1 {
	border: 3px solid #000080;
	background-color: #E6E6FF;
}
.auto-style2 {
	vertical-align: top;
	margin: 5px 15px;
}
.auto-style4 {
	border: 2px solid #0000FF;
	background-color: #0000FF;
	white-space: normal;
	text-align: center;
}
.auto-style5 {
	border: 15px solid #F4F4FF;
	white-space: normal;
	text-align: left;
	background-color: #F4F4FF;
}
.auto-style6 {
	border-color: #FF0000;
	border-width: 2px;
	background-color: #0000FF;
	white-space: normal;
	text-align: center;
}
.auto-style7 {
	border: 15px solid #000080;
	background-color: #000080;
	white-space: normal;
	text-align: left;
}
.auto-style11 {
	border: 0 solid #0000FF;
	text-align: center;
	background-color: #000080;
	white-space: normal;
}
.auto-style19 {
	color: #0000FF;
	font-size: large;
}
.auto-style20 {
	color: #CC0000;
}
.auto-style26 {
	border: 0 solid #FFFFFF;
	text-align: left;
	background-color: #0000FF;
}
.auto-style27 {
	border: 0 solid #FFFFFF;
	background-color: #0000FF;
	white-space: normal;
	}
.auto-style31 {
	font-size: small;
	color: #FFFFFF;
}
.auto-style32 {
	text-decoration: none;
}
.auto-style33 {
	font-size: small;
	color: #FFFFFF;
	text-decoration: none;
}
.auto-style36 {
	font-family: \"DomCasual BT\";
	font-size: x-large;
	color: #0000FF;
	font-weight: bold;
}
.auto-style38 {
	color: #FFFFFF;
	text-decoration: none;
}
.auto-style39 {
	font-size: large;
}
.auto-style42 {
	color: #FF0000;
}
.myDefaultParagraph {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	font-size: medium;
	font-weight: normal;
	font-style: normal;
	color: #0000FF;
	text-align: left;
}
.myParagraphHeading {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	font-size: medium;
	font-weight: bolder;
	color: #0000FF;
	text-align: left;
}
.myCenterLargeRed {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	color: #FF0000;
	text-align: center;
	font-weight: bold;
	font-size: large;
}
.myCenterLargeBlue {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	font-size: large;
	font-weight: bold;
	color: #0000FF;
	text-align: center;
}
.myCenterX-LargeRed {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	font-size: x-large;
	font-weight: bold;
	color: #FF0000;
	text-align: center;
}
.myLeftParaHeadLargeBlue {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	font-size: large;
	font-weight: bold;
	text-align: left;
	color: #0000FF;
}
.myLeftLargeParaHeadRed {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	font-size: large;
	font-weight: bold;
	color: #FF0000;
	text-align: left;
}
.auto-style46 {
	border: 3px solid #F4F4FF;
	background-color: #F4F4FF;
	text-align: center;
}
.auto-style49 {
	border: 0 solid #FFFFFF;
	background-color: #0000FF;
}
.auto-style51 {
	text-decoration: underline;
}
.myLeftMedRedParaHead {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	font-size: medium;
	font-weight: bold;
	color: #FF0000;
	text-align: left;
}
.myCenterXX-largeRed {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	font-size: xx-large;
	font-weight: bold;
	color: #FF0000;
	text-align: center;
}
.auto-style52 {
	border-left: 0 solid #C0C0C0;
	border-top: 0 solid #C0C0C0;
	text-align: right;
	background-color: #C0C0C0;
	font-style: italic;
	color: #000080;
	font-weight: bold;
	font-size: small;
	border-right-style: solid;
	border-right-width: 0;
	border-bottom-style: solid;
	border-bottom-width: 0;
}
.auto-styleWhite54 {
	font-size: medium;
	color: #FFFFFF;
	text-decoration: none;
}
.auto-styleWhite55 {
	font-size: large;
	color: #FFFFFF;
}
.auto-style56 {
	font-size: small;
	color: #FF0000;
}
.auto-style58 {
	font-size: small;
}
.auto-style59 {
	font-size: small;
	font-style: italic;
	font-weight: bold;
}
.auto-style60 {
	border: 0 solid #FFFFFF;
	background-color: #0000FF;
	font-size: small;
}
a {
	color: #008000;
}
a:active {
	color: #800080;
}
a:hover {
	color: #800080;
}
.auto-style61 {
	border: 0 solid #FFFFFF;
	text-align: center;
	background-color: #FFFFFF;
	white-space: normal;
}
.myCenterDomLargestRed {
	font-family: \"DomCasual BT\";
	font-size: 46px;
	font-weight: 300;
	color: #FF0000;
	text-align: center;
}
.auto-styleWhite62 {
	color: #FFFFFF;
}
.auto-styleWhite63 {
	font-size: x-large;
	color: #FFFFFF;
}
.auto-styleWhite65 {
	color: #FFFFFF;
}
.auto-style66 {
	font-size: medium;
	text-decoration: none;
}
.auto-styleWhite67 {
	font-size: x-large;
	color: #FFFFFF;
	text-decoration: none;
}
.auto-style67 {
	text-align: left;
}
.auto-style68 {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	font-size: medium;
	font-weight: normal;
	font-style: normal;
	color: #0000FF;
	text-align: left;
	margin-left: 20px;
	margin-right: 20px;
}
</style>
<script type=\"text/javascript\">
<!--
function FP_jumpMenu(el,frm,sel) {//v1.0
 var href=el.options[el.selectedIndex].value; if(sel) el.selectedIndex=0;
 if('_new'==frm) open(href); else eval(frm+\".location='\"+href+\"'\");
}
// -->
</script>
<script type=\"text/javascript\">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-19453447-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</head>

<body style=\"color: #0000FF; margin-left: 15px; margin-right: 15px; background-color: #E6E6FF\">

<!-- #BeginEditable \"body\" -->
<div>
</div>
<!-- #EndEditable -->
<table id=\"table1\" class=\"auto-style1\" style=\"width: 1000px\">
	<tr>
		<td class=\"auto-style27\" style=\"height: 10px; width: 100pc;\" colspan=\"5\"></td>
	</tr>
	<tr>
		<td class=\"auto-style26\" style=\"height: 100%; width: 3%\" rowspan=\"3\">
		&nbsp;</td>
		<td class=\"auto-style61\" valign=\"top\">
		<img alt=\"Hot-air Baloon\" class=\"auto-style2\" src=\"images/dreamstime-test2-small.jpg\" height=\"204\" width=\"180\"></td>
		<td class=\"auto-style49\" style=\"height: 100%\" rowspan=\"3\">
		</td>
		<td class=\"auto-style46\" rowspan=\"2\" valign=\"bottom\">
		<!-- #BeginEditable \"PageTitleArea\" -->
		<p class=\"auto-style35\"><em class=\"myCenterDomLargestRed\">You Can Choose To Be Happy</em>&nbsp; </p>
		<p class=\"auto-style64\"><em>100's of pages of free, tested, self-help 
		information</em></p>
<!-- #EndEditable -->
		<b><font face=\"Impress BT\" size=\"5\"><i><font color=\"#FF0000\">Tom G. 
		Stevens PhD</font></i></font></b><font size=\"5\"><br></font>
		<span class=\"auto-style56\"><strong>Psychologist/Professor Emeritus, 
		California State University, Long Beach<br>Send Feedback/Questions to:
		<a href=\"mailto:Tom.Stevens@csulb.edu\">Tom.Stevens@csulb.edu</a><br></strong></span>
		<font size=\"5\">&nbsp;</font><i><span class=\"auto-style20\"><strong><br class=\"auto-style39\">
		</strong><span class=\"auto-style39\"><strong>&nbsp;</strong></span></span><!-- #BeginEditable \"Subtitle-chooseHappy\" --><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong></strong></span></strong></span></strong></span></strong></span></strong></span></strong></span></strong></span></strong></span></strong></span></strong></span><!-- #EndEditable -->Site 
		dedicated to enhancing human happiness, self-development, and success 		
		<br> 		
		</strong></span></i>
		<a href=\"Iselfhelp.htm\"><span class=\"auto-style58\">SITE MAP: All free 
		Self-help resources includes online book, You Can 
		Choose To Be Happy, and SHAQ</span></a><br><br></td>
		<td class=\"auto-style60\" style=\"width: 3%; \" rowspan=\"3\">
		&nbsp;</td>
	</tr>
	<tr>
		<td class=\"auto-style11\" rowspan=\"2\">
		<img alt=\"Photo of Dr Tom and Sherry Stevens\" height=\"166\" src=\"TomSherryCover-MaryEdSMALL-700K.jpg\" width=\"270\"></td>
	</tr>
	<tr>
		<td class=\"auto-style52\" valign=\"bottom\" style=\"height: 20px\">
		<form method=\"get\" action=\"http://search.atomz.com/search/\">
	<p class=\"auto-style67\">
	<input size=15 name=\"sp-q\" class=\"auto-style58\" style=\"width: 130px; left: 20px; clip: rect(auto, auto, auto, 50px);\"><font color=\"#008080\"><span class=\"auto-style58\">&nbsp;</span></font><b><font color=\"#008000\"><span class=\"auto-style58\">&nbsp;&nbsp;
	</span>
	<input type=submit value=\"Search\" class=\"auto-style58\"><span class=\"auto-style58\">&nbsp;
	</span></font></b><span class=\"auto-style58\"><br>To search this 	website, type in box; Click &quot;Search&quot;. 
	(Example:&nbsp; To
	search for topics on spiritual AND anger, type spiritual + anger
	in the box</span><span class=\"auto-style59\">.</span><input type=hidden name=\"sp-a\" value=\"00031111-sp00000000\" class=\"auto-style58\">)</p>
	</form>
		</td>
	</tr>
		<td class=\"auto-style4\" colspan=\"5\" style=\"width: 100%; height: 10px;\">&nbsp;
		<select id=\"id9\" onchange=\"FP_jumpMenu(this,'window',false)\" size=\"1\" name=\"Home\" style=\"width: 120px\">
		<option>TOP MENU</option>
		<option value=\"http://www.csulb.edu/~tstevens/index.html\">HOME</option>
		<option value=\"anxiety,_anger,_and_depression.htm\">Emotions TOC</option>
		<option value=\"http://www.csulb.edu/~tstevens/Iselfhelp.htm\">SELF-HELP HOME</option>
		<option value=\"http://www.csulb.edu/~tstevens/my-peek.htm\">BOOK HOME</option>
		<option value=\"http://www.csulb.edu/~tstevens/developing_intimacy.htm\">Relationships</option>
		<option value=\"http://www.csulb.edu/~tstevens/academic.htm\">Academic Success</option>
		<option value=\"http://www.csulb.edu/~tstevens/Cognitive Therapy.htm\">Cognitive Therapy Home</option>
		<option value=\"http://www.csulb.edu/~tstevens/Prof papers.htm\">Professional Papers Home</option>
		<option value=\"http://www.csulb.edu/~tstevens/health tips.htm\">Health Tips</option>
		<option value=\"http://www.csulb.edu/~tstevens/Learning and Motivation Notes.htm\">Habit Change</option>
		<option value=\"http://www.csulb.edu/~tstevens/Iselfhelp.htm\">Site Map</option>
		</select><select id=\"id1\" onchange=\"FP_jumpMenu(this,'window',false)\" size=\"1\" name=\"TheBook\">
		<option>The BOOK</option>
		<option value=\"http://www.csulb.edu/~tstevens/my-peek.htm\">About BOOK</option>
		<option value=\"http://www.csulb.edu/~tstevens/h10conclusions.htm\">Ch10-Conclusions</option>
		<option value=\"http://www.csulb.edu/~tstevens/hcontent.htm\">Table of Contents</option>
		<option value=\"http://www.csulb.edu/~tstevens/hhapchkl.htm\">A-Happy ChkList</option>
		<option value=\"http://www.csulb.edu/~tstevens/hsummary.htm\">Book Summary</option>
		<option value=\"http://www.csulb.edu/~tstevens/hpreface.htm\">Introduction</option>
		<option value=\"http://www.csulb.edu/~tstevens/h1hap.htm\">Ch1-Happiness</option>
		<option value=\"http://www.csulb.edu/~tstevens/h2choose.htm\">Ch2-Choices</option>
		<option value=\"http://www.csulb.edu/~tstevens/h3hiself.htm\">Ch3-HigherSelf</option>
		<option value=\"http://www.csulb.edu/~tstevens/h4world.htm\">Ch4-World View</option>
		<option value=\"http://www.csulb.edu/~tstevens/h5self.htm\">Ch5-Self-Esteem</option>
		<option value=\"http://www.csulb.edu/~tstevens/h6intern.htm\">Ch6-Internal Control</option>
		<option value=\"http://www.csulb.edu/~tstevens/h7hf1.htm\">Ch7-Emotions Root</option>
		<option value=\"http://www.csulb.edu/~tstevens/h8hf2.htm\">Ch8-Coping Strategies</option>
		<option value=\"http://www.csulb.edu/~tstevens/h9patsm.htm\">Ch9-Self Management</option>
		<option value=\"http://www.csulb.edu/~tstevens/Iorder.htm\">To Order</option>
		<option value=\"http://www.csulb.edu/~tstevens/b-anger.htm\">B-Anger-Aggression</option>
		<option value=\"http://www.csulb.edu/~tstevens/hrunway.htm\">C-RunawayEmots</option>
		<option value=\"http://www.csulb.edu/~tstevens/hnegcog.htm\">D-NegativeThinking</option>
		<option value=\"http://www.csulb.edu/~tstevens/h-app-e-InterpersonalSkills.htm\">E-Interpersonal Skills
		</option>
		<option value=\"http://www.csulb.edu/~tstevens/h-appF-demog.htm\">F-Demographics</option>
		<option value=\"http://www.csulb.edu/~tstevens/ChooseToBeHappyDownload.htm\">Free Book Download</option>
		<option value=\"http://www.csulb.edu/~tstevens/hbiblio.htm\">Bibliography</option>
		<option value=\"http://www.csulb.edu/~tstevens/hauthor.htm\">Dr Tom Stevens</option>
		</select><select id=\"id7\" onchange=\"FP_jumpMenu(this,'window',false)\" size=\"1\" name=\"SHAQ\">
		<option>SHAQ TOC</option>
		<option value=\"http://www.csulb.edu/~tstevens/success/index.htm\">About SHAQ</option>
		<option value=\"http://www.csulb.edu/~tstevens/h10conclusions.htm\">Research Results</option>
		<option value=\"http://www.csulb.edu/~tstevens/HQandSHAQresearch.htm\">SHAQ Monograph</option>
		<option value=\"http://www.csulb.edu/~tstevens/success/shaq_research.htm\">Your Research</option>
		<option value=\"http://www.csulb.edu/~tstevens/success/for_faculty_etc_.htm\">For Faculty
		</option>
		<option value=\"http://www.csulb.edu/~tstevens/SHAQ.htm\">SHAQ for College</option>
		<option value=\"http://www.csulb.edu/~tstevens/success/shaq_assignment.htm\">Class Assignment</option>
		<option value=\"http://www.csulb.edu/~tstevens/success/shaqProblems.htm\">SHAQ Problems</option>
		<option value=\"http://www.csulb.edu/~tstevens/success/shaqResultsInfo.htm\">Your Results</option>
		</select><select id=\"id5\" onchange=\"FP_jumpMenu(this,'window',false)\" size=\"1\" name=\"SelfRelated\">
		<option>Self-Related TOC</option>
		<option value=\"http://www.csulb.edu/~tstevens/Iselfhelp.htm\">Self-Related  TOC
		</option>
		<option value=\"http://www.csulb.edu/~tstevens/self-development.htm\">Self-Development</option>
		<option value=\"http://www.csulb.edu/~tstevens/h5self.htm\">Self-Esteem</option>
		<option value=\"http://www.csulb.edu/~tstevens/h4world.htm\">Positive View</option>
		<option value=\"http://www.csulb.edu/~tstevens/h6intern.htm\">Internal Control</option>
		<option value=\"http://www.csulb.edu/~tstevens/h3hiself.htm\">Higher Self</option>
		<option value=\"http://www.csulb.edu/~tstevens/h9patsm.htm\">Self-Management</option>
		<option value=\"http://www.csulb.edu/~tstevens/patsm96.htm\">Time-Management</option>
		<option value=\"http://www.csulb.edu/~tstevens/life_goals_and_meaning.htm\">Life Goals/Meaning</option>
		<option value=\"http://www.csulb.edu/~tstevens/wsps.htm\">Making Decisions</option>
		<option value=\"http://www.csulb.edu/~tstevens/Learning and Motivation Notes.htm\">Change Habits</option>
		<option value=\"http://www.csulb.edu/~tstevens/health tips.htm\">Health Tips</option>
		<option value=\"http://www.csulb.edu/~tstevens/smoking.htm\">Quit Smoking</option>
		<option value=\"http://www.csulb.edu/~tstevens/sleep_problems.htm\">Sleep Problems</option>
		<option value=\"http://www.csulb.edu/~tstevens/headaches.htm\">Headaches</option>
		<option value=\"http://www.csulb.edu/~tstevens/substance_abuse.htm\">Addictions</option>
		</select><select id=\"id3\" onchange=\"FP_jumpMenu(this,'window',false)\" size=\"1\" name=\"Emotions\">
		<option>Emotions TOC</option>
		<option value=\"http://www.csulb.edu/~tstevens/anxiety,_anger,_and_depression.htm\">Emotions Overview</option>
		<option value=\"http://www.csulb.edu/~tstevens/h11intro.htm\">Happiness</option>
		<option value=\"http://www.csulb.edu/~tstevens/h7hf1.htm\">Emotion Causes</option>		
		<option value=\"http://www.csulb.edu/~tstevens/h8hf2.htm\">Coping Strategies</option>
		<option value=\"http://www.csulb.edu/~tstevens/depression.htm\">Depressed-Sad</option>
		<option value=\"http://www.csulb.edu/~tstevens/anxiety.htm\">Stress-Anxiety</option>
		<option value=\"http://www.csulb.edu/~tstevens/b-anger.htm\">AngerAggression</option>
		<option value=\"http://www.csulb.edu/~tstevens/h41model.htm\">Positive Thinking</option>
		<option value=\"http://www.csulb.edu/~tstevens/c10-emot.htm\">Panic-etc</option>
		<option value=\"http://www.csulb.edu/~tstevens/grief_help.htm\">Grief-Loss</option>
		<option value=\"http://www.csulb.edu/~tstevens/Desensit.htm\">Desensitization</option>		
		</select><select id=\"id4\" onchange=\"FP_jumpMenu(this,'window',false)\" size=\"1\" name=\"D4\">
		<option>Relationships TOC</option>
		<option value=\"http://www.csulb.edu/~tstevens/developing_intimacy.htm\">Relationship Success</option>
		<option value=\"http://www.csulb.edu/~tstevens/chaprels.htm\">Happy Relationships</option>
		<option value=\"http://www.csulb.edu/~tstevens/conversational_skills.htm\">Develop Intimacy</option>
		<option value=\"http://www.csulb.edu/~tstevens/c14-lisn.htm\">Conflict Resolution</option>
		<option value=\"http://www.csulb.edu/~tstevens/finding_mr_mrs_right.htm\">Find Love Mate</option>
		<option value=\"http://www.csulb.edu/~tstevens/conversational_skills.htm\">Conversational Skills</option>
		<option value=\"http://www.csulb.edu/~tstevens/assertion_training.htm\">Assertion Training</option>
		<option value=\"http://www.csulb.edu/~tstevens/overcoming_loneliness.htm\">Loneliness</option>
		</select><select id=\"id8\" onchange=\"FP_jumpMenu(this,'window',false)\" size=\"1\" name=\"AcademicCareer\">
		<option>Academic Career TOC</option>
		<option value=\"http://www.csulb.edu/~tstevens/academic.htm\">Academic Success TOC</option>
		<option value=\"http://www.csulb.edu/~tstevens/LEARN.htm\">Leaning Skills</option>
		<option value=\"http://www.csulb.edu/~tstevens/learning_&amp;_study_skills.htm\">Study Habits</option>
		<option value=\"http://www.csulb.edu/~tstevens/career_choices.htm\">Career Choices</option>
		<option value=\"http://www.csulb.edu/~tstevens/h91value.htm\">To Achieve Goals
		</option>
		<option value=\"http://www.csulb.edu/~tstevens/time_management.htm\">Time Management</option>
		<option value=\"http://www.csulb.edu/~tstevens/concentration.htm\">Concentration</option>
		<option value=\"http://www.csulb.edu/~tstevens/self-motivation.htm\">Motivation</option>
		<option value=\"http://www.csulb.edu/~tstevens/procrastination.htm\">Procrastination</option>
		<option value=\"http://www.csulb.edu/~tstevens/test_anxiety.htm\">Test Anxiety</option>
		<option value=\"http://www.csulb.edu/~tstevens/writing_help.htm\">Writing Help</option>
		<option value=\"http://www.csulb.edu/~tstevens/reading_help.htm\">Reading Help</option>
		<option value=\"http://www.csulb.edu/~tstevens/learning_disabilities.htm\">Learning Disabilitiy</option>
		<option value=\"http://www.csulb.edu/~tstevens/calculating_gpa_etc.htm\">Calculate GPA</option>
		</select><select id=\"id6\" onchange=\"FP_jumpMenu(this,'window',false)\" size=\"1\" name=\"Professional\">
		<option>Therapy & Prof Papers</option>
		<option value=\"http://www.csulb.edu/~tstevens/Prof papers.htm\">Professional Papers</option>
		<option value=\"http://www.csulb.edu/~tstevens/h10conclusions.htm\">SHAQ Study Summary</option>
		<option value=\"http://www.csulb.edu/~tstevens/HQandSHAQresearch.htm\">SHAQ Research Paper</option>
		<option value=\"http://www.csulb.edu/~tstevens/Cognitive Therapy.htm\">Cognitive Therapy</option>
		<option value=\"http://www.csulb.edu/~tstevens/h23explo.htm\">Explore Issues</option>
		<option value=\"http://www.csulb.edu/~tstevens/sct-oh.htm\">Spiritual Cognitive Therapy</option>
		<option value=\"http://www.csulb.edu/~tstevens/SpirituaCogTherOCCDHE-2003.pdf\">SCT-Modify Core Beliefs
		</option>
		<option value=\"http://www.csulb.edu/~tstevens/maximizingCounselingCenterImpact.htm\">Counseling Center Impact
		</option>
		<option value=\"http://www.csulb.edu/~tstevens/SHAQ.htm\">SHAQ for Universities</option>
		<option value=\"http://www.csulb.edu/~tstevens/Indep Intimacy vs Domin OH.htm\">Independent Intimacy
		</option>
		<option value=\"http://www.csulb.edu/~tstevens/srq-wpa short.htm\">SRQ Questionnaire</option>
		<option value=\"http://www.csulb.edu/~tstevens/First Year Paper Life SBs 1-28-00.htm\">Life Skills Classes
		</option>
		</select></td>
	
	<tr>
		<td class=\"auto-style5\" colspan=\"5\" style=\"width: 90%; height: 90%;\">
				
<!-- #BeginEditable \"pageBody\" -->
		<p class=\"auto-style45\">
		<table id=\"table2\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" dir=\"ltr\" style=\"font-family: 'Times New Roman'; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;\" width=\"100%\">
			<tr>
				<td valign=\"top\">
				<p class=\"myLeftMedRedParaHead\">
				<span class=\"myLeftMedRedParaHead\"><br></span>
				<span class=\"myLeftLargeParaHeadRed\">FREE, 100's of pages of 
				self-help personal growth information including COMPLETE COPIES 
				of:</span></p>
				</td>
			</tr>
		</table>
		</p>
		<ul class=\"myDefaultParagraph\">
  		  <li class=\"myDefaultParagraph\"><a href=\"my-peek.htm\">
		  <span class=\"auto-style42\"><strong>A FREE complete copy of Dr. 
		  Stevens' book, You Can Choose To Be Happy: \"Rise Above\" Anxiety, 
		  Anger, and Depression</strong></span><strong> 
		  (324 pages)</strong></a><br>
    	  A self-development program to help you get positive control 
		  of your emotions, your relationships, and your life. Learn to overcome 
		  anxiety, anger, and depression and find more love, hope, confidence, 
		  and integrity to be the person you really want. Discover your Higher 
		  Self and learn how to overcome your worst fears of loneliness, 
		  rejection, poverty, illness, failure, etc. Readers rated it 8.3 out of 
		  a possible 9.0 on helpfulness. You can read chapters out-of-order to 
		  gain knowledge of specific topics. New detailed research support for 
		  ideas and recommendations in book not found in other self-help books. </li>
  <li><a href=\"Iselfhelp.htm\"><strong><span class=\"auto-style42\">Dr. Stevens' 
  SELF-HELP MATERIALS on Relationships, 
  Shyness, Time Management, Career-Planning, Memory, etc</span>.</strong></a>&nbsp;Free 
  articles for self-development on intimate, loving, relationships and marriage; 
  meeting people, dating, conversational skills, and overcoming loneliness and 
  fear of rejection with confidence; overcoming unhappiness, pessimism, 
  confusion, loneliness, grief, fear, jealousy, pleasing others too much, and 
  low self-esteem; decision-making and career planning.</li>
  <li><a href=\"success/index.htm\">
  <strong><span class=\"auto-style42\">The free Success and Happiness 
  Attributes Questionnaire (SHAQ).</span></strong> </a>&nbsp;SHAQ 
  reports your Happiness Quotient (HQ). 
  &nbsp;The HQ can predict overall happiness with an average of about 75% accuracy, 
  and is also very good at predicting depression, anxiety, anger, and other 
  outcomes. SHAQ also 
  tests for self-esteem and self-confidence; intimacy and assertive 
  conflict-resolution skills; causes of anxiety, depression, and anger; 
  emotional coping and time management skills; internal control; optimism vs. 
  pessimism; factors influencing memory, learning, and academic success; and 
  other factors. Want help with emotions, intimate relationships, meeting people 
  or shyness, non-assertiveness, negative thinking, learning, personal growth, 
  or many of the personal problems on this page?&nbsp; Also, see links to many other 
  self-help topics and checked web sites specifically related to your SHAQ 
  results.</li>
  <li>
  <a href=\"HQandSHAQresearch.htm\"><strong><span class=\"auto-style42\">Research 
  Paper on Results Related to the Happiness Quotient (HQ) Formula Factors, Book 
  Ideas, and SHAQ Questionnaire.</span></strong> </a> 
  This is a professional research 
  paper describing the research methods and results of the study on 3446 people 
  who took SHAQ and various outcome scales on the Internet.&nbsp; The results 
  strongly supported the utility of SHAQ, the ideas in the book, and the power 
  of the HQ formula.</li>
  <li><a href=\"Ch10-SHAQResearchResults.htm\">
  <strong><span class=\"auto-style42\">Layman's Version of Research Results 
  Related to the Happiness Quotient (HQ) Formula Factors, Book Ideas, and SHAQ 
  Questionnaire</span></strong>. </a>Much briefer summaries copied from book which summarize the research results. 
  &nbsp;If you are not a professional researcher, read this version.</li>
			<li><a class=\"myLeftMedRedParaHead\" href=\"Prof%20papers.htm\">
			Cognitive Therapy, Life Skills Training, Research, and other 
			Professional Papers</a>&nbsp; A few professional papers by Dr. Tom 
			and Sherry Stevens.</li>
			<li class=\"auto-style42\"><strong><a href=\"Iselfhelp.htm\">SITE 
			CONTENTS</a></strong></li>
</ul>
		<p>
		&nbsp;<p>
		<span class=\"myLeftLargeParaHeadRed\">&nbsp;Dr. Tom Stevens' book:</span><span class=\"myCenterXX-largeRed\"><strong>&nbsp;</strong></span><h1 class=\"auto-style67\">
		<span class=\"myCenterDomLargestRed\">You Can Choose To Be Happy: <br></span> 
		<span class=\"auto-style65\">\"Rise Above\" 
		Anxiety, Anger, and Depression </span><span class=\"auto-style66\">(with 
		Research Results)</span><span class=\"myCenterDomLargestRed\">&nbsp;&nbsp;</span> 
		</h1>
		<p>
<img alt=\"Book Cover Photo\" class=\"auto-style47\" height=\"25%\" longdesc=\"index.html\" src=\"CoverFront2010medium.jpg\" style=\"float: right\" width=\"25%\">Based 
		upon 30+ years of clinical experience, personal experience, and 
		research, this book uses many validated methods for increasing control 
		of your happiness, anxiety, anger, and depression; for developing 
		successful relationships; and for managing your time and your life to 
		achieve your goals and satisfy your values.&nbsp; It is an advanced and 
		detailed self-help book which can be understood by almost anyone.&nbsp; 
		It can be read for brief methods to solve particular issues or problems; 
		or it can be used as a comprehensive, long-range self-development 
		program for changing your life in significant ways.&nbsp; Many readers 
		have commented about how this book has helped them make major life 
		changes in even short time periods.</p>
		<p>
		A unique aspect of the book's use for self-development is how it goes 
		hand-in-hand with SHAQ (see below).&nbsp; SHAQ can be used as a pre-test 
		and a measure of your needs and progress.&nbsp; SHAQ's results have 
		specific links to self-help material in the book and elsewhere.&nbsp; 
		SHAQ can help you focus on areas that will have the greatest effect; 
		while the book provides the tips and step-by-step instructions.</p>
		<p>
		Try reading the first 50 pages of the book to get a good overview and 
		start.&nbsp; Then read the other sections as you find a need or 
		interest.</p>
		<p>
		&nbsp;</p>

<p class=\"auto-style43\"><span class=\"myCenterX-LargeRed\">Research Identifies a 
Formula for Happiness, Low Anxiety, Depression, and Anxiety</span></p>
		<p><span class=\"auto-style68\">The Happiness Quotient (HQ) formula 
		correlated .87 with Overall 
		Happiness </span><span class=\"auto-style63\">(maximum possible correlation&nbsp; = 1.00).</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"auto-style63\">
		</span>
		<a href=\"HQandSHAQresearch.htm\">
		<span class=\"auto-style63\">(Go to SHAQ Research and Book Conclusions for more detail)</span></a></p>

<p class=\"myDefaultParagraph\">Dr. Stevens designed the <strong>Success and 
Happiness Questionnaire (SHAQ)</strong> based upon the chapters in this book. 
Each main book factor (such as Positive World View, Internal-External Control, 
Higher Self, Self-Esteem, Self-Management Skills, Coping Skills, Assertive 
Conflict Resolution, etc.) was made into a scale of questions.&nbsp; The whole 
questionnaire&nbsp; of all scales is called the Success and Happiness Attributes 
Questionnaire (SHAQ).&nbsp; Our research analyzed data on 3,446 people who have 
completed SHAQ. </p>

<p class=\"myDefaultParagraph\">The <strong>Happiness Quotient (HQ)</strong> &nbsp;is a total score 
derived from&nbsp; a combination of key SHAQ scale scores. &nbsp;Your 
HQ is based upon factors found to be related to your happiness in a way that is 
analogous to how your IQ is related to factors of the Intellect.&nbsp; Our 
research showed a correlation of 0.865 between the SHAQ scales&nbsp; based upon 
the chapters in this book used in finding HQ and people's Overall Happiness 
scale score. In other words a remarkable 75 % of test takers' overall happiness 
was accounted for by these scales.&nbsp; (The overall effect size is the&nbsp; 
mathematical square of the correlation.) </p>
		<p>&nbsp;</p>

<p><span class=\"myLeftLargeParaHeadRed\">The HQ also has moderate to 
strong correlations with Low Depression, Low Anxiety, Low Depression, Good 
Relationships, Health, and some measures of Success</span></p>
		<p class=\"myDefaultParagraph\">The SHAQ scales had moderate to high positive 
		correlations (R) with almost all outcome measures.&nbsp; SHAQâs scales 
		had surprisingly high correlations with the emotional outcomes; with 
		Overall Happiness, R = .865; with Low Depression R = .730,&nbsp; with 
		Low Anxiety R = .675; with Low Anger-Aggression&nbsp; R = .701.(N = 1123 
		for all analyses.) &nbsp;For Relationship Outcomes Scale R = .693; for Health 
		Outcomes Scale R = .816; for Highest Personal Income&nbsp; R = .486.&nbsp; 
		For Highest Education Completed R = .458 and for College GPA R = .393.&nbsp;<br>
		==&gt;
<a href=\"Ch10-SHAQResearchResults.htm\">To view or download a layman's 
		summary of SHAQ's research results, click here.</a><br>
		==&gt; <a href=\"hShaqResultsIndex.htm\">To view or download a research paper 
		summarizing SHAQ's development and research results, click here.</a></p>
		<p>&nbsp;</p>

<p><span class=\"myLeftLargeParaHeadRed\">These HQ Factors 
Are Controllable--You Can Choose To Be Happy and Improve Your HQ</span></p>


<p class=auto-style57><span class=\"myDefaultParagraph\">Your HQ values, beliefs, and life skills may be 
powerful influences on your past, current, and future happiness. These HQ 
factors are CONTROLLABLE factors and described in detail in Dr. Stevens&nbsp; 
book and readings on this web site. You can choose to be happy by improving SHAQ 
results and recommendations to maximize your future happiness. You will receive 
your HQ score and more information about HQ when you complete the SHAQ 
questionnaire (free).</span></p>
		<p class=auto-style57>&nbsp;</p>


<p><span class=\"myLeftLargeParaHeadRed\">What 
can you gain from this book?</span><br>
<br>
<span class=\"myLeftParaHeadLargeBlue\">&nbsp;Based upon our research evidence and 
feedback from hundreds of readers, you can learn how to...</span></p>

<ul>
  <li class=\"myDefaultParagraph\"><strong>Find peace and joy. This book is for 
  people who are serious about self-development and being happier.</strong></li>
  <li class=\"myDefaultParagraph\"><strong>Be more successful reaching your goals and 
  fulfilling your dreams.</strong></li>
  <li class=\"myDefaultParagraph\"><strong>Develop more intimate and loving 
  relationships.</strong></li>
  <li class=\"myDefaultParagraph\"><strong>Overcome unhappiness, stress, depression, 
  loneliness, fear, grief, pessimism, shyness,&nbsp;<br>
  low self-esteem, grief, anxiety, or anger. </strong> </li>
  <li class=\"myDefaultParagraph\"><strong>Improve your self-esteem, confidence, 
  assertiveness, independence, motivation,&nbsp;<br>
  emotional control, relationships, career planning and success,&nbsp;and/or your 
  emotional intelligence.&nbsp;</strong></li>
  <li class=\"myDefaultParagraph\"><strong>Discover and strengthen your natural 
  \"Higher Self\"--the center of your<br>
      unconditional love, self-worth, and integrity.&nbsp;This is your spiritual core 
  and key source of power.</strong></li>
  <li class=\"myDefaultParagraph\"> <strong>No matter how difficult your past history 
  or current circumstances, striking new insights&nbsp;<br>
  about the causes of emotions can empower you to \"rise above\" negative thinking 
  and negative emotions,&nbsp;<br>
  and you can choose to be happy by choosing the right paths to happiness.</strong></li>
  <li class=\"myDefaultParagraph\"> <strong>Learn positive thinking techniques to 
  replace negative thinking and develop a more positive world view.</strong></li>
  <li class=\"myDefaultParagraph\"> <strong>Learn cognitive therapy, mental control 
  techniques to cope with your emotions and even improve learning and memory.</strong></li>
  <li class=\"myDefaultParagraph\">
  <strong>Discover the inner causes of your unhappiness and happiness and develop your 
  inner power.</strong></li>
  <li class=\"myDefaultParagraph\">
  <strong>Learn how to find more meaning and spirituality in your life by cultivating 
  mental-spiritual values and effectively setting and meeting goals.</strong></li>
  <li class=\"myDefaultParagraph\">
  <strong>Modify your expectations and goals to replace pessimism with optimism and 
  deprivation thinking with abundance thinking. </strong> </li>
  <li class=\"myDefaultParagraph\">
  <strong>Become more like the exceptionally productive and mentally healthy people 
  Maslow described as having self-actualization.</strong></li>
  <li>
  <span class=\"myDefaultParagraph\"><strong>There really are secrets to happiness 
  that we can all apply to our lives.&nbsp; I have learned so much from my clients, 
  my research, and my own life about how to be happy&nbsp;that one of my top goals is 
  to pass these secrets freely on to you.&nbsp; I wish you a happy life! 
  </strong> 
</span> 
<br>
<br>

  </li>
</ul>

<p class=\"auto-style43\"><span class=\"myCenterX-LargeRed\">If you want to maximize 
your own and others' happiness, try this book.&nbsp;</span><br>
<br><strong>The complete on-line version is free here.<br>
<br>
To learn more about the book, You Can Choose to 
Be Happy:<br>
<br>
Go to the </strong> <a href=\"my-peek.htm\"><strong>BOOK OVERVIEW 
and READER COMMENTS</strong></a><strong><br>
Go to the one-page </strong> <a href=\"hsummary.htm\"><strong>BOOK SUMMARY 
</strong> </a><strong>article<br>
Go to the </strong> <a href=\"hhapchkl.htm\"><strong>Choose To Be Happy Checklist</strong></a><strong><br>
Go to the </strong> <a href=\"hpreface.htm\"><strong>PREFACE to see WHO THIS BOOK IS FOR</strong></a><strong>, etc.<br>
Go to the </strong> <a href=\"hcontent.htm\"><strong>TABLE OF CONTENTS and FREE, complete ON-LINE 
COPY </strong> </a><strong>of the book&nbsp;<br>
How to </strong> <a href=\"Iorder.htm\"><strong>ORDER A COPY</strong></a><strong> of the book<br>
</strong>
<a href=\"hauthor.htm\"><strong>Biographical Sketch of Dr. Tom G. Stevens</strong></a>

		<p class=\"auto-style44\">&nbsp;</p>
		<p class=\"auto-style44\"></p>
<!-- #EndEditable -->
		<!-- Place this tag where you want the GOOGLE SEARCH FEEDBACK +1 button to render -->
    <g:plusone></g:plusone>
    <script type=\"text/javascript\">
      window.___gcfg = {
        lang: 'en-US'
      };

      (function() {
        var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
        po.src = 'https://apis.google.com/js/plusone.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
      })();
    </script>
    <!-- GOOGLE END Place this tag where you want the GOOGLE SEARCH FEEDBACK +1 button to render -->
    

		</td>
	</tr>
	<tr>
		<td class=\"auto-style6\" colspan=\"5\" style=\"width: 100%; height: 10px;\">&nbsp;</td>
	</tr>
	<tr>
		<td class=\"auto-style7\" colspan=\"5\" style=\"width: 100%; height: 180px\">

		<br class=\"auto-style31\">

		<span class=\"auto-styleWhite65\">
The BOOK (free download): </span> <a href=\"http://www.csulb.edu/~tstevens/hcontent.htm\" class=\"auto-styleWhite65\" ></a>
		<span class=\"auto-styleWhite65\">Go to Contents of </span>
		<span class=\"auto-styleWhite62\"> <a href=\"http://www.csulb.edu/~tstevens/hcontent.htm\">
		<span class=\"auto-styleWhite65\">Dr. Stevens'&nbsp; book,&nbsp; </span></a></span>
		<em><a href=\"http://www.csulb.edu/~tstevens/hcontent.htm\">
		<span class=\"auto-styleWhite62\">
		<span class=\"auto-styleWhite63\">You Can Choose To Be Happy:</span><span class=\"auto-styleWhite55\"> 
		\"Rise Above\" Anxiety, Anger, and Depression.</span></span></a></em><span class=\"auto-styleWhite65\"><br><br>SELF-HELP INFORMATION:&nbsp;</span><span class=\"auto-style31\"><a href=\"Iselfhelp.htm\"><span class=\"auto-styleWhite65\">
FREE SELF-HELP materials available on this web site (click here to see list)&nbsp;</span></a></span><span class=\"auto-styleWhite65\">&nbsp;
		<br><br>ORDERING the BOOK:</span><span class=\"auto-style31\"><a href=\"Iorder.htm\"><span class=\"auto-styleWhite65\">&nbsp;
How to ORDER You Can Choose To Be Happy

&nbsp;</span></a><span class=\"auto-styleWhite62\"><br><br class=\"auto-style51\">
		</span> 
		<a class=\"auto-styleWhite54\" href=\"http://www.csulb.edu/~tstevens/success\">
		SHAQ QUESTIONNAIRE: 
		Free</a></span><span class=\"auto-styleWhite55\"><a class=\"auto-style38\" href=\"http://www.csulb.edu/~tstevens/success\"> </a></span> 
		<em> 
		<a class=\"auto-styleWhite65\" href=\"http://www.csulb.edu/~tstevens/success\">
		<span class=\"auto-styleWhite63\">Success and Happiness Attributes 
		Questionnaire (SHAQ</span></a><a class=\"auto-styleWhite54\" href=\"http://www.csulb.edu/~tstevens/success\"><span class=\"auto-styleWhite67\">)</span></a></em><span class=\"auto-style31\">
		<a href=\"http://www.csulb.edu/~tstevens/success\">
		<span class=\"auto-styleWhite65\">&nbsp;to assess self on many factors&nbsp; including HQ-Happiness Quotient&nbsp;</span></a><span class=\"auto-styleWhite62\"><br><br></span> 
		<a href=\"Iorder.htm\" class=\"auto-styleWhite54\" >EMAIL DR. STEVENS</a><span class=\"auto-styleWhite65\"><a href=\"Iorder.htm\" class=\"auto-style66\" >:</a></span></span> <a href=\"mailto:tstevens@csulb.edu\" class=\"auto-style33\">
		<span class=\"auto-styleWhite65\">Email feedback to Dr. Stevens</span><a href=\"mailto:tstevens@csulb.edu\" class=\"auto-style38\"><span class=\"auto-styleWhite55\">
		tstevens@csulb.edu</span><span class=\"auto-styleWhite62\">
		</span>

		<span class=\"auto-style31\">
		</span>

		<span class=\"auto-styleWhite62\">

		</span>

		<a href=\"mailto:tstevens@csulb.edu\" class=\"auto-style33\">

		<span class=\"auto-styleWhite62\">

		I welcome your comments about my web site or any of its contents.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span>

<p align=\"center\"><a href=\"http://www.csulb.edu/~tstevens/Iselfhelp.htm\">
<span class=\"auto-styleWhite65\">Self-Help and other resources on 
this website (and site map)</span></a></p>

<span class=\"auto-style31\">
		<br>Web site created and maintained by: Tom G. Stevens PhD

Psychologist-Faculty Emeritus,
 
<br>California State University, Long Beach Counseling and Psychological Services.<br>URL of this web site: http://www.csulb.edu/~tstevens <br>
		<br>&nbsp;HOME PAGE: </span> 
		<a class=\"auto-styleWhite65\" href=\"http://www.csulb.edu/~tstevens/index.html\">Return to Dr. Stevens'
Home Page</a><a class=\"auto-style38\" href=\"http://www.csulb.edu/~tstevens/index.html\"> </a>

<span class=\"auto-style31\">

<p>
<a class=\"auto-style32\" href=\"http://www.csulb.edu/~tstevens/index.html\"><span class=\"auto-styleWhite65\">Copyright 2013 Tom G. Stevens PhD

		&nbsp;</span></a></p>
		

		</span> 
		

</td>
	</tr>
</table>

</body>

<!-- #EndTemplate -->

</html>

;; XXX  ME NOTE THE FOLLOWING ALL ARE NIL -- WHY??
 v2-status-code= NIL
 v3-headers= NIL
 v4-uri3-newURI= NIL
 v5-stream= NIL
 v6-must-close= NIL
 v7= NIL
 v8= NIL
 
"

CL-USER 2 > 
|#


;;xxx --------------------------------------------- www.csulb.edu/~tstevens/success ------------------------------
;;FOR www.csulb.edu/~tstevens/success
;;RETURNS
#|
CL-USER 1 > (testdc)
"<!DOCTYPE html>
<html dir=\"ltr\" itemscope itemtype=\"http://schema.org/Article\">

<!-- #BeginTemplate \"../master.dwt\" -->

<head>
<meta content=\"en-us\" http-equiv=\"Content-Language\">
<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\">
<!-- #BeginEditable \"doctitle\" -->
<title>Success and Happiness Questionnaire and Free Self Help</title>
<meta name=\"Author\" content=\"Tom G. Stevens PhD\">
<META NAME=\"description\" CONTENT=\"Free Success and Happiness Attributes Questionnaire (SHAQ) measures Happiness Quotient (HQ), self-esteem,
life skills,relationship success factors,emotional,academic,and personality factors. Research found high correlations with happiness, low depression and anxiety, relationship success, health, and academic and career success. Psychologist Dr. Tom Stevens\">
<META NAME=\"keywords\" CONTENT=\"HQ,Happiness Quotient,happy,question,self,esteem,emotional intelligence,test,EQ,personality,confidence,marriage satisfaction,shyness,internal control,I-E,
study,memory,negative,thinking,lonely,assess,happiness,spiritual,assert,anxiety,depressed,depression,communication,
motivation,relationship,assess,ability,learn,belief,values,anger,development,control,manage,
coping,grades,success,actualiz,coach,motivation,romantic,college,GPA,attrition,U100,feel better,religi,skill\">

<link rel=\"canonical\" href=\"http://www.csulb.edu/~tstevens\" />
<style type=\"text/css\">


.auto-style64 {
	text-align: center;
}
.auto-style65 {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	font-size: medium;
	font-weight: bold;
	text-align: left;
}
.auto-style66 {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	font-size: large;
	font-weight: bold;
	text-align: center;
}
.auto-style67 {
	font-family: \"DomCasual BT\";
	font-size: x-large;
	font-weight: bold;
}
</style>
<!-- #EndEditable -->
<style type=\"text/css\">

.auto-style1 {
	border: 3px solid #000080;
	background-color: #E6E6FF;
}
.auto-style2 {
	vertical-align: top;
	margin: 5px 15px;
}
.auto-style4 {
	border: 2px solid #0000FF;
	background-color: #0000FF;
	white-space: normal;
	text-align: center;
}
.auto-style5 {
	border: 15px solid #F4F4FF;
	white-space: normal;
	text-align: left;
	background-color: #F4F4FF;
}
.auto-style6 {
	border-color: #FF0000;
	border-width: 2px;
	background-color: #0000FF;
	white-space: normal;
	text-align: center;
}
.auto-style7 {
	border: 15px solid #000080;
	background-color: #000080;
	white-space: normal;
	text-align: left;
}
.auto-style11 {
	border: 0 solid #0000FF;
	text-align: center;
	background-color: #000080;
	white-space: normal;
}
.auto-style19 {
	color: #0000FF;
	font-size: large;
}
.auto-style20 {
	color: #CC0000;
}
.auto-style26 {
	border: 0 solid #FFFFFF;
	text-align: left;
	background-color: #0000FF;
}
.auto-style27 {
	border: 0 solid #FFFFFF;
	background-color: #0000FF;
	white-space: normal;
	}
.auto-style31 {
	font-size: small;
	color: #FFFFFF;
}
.auto-style32 {
	text-decoration: none;
}
.auto-style33 {
	font-size: small;
	color: #FFFFFF;
	text-decoration: none;
}
.auto-style36 {
	font-family: \"DomCasual BT\";
	font-size: x-large;
	color: #0000FF;
	font-weight: bold;
}
.auto-style38 {
	color: #FFFFFF;
	text-decoration: none;
}
.auto-style39 {
	font-size: large;
}
.auto-style42 {
	color: #FF0000;
}
.myDefaultParagraph {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	font-size: medium;
	font-weight: normal;
	font-style: normal;
	color: #0000FF;
	text-align: left;
}
.myParagraphHeading {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	font-size: medium;
	font-weight: bolder;
	color: #0000FF;
	text-align: left;
}
.myCenterLargeRed {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	color: #FF0000;
	text-align: center;
	font-weight: bold;
	font-size: large;
}
.myCenterLargeBlue {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	font-size: large;
	font-weight: bold;
	color: #0000FF;
	text-align: center;
}
.myCenterX-LargeRed {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	font-size: x-large;
	font-weight: bold;
	color: #FF0000;
	text-align: center;
}
.myLeftParaHeadLargeBlue {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	font-size: large;
	font-weight: bold;
	text-align: left;
	color: #0000FF;
}
.myLeftLargeParaHeadRed {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	font-size: large;
	font-weight: bold;
	color: #FF0000;
	text-align: left;
}
.auto-style46 {
	border: 3px solid #F4F4FF;
	background-color: #F4F4FF;
	text-align: center;
}
.auto-style49 {
	border: 0 solid #FFFFFF;
	background-color: #0000FF;
}
.auto-style51 {
	text-decoration: underline;
}
.myLeftMedRedParaHead {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	font-size: medium;
	font-weight: bold;
	color: #FF0000;
	text-align: left;
}
.myCenterXX-largeRed {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	font-size: xx-large;
	font-weight: bold;
	color: #FF0000;
	text-align: center;
}
.auto-style52 {
	border-left: 0 solid #C0C0C0;
	border-top: 0 solid #C0C0C0;
	text-align: right;
	background-color: #C0C0C0;
	font-style: italic;
	color: #000080;
	font-weight: bold;
	font-size: small;
	border-right-style: solid;
	border-right-width: 0;
	border-bottom-style: solid;
	border-bottom-width: 0;
}
.auto-styleWhite54 {
	font-size: medium;
	color: #FFFFFF;
	text-decoration: none;
}
.auto-styleWhite55 {
	font-size: large;
	color: #FFFFFF;
}
.auto-style56 {
	font-size: small;
	color: #FF0000;
}
.auto-style58 {
	font-size: small;
}
.auto-style59 {
	font-size: small;
	font-style: italic;
	font-weight: bold;
}
.auto-style60 {
	border: 0 solid #FFFFFF;
	background-color: #0000FF;
	font-size: small;
}
a {
	color: #008000;
}
a:active {
	color: #800080;
}
a:hover {
	color: #800080;
}
.auto-style61 {
	border: 0 solid #FFFFFF;
	text-align: center;
	background-color: #FFFFFF;
	white-space: normal;
}
.myCenterDomLargestRed {
	font-family: \"DomCasual BT\";
	font-size: 46px;
	font-weight: 300;
	color: #FF0000;
	text-align: center;
}
.auto-styleWhite62 {
	color: #FFFFFF;
}
.auto-styleWhite63 {
	font-size: x-large;
	color: #FFFFFF;
}
.auto-styleWhite65 {
	color: #FFFFFF;
}
.auto-style66 {
	font-size: medium;
	text-decoration: none;
}
.auto-styleWhite67 {
	font-size: x-large;
	color: #FFFFFF;
	text-decoration: none;
}
.auto-style67 {
	text-align: left;
}
.auto-style68 {
	font-family: \"Times New Roman\", Times, serif, \"DomCasual BT\", \"DomDiagonal Bd BT\", \"DomDiagonal BT\", \"ZapfHumnst BT\", \"ZapfHumnst Dm BT\", \"ZapfHumnst Ult BT\";
	font-size: medium;
	font-weight: normal;
	font-style: normal;
	color: #0000FF;
	text-align: left;
	margin-left: 20px;
	margin-right: 20px;
}
</style>
<script type=\"text/javascript\">
<!--
function FP_jumpMenu(el,frm,sel) {//v1.0
 var href=el.options[el.selectedIndex].value; if(sel) el.selectedIndex=0;
 if('_new'==frm) open(href); else eval(frm+\".location='\"+href+\"'\");
}
// -->
</script>
<script type=\"text/javascript\">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-19453447-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</head>

<body style=\"color: #0000FF; margin-left: 15px; margin-right: 15px; background-color: #E6E6FF\">

<!-- #BeginEditable \"body\" -->
<div>
</div>
<!-- #EndEditable -->
<table id=\"table1\" class=\"auto-style1\" style=\"width: 1000px\">
	<tr>
		<td class=\"auto-style27\" style=\"height: 10px; width: 100pc;\" colspan=\"5\"></td>
	</tr>
	<tr>
		<td class=\"auto-style26\" style=\"height: 100%; width: 3%\" rowspan=\"3\">
		&nbsp;</td>
		<td class=\"auto-style61\" valign=\"top\">
		<img alt=\"Hot-air Baloon\" class=\"auto-style2\" src=\"../images/dreamstime-test2-small.jpg\" height=\"204\" width=\"180\"></td>
		<td class=\"auto-style49\" style=\"height: 100%\" rowspan=\"3\">
		</td>
		<td class=\"auto-style46\" rowspan=\"2\" valign=\"bottom\">
		<!-- #BeginEditable \"PageTitleArea\" -->
		<p class=\"myCenterXX-largeRed\"><span class=\"myCenterDomLargestRed\">The 
		Success and Happiness Attributes Questionnaire (SHAQ) 
		</span> </p>
		<p class=\"auto-style67\">SHAQ is a research-supported tool for assessing 
		personal factors highly associated with happiness, low depression and 
		anxiety, good relationships, and academic and career success.</p>
<!-- #EndEditable -->
		<b><font face=\"Impress BT\" size=\"5\"><i><font color=\"#FF0000\">Tom G. 
		Stevens PhD</font></i></font></b><font size=\"5\"><br></font>
		<span class=\"auto-style56\"><strong>Psychologist/Professor Emeritus, 
		California State University, Long Beach<br>Send Feedback/Questions to:
		<a href=\"mailto:Tom.Stevens@csulb.edu\">Tom.Stevens@csulb.edu</a><br></strong></span>
		<font size=\"5\">&nbsp;</font><i><span class=\"auto-style20\"><strong><br class=\"auto-style39\">
		</strong><span class=\"auto-style39\"><strong>&nbsp;</strong></span></span><!-- #BeginEditable \"Subtitle-chooseHappy\" --><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style19\"><strong><span class=\"auto-style39\"><strong><span class=\"auto-style42\">You 
		Can Choose To Be Happy:</span></strong></span>
		<span class=\"auto-style19\"><strong><br> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span> 		
		</strong></span><!-- #EndEditable -->Site 
		dedicated to enhancing human happiness, self-development, and success 		
		<br> 		
		</strong></span></i>
		<a href=\"../Iselfhelp.htm\"><span class=\"auto-style58\">SITE MAP: All free 
		Self-help resources includes online book, You Can 
		Choose To Be Happy, and SHAQ</span></a><br><br></td>
		<td class=\"auto-style60\" style=\"width: 3%; \" rowspan=\"3\">
		&nbsp;</td>
	</tr>
	<tr>
		<td class=\"auto-style11\" rowspan=\"2\">
		<img alt=\"Photo of Dr Tom and Sherry Stevens\" height=\"166\" src=\"../TomSherryCover-MaryEdSMALL-700K.jpg\" width=\"270\"></td>
	</tr>
	<tr>
		<td class=\"auto-style52\" valign=\"bottom\" style=\"height: 20px\">
		<form method=\"get\" action=\"http://search.atomz.com/search/\">
	<p class=\"auto-style67\">
	<input size=15 name=\"sp-q\" class=\"auto-style58\" style=\"width: 130px; left: 20px; clip: rect(auto, auto, auto, 50px);\"><font color=\"#008080\"><span class=\"auto-style58\">&nbsp;</span></font><b><font color=\"#008000\"><span class=\"auto-style58\">&nbsp;&nbsp;
	</span>
	<input type=submit value=\"Search\" class=\"auto-style58\"><span class=\"auto-style58\">&nbsp;
	</span></font></b><span class=\"auto-style58\"><br>To search this 	website, type in box; Click &quot;Search&quot;. 
	(Example:&nbsp; To
	search for topics on spiritual AND anger, type spiritual + anger
	in the box</span><span class=\"auto-style59\">.</span><input type=hidden name=\"sp-a\" value=\"00031111-sp00000000\" class=\"auto-style58\">)</p>
	</form>
		</td>
	</tr>
		<td class=\"auto-style4\" colspan=\"5\" style=\"width: 100%; height: 10px;\">&nbsp;
		<select id=\"id9\" onchange=\"FP_jumpMenu(this,'window',false)\" size=\"1\" name=\"Home\" style=\"width: 120px\">
		<option>TOP MENU</option>
		<option value=\"http://www.csulb.edu/~tstevens/index.html\">HOME</option>
		<option value=\"anxiety,_anger,_and_depression.htm\">Emotions TOC</option>
		<option value=\"http://www.csulb.edu/~tstevens/Iselfhelp.htm\">SELF-HELP HOME</option>
		<option value=\"http://www.csulb.edu/~tstevens/my-peek.htm\">BOOK HOME</option>
		<option value=\"http://www.csulb.edu/~tstevens/developing_intimacy.htm\">Relationships</option>
		<option value=\"http://www.csulb.edu/~tstevens/academic.htm\">Academic Success</option>
		<option value=\"http://www.csulb.edu/~tstevens/Cognitive Therapy.htm\">Cognitive Therapy Home</option>
		<option value=\"http://www.csulb.edu/~tstevens/Prof papers.htm\">Professional Papers Home</option>
		<option value=\"http://www.csulb.edu/~tstevens/health tips.htm\">Health Tips</option>
		<option value=\"http://www.csulb.edu/~tstevens/Learning and Motivation Notes.htm\">Habit Change</option>
		<option value=\"http://www.csulb.edu/~tstevens/Iselfhelp.htm\">Site Map</option>
		</select><select id=\"id1\" onchange=\"FP_jumpMenu(this,'window',false)\" size=\"1\" name=\"TheBook\">
		<option>The BOOK</option>
		<option value=\"http://www.csulb.edu/~tstevens/my-peek.htm\">About BOOK</option>
		<option value=\"http://www.csulb.edu/~tstevens/h10conclusions.htm\">Ch10-Conclusions</option>
		<option value=\"http://www.csulb.edu/~tstevens/hcontent.htm\">Table of Contents</option>
		<option value=\"http://www.csulb.edu/~tstevens/hhapchkl.htm\">A-Happy ChkList</option>
		<option value=\"http://www.csulb.edu/~tstevens/hsummary.htm\">Book Summary</option>
		<option value=\"http://www.csulb.edu/~tstevens/hpreface.htm\">Introduction</option>
		<option value=\"http://www.csulb.edu/~tstevens/h1hap.htm\">Ch1-Happiness</option>
		<option value=\"http://www.csulb.edu/~tstevens/h2choose.htm\">Ch2-Choices</option>
		<option value=\"http://www.csulb.edu/~tstevens/h3hiself.htm\">Ch3-HigherSelf</option>
		<option value=\"http://www.csulb.edu/~tstevens/h4world.htm\">Ch4-World View</option>
		<option value=\"http://www.csulb.edu/~tstevens/h5self.htm\">Ch5-Self-Esteem</option>
		<option value=\"http://www.csulb.edu/~tstevens/h6intern.htm\">Ch6-Internal Control</option>
		<option value=\"http://www.csulb.edu/~tstevens/h7hf1.htm\">Ch7-Emotions Root</option>
		<option value=\"http://www.csulb.edu/~tstevens/h8hf2.htm\">Ch8-Coping Strategies</option>
		<option value=\"http://www.csulb.edu/~tstevens/h9patsm.htm\">Ch9-Self Management</option>
		<option value=\"http://www.csulb.edu/~tstevens/Iorder.htm\">To Order</option>
		<option value=\"http://www.csulb.edu/~tstevens/b-anger.htm\">B-Anger-Aggression</option>
		<option value=\"http://www.csulb.edu/~tstevens/hrunway.htm\">C-RunawayEmots</option>
		<option value=\"http://www.csulb.edu/~tstevens/hnegcog.htm\">D-NegativeThinking</option>
		<option value=\"http://www.csulb.edu/~tstevens/h-app-e-InterpersonalSkills.htm\">E-Interpersonal Skills
		</option>
		<option value=\"http://www.csulb.edu/~tstevens/h-appF-demog.htm\">F-Demographics</option>
		<option value=\"http://www.csulb.edu/~tstevens/ChooseToBeHappyDownload.htm\">Free Book Download</option>
		<option value=\"http://www.csulb.edu/~tstevens/hbiblio.htm\">Bibliography</option>
		<option value=\"http://www.csulb.edu/~tstevens/hauthor.htm\">Dr Tom Stevens</option>
		</select><select id=\"id7\" onchange=\"FP_jumpMenu(this,'window',false)\" size=\"1\" name=\"SHAQ\">
		<option>SHAQ TOC</option>
		<option value=\"http://www.csulb.edu/~tstevens/success/index.htm\">About SHAQ</option>
		<option value=\"http://www.csulb.edu/~tstevens/h10conclusions.htm\">Research Results</option>
		<option value=\"http://www.csulb.edu/~tstevens/HQandSHAQresearch.htm\">SHAQ Monograph</option>
		<option value=\"http://www.csulb.edu/~tstevens/success/shaq_research.htm\">Your Research</option>
		<option value=\"http://www.csulb.edu/~tstevens/success/for_faculty_etc_.htm\">For Faculty
		</option>
		<option value=\"http://www.csulb.edu/~tstevens/SHAQ.htm\">SHAQ for College</option>
		<option value=\"http://www.csulb.edu/~tstevens/success/shaq_assignment.htm\">Class Assignment</option>
		<option value=\"http://www.csulb.edu/~tstevens/success/shaqProblems.htm\">SHAQ Problems</option>
		<option value=\"http://www.csulb.edu/~tstevens/success/shaqResultsInfo.htm\">Your Results</option>
		</select><select id=\"id5\" onchange=\"FP_jumpMenu(this,'window',false)\" size=\"1\" name=\"SelfRelated\">
		<option>Self-Related TOC</option>
		<option value=\"http://www.csulb.edu/~tstevens/Iselfhelp.htm\">Self-Related  TOC
		</option>
		<option value=\"http://www.csulb.edu/~tstevens/self-development.htm\">Self-Development</option>
		<option value=\"http://www.csulb.edu/~tstevens/h5self.htm\">Self-Esteem</option>
		<option value=\"http://www.csulb.edu/~tstevens/h4world.htm\">Positive View</option>
		<option value=\"http://www.csulb.edu/~tstevens/h6intern.htm\">Internal Control</option>
		<option value=\"http://www.csulb.edu/~tstevens/h3hiself.htm\">Higher Self</option>
		<option value=\"http://www.csulb.edu/~tstevens/h9patsm.htm\">Self-Management</option>
		<option value=\"http://www.csulb.edu/~tstevens/patsm96.htm\">Time-Management</option>
		<option value=\"http://www.csulb.edu/~tstevens/life_goals_and_meaning.htm\">Life Goals/Meaning</option>
		<option value=\"http://www.csulb.edu/~tstevens/wsps.htm\">Making Decisions</option>
		<option value=\"http://www.csulb.edu/~tstevens/Learning and Motivation Notes.htm\">Change Habits</option>
		<option value=\"http://www.csulb.edu/~tstevens/health tips.htm\">Health Tips</option>
		<option value=\"http://www.csulb.edu/~tstevens/smoking.htm\">Quit Smoking</option>
		<option value=\"http://www.csulb.edu/~tstevens/sleep_problems.htm\">Sleep Problems</option>
		<option value=\"http://www.csulb.edu/~tstevens/headaches.htm\">Headaches</option>
		<option value=\"http://www.csulb.edu/~tstevens/substance_abuse.htm\">Addictions</option>
		</select><select id=\"id3\" onchange=\"FP_jumpMenu(this,'window',false)\" size=\"1\" name=\"Emotions\">
		<option>Emotions TOC</option>
		<option value=\"http://www.csulb.edu/~tstevens/anxiety,_anger,_and_depression.htm\">Emotions Overview</option>
		<option value=\"http://www.csulb.edu/~tstevens/h11intro.htm\">Happiness</option>
		<option value=\"http://www.csulb.edu/~tstevens/h7hf1.htm\">Emotion Causes</option>		
		<option value=\"http://www.csulb.edu/~tstevens/h8hf2.htm\">Coping Strategies</option>
		<option value=\"http://www.csulb.edu/~tstevens/depression.htm\">Depressed-Sad</option>
		<option value=\"http://www.csulb.edu/~tstevens/anxiety.htm\">Stress-Anxiety</option>
		<option value=\"http://www.csulb.edu/~tstevens/b-anger.htm\">AngerAggression</option>
		<option value=\"http://www.csulb.edu/~tstevens/h41model.htm\">Positive Thinking</option>
		<option value=\"http://www.csulb.edu/~tstevens/c10-emot.htm\">Panic-etc</option>
		<option value=\"http://www.csulb.edu/~tstevens/grief_help.htm\">Grief-Loss</option>
		<option value=\"http://www.csulb.edu/~tstevens/Desensit.htm\">Desensitization</option>		
		</select><select id=\"id4\" onchange=\"FP_jumpMenu(this,'window',false)\" size=\"1\" name=\"D4\">
		<option>Relationships TOC</option>
		<option value=\"http://www.csulb.edu/~tstevens/developing_intimacy.htm\">Relationship Success</option>
		<option value=\"http://www.csulb.edu/~tstevens/chaprels.htm\">Happy Relationships</option>
		<option value=\"http://www.csulb.edu/~tstevens/conversational_skills.htm\">Develop Intimacy</option>
		<option value=\"http://www.csulb.edu/~tstevens/c14-lisn.htm\">Conflict Resolution</option>
		<option value=\"http://www.csulb.edu/~tstevens/finding_mr_mrs_right.htm\">Find Love Mate</option>
		<option value=\"http://www.csulb.edu/~tstevens/conversational_skills.htm\">Conversational Skills</option>
		<option value=\"http://www.csulb.edu/~tstevens/assertion_training.htm\">Assertion Training</option>
		<option value=\"http://www.csulb.edu/~tstevens/overcoming_loneliness.htm\">Loneliness</option>
		</select><select id=\"id8\" onchange=\"FP_jumpMenu(this,'window',false)\" size=\"1\" name=\"AcademicCareer\">
		<option>Academic Career TOC</option>
		<option value=\"http://www.csulb.edu/~tstevens/academic.htm\">Academic Success TOC</option>
		<option value=\"http://www.csulb.edu/~tstevens/LEARN.htm\">Leaning Skills</option>
		<option value=\"http://www.csulb.edu/~tstevens/learning_&amp;_study_skills.htm\">Study Habits</option>
		<option value=\"http://www.csulb.edu/~tstevens/career_choices.htm\">Career Choices</option>
		<option value=\"http://www.csulb.edu/~tstevens/h91value.htm\">To Achieve Goals
		</option>
		<option value=\"http://www.csulb.edu/~tstevens/time_management.htm\">Time Management</option>
		<option value=\"http://www.csulb.edu/~tstevens/concentration.htm\">Concentration</option>
		<option value=\"http://www.csulb.edu/~tstevens/self-motivation.htm\">Motivation</option>
		<option value=\"http://www.csulb.edu/~tstevens/procrastination.htm\">Procrastination</option>
		<option value=\"http://www.csulb.edu/~tstevens/test_anxiety.htm\">Test Anxiety</option>
		<option value=\"http://www.csulb.edu/~tstevens/writing_help.htm\">Writing Help</option>
		<option value=\"http://www.csulb.edu/~tstevens/reading_help.htm\">Reading Help</option>
		<option value=\"http://www.csulb.edu/~tstevens/learning_disabilities.htm\">Learning Disabilitiy</option>
		<option value=\"http://www.csulb.edu/~tstevens/calculating_gpa_etc.htm\">Calculate GPA</option>
		</select><select id=\"id6\" onchange=\"FP_jumpMenu(this,'window',false)\" size=\"1\" name=\"Professional\">
		<option>Therapy & Prof Papers</option>
		<option value=\"http://www.csulb.edu/~tstevens/Prof papers.htm\">Professional Papers</option>
		<option value=\"http://www.csulb.edu/~tstevens/h10conclusions.htm\">SHAQ Study Summary</option>
		<option value=\"http://www.csulb.edu/~tstevens/HQandSHAQresearch.htm\">SHAQ Research Paper</option>
		<option value=\"http://www.csulb.edu/~tstevens/Cognitive Therapy.htm\">Cognitive Therapy</option>
		<option value=\"http://www.csulb.edu/~tstevens/h23explo.htm\">Explore Issues</option>
		<option value=\"http://www.csulb.edu/~tstevens/sct-oh.htm\">Spiritual Cognitive Therapy</option>
		<option value=\"http://www.csulb.edu/~tstevens/SpirituaCogTherOCCDHE-2003.pdf\">SCT-Modify Core Beliefs
		</option>
		<option value=\"http://www.csulb.edu/~tstevens/maximizingCounselingCenterImpact.htm\">Counseling Center Impact
		</option>
		<option value=\"http://www.csulb.edu/~tstevens/SHAQ.htm\">SHAQ for Universities</option>
		<option value=\"http://www.csulb.edu/~tstevens/Indep Intimacy vs Domin OH.htm\">Independent Intimacy
		</option>
		<option value=\"http://www.csulb.edu/~tstevens/srq-wpa short.htm\">SRQ Questionnaire</option>
		<option value=\"http://www.csulb.edu/~tstevens/First Year Paper Life SBs 1-28-00.htm\">Life Skills Classes
		</option>
		</select></td>
	
	<tr>
		<td class=\"auto-style5\" colspan=\"5\" style=\"width: 90%; height: 90%;\">
				
<!-- #BeginEditable \"pageBody\" -->

<p></p>
<h1 class=\"auto-style64\"><span class=\"myCenterXX-largeRed\">The Success and 
Happiness Attributes Questionnaire (SHAQ)</span><br><br>
<span class=\"myCenterLargeBlue\">Tom G. Stevens 
PhD<br></span><span class=\"myDefaultParagraph\">Psychologist/Professor Emeritus<br>California State University, Long Beach</span></h1>
<p>&nbsp;</p>
<p><span class=\"myLeftLargeParaHeadRed\">SHAQ--The Success and Happiness Attributes Questionnaire</span></p>
<p>The Success and Happiness Attributes 
Questionnaire (SHAQ) is a Computer Assessment and Recommendation Expert System 
(CARES) that is based upon research results of <strong>3,446 people.</strong> In our research SHAQ 
scales correlate significantly with (1) reported health, (2) lower depression, anxiety, 
and anger, and (3) measures of success and happiness in all life areas--including 
relationships, career, college, spiritual, self-development, and overall life happiness. 
The SHAQ scales had moderate to high positive correlations with almost all outcome 
measures.&nbsp; SHAQâs scales had surprisingly high multiple correlations with the 
emotional outcomes; with <strong>Overall Happiness, R = .87</strong>; with 
<strong>Low Depression R = .73</strong>,&nbsp; 
with <strong>Low Anxiety R = .68</strong>; with Low Anger-Aggression&nbsp; R = .70.(N = 1123 for 
all analyses.) &nbsp;For <strong>Relationship Outcomes Scale R = .69;</strong> for 
<strong>Health Outcomes 
Scale R = .82</strong>; for <strong>Highest Personal Income&nbsp; R = .49.</strong>&nbsp; For Highest 
<strong>Education 
Completed R = .46</strong> and for <strong>College GPA R = .40</strong>.&nbsp; 
These are very high correlations for this type of research.</p>
<p><strong>==&gt; </strong>
<a href=\"../h10conclusions.htm\"><strong>To view or download a layman&#39;s summary of SHAQ&#39;s research 
results, click here.</strong></a><strong><br>==&gt; </strong>
<a href=\"http://www.csulb.edu/~tstevens/HQandSHAQresearch.htm\"><strong>To view or download 
a research paper summarizing SHAQ&#39;s development and research results, click 
here.</strong></a><strong>&nbsp; <br>==&gt; </strong>
<a href=\"http://www.csulb.edu/~tstevens/my-peek.htm\"><strong>To 
view the book, You Can Choose To Be Happy: &quot;Rise Above&quot; Anxiety, Anger, 
and Depression, that is closely coordinated with SHAQ, click here.</strong></a><strong>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
[To see slides of an earlier professional paper and&nbsp; 
earlier sample research results, go to
</strong>
<a href=\"http://www.csulb.edu/~tstevens/SHAQ.htm\"><strong>http://www.csulb.edu/~tstevens/SHAQ.htm</strong></a><strong>].</strong></p>
<hr>
<p class=\"MsoNormal\"><span class=\"myLeftLargeParaHeadRed\">1. Find Your Happiness Quotient 
(HQ) Score: </span><span class=\"auto-style65\">A Formula for Happiness, Good 
Relationships, Health, Success, Low Depression, Low Anxiety, and Low Depression.</span></p>
<p class=\"MsoNormal\">Your HQ is based upon factors found to be 
related to your happiness in a way that is analogous to how your IQ is related to 
factors of the Intellect. Your HQ Score is your &quot;happiness IQ&quot; and is 
based upon our research showing an overall correlation of R = .865 between SHAQ 
scales and Overall Happiness. Other research results are summarized below.&nbsp; 
Your HQ values, beliefs, and life skills may be powerful influences on your past, 
current, and future happiness. These HQ factors are CONTROLLABLE factors: you can 
choose to be happy by improving SHAQ results and recommendations to maximize your 
future happiness. You will receive your HQ score and more information about HQ when 
you complete the SHAQ questionnaire.</p>
<p><span class=\"myLeftLargeParaHeadRed\">2. Save and Study Your SHAQ Results:
</span>&nbsp;<strong>Assessment and Recommendations</strong></p>
<p><strong>Your SHAQ Results will include 1-Your HQ score; 2-All scale 
scores (see below); 3-All questions and all your answers; 4-Self-help recommendations 
and links to free Internet self-help pages on topics relevant to each SHAQ scale.</strong>&nbsp; 
You can save and print all this information for later viewing.</p>
<p>SHAQ consists of many scales that can automatically assess 
a wide variety of personal attributes and&nbsp; HQ factors 
(a similar term is &quot;emotional intelligence&quot; or &quot;EQ&quot; factors) 
that relate to success and happiness in life areas including the following:</p>
<ul>
	<li>Self-Esteem, self-confidence, and internal control of 
	your life</li>
	<li>Life Skills (self-management, emotional coping, interpersonal 
	relationship, academic, and career-related).</li>
	<li>Relationships (especially marriage, family, friendships, 
	and romantic relationships). Improve conflict resolution, interpersonal communication 
	skills, romantic habits. Improve romance, relationship, and marital happiness.</li>
	<li>Overcoming fears of rejection, need for approval, and 
	shyness; meeting people and dating skills.</li>
	<li>Negative Emotions (unhappiness, depression, stress and 
	anxiety, and aggression and anger). Improve self control of emotions.</li>
	<li>Autonomy, assertiveness, and self-actualization.</li>
	<li>World view (and related positive and negative thinking).&nbsp;</li>
	<li>Academic achievement and completion of intended degrees 
	(factors that may affect your academic retention, grades, and overall success). 
	Improve grades and meet academic goals.</li>
	<li>Career (job) interests and achievement.</li>
	<li>Top life values, beliefs, and goals for achievement, .</li>
	<li>College Major (or Minor) Interest Test option. (You may 
	complete a special test for helping you choose a college major or minor; helps 
	choose from a set of majors/minors offered by most large universities.)</li>
</ul>
<p><span class=\"myLeftMedRedParaHead\">Self-Reflection and Insights.</span> 
Answering the questions is a process that can be valuable in itself.&nbsp; It gives 
you the opportunity to look at many aspects of your values, beliefs, and life skills.&nbsp; 
It gives you the opportunity to think about what is important to you and what aspects 
of yourself you would like to improve.&nbsp; The automatically scored results will 
give you a second chance for reflecting upon yourself and will give you help links 
for getting additional information. <br>&nbsp;&nbsp;&nbsp; For example, if you are 
a little shy and lonely and want to become more outgoing and friendly or want to 
improve your love life, SHAQ may detect underlying causes and lead you to direct 
on-line help that can help you overcome fears of rejection, build communication, 
assertiveness, and meeting people skills and increase your self-confidence. If want 
to examine your spiritual, religious, or &quot;my philosophy of life&quot; views, 
get feedback from SHAQ about your beliefs and values. </p>
		<p>&nbsp;</p>
		<p class=\"auto-style66\">SHAQ SCALES and SUB-TESTS</p>
<p class=\"auto-style61\">If you take the SHAQ scales required to receive an HQ 
score, then you will take all scales except the academic success-related scales 
listed below.&nbsp; You may also include the academic success scales; or you may 
choose from a variety of other options.&nbsp; When you begin SHAQ, you will be 
given those options.&nbsp; For most users, we recommend taking at least the 
minimal scales required for an HQ score.&nbsp; </p>
		<p><strong>Assess Yourself with Many Short Questionnaires.</strong> 
SHAQ is composed of many mini-questionnaires (scales).&nbsp; 
Each scale checks an area important to your success and happiness.&nbsp; These mini-questionnaires 
include:</p>
<table id=\"AutoNumber1\" border=\"0\" style=\"border-collapse: collapse\" width=\"100%\">
	<tbody class=\"auto-style1\">
	<tr>
		<td width=\"33%\" class=\"auto-style1\">* Self-esteem, self-worth test</td>
		<td width=\"33%\" class=\"auto-style1\">* Assertive conflict resolution test</td>
		<td width=\"34%\" class=\"auto-style1\">ACADEMIC SUCCESS and INTERESTS 
		TESTS</td>
	</tr>
	<tr>
		<td width=\"33%\" class=\"auto-style1\">* Self-confidence test</td>
		<td width=\"33%\" class=\"auto-style1\">* Relationship intimacy test</td>
		<td width=\"34%\" class=\"auto-style1\">* Academic 
		achievements and aptitudes test</td>
	</tr>
	<tr>
		<td width=\"33%\" class=\"auto-style1\">* Self-management test 
		</td>
		<td width=\"33%\" class=\"auto-style1\">* Romantic habits and communication test</td>
		<td width=\"34%\" class=\"auto-style1\">* Learning and study skills test</td>
	</tr>
	<tr>
		<td width=\"33%\" class=\"auto-style1\">* Emotional coping skills test</td>
		<td width=\"33%\" class=\"auto-style1\">* Relationship roles test</td>
		<td width=\"34%\" class=\"auto-style1\">* Academic 
		satisfaction and motivation test</td>
	</tr>
	<tr>
		<td width=\"33%\" class=\"auto-style1\">* Internal versus external control test</td>
		<td width=\"33%\" class=\"auto-style1\">* Healthy independence 
		test</td>
		<td width=\"34%\" class=\"auto-style1\">* Basic Academic Learning Factors test</td>
	</tr>
	<tr>
		<td width=\"33%\" class=\"auto-style1\">* Positive world view test</td>
		<td width=\"33%\" class=\"auto-style1\">* Social and Interpersonal values test</td>
		<td width=\"34%\" class=\"auto-style1\">* College 
		major and career interests</td>
	</tr>
	<tr>
		<td width=\"33%\" class=\"auto-style1\">* Greatest fears test</td>
		<td width=\"33%\" class=\"auto-style1\">* Achievement, success, and material values
		test</td>
		<td width=\"34%\" class=\"auto-style1\">* Learning 
		disabilities scale</td>
	</tr>
	<tr>
		<td width=\"33%\" class=\"auto-style1\">* Happiness test</td>
		<td width=\"33%\" class=\"auto-style1\">* Internal mental or spiritual values
		test</td>
		<td width=\"34%\"></td>
	</tr>
	<tr>
		<td width=\"33%\" class=\"auto-style1\">* Depression test</td>
		<td width=\"33%\" class=\"auto-style1\">* Unconditional worth of self and others
		test</td>
		<td width=\"34%\"></td>
	</tr>
	<tr>
		<td width=\"33%\" class=\"auto-style1\">* Anxiety test</td>
		<td width=\"33%\" class=\"auto-style1\">* Identity and ethics test</td>
		<td width=\"34%\"></td>
	</tr>
	<tr>
		<td width=\"33%\" class=\"auto-style1\">* Anger and aggression test</td>
		<td width=\"33%\" class=\"auto-style1\">* Physical health and habits test</td>
		<td width=\"34%\"></td>
	</tr>
</table>
<p><span class=\"myLeftMedRedParaHead\">You may Save the Full Results including 
all SHAQ questions, scales, scores, and recommendations</span>. After 
completing SHAQ CARES, you will receive your full results in a java pop-up window 
and an html window.&nbsp; You can save those results to a file 
for future use.</p>
<p>Go to Help Pages and Learn. You 
will receive help links to w<strong>eb pages that give advice and list resources for self-development 
and mediated coaching in your lower scoring areas. (See Help Pages below.)</strong></p>
		<p><span class=\"auto-style42\"><strong>IMPORTANT NOTES:</strong></span> 
		1. If SHAQ doesn't run, try a different Web Browser and/or temporarily 
		change secutity settings to allow JAVA or to minimal levels.<br><strong>
		FOXFIRE</strong> and Google <strong>CHROME</strong> seem to work well, 
		while <strong>INTERNET EXPLORER DOESN'T.</strong><br>2. Your 
		Web BROWSER may popup a SCARY<strong> WARNING ABOUT USE OF 
		SHAQ</strong> based upon the fact that SHAQ is a Java Applet. 
		<span class=\"auto-style42\"><strong><br>SHAQ IS A SAFE APPLICATION!</strong></span>&nbsp; Agree to run it dispite any \"risks.\" (It is \"unsigned\" 
		because \"signing\" can be difficult and expensive. Even most commercial 
		sites don't sign them.) </p>
		<p><a href=\"shaqCares.htm\">Click Here for SHAQ CARES Self-Assessment<br>
		</a></p>
<p><span class=\"myLeftLargeParaHeadRed\">3. 
CARES Help Pages Linked to each SHAQ Scale</span></p>
<p><span class=\"myLeftMedRedParaHead\">These web pages will list Internet links for immediate on-line 
help.</span>&nbsp; Many pages will also give some direct advice and list other resources.&nbsp; 
(Resources for CSULB students such as student services and classes will be listed 
as well.) You can use the help pages without taking the SHAQ CARES Assessment, but 
you will be missing the chance for self-discovery to learn more about your strengths 
and weaknesses. To begin, click below.</p>
<p><span class=\"myLeftMedRedParaHead\">Special Help For College Students.</span> 
Your SHAQ results and associate help-links can help your college success by helping 
you improve motivation, learning and study skills, and writing and math skills.&nbsp; 
They can help you clarify your identity, values, and goals and find a major that 
is right for you. They can help you build self-management and interpersonal skills 
to help you be more successful in your career and life.&nbsp; If you want to improve 
grades or chances for career success, this is a good place to start.&nbsp;&nbsp;</p>
<p><a href=\"../Iselfhelp.htm\">Click Here for Self-Help Internet Resources 
Start Page</a></p>
<hr>
<p><span class=\"myLeftLargeParaHeadRed\">4. 
Free On-line Self-Help Book and Brochures</span></p>
<p>You may obtain free on-line copies of chapters from the book,&nbsp;
<a href=\"http://www.csulb.edu/~tstevens/my-peek.htm\">You Can Choose To Be Happy: &quot;Rise 
Above&quot; Anxiety, Anger, and Depression</a> by Tom G. Stevens PhD and other 
free online brochures on relationships, meeting people and dealing with rejection, 
self-esteem, emotions, learning and study skills, career decision-making, time-management, 
and more.&nbsp;<br>Go to <a href=\"http://www.csulb.edu/~tstevens/Iselfhelp.htm\">http://www.csulb.edu/~tstevens/Iselfhelp.htm.</a></p>
<hr>
<p>
<a name=\"How to Navigate Through This Web Site\">How to Navigate Through This Website</a><br>
The website is arranged in a tree structure. Each page has a series 
of navigation boxes at the top. Click on a topic box 
to go to a more specific topic.&nbsp;Click on &quot;Up&quot; 
to go back to the next higher level in the tree or &quot;Home&quot; 
to go to the site Home Page.&nbsp; At the bottom of each page you will find other 
key links such as the link to the <a href=\"shaqCares.htm\">SHAQ CARES assessment</a>.</p>
<p><a href=\"../Iselfhelp.htm\">Click Here to go to a Map/Outline of 
the Help Links part of the website</a>.</p>
<hr>
<p>&nbsp;</p>
		<p><strong>Additional Notes: </strong></p>
		<p><span class=\"myLeftMedRedParaHead\">1. SHAQ Research Programs</span>. We 
are interested in continued validation of SHAQ and learning more about factors that 
affect human health, success, and happiness. We will be preparing a journal article 
based upon our most recent research on SHAQ, and are also interested in cooperating 
with other researchers who might want to use SHAQ or any of its scales in their 
own research.&nbsp; SHAQ is free to all users and we can even incorporate new experimental 
scales on our website as part of SHAQ in cooperative research projects at no charge 
to the researcher.&nbsp; <br><a href=\"shaq_research.htm\">=&gt; For more information, 
click here to go to the page about using SHAQ in research.</a>&nbsp;&nbsp;&nbsp;
&nbsp;Interested parties should contact Dr. Stevens 
(see below).</p>
		<p><span class=\"myLeftMedRedParaHead\">2/ More SHAQ Information: </span>&nbsp;
		<a href=\"shaq_assignment.htm\">SHAQ Class Assignments</a>&nbsp;&nbsp;
		<a href=\"shaqResultsInfo.htm\">SHAQ Results--Info and Saving</a>&nbsp;&nbsp;&nbsp;
		<a href=\"shaqProblems.htm\">SHAQ Problems</a>&nbsp;&nbsp;
		<a href=\"WelcomePage.html\">WelcomePage</a></p>
<p>&nbsp;SHAQ research project approved by the California State University, 
Long Beach Institutional Review Board (IRB).</p>
<p>&nbsp;</p>
<p><a href=\"shaqCares.htm\"><strong>Click Here for SHAQ CARES Self-Assessment</strong></a></p>

<!-- #EndEditable -->
		<!-- Place this tag where you want the GOOGLE SEARCH FEEDBACK +1 button to render -->
    <g:plusone></g:plusone>
    <script type=\"text/javascript\">
      window.___gcfg = {
        lang: 'en-US'
      };

      (function() {
        var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
        po.src = 'https://apis.google.com/js/plusone.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
      })();
    </script>
    <!-- GOOGLE END Place this tag where you want the GOOGLE SEARCH FEEDBACK +1 button to render -->
    

		</td>
	</tr>
	<tr>
		<td class=\"auto-style6\" colspan=\"5\" style=\"width: 100%; height: 10px;\">&nbsp;</td>
	</tr>
	<tr>
		<td class=\"auto-style7\" colspan=\"5\" style=\"width: 100%; height: 180px\">

		<br class=\"auto-style31\">

		<span class=\"auto-styleWhite65\">
The BOOK (free download): </span> <a href=\"http://www.csulb.edu/~tstevens/hcontent.htm\" class=\"auto-styleWhite65\" ></a>
		<span class=\"auto-styleWhite65\">Go to Contents of </span>
		<span class=\"auto-styleWhite62\"> <a href=\"http://www.csulb.edu/~tstevens/hcontent.htm\">
		<span class=\"auto-styleWhite65\">Dr. Stevens'&nbsp; book,&nbsp; </span></a></span>
		<em><a href=\"http://www.csulb.edu/~tstevens/hcontent.htm\">
		<span class=\"auto-styleWhite62\">
		<span class=\"auto-styleWhite63\">You Can Choose To Be Happy:</span><span class=\"auto-styleWhite55\"> 
		\"Rise Above\" Anxiety, Anger, and Depression.</span></span></a></em><span class=\"auto-styleWhite65\"><br><br>SELF-HELP INFORMATION:&nbsp;</span><span class=\"auto-style31\"><a href=\"../Iselfhelp.htm\"><span class=\"auto-styleWhite65\">
FREE SELF-HELP materials available on this web site (click here to see list)&nbsp;</span></a></span><span class=\"auto-styleWhite65\">&nbsp;
		<br><br>ORDERING the BOOK:</span><span class=\"auto-style31\"><a href=\"../Iorder.htm\"><span class=\"auto-styleWhite65\">&nbsp;
How to ORDER You Can Choose To Be Happy

&nbsp;</span></a><span class=\"auto-styleWhite62\"><br><br class=\"auto-style51\">
		</span> 
		<a class=\"auto-styleWhite54\" href=\"http://www.csulb.edu/~tstevens/success\">
		SHAQ QUESTIONNAIRE: 
		Free</a></span><span class=\"auto-styleWhite55\"><a class=\"auto-style38\" href=\"http://www.csulb.edu/~tstevens/success\"> </a></span> 
		<em> 
		<a class=\"auto-styleWhite65\" href=\"http://www.csulb.edu/~tstevens/success\">
		<span class=\"auto-styleWhite63\">Success and Happiness Attributes 
		Questionnaire (SHAQ</span></a><a class=\"auto-styleWhite54\" href=\"http://www.csulb.edu/~tstevens/success\"><span class=\"auto-styleWhite67\">)</span></a></em><span class=\"auto-style31\">
		<a href=\"http://www.csulb.edu/~tstevens/success\">
		<span class=\"auto-styleWhite65\">&nbsp;to assess self on many factors&nbsp; including HQ-Happiness Quotient&nbsp;</span></a><span class=\"auto-styleWhite62\"><br><br></span> 
		<a href=\"../Iorder.htm\" class=\"auto-styleWhite54\" >EMAIL DR. STEVENS</a><span class=\"auto-styleWhite65\"><a href=\"../Iorder.htm\" class=\"auto-style66\" >:</a></span></span> <a href=\"mailto:tstevens@csulb.edu\" class=\"auto-style33\">
		<span class=\"auto-styleWhite65\">Email feedback to Dr. Stevens</span><a href=\"mailto:tstevens@csulb.edu\" class=\"auto-style38\"><span class=\"auto-styleWhite55\">
		tstevens@csulb.edu</span><span class=\"auto-styleWhite62\">
		</span>

		<span class=\"auto-style31\">
		</span>

		<span class=\"auto-styleWhite62\">

		</span>

		<a href=\"mailto:tstevens@csulb.edu\" class=\"auto-style33\">

		<span class=\"auto-styleWhite62\">

		I welcome your comments about my web site or any of its contents.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span>

<p align=\"center\"><a href=\"http://www.csulb.edu/~tstevens/Iselfhelp.htm\">
<span class=\"auto-styleWhite65\">Self-Help and other resources on 
this website (and site map)</span></a></p>

<span class=\"auto-style31\">
		<br>Web site created and maintained by: Tom G. Stevens PhD

Psychologist-Faculty Emeritus,
 
<br>California State University, Long Beach Counseling and Psychological Services.<br>URL of this web site: http://www.csulb.edu/~tstevens <br>
		<br>&nbsp;HOME PAGE: </span> 
		<a class=\"auto-styleWhite65\" href=\"http://www.csulb.edu/~tstevens/index.html\">Return to Dr. Stevens'
Home Page</a><a class=\"auto-style38\" href=\"http://www.csulb.edu/~tstevens/index.html\"> </a>

<span class=\"auto-style31\">

<p>
<a class=\"auto-style32\" href=\"http://www.csulb.edu/~tstevens/index.html\"><span class=\"auto-styleWhite65\">Copyright 2013 Tom G. Stevens PhD

		&nbsp;</span></a></p>
		

		</span> 
		

</td>
	</tr>
</table>

</body>

<!-- #EndTemplate -->

</html>
"
CL-USER 2 > 
|#
;;------------------------------------------------------ www.csulb.edu ------------------------------------------------
xxx
;;FOR www.csulb.edu
;;RETURNS:
#|
CL-USER 1 > (testdc)
"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">
<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">
<head>
<!-- (c) 2012 Copyright - All Rights Reserved - California State University, Long Beach.
This template has been developed and it is maintained by University Public Affairs & Publications. 
Use of this template is allowed with permission and agreement on its integrity. If you need assistance or
need additional information, please visit http://www.csulb.edu/style/ -->
<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />
<meta name=\"Description\" content=\"CSULB is a large, urban, comprehensive university in the 23-campus California State University system.\" />
<meta name=\"Keywords\" content=\"College, University, Long Beach, Long Beach State, 49ers, Dirtbags, Cal State, CSU, CSULB, Alexander, California\" />
<title>California State University, Long Beach</title>
<meta name=\"language\" content=\"en\" />
<!-- File copied to root on 14jan13 by jhurtado.  -->
<script type=\"text/javascript\">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-193316-2']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>


<script type=\"text/javascript\">
// Added config.html, contains config parameters for suggest in search, Pritesh Shah 04/27/2007
// If you wish to turn off the suggestion feature for the search box, set suggest_in_search = false; 
var suggest_in_search = true;
var xmlpath = '/xml/keywords.xml';
</script>

<script type=\"text/javascript\" src=\"/js/final_ac.js\"></script>

<!-- For Audience Page Search Box Autosuggest -->
<script type=\"text/javascript\" src=\"/js/bsn.AutoSuggest_2.1.3.js\"></script>
<!-- For Audience Page Search Box Autosuggest -->

<!-- For Audience Page Search Box: Show/Hide Search Results -->
<script type=\"text/javascript\" src=\"/js/jquery.min.js\"></script>
<script type=\"text/javascript\" src=\"/js/jquery.cycle.lite.js\"></script>
<script type=\"text/javascript\">
$(document).ready(function() {
	$('#banner_content').cycle({
		fx: 'fade',
		random: 1,
		timeout: 10000 // choose your transition type, ex: fade, scrollUp, shuffle, etc...
	});
});
</script>
<!-- For Audience Page Search Box: Show/Hide Search Results -->

<link rel=\"icon\" type=\"image/x-icon\" href=\"/images/favicon.ico\" />
<link rel=\"apple-touch-icon-precomposed\" sizes=\"144x144\" href=\"/images/apple-touch-icon-144x144-precomposed.png\">
<link href=\"/aud/css/ut-content.css\" rel=\"stylesheet\" media=\"screen\" title=\"Content CSS\" type=\"text/css\" />
<link href=\"/aud/css/ut-structure.css\" rel=\"stylesheet\" type=\"text/css\" />
<link href=\"/aud/css/audiences.css\" rel=\"stylesheet\" type=\"text/css\" />
<link href=\"css/audience.css\" rel=\"stylesheet\" type=\"text/css\" />
<link href=\"/css/autosuggest.css\" rel=\"stylesheet\" type=\"text/css\" />

<script type=\"text/javascript\" src=\"/js/swfobject.js\"></script>
</head>
<body class=\"home\" onclick=\"remove_box()\">
<div id=\"contain_abovefold\">
  <h1 class=\"hidden\">California State University, Long Beach</h1>
  <div id=\"contain_heading\"> <!-- <p class=\"audHeading\">CSULB</p> -->  </div>
<div id=\"contain_header\">
  <div id=\"contain_siteid\">
    <div id=\"siteid_content\">
      
      <!-- Update Header ID here -->
	  <!--<a href=\"/\"><img src=\"/aud/img/hdr_seal_darkgray.gif\" alt=\"California State University, Long Beach\" title=\"California State University, Long Beach\" width=\"400\" height=\"75\" /></a> -->
	  
      <!--<h1><a title=\"Link to home page\" href=\"/\">California State University, Long Beach</a></h1>-->
      <!--<div id=\"click_siteid\">
	  	<a href=\"/\"></a>
	  </div>-->
	        
      </div>
  </div>
  
  <div id=\"contain_search\">
  <h2 class=\"hidden\">Destinations, Site Search and Services</h2>

	<!-- GSA search -->
	
	<div id=\"gSearchbox\">

<!-- Show/Hide Audience Page Search Results -->
<script type=\"text/javascript\">
//Hide suggestion box
function remove_box()
{
	$('.autosuggest').hide();
}

//Show suggestion box
function show_box()
{
	$('.autosuggest').slideDown(1000);
}
</script>
<!-- Show/Hide Audience Page Search Results -->


<!-- Audience Page Search Box -->
<form method=\"get\" action=\"http://google.calstate.edu/search\" class=\"asholder\" name=\"search\" id=\"searchbox\">
<div>
	<label for=\"SiteSearch1\">
	<input name=\"q\" class=\"sitesearchbox1\" type=\"text\" id=\"SiteSearch1\" title=\"Search CSULB\" alt=\"Search CSULB\" tabindex=\"1\" size=\"20\"
maxlength=\"120\" value=\"\"/></label>
<input type=\"image\" class=\"sitesearchbutton\" src=\"http://www.csulb.edu/images/interface/searchbutton_icon.gif\" tabindex=\"2\" alt=\"Search\" />
	<input type=\"hidden\" name=\"access\" value=\"p\" />
	<input type=\"hidden\" name=\"site\" value=\"csulb\" />
	<input type=\"hidden\" name=\"output\" value=\"xml_no_dtd\" />
	<input type=\"hidden\" name=\"client\" value=\"csulb-edu\" />
	<input type=\"hidden\" name=\"sort\" value=\"date:D:L:d1\" />
	<input type=\"hidden\" name=\"proxystylesheet\" value=\"csulb-edu\" />
	<input type=\"hidden\" name=\"oe\" value=\"UTF-8\" /> 
</div>
</form>
<!-- Audience Page Search Box -->

</div> <!-- End of gSearchbox -->


<!-- Audience Page Search Box Value Scripting -->
<script type=\"text/javascript\">
//Request results from search_keywords.php file according to the entered characters in the search box
var options = 
{
	script:\"/search/search_keywords.php?json=true&amp;limit=6&amp;\",	/* limit is for displaying number of search suggest items. currently its 6 */
	varname:\"input\",
	json:true,
	shownoresults:false,  
	maxresults:6,
	callback: function (obj) 
	{
		if(obj == \"\")
		{ 
			document.getElementById('SiteSearch1').value = obj.id;
		}
	}
};

//Return the matched results from search_keywords.php file and display
var as_json = new bsn.AutoSuggest('SiteSearch1', options);
var options_xml = 
{
	script: function (input) 
	{ 			
		return \"search_keywords.php?input=\"+input+\"&amp;SiteSearch1=\"+document.getElementById('SiteSearch1').value; 
	},varname:\"input\"
};
</script>
<!-- Audience Page Search Box Value Scripting -->

    
    <!-- GSA search -->
    
    <!-- OLD Search -->
    
    <!--
<form method=\"get\" action=\"http://www.google.com/u/lbsu\" id=\"content_searchtools\">
      <label class=\"hidden\" for=\"SiteSearch\"> Search CSULB</label>
      <input type=\"hidden\" name=\"hq\" value=\"inurl:www.csulb.edu\" />
      <input name=\"q\" type=\"text\" size=\"18\" maxlength=\"120\" id=\"SiteSearch\" tabindex=\"1\" class=\"sitesearchbox\" value=\"\" onfocus=\"clearText(this)\" />
      <input type=\"image\" class=\"sitesearchbutton\" src=\"/images/interface/searchbutton_icon.gif\" alt=\"Search\" />
    </form>
-->
    
    <!-- OLD Search -->
    
    <!-- Google Custom Search 28mar13 -->
    
<!--
	<script>
  (function() {
    var cx = '017715013685290007965:ea9duptman8';
    var gcse = document.createElement('script');
    gcse.type = 'text/javascript';
    gcse.async = true;
    gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
        '//www.google.com/cse/cse.js?cx=' + cx;
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(gcse, s);
  })();
</script>
<gcse:searchbox-only></gcse:searchbox-only>
-->

	<!-- Google Custom Search 28mar13 -->


    
    <!-- Key campus related web applications -->
    
    <ul id=\"searchtools_links\">
      <li><a href=\"http://my.csulb.edu\">MyCSULB</a> <span class=\"bull\"> &bull; </span></li>
      <li><a href=\"http://beachboard.csulb.edu\">BeachBoard</a> <span class=\"bull\"> &bull; </span></li>
      <li><a href=\"/library\">Library</a> <span class=\"bull\"> &bull; </span></li>
      <li><a href=\"http://daf.csulb.edu/email\">E-mail</a> <span class=\"bull\"> &bull; </span></li>
      <li><a href=\"/search\">Campus Directory</a> <!-- <img src=\"/images/icons/icon_28x9_new.gif\" alt=\"New\" /> --></li> 
      <!-- <li><a href=\"/directory\">Campus Contacts</a></li> -->
    </ul>
  </div>
  <div class=\"clear_float\"><a href=\"#content\">Skip links</a></div>
</div>
  <div id=\"design_audnavbanner\">
    <div id=\"contain_audiencenav_banner\">
      <div id=\"contain_leftnav\">
        <h2 class=\"hidden\">Audiences</h2>
<ul id=\"audnav\">
  <li class=\"hidden\"><a href=\"/\">CSULB Home</a></li>
  <li class=\"studentaudience\"><a href=\"/student-info/\">Students</a></li>
  <li class=\"facultyaudience\"><a href=\"/people/\">Faculty &amp; Staff</a></li>
  <li class=\"alumniaudience\"><a href=\"/alumni/\">Alumni</a></li>
  <li class=\"parentsaudience\"><a href=\"/parents/\">Parents</a></li>
  <li class=\"communityaudience\"><a href=\"/community/\">Visitors &amp; Community</a></li>
  <li class=\"friendsaudience\"><a href=\"/friends-info/\">Giving to CSULB</a></li>
</ul>
<div id=\"socialmedia_bk\">
  <h2 class=\"hidden\">Social Media Links</h2>
  <ul id=\"socialmedia\">
    <li class=\"facebook_icon\"><a href=\"https://www.facebook.com/csulb\" title=\"CSULB on Facebook\">Facebook</a></li>
    <li class=\"twitter_icon\"><a href=\"https://twitter.com/csulb\" title=\"CSULB on Twitter\">Twitter</a></li>
    <li class=\"google_icon\"><a href=\"https://plus.google.com/+csulb\" title=\"CSULB on Google+\">Google+</a></li>
  </ul>
</div>
        
      </div>
      <div id=\"contain_banner\">
        <div id=\"banner_content\"> 
<!-- GENERAL -->

<img src=\"/images/homeslides/sep12/01.jpg\" width=\"655\" height=\"250\" alt=\"View of the New Science Building\" title=\"View of the New Science Building\" />
<img src=\"/images/homeslides/sep12/02.jpg\" width=\"655\" height=\"250\" alt=\"Students Navigate Through Campus\" title=\"Students Navigate Through Campus\" />
<img src=\"/images/homeslides/sep12/03.jpg\" width=\"655\" height=\"250\" alt=\"Students Around the Library\" title=\"Students Around the Library\" />
<img src=\"/images/homeslides/sep12/04.jpg\" width=\"655\" height=\"250\" alt=\"Group of Students on Campus\" title=\"Group of Students on Campus\" />
<img src=\"/images/homeslides/sep12/05.jpg\" width=\"655\" height=\"250\" alt=\"View of the Green Fields\" title=\"View of the Green Fields\" />
<img src=\"/images/homeslides/sep12/06.jpg\" width=\"655\" height=\"250\" alt=\"New Science Building\" title=\"New Science Building\" />
<img src=\"/images/homeslides/sep12/07.jpg\" width=\"655\" height=\"250\" alt=\"Students at CSULB\" title=\"Students at CSULB\" />
<img src=\"/images/homeslides/sep12/08.jpg\" width=\"655\" height=\"250\" alt=\"Aerial View of the campus\" title=\"Aerial View of the campus\" />
<img src=\"/images/homeslides/sep12/09.jpg\" width=\"655\" height=\"250\" alt=\"A Student Smiles\" title=\"A Student Smiles\" />
<img src=\"/images/homeslides/sep12/10.jpg\" width=\"655\" height=\"250\" alt=\"A Student and Professor During Instruction\" title=\"A Student and Professor During Instruction\" />
<img src=\"/images/homeslides/sep12/11.jpg\" width=\"655\" height=\"250\" alt=\"Walking the Campus\" title=\"Walking the Campus\" />
<img src=\"/images/homeslides/sep12/12.jpg\" width=\"655\" height=\"250\" alt=\"During Science Instruction\" title=\"During Science Instruction\" />
<img src=\"/images/homeslides/sep12/13.jpg\" width=\"655\" height=\"250\" alt=\"The New Facilities\" title=\"The New Facilities\" />
<img src=\"/images/homeslides/sep12/14.jpg\" width=\"655\" height=\"250\" alt=\"Science Student Working on a Project\" title=\"Science Student Working on a Project\" />
<img src=\"/images/homeslides/sep12/15.jpg\" width=\"655\" height=\"250\" alt=\"Students Walking by the library\" title=\"Students Walking by the library\" />
<img src=\"/images/homeslides/sep12/16.jpg\" width=\"655\" height=\"250\" alt=\"Walking by the Engineering Building\" title=\"Walking by the Engineering Building\" />
<img src=\"/images/homeslides/sep12/17.jpg\" width=\"655\" height=\"250\" alt=\"Group of Science Students\" title=\"Group of Science Students\" />
<img src=\"/images/homeslides/sep12/18.jpg\" width=\"655\" height=\"250\" alt=\"At the Nugget\" title=\"At the Nugget\" />
<img src=\"/images/homeslides/sep12/19.jpg\" width=\"655\" height=\"250\" alt=\"The New Wellness Center\" title=\"The New Wellness Center\" />
<img src=\"/images/homeslides/sep12/20.jpg\" width=\"655\" height=\"250\" alt=\"Science Students in the Lab\" title=\"Science Students in the Lab\" />
<img src=\"/images/homeslides/sep12/21.jpg\" width=\"655\" height=\"250\" alt=\"Industrial Design Students\" title=\"Industrial Design Students\" />
<img src=\"/images/homeslides/sep12/22.jpg\" width=\"655\" height=\"250\" alt=\"Tower Seen by Students Walking\" title=\"Tower Seen by Students Walking\" />
<img src=\"/images/homeslides/sep12/23.jpg\" width=\"655\" height=\"250\" alt=\"Playing Music on Campus\" title=\"Playing Music on Campus\" />
<img src=\"/images/homeslides/sep12/24.jpg\" width=\"655\" height=\"250\" alt=\"Brotman Hall and the Pyramid\" title=\"Brotman Hall and the Pyramid\" />
<img src=\"/images/homeslides/sep12/25.jpg\" width=\"655\" height=\"250\" alt=\"Walking Through the Campus on First Week of the Semester\" title=\"Walking Through the Campus on First Week of the Semester\" />
<img src=\"/images/homeslides/sep12/26.jpg\" width=\"655\" height=\"250\" alt=\"Studying on Campus\" title=\"Studying on Campus\" />
<img src=\"/images/homeslides/sep12/27.jpg\" width=\"655\" height=\"250\" alt=\"Campus Scene and Buildings\" title=\"Campus Scene and Buildings\" />
<img src=\"/images/homeslides/sep12/28.jpg\" width=\"655\" height=\"250\" alt=\"CSULB 7th Street Entrance Sign\" title=\"CSULB 7th Street Entrance Sign\" />
<img src=\"/images/homeslides/sep12/29.jpg\" width=\"655\" height=\"250\" alt=\"Engineering Students at Open House\" title=\"Engineering Students at Open House\" />
<img src=\"/images/homeslides/sep12/30.jpg\" width=\"655\" height=\"250\" alt=\"At the Basketball Games in the Pyramid\" title=\"At the Basketball Games in the Pyramid\" />
<img src=\"/images/homeslides/sep12/31.jpg\" width=\"655\" height=\"250\" alt=\"Flowering peach trees throughout the campus\" title=\"Flowering peach trees throughout the campus\" />
<img src=\"/images/homeslides/sep12/32.jpg\" width=\"655\" height=\"250\" alt=\"During class\" title=\"During class\" />
<img src=\"/images/homeslides/sep12/33.jpg\" width=\"655\" height=\"250\" alt=\"The Carpenter Center\" title=\"The Carpenter Center\" />
<img src=\"/images/homeslides/sep12/34.jpg\" width=\"655\" height=\"250\" alt=\"At the Pyramid Playing With Snow\" title=\"At the Pyramid Playing With Snow\" />
<img src=\"/images/homeslides/sep12/35.jpg\" width=\"655\" height=\"250\" alt=\"Walking by the Psychology Building\" title=\"Walking by the Psychology Building\" />
<img src=\"/images/homeslides/sep12/36.jpg\" width=\"655\" height=\"250\" alt=\"A Group of Greeks During Open House\" title=\"A Group of Greeks During Open House\" />
<img src=\"/images/homeslides/sep12/37.jpg\" width=\"655\" height=\"250\" alt=\"Students Walking on the Bridge\" title=\"Students Walking on the Bridge\" />
<img src=\"/images/homeslides/sep12/38.jpg\" width=\"655\" height=\"250\" alt=\"Students Walk by Engineering Statue\" title=\"Students Walk by Engineering Statue\" />
<img src=\"/images/homeslides/sep12/39.jpg\" width=\"655\" height=\"250\" alt=\"Large Group at a Lecture\" title=\"Large Group at a Lecture\" />
<img src=\"/images/homeslides/sep12/40.jpg\" width=\"655\" height=\"250\" alt=\"View From the Roof Students Walking\" title=\"View From the Roof Students Walking\" />
<img src=\"/images/homeslides/sep12/41.jpg\" width=\"655\" height=\"250\" alt=\"A Student Smiles\" title=\"A Student Smiles\" />
<img src=\"/images/homeslides/sep12/42.jpg\" width=\"655\" height=\"250\" alt=\"The Fountain by Brotman Hall\" title=\"The Fountain by Brotman Hall\" />
<img src=\"/images/homeslides/sep12/43.jpg\" width=\"655\" height=\"250\" alt=\"Students at a Round Table Discussion\" title=\"Students at a Round Table Discussion\" />
<img src=\"/images/homeslides/sep12/44.jpg\" width=\"655\" height=\"250\" alt=\"Students Walking Through Campus and Enjoying its Beauty\" title=\"Students Walking Through Campus and Enjoying its Beauty\" />
<img src=\"/images/homeslides/sep12/45.jpg\" width=\"655\" height=\"250\" alt=\"A CSULB Athlete Running\" title=\"A CSULB Athlete Running\" />
<img src=\"/images/homeslides/sep12/46.jpg\" width=\"655\" height=\"250\" alt=\"Sorority Members Smile\" title=\"Sorority Members Smile\" />
<img src=\"/images/homeslides/sep12/47.jpg\" width=\"655\" height=\"250\" alt=\"New Building Facade\" title=\"New Building Facade\" />
<img src=\"/images/homeslides/sep12/48.jpg\" width=\"655\" height=\"250\" alt=\"Graduation Ceremonies Sen From the McIntosh Building Roof\" title=\"Graduation Ceremonies Sen From the McIntosh Building Roof\" />
<img src=\"/images/homeslides/sep12/49.jpg\" width=\"655\" height=\"250\" alt=\"A Graduate Celebrates her Accomplishment\" title=\"A Graduate Celebrates her Accomplishment\" />
 </div>
      </div>
      <div class=\"clear_float\"></div>
    </div>
  </div>
</div>
<div id=\"contain_belowfold\"> <a id=\"content\"></a>
<!--include virtual=\"/aud/ADMIN/home_lenses-4set.html\" -->
<!-- ****** ALERT ****** -->  


<!--
<div class=\"lensalert\">
    <h2></h2>
    <p></p> 
</div>
-->


<!-- ****** ALERT ****** --> 


<div id=\"contain_lenses\">
  <h2 class=\"hidden\">Announcements</h2>
  <div id=\"content_lenses\">
  
  
  <!-- ****** LENS 3 ******  -->
    
   <!--  WINTER SESSION -->
    <div id=\"contain_lens3\">
      <div id=\"content_lens3\">
        <p><a href=\"http://www.ccpe.csulb.edu/winter/\">
    	<img src=\"/images/lenses/lns_80_wintersession.gif\" title=\"Winter Session 2014\" alt=\"Winter Session Icon\" class=\"img-left\" /></a></p>
        <h3><a href=\"http://www.ccpe.csulb.edu/winter/\">Winter Session 2014</a></h3>
        <p>January 2&ndash;18</p>
        </div>
    </div>
    
    <!--
<div id=\"contain_lens3\">
      <div id=\"content_lens3\">
        <p><a href=\"http://www.csulb.edu/depts/enrollment/registration/\">
    	<img src=\"/images/lenses/lns_80_spring.gif\" title=\"Spring Semester 2013\" alt=\"Spring Semester 2013 Icon\" class=\"img-left\" /></a></p>
        <h3><a href=\"http://www.csulb.edu/depts/enrollment/registration/\">Spring Semester 2013</a></h3>
        <p>January 22, 2013</p>
        </div>
    </div>
-->
    
    
    <div id=\"contain_lens3\">
      <div id=\"content_lens3\">
        <p><a href=\"/depts/enrollment/registration/class_schedule/\">
    	<img src=\"/images/lenses/lns_80_students.gif\" title=\"Schedule of Classes\" alt=\"Schedule of Classes icon\" class=\"img-left\" /></a></p>
        <h3><a href=\"/depts/enrollment/registration/class_schedule/\">Schedule of Classes</a></h3>
        <p>Spring 2014</p>
        </div>
    </div>
    
    
<!--
    <div id=\"contain_lens3\">
      <div id=\"content_lens3\">
        <p><a href=\"/depts/enrollment/summer/\">
    	<img src=\"/images/lenses/lns_80_summer2.gif\" title=\"Summer Session\" alt=\"Summer Session 2013\" class=\"img-left\" /></a></p>
        <h3><a href=\"/depts/enrollment/summer/\">Summer Sessions 2013</a></h3>
        <p>May 28 &ndash; August 16</p>
        </div>
    </div>
-->
    
    
    
    <!-- ****** LENS 3 ******  -->
    
   <!-- ****** Sport Event ******  -->  
   <div id=\"contain_lens2\">
      <div id=\"content_lens2\">
        <p><a href=\"http://www.longbeachstate.com/sports/m-baskbl/lbst-m-baskbl-body.html\"><img src=\"/images/lenses/lns_80_mensbasketball.gif\" alt=\"Men's Basketball\" class=\"img-left\" title=\"Men's Basketball\" /></a></p>
        <h3><a href=\"http://www.longbeachstate.com/sports/m-baskbl/lbst-m-baskbl-body.html\">Men's Basketball</a></h3>
        <p>2013&ndash;2014 Schedule</p>
      </div>
    </div> 
    <!-- ****** Sport Event ******  --> 
    
    
    
    <!-- ****** Homecoming ******  --> 
    <!--
<div id=\"contain_lens2\">
      <div id=\"content_lens2\">
        <p><a href=\"/homecoming\"><img src=\"/images/lenses/lns_80_homecoming.gif\" alt=\"CSULB Homecoming\" class=\"img-left\" title=\"CSULB Homecoming\" /></a></p>
        <h3><a href=\"/homecoming\">Homecoming Day</a></h3>
        <p>November 9, 2013</p>
      </div>
    </div> 
--> 
    <!-- ****** Homecoming ******  -->  
    
    <!-- ****** Jazz @ the Beach ******  -->
    <!--
<div id=\"contain_lens1\">
      <div id=\"content_lens1\">
        <p><a href=\"http://www.csulb.edu/depts/music/jazz/calendar.html\"><img src=\"/images/lenses/lns_80_cole.gif\" alt=\"Jazz @ the Beach Concerts\" title=\"Jazz @ the Beach Concerts\" class=\"img-left\" /></a></p>
        <h3><a href=\"http://www.csulb.edu/depts/music/jazz/calendar.html\">Jazz @ the Beach Concerts</a></h3>
        <p>Fall 2013</p>
      </div>
    </div>
--> 
     <!-- ****** Jazz @ the Beach ******  -->  
    
    
     <!-- ****** Seamless Education ******  -->
	<!--
<div id=\"contain_lens1\">
      <div id=\"content_lens1\">
        <p><a href=\"/president/education-partnership/\"><img src=\"/images/lenses/lns_80_seamlessed.gif\" alt=\"Seamless Education\" title=\"Seamless Education\" class=\"img-left\" /></a></p>
        <h3><a href=\"/president/education-partnership/\">Seamless Education</a></h3>
        <p>Long Beach Education Partnership</p>
      </div>
    </div>   
--> 
    <!-- ****** Seamless Education ******  -->
    
    
    
    
    <!-- ****** LENS 2 ******  -->       
   <!--
 <div id=\"contain_lens3\">
      <div id=\"content_lens3\">
        <p><a href=\"/about/budgetcentral\"><img src=\"/images/lenses/lns_80_seal.gif\" alt=\"CSULB Budget Central\" class=\"img-left\" title=\"CSULB Budget Central\" /></a></p>
        <h3><a href=\"/about/budgetcentral\">Budget Central</a></h3>
        <p>Budget Information &amp; updates</p>
      </div>
    </div>  
-->      
    <!-- ****** LENS 2 ******  -->
    
        
       
    <div class=\"clear_float\"></div>
  </div>
</div>




  <div id=\"content_belowfold\">
    <div id=\"contain_submenu\">
      <div id=\"contain_column1\"> <h2 class=\"hidden\">Main University Links</h2>
<ul>
  <li><a href=\"/about/\">About CSULB</a> </li>
 	<li><a href=\"/academics/?utm_source=CSULBHomepage&amp;utm_medium=html&amp;utm_campaign=AcademicsFlow\">Academics </a></li>
 	<!--
<li><a href=\"/depts/enrollment/registration/class_schedule/\">Schedule of Classes</a></li>
 	
-->
 	<li><a href=\"/organization/\">Administration &amp; Contacts</a></li>
 	<li><a href=\"/arts\">Art Performances &amp; Exhibitions</a></li>
  	<li><a href=\"/sports/\">Athletics </a></li>
  	<li><a href=\"/calendars\">Calendars &amp; Events</a></li>
  	<li><a href=\"/student-info/collegesdepartments.html\">Colleges &amp; Departments</a></li>
  	<li><a href=\"/auxiliaries\">CSULB Auxiliaries</a></li>
  	<li><a href=\"/academics/degrees.html\">CSULB Degrees &amp; Options</a></li>
	<li><a href=\"/employment/\">Jobs &#64; The Beach</a></li>
  	<li><a href=\"/research\">Research</a></li>
  	<li><a href=\"http://csulb.edu/news/\">University News</a></li>
  	<li class=\"bk-construction\"><a href=\"/maps/\">Maps, Parking &amp; Traffic Information</a></li>
  </ul>

<!--
<img src=\"/images/misc/lyt_198x10_grayhdivider.gif\" width=\"224\" height=\"10\" alt=\"Divider\" />
<ul>
<li class=\"bk-construction\"><a href=\"/maps/\">Maps, Parking &amp; Traffic Information</a></li>
<li><a href=\"https://parking.csulb.edu/ebusiness/cmn/\">Purchase Parking Permits Online</a></li>
</ul>
-->
<!-- <div class=\"menudivider\"></div> -->
<!-- <img src=\"/images/misc/lyt_198x10_grayhdivider.gif\" width=\"224\" height=\"10\" alt=\"Divider\" /> -->

<!--include virtual=\"/ssi/givetocsulb.html\" -->          </div>
    </div>
    <div id=\"page\">
      
      <!--  **************************  ALERT  ************************** -->
    	<div class=\"alert\"><!--include virtual=\"/aud/ADMIN/ALERT.html\" --></div>
      <!--  **************************  ALERT  ************************** -->	
		
	  <!--  **************************  INTRO  ************************** -->	 	
		<!--
<div class=\"block intro\">
		</div>
		<div class=\"clear_float\"></div>
-->

	  <!--  **************************  INTRO  ************************** -->
			
      <!-- <div class=\"clear_float hline\"></div> -->
      
      <!--  **************************  ROW 1 starts  ************************** -->

      <!-- ***** BLOCK ***** -->
      <!--
<div class=\"block w218\">
      <a href=\"http://www.ccpe.csulb.edu/winter\"><img src=\"images/misc/lyt_198x22_wintersession.gif\" width=\"198\" height=\"80\" alt=\"Winter Session\" /></a>
      </div>
-->
      <!-- ***** BLOCK ***** -->
      <!-- ***** BLOCK ***** -->
      <!--
<div class=\"block w436\">
      <h2>Heading</h2>
      <p><a href=\"60th\"><strong>60th Anniversary: </strong></a><br />Sixty years ago, the state of California realized the importance of meeting the higher education needs of residents in southern Los Angeles and Orange counties, so in 1949, Gov. Earl Warren signed legislation approving a new state college.</p>
      </div>
-->
      <!-- ***** BLOCK ***** -->

      <!--  **************************  ROW 1 ends ************************** -->
      
      <div class=\"clear_float\"></div>
      
      <!--  **************************  ROW 2 starts ************************** -->
      <!-- ***** BLOCK ***** -->
      <div class=\"block w218\">
        
        <a href=\"/video\">
        <img src=\"/images/misc/covideo.gif\" width=\"198\" height=\"100\" alt=\"Beach Crew\" title=\"Beach Crew\" />
        </a>
        <h2 class=\"heading\"><a href=\"/video\">Beach Pride</a></h2>
        <p>From humble beginnings to leaders in education.</p>
        

        <img src=\"/images/misc/lyt_198x10_grayhdivider.gif\" width=\"198\" height=\"1\" alt=\"Divider\" />
        

        <h2 class=\"hidden\"><a href=\"http://www.csulb.edu/president/search/\">Presidential Search</a></h2>
		<a href=\"http://www.csulb.edu/president/search/\">
        <img src=\"/images/misc/lyt_198x100_presidentsearch.gif\" width=\"198\" height=\"100\" alt=\"President Search\" title=\"CSULB Presidential Search\" />
        </a>
        
             
        <!--
<h2><a href=\"http://www.ccpe.csulb.edu/intersession/\">May intersession</a></h2>
        <a href=\"http://www.ccpe.csulb.edu/intersession/\">
        <img src=\"/images/lenses/lns_80_intersession.gif\" alt=\"CSULB May Intersession\" class=\"img-left\" width=\"50\" /></a>
        <p>Credit classes offered in intensive 3-week format</p>
-->
                      
      </div>
      <!-- ***** BLOCK ***** -->     
      <!-- ***** BLOCK ***** -->
      <div class=\"block w218\">
        
        <!-- <h2>On Campus</h2> -->
        <!-- <img src=\"/images/misc/lyt_198x50_wallsign.gif\" width=\"198\" height=\"50\" alt=\"Campus collage\" /> -->
        <!-- <img src=\"/images/misc/lyt_198x100_science.gif\" width=\"198\" height=\"100\" alt=\"CSULB Entrance\" /> -->
        <!-- <img src=\"/images/misc/lyt_198x100_carpenter.jpg\" width=\"198\" height=\"100\" alt=\"Carpenter Performing Arts Center\" title=\"Carpenter Performing Arts Center Building\" /> -->
        <!-- <img src=\"/images/misc/group-100w.gif\" alt=\"Group of students\" title=\"Student Research Competition\" class=\"img-left\" width=\"100\" height=\"70\"/> -->
         <!--<div class=\"notebox\">Breaking News</div>-->
        <a href=\"http://www.csulb.edu/misc/inside/?p=43272&utm_source=homepage&utm_medium=website&utm_campaign=homepage\">
         <img src=\"/images/misc/lyt_198x100_brainresearch.jpg\" width=\"198\" height=\"100\" alt=\"Brain Research\" title=\"Brain Research\" /></a>
        <h2 class=\"heading\"><a href=\"http://www.csulb.edu/misc/inside/?p=43272&utm_source=homepage&utm_medium=website&utm_campaign=homepage\">A Multidisciplinary<br />Approach To Brain Research</a></h2>
        <p>&nbsp;</p>
        <img src=\"/images/misc/lyt_198x10_grayhdivider.gif\" width=\"198\" height=\"1\" alt=\"Divider\" title=\"\" />
        
        <!-- ENS Needed in future -->
        <!--
<a href=\"http://daf.csulb.edu/offices/ppfm/police/ens/\"><img src=\"/images/lenses/lns_80_ens.gif\" alt=\"Emergency Notification System\" class=\"img-left\" width=\"80\" /></a>
        <p>CSULB's Emergency Notification System <strong>(ENS)</strong> allows the campus to simultaneously broadcast emergency notices via home and cell phones, text messaging and email. The system serves university students, faculty and staff. For information about the system and to learn how to update personal contact information, visit the <a href=\"http://daf.csulb.edu/offices/ppfm/police/ens/\">ENS Web site</a>.</p>
-->
        <!-- ENS Needed in future -->
        
        <a href=\"http://www.csulb.edu/beachreview\">
        <img src=\"images/misc/br-90w.gif\" alt=\"Beach Review cover\" class=\"img-left\" />
		</a>
        <h2 class=\"heading\"><a href=\"http://www.csulb.edu/beachreview\">Beach Review</a></h2>
                <p>The Magazine of California State University, Long Beach</p>

                                           
      </div>
      
      <!-- ***** BLOCK ***** -->     
      <!-- ***** BLOCK ***** -->
           
      <div class=\"block w218\">
          
        <a href=\"http://urd.csulb.edu/news-events/\"><img src=\"/images/misc/newsatthebeach-218w.gif\" width=\"218\" height=\"35\" alt=\"This Week at the Beach Icon\" title=\"News at the Beach\" style=\"margin-bottom:0px;\" /></a>
        <h2 class=\"hidden\">This Week @ THE BEACH</h2>
        <div class=\"newsbox\">
        <!-- enable include below to restore normal news feed -->
        <span class=\"newsheadline\"><a href=\"http://urd.csulb.edu/news-events/story.cfm?hackid=2117\">Cal State Long Beach Music Lecturer Nominated for
2012 Grammy Award for Recording of John Cage Work</a></span><br /><br /><span class=\"newsheadline\"><a href=\"http://urd.csulb.edu/news-events/story.cfm?hackid=2118\">State Claims Board Awards CSULB $534,579 Grant
to Establish Long Beach Trauma Recovery Center</a></span><br /><br /><span class=\"newsheadline\"><a href=\"http://urd.csulb.edu/news-events/story.cfm?hackid=2119\">49er Mens Volleyball Team Claims UCSB Invitational
Crown; Senior Outside Hitter Named Tourney MVP</a></span><br /><br />

        <!--include virtual=\"/gobeach/rss/newsfeed_alternate.html\" -->   
     	<!-- <p><a href=\"http://urd.csulb.edu/news-events/\">More News...</a></p> -->
        </div>
        

        <img src=\"/images/misc/lyt_198x10_grayhdivider.gif\" width=\"198\" height=\"1\" alt=\"Divider\" title=\"\" />

<a href=\"/about/youniversity/\"><img src=\"/images/misc/youniversitytv-225w.gif\" alt=\"youniversity TV video tour\" title=\"youniversity TV video tour\" /></a> 
       
  <!--
    	<img src=\"/maps/images/icn40_construction.gif\" class=\"img-right\" width=\"25\" height=\"25\" alt=\"Construction symbol\" />
      	<p><a href=\"http://www.csulb.edu/maps/\">Intermittent daytime closures</a> of 7th St./eastbound SR-22 connector to the northbound I-605 bridge to continue.</p>
     
-->
                     
      </div>
      
   
      <!-- ***** BLOCK ***** -->
      
      <!--  **************************  ROW 2 ends ************************** -->
      
	  <!-- <div class=\"clear_float hline\"></div> -->
	  
	  <!-- <img src=\"/alumni/images/lyt_198x50_gold.gif\" width=\"198\" height=\"20\" alt=\"Placeholder\" /> -->
      
      <!--  **************************  ROW 3 starts ************************** -->
      

      <!-- ***** BLOCK ***** -->
     <!--
 <div class=\"block w218\">
      <img src=\"/images/misc/lyt_198x10_grayhdivider.gif\" width=\"198\" height=\"10\" alt=\"Divider\" />
      <h2><a href=\"60th\">60th Anniversary</a></h2>
      <a href=\"60th\"><img src=\"images/misc/lyt_198x50_60thanniv.gif\" width=\"198\" height=\"50\" alt=\"60th Anniversary\" /></a>
      <p><strong>Jump to:</strong> <a href=\"/depts/enrollment/registration/class_schedule/\">Schedule of Classes</a></p>
      </div>
-->
      <!-- ***** BLOCK ***** -->
      
      <!-- ***** BLOCK ***** -->
      <!--
<div class=\"block w218\">
      <img src=\"/images/misc/lyt_198x10_grayhdivider.gif\" width=\"198\" height=\"10\" alt=\"Divider\" />
      <h2><a href=\"60th\">60th Anniversary</a></h2>
      <a href=\"60th\"><img src=\"images/misc/lyt_198x50_60thanniv.gif\" width=\"198\" height=\"50\" alt=\"60th Anniversary\" /></a>
      <p><a href=\"/academics/degrees.html\">CSULB Degrees &amp; Options</a></p>
      </div>
-->
      <!-- ***** BLOCK ***** -->

      <!-- ***** BLOCK ***** -->
      <!--
<div class=\"block w218\">
      </div>
-->
      <!-- ***** BLOCK ***** -->
            
      <!--  **************************  ROW 3 ends ************************** -->
      
     <!--  <div class=\"clear_float hline\"></div> -->
      
      <!--  **************************  ROW 4 starts ************************** -->
     
      <!-- ***** BLOCK ***** -->
      <!--
<div class=\"block w436\">
      </div>
-->
      <!-- ***** BLOCK ***** -->
      
      <!-- ***** BLOCK ***** -->
      <!--
<div class=\"block w218\">
      </div>
-->
      <!-- ***** BLOCK ***** -->
      
      <!--  **************************  ROW 4 ends ************************** -->

<!-- InstanceEndEditable -->
</div>
</div>
<div class=\"clear_float\"></div>
</div>
<div id=\"siteindex_row\">
	<h2><a href=\"/sitemap/\">CSULB Website Index</a></h2>
<div class=\"siteindex_row\">
  <ul>
    <li><a href=\"/sitemap/\">A</a></li>
    <li><a href=\"/sitemap/alphapages/B.html\">B</a></li>
    <li><a href=\"/sitemap/alphapages/CA-CL.html\">CA-CL</a></li>
    <li><a href=\"/sitemap/alphapages/CM-CZ.html\">CM-CZ</a></li>
    <li><a href=\"/sitemap/alphapages/D.html\">D</a></li>
    <li><a href=\"/sitemap/alphapages/E.html\">E</a></li>
    <li><a href=\"/sitemap/alphapages/F.html\">F</a></li>
    <li><a href=\"/sitemap/alphapages/G.html\">G</a></li>
    <li><a href=\"/sitemap/alphapages/H.html\">H</a></li>
    <li><a href=\"/sitemap/alphapages/I.html\">I</a></li>
    <li><a href=\"/sitemap/alphapages/J.html\">J</a></li>
    <li><a href=\"/sitemap/alphapages/K.html\">K</a></li>
    <li><a href=\"/sitemap/alphapages/L.html\">L</a></li>
    <li><a href=\"/sitemap/alphapages/M.html\">M</a></li>
    <li><a href=\"/sitemap/alphapages/N.html\">N</a></li>
    <li><a href=\"/sitemap/alphapages/O.html\">O</a></li>
    <li><a href=\"/sitemap/alphapages/P.html\">P</a></li>
    <li><a href=\"/sitemap/alphapages/Q.html\">Q</a></li>
    <li><a href=\"/sitemap/alphapages/R.html\">R</a></li>
    <li><a href=\"/sitemap/alphapages/S.html\">S</a></li>
    <li><a href=\"/sitemap/alphapages/T.html\">T</a></li>
    <li><a href=\"/sitemap/alphapages/U.html\">U</a></li>
    <li><a href=\"/sitemap/alphapages/V.html\">V</a></li>
    <li><a href=\"/sitemap/alphapages/W.html\">W</a></li>
    <li><a href=\"/sitemap/alphapages/XYZ.html\">X Y Z</a></li>
  </ul>
</div>

<div class=\"clear_float\"></div>

</div>       
<div id=\"footer\">

<h2 class=\"hidden\">Information and Emergency Services</h2>
  
    
    <div class=\"block\">
      <address>
      <strong>California State University, Long Beach</strong><br />
          <img src=\"/images/icons/icn_50x40_seal.gif\" alt=\"CSULB Seal\" class=\"img-left\" />

      1250 Bellflower Boulevard<br />
      Long Beach, California 90840<br />
      <span class=\"tel\">562.985.4111</span>
      </address>
    </div>
    
    <div class=\"block\">
      
      <ul>
        <li><a href=\"/accessibility\">Accessible Technology Initiative</a> </li>
        <li><a href=\"http://www.calstate.edu\">Cal State University Web Site</a></li>
        <li><a href=\"/copyright\">&#169; Copyright</a></li>
      </ul>
    
    </div>
    
    <div class=\"block\">
      
      <ul>
        <li><a href=\"/emergency\">Emergency Information</a></li>
        <li><a href=\"http://www.csulb.edu/divisions/students2/dss/\">Disability Resources</a></li>
        <li><a href=\"/crisis\">Crisis Assistance</a></li>
        <li><a href=\"/about/budgetcentral\">Budget Central &ndash; Updates</a></li>
      </ul>
    
    </div>
    
    <div class=\"block\">
      
      <ul>
		<li><a href=\"/feedback\">Your Feedback</a> | <a href=\"/help/\">Help</a></li>
      </ul>
      <a href=\"/vsa\"><img src=\"/images/icons/icn_vsa.gif\" alt=\"icn_vsa\" title=\"College Portrait\" class=\"img-right\" /></a>	   
    </div>
    <div class=\"clear_float\"></div>
  
</div>

</body>
</html>
"
CL-USER 2 > 
|#

;;for 