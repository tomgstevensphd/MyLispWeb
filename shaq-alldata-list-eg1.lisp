;;  *************************** shaq-alldata-list-eg1.lisp ***************
;;

(setf *shaq-data-list
' (:SHAQ-DATA-LIST
 :TEXT-DATA
 "sID"
 ("Name" " " :SINGLE " ")
 ("UserID" "222222" :SINGLE "222222")
 ("Sex" "Male" :SINGLE "Male" 1)
 ("Age" 22 :SINGLE 22 22)
 ("Email" "" :SINGLE "")
 ("USA?" "OTHER Country" :SINGLE "OTHER Country" 0)
 ("Nation" "UK" :SINGLE "UK")
 ("ZipCode" NIL :SINGLE NIL)
 ("HrsWork" 22 :SINGLE 22 22)
 :MULTI-SEL-QUEST
 "utype"
 ("UTYPE"
  :MULTI
  "utype"
  "UserType"
  1
  ("twanttho" "1" 1 T 1 1 (:XDATA :SCALES (HQ)))
  ("tknowmor" "2" 1 NIL 0 1 (:XDATA :SCALES (HQ)))
  ("twanthel" "3" 1 NIL 0 1 (:XDATA :SCALES (HQ)))
  ("twantspe" "4" 1 NIL 0 1 (:XDATA :SCALES NIL))
  ("texperie" "5" 1 NIL 0 1 (:XDATA :SCALES NIL))
  ("tprevshaq" "6" 1 NIL 0 1 (:XDATA :SCALES (PREVIOUS-USER)))
  ("wantspq" "7" 1 NIL 0 1 (:XDATA :SCALES (SPECIFIC-QUESTS)))
  ("tu100stu" "8" 1 NIL 0 1 (:XDATA :SCALES (HQ ACAD-LEARNING)))
  ("tcsulbst" "9" 1 NIL 0 1 (:XDATA :SCALES (ACAD-LEARNING)))
  ("tcolstu" "10" 1 NIL 0 1 (:XDATA :SCALES (ACAD-LEARNING)))
  ("totherst" "11" 1 NIL 0 1 (:XDATA :SCALES (ACAD-LEARNING)))
  ("tressub" "12" 1 NIL 0 1 (:XDATA :SCALES NIL))
  ("tcolfaca" "13" 1 NIL 0 1 (:XDATA :SCALES NIL))
  ("u-none" "14" 1 NIL 0 1 (:XDATA :SCALES NIL)))
 :MULTI-SEL-QUEST
 "ugoals"
 ("UGOALS"
  :MULTI
  "ugoals"
  "UserGoals"
  1
  ("gsuchap" "1" 1 NIL 0 1 (:XDATA :SCALES (HQ)))
  ("gemocop" "2" 1 NIL 0 1 (:XDATA :SCALES (HQ)))
  ("gslfest"
   "3"
   1
   NIL
   0
   1
   (:XDATA :SCALES (VALUES-THEMES BELIEFS SKILLS-CONFIDENCE)))
  ("gprocrst"
   "4"
   1
   NIL
   0
   1
   (:XDATA :SCALES (VALUES-THEMES "siecontr" "sselfman" "semotcop")))
  ("gtimeman" "5" 1 NIL 0 1 (:XDATA :SCALES ("sselfman" "semotcop")))
  ("grelat" "6" 1 NIL 0 1 (:XDATA :SCALES (INTERPERSONAL)))
  ("gmeetpeo" "7" 1 NIL 0 1 (:XDATA :SCALES (INTERPERSONAL)))
  ("glonelyf" "8" 1 NIL 0 1 (:XDATA :SCALES (HQ)))
  ("gexvalus" "9" 1 NIL 0 1 (:XDATA :SCALES (HQ)))
  ("gdepres" "10" 1 NIL 0 1 (:XDATA :SCALES (HQ)))
  ("ganxfear" "11" 1 NIL 0 1 (:XDATA :SCALES (HQ)))
  ("gaggrang" "12" 1 NIL 0 1 (:XDATA :SCALES (HQ)))
  ("gacadsuc" "13" 1 NIL 0 1 (:XDATA :SCALES (ACAD-LEARNING)))
  ("gcomplta1"
   "14"
   1
   NIL
   0
   1
   (:XDATA :SCALES (HQ ACAD-LEARNING CAREER-INTEREST)))
  ("gcompltanomaj" "15" 1 NIL 0 1 (:XDATA :SCALES (HQ ACAD-LEARNING)))
  ("gcompltanoac" "16" 1 T 1 1 (:XDATA :SCALES (HQ)))
  ("gcarplan" "17" 1 NIL 0 1 (:XDATA :SCALES (CAREER-INTEREST)))
  ("gcaronly" "18" 1 NIL 0 1 (:XDATA :SCALES (CAREER-INTEREST)))
  ("gnottake" "19" 1 NIL 0 1 (:XDATA :SCALES NIL)))
 :SCALE
 ST1HIGHERSELF
 (THM6LEAR
  "ti-Learning, self-development"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  1
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THM9SHAP
  "ti-Self-happiness"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  2
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THM14IND
  "ti-Independence"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  3
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THM22BOD
  "ti-Health and longevity"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  4
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THM23BAL
  "ti-Life balance"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  5
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMCOMPC
  "ti-Competence, best I can be"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  6
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMINTEG
  "ti-Integrity"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  7
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMPHIL
  "ti-Personal philosophy"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  8
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMSESUF
  "ti-Self-sufficiency"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  9
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMSEDIS
  "ti-Self-discipline"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  10
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 :SCALE
 ST2SOCINTIMNOFAM
 (THM8ROMA
  "ts-Love-romance"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  1
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THM12PLE
  "ts-Pleasing others-avoid conflict"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  2
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMRESPE
  "ts-Respect from others"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  3
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THM20INT
  "ts-Intimacy-close relationships"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  4
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMLIKED
  "ts-Well-liked by many"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  5
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMSUPPO
  "ts-Emotional support from others"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  6
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 :SCALE
 ST3FAMCARE
 (THMCAREG
  "ts-Care-giving-parent, others"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  1
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMPARLV
  "td-Parental love and respect"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  2
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMFAMIL
  "ts-Family"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  3
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 :SCALE
 ST4SUCCESSSTATUSMATER
 (THM3EDUC
  "ta-Advanced degrees"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  1
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THM4MONE
  "ta-Very high income"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  2
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THM25POS
  "ta-High quality possessions"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  3
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THM26SUC
  "ta-Career success"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  4
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THM30CEO
  "ta-Power-ceo, owner"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  5
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THM33GOA
  "ta-Complete all important goals"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  6
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMRESPE
  "ts-Respect from others"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  7
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THM1ACH
  "ta-Being the best"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  8
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 :SCALE
 ST5-ORDERPERFECTIONGOODNESS
 (THMORDER
  "ti-Orderliness organization"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  1
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMCLEAN
  "ti-Cleanliness"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  2
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMPERFE
  "ti-Perfection and idealism"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  3
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMJUSTI
  "ti-Justice"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  4
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMSIMPL
  "ti-Simplicity"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  5
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMBEAUT
  "ti-Beauty"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  6
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMGOODN
  "ti-Goodness"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  7
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 :SCALE
 ST6GODSPIRITRELIG
 (THMOBGOD
  "td-Obedience to God"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  1
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMRELGD
  "ti-Spiritual intimacy"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  2
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMSPIRI
  "ti-God and/or spirituality"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  3
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMRELIG
  "ti-Religion"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  4
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 :SCALE
 ST7IMPACTCHALLENGEEXPLOR
 (THM10OTH
  "ti-Giving to others happiness, world"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  1
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMIMPAC
  "ta-Impact-change world"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  2
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THM28CRE
  "ta-Creation-major contribution"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  3
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMMENCH
  "ti-Mental Challenge"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  4
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THM34EXP
  "ti-Exploration find answers"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  5
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMUNIQU
  "ti-Uniqueness & diversity"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  6
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 :SCALE
 ST8ATTENTIONFUNEASY
 (THMATTEN
  "ts-Attention from others"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  1
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THM5ADVE
  "ti-Adventure"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  2
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMEFORT
  "ti-Effortlessness"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  3
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMPLAYF
  "ti-Fun playfulness"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  4
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 :SCALE
 ST9VALUESELFALLUNCOND
 (THVUNCON
  "bu-Value all unconditionally"
  :SINGLE
  "The most important belief in my life"
  "1.000"
  10
  1
  10
  10
  SCORED-NORMAL
  BELIEF10)
 (THVSELFW
  "bu-Value self unconditionally"
  :SINGLE
  "The most important belief in my life"
  "1.000"
  10
  2
  10
  10
  SCORED-NORMAL
  BELIEF10)
 (THVSELFA
  "bu-Accept all parts of self"
  :SINGLE
  "The most important belief in my life"
  "0.100"
  1
  3
  10
  1
  SCORED-NORMAL
  BELIEF10REVERSE)
 :SCALE
 ST10OVERCMPROBACCEPTSELF
 (THMSPROT
  "td-Self-protection"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  1
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMPHURT
  "td-Personal healing-overcome problems"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  2
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 :SCALE
 ST11DUTYPUNCTUAL
 (THMPUNCT
  "td-Punctuality"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  1
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 (THMOBLIG
  "td-Obligation"
  :SINGLE
  "The most important thing in my life"
  "1.000"
  10
  2
  10
  10
  SCORED-NORMAL
  PRIORITY10)
 :SCALE
 SWORLDVIEW
 (WOVPROGR
  "wv-World will improve"
  :SINGLE
  "EXTREMELY agree"
  "1.000"
  7
  1
  7
  7
  SCORED-NORMAL
  AGREE7)
 (WOVGOODF
  "wv-Good forces control world"
  :SINGLE
  "EXTREMELY agree"
  "1.000"
  7
  2
  7
  7
  SCORED-NORMAL
  AGREE7)
 (WOVMYLIF
  "wv-My life will improve"
  :SINGLE
  "EXTREMELY agree"
  "1.000"
  7
  3
  7
  7
  SCORED-NORMAL
  AGREE7)
 (WOVNFAIR
  "wv-Not life unfair to me"
  :SINGLE
  "EXTREMELY agree"
  "0.143"
  1
  4
  7
  1
  SCORED-NORMAL
  AGREE7REVERSE)
 (TBVENTIT
  "bu-Not entitled to good life"
  :SINGLE
  "The most important belief in my life"
  "0.100"
  1
  5
  10
  1
  SCORED-NORMAL
  BELIEF10REVERSE)
 (WOVINJUR
  "wv-Not one ruined my life"
  :SINGLE
  "EXTREMELY agree"
  "0.143"
  1
  6
  7
  1
  SCORED-NORMAL
  AGREE7REVERSE)
 (WOVABUND
  "wv-Have all I need to be happy"
  :SINGLE
  "EXTREMELY agree"
  "1.000"
  7
  7
  7
  7
  SCORED-NORMAL
  AGREE7)
 (TBVGRATI
  "bu-Gratitude-abundance thinking"
  :SINGLE
  "The most important belief in my life"
  "1.000"
  10
  8
  10
  10
  SCORED-NORMAL
  BELIEF10)
 (WOVENTIT
  "wv-Not entitled to basic necessities"
  :SINGLE
  "EXTREMELY agree"
  "0.143"
  1
  9
  7
  1
  SCORED-NORMAL
  AGREE7REVERSE)
 (WOVGRATE
  "wv-Extremely grateful"
  :SINGLE
  "EXTREMELY agree"
  "1.000"
  7
  10
  7
  7
  SCORED-NORMAL
  AGREE7)
 (WOVPOSTH
  "wv-Percent of time positive thoughts"
  :SINGLE
  "Greater than 90 percent"
  "1.000"
  10
  11
  10
  10
  SCORED-NORMAL
  PERCENT10)
 :SCALE
 STBSLFWO
 (TBVOTHFI
  "bu-Not always others first"
  :SINGLE
  "The most important belief in my life"
  "0.100"
  1
  1
  10
  1
  SCORED-NORMAL
  BELIEF10REVERSE)
 (TBVLIKED
  "bu-Not loved by all"
  :SINGLE
  "The most important belief in my life"
  "0.100"
  1
  2
  10
  1
  SCORED-NORMAL
  BELIEF10REVERSE)
 (TBVWEAK
  "bu-Not weak and dependent"
  :SINGLE
  "The most important belief in my life"
  "0.100"
  1
  3
  10
  1
  SCORED-NORMAL
  BELIEF10REVERSE)
 (TBVBEST
  "bu-Not must be best"
  :SINGLE
  "The most important belief in my life"
  "0.100"
  1
  4
  10
  1
  SCORED-NORMAL
  BELIEF10REVERSE)
 (TBVRULES
  "bu-Not if break rules--severe punishment"
  :SINGLE
  "The most important belief in my life"
  "0.100"
  1
  5
  10
  1
  SCORED-NORMAL
  BELIEF10REVERSE)
 (TBVWINNE
  "bu-Not winners and losers"
  :SINGLE
  "The most important belief in my life"
  "0.100"
  1
  6
  10
  1
  SCORED-NORMAL
  BELIEF10REVERSE)
 (TBVBALAN
  "bu-Balance present-future, self-others hap"
  :SINGLE
  "The most important belief in my life"
  "1.000"
  10
  7
  10
  10
  SCORED-NORMAL
  BELIEF10)
 (TBVHAPCA
  "bu-Decisions-max happiness"
  :SINGLE
  "The most important belief in my life"
  "1.000"
  10
  8
  10
  10
  SCORED-NORMAL
  BELIEF10)
 (THVSELFA
  "bu-Accept all parts of self"
  :SINGLE
  "The most important belief in my life"
  "0.100"
  1
  9
  10
  1
  SCORED-NORMAL
  BELIEF10REVERSE)
 (THVUNCON
  "bu-Value all unconditionally"
  :SINGLE
  "The most important belief in my life"
  "1.000"
  10
  10
  10
  10
  SCORED-NORMAL
  BELIEF10)
 (THVSELFW
  "bu-Value self unconditionally"
  :SINGLE
  "The most important belief in my life"
  "1.000"
  10
  11
  10
  10
  SCORED-NORMAL
  BELIEF10)
 :SCALE
 SIECONTR
 (IECSELFS
  "ie-Take care of self & probs"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  1
  7
  7
  SCORED-NORMAL
  LIKEME7)
 (IECICONT
  "ie-I control life-happiness"
  :SINGLE
  "EXTREMELY agree"
  "1.000"
  7
  2
  7
  7
  SCORED-NORMAL
  AGREE7)
 (IECGENET
  "ie-Not genetics-biology control my hap"
  :SINGLE
  "EXTREMELY agree"
  "0.143"
  1
  3
  7
  1
  SCORED-NORMAL
  AGREE7REVERSE)
 (IECPEOPL
  "ie-Not others control my happiness"
  :SINGLE
  "EXTREMELY agree"
  "0.143"
  1
  4
  7
  1
  SCORED-NORMAL
  AGREE7REVERSE)
 (IECDEPEN
  "ie-Not dependent on one person"
  :SINGLE
  "EXTREMELY accurate / like me"
  "0.143"
  1
  5
  7
  1
  SCORED-NORMAL
  LIKEME7REVERSE)
 (IECCOFEE
  "ie-Not care for another above self"
  :SINGLE
  "EXTREMELY accurate / like me"
  "0.143"
  1
  6
  7
  1
  SCORED-NORMAL
  LIKEME7REVERSE)
 (IECCOPRB
  "ie-Not worry carrying for one's serious prob"
  :SINGLE
  "EXTREMELY accurate / like me"
  "0.143"
  1
  7
  7
  1
  SCORED-NORMAL
  LIKEME7REVERSE)
 :SCALE
 SETHBEL
 (TB2RELAT
  "b2-RevNo absolute right--situational ethics"
  :SINGLE
  "The most important belief in my life"
  "0.100"
  1
  1
  10
  1
  SCORED-NORMAL
  BELIEF10REVERSE)
 (TB2PUNIS
  "b2-RevBad only happens if bad"
  :SINGLE
  "The most important belief in my life"
  "0.100"
  1
  2
  10
  1
  SCORED-NORMAL
  BELIEF10REVERSE)
 (TBV2NOTR
  "b2-RevNot responsible if bad environ/genes"
  :SINGLE
  "The most important belief in my life"
  "0.100"
  1
  3
  10
  1
  SCORED-NORMAL
  BELIEF10REVERSE)
 (TB2GROUM
  "b2-RevLife no meaning w/o spec group"
  :SINGLE
  "The most important belief in my life"
  "0.100"
  1
  4
  10
  1
  SCORED-NORMAL
  BELIEF10REVERSE)
 (TB2SELFM
  "b2-RevAll meaning supplied by person"
  :SINGLE
  "The most important belief in my life"
  "0.100"
  1
  5
  10
  1
  SCORED-NORMAL
  BELIEF10REVERSE)
 (TB2GDWRK
  "b2-RevForgiveness depends on works"
  :SINGLE
  "The most important belief in my life"
  "0.100"
  1
  6
  10
  1
  SCORED-NORMAL
  BELIEF10REVERSE)
 (TB2GDATT
  "b2-Goodness depends more on attitude"
  :SINGLE
  "The most important belief in my life"
  "1.000"
  10
  7
  10
  10
  SCORED-NORMAL
  BELIEF10)
 (TB2ALLGD
  "b2-Lots of good in all people"
  :SINGLE
  "The most important belief in my life"
  "1.000"
  10
  8
  10
  10
  SCORED-NORMAL
  BELIEF10)
 (TB2REASO
  "b2-RevScience-reason can solve all worries"
  :SINGLE
  "The most important belief in my life"
  "0.100"
  1
  9
  10
  1
  SCORED-NORMAL
  BELIEF10REVERSE)
 (TBV2ASTR
  "b2-RevBelief in spirits,astrology"
  :SINGLE
  "The most important belief in my life"
  "0.100"
  1
  10
  10
  1
  SCORED-NORMAL
  BELIEF10REVERSE)
 (TB2IDHUM
  "b2-Identify with all human over any group"
  :SINGLE
  "The most important belief in my life"
  "1.000"
  10
  11
  10
  10
  SCORED-NORMAL
  BELIEF10)
 (TB2LIFAD
  "b2-Believe in life after death"
  :SINGLE
  "The most important belief in my life"
  "1.000"
  10
  12
  10
  10
  SCORED-NORMAL
  BELIEF10)
 (TB2MOVEM
  "b2-Part of progress greater than family etc"
  :SINGLE
  "The most important belief in my life"
  "1.000"
  10
  13
  10
  10
  SCORED-NORMAL
  BELIEF10)
 (TBV2CORE
  "b2-Strong phil/rel beliefs guide daily life"
  :SINGLE
  "The most important belief in my life"
  "1.000"
  10
  14
  10
  10
  SCORED-NORMAL
  BELIEF10)
 :SCALE
 SGRFEARS
 (WOVHAPPY
  "wf-Not fear unhappy career"
  :SINGLE
  "The most important fear in my life"
  "0.143"
  1
  1
  7
  1
  SCORED-NORMAL
  FEAR7)
 (WOVPOOR
  "wf-Not fear of poverty"
  :SINGLE
  "The most important fear in my life"
  "0.143"
  1
  2
  7
  1
  SCORED-NORMAL
  FEAR7)
 (WOVILL
  "wf-Not fear of illness"
  :SINGLE
  "The most important fear in my life"
  "0.143"
  1
  3
  7
  1
  SCORED-NORMAL
  FEAR7)
 (WOVDEATH
  "wf-Not fear of death"
  :SINGLE
  "The most important fear in my life"
  "0.143"
  1
  4
  7
  1
  SCORED-NORMAL
  FEAR7)
 (WOVALONE
  "wf-Not fear of being alone"
  :SINGLE
  "The most important fear in my life"
  "0.143"
  1
  5
  7
  1
  SCORED-NORMAL
  FEAR7)
 (WOVNOLOV
  "wf-Not fear of poor marriage-family"
  :SINGLE
  "The most important fear in my life"
  "0.143"
  1
  6
  7
  1
  SCORED-NORMAL
  FEAR7)
 (WOVLIKED
  "wf-Not fear of not close friends"
  :SINGLE
  "The most important fear in my life"
  "0.143"
  1
  7
  7
  1
  SCORED-NORMAL
  FEAR7)
 (WOVPERSO
  "wf-Not fear of not being person want"
  :SINGLE
  "The most important fear in my life"
  "0.143"
  1
  8
  7
  1
  SCORED-NORMAL
  FEAR7)
 (WOVPROBL
  "wf-Not fear of overcoming problem"
  :SINGLE
  "The most important fear in my life"
  "0.143"
  1
  9
  7
  1
  SCORED-NORMAL
  FEAR7)
 (WOVDISCO
  "wf-Not fear of something discovered"
  :SINGLE
  "The most important fear in my life"
  "0.143"
  1
  10
  7
  1
  SCORED-NORMAL
  FEAR7)
 (WOVSUCCE
  "wf-Not fear of lack acad-career success"
  :SINGLE
  "The most important fear in my life"
  "0.143"
  1
  11
  7
  1
  SCORED-NORMAL
  FEAR7)
 (WOVOVERC
  "wf-Could be happy if worst fear happened"
  :SINGLE
  "EXTREMELY agree"
  "1.000"
  7
  12
  7
  7
  SCORED-NORMAL
  AGREE7)
 :SCALE
 SSLFCONF
 (SLFLEARN
  "sc-Learning and study skills"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  1
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFCRITT
  "sc-Critical thinking and logic"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  2
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFRESEA
  "sc-Research & methodology"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  3
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFANALY
  "sc-Analytical thinking"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  4
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFSYNTH
  "sc-Synthesis"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  5
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFCREAT
  "sc-Creative thinking-ideas"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  6
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFCOMPU
  "sc-Computer-related"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  7
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFBIOSC
  "sc-Biological science"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  8
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFNATSC
  "sc-Natural science--physics, chem"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  9
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFLIBAR
  "sc-Liberal arts"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  10
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFSOCSC
  "sc-Beh-social science"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  11
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFPHILR
  "sc-Philosophy-religion"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  12
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFPERFA
  "sc-Performing arts"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  13
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFFINEA
  "sc-Fine arts"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  14
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFBUSAN
  "sc-Business or management"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  15
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFHEAL2
  "sc-Health or medicine"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  16
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFENGIN
  "sc-Engineering or technical"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  17
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFEDUCH
  "sc-Educ,Counseling, or helping"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  18
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFIQ
  "sc-Intelligence"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  19
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFDECMA
  "sc-Decision-making/planning"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  20
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFTIMEM
  "sc-Time management"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  21
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFCOPE
  "sc-Emotional coping skills"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  22
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFSELF4
  "sc-Ach motivation-work habits, focus"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  23
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFSELFM
  "sc-Self-motivation of unpleasant"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  24
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFACHAN
  "sc-Self-development/change"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  25
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFMANA6
  "sc-Managing finances"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  26
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFHEAL3
  "sc-Health detailed knowl & habits"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  27
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFMEETP
  "sc-Meeting people"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  28
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFLISTE
  "sc-Empathetic listening skills"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  29
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFSELF5
  "sc-Self-disclosure"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  30
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFCONFL
  "sc-Conflict resolution skills"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  31
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFPERSU
  "sc-Persuasion skills"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  32
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFMANA7
  "sc-Management-leadership skills"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  33
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFHELPS
  "sc-Helping-teaching skills"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  34
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFSPEAK
  "sc-Public speaking skills"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  35
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFJOBSE
  "sc-Job search skills"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  36
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFADAPT
  "sc-Adaptable-success in any situation"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  37
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFHAPPY
  "sc-Happiness IQ"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  38
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFOPTIM
  "sc-Optimism"
  :SINGLE
  "Extremely confident"
  "1.000"
  7
  39
  7
  7
  SCORED-NORMAL
  CONFIDENCE7)
 (SLFFRIEN
  "sc-Caring, friendly, outgoing"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  40
  7
  7
  SCORED-NORMAL
  LIKEME7)
 (SLFINDEP
  "sc-Strong, independent, self-disciplined"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  41
  7
  7
  SCORED-NORMAL
  LIKEME7)
 :SCALE
 SSELFMAN
 (SMTBUSY
  "sm-Rarely upset about too rushed"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  1
  7
  7
  SCORED-NORMAL
  LIKEME7)
 (SMTFUTUR
  "sm-Time planning and distant goals"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  2
  7
  7
  SCORED-NORMAL
  LIKEME7)
 (SMTEXERC
  "sm-Exercise freq-20 mins"
  :SINGLE
  "More than once per day"
  "1.000"
  12
  3
  12
  12
  SCORED-NORMAL
  FREQ12)
 (SMTEATH
  "sm-Healthy diet"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  4
  7
  7
  SCORED-NORMAL
  LIKEME7)
 (SMTSLEEP
  "sm-Hours sleep"
  :SINGLE
  "12 or more"
  "1.000"
  13
  5
  13
  13
  SCORED-NORMAL
  NUMBERTO12)
 (SMTSDEVE
  "sm-Managed self-change"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  6
  7
  7
  SCORED-NORMAL
  LIKEME7)
 (SMTNPROC
  "sm-Start & complete big projects"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  7
  7
  7
  SCORED-NORMAL
  LIKEME7)
 (SMTPTODO
  "sm-To-do list--all areas"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  8
  7
  7
  SCORED-NORMAL
  LIKEME7)
 (SMTGOALS
  "sm-Objectives lists used"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  9
  7
  7
  SCORED-NORMAL
  LIKEME7)
 (SMTSCHD
  "sm-Weekly schedule"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  10
  7
  7
  SCORED-NORMAL
  LIKEME7)
 (SMT2DTOD
  "sm-2-D to-do lists--assignments"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  11
  7
  7
  SCORED-NORMAL
  LIKEME7)
 (SMTACMPL
  "sm-High accomplishment, lo pressure"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  12
  7
  7
  SCORED-NORMAL
  LIKEME7)
 (SMTGHELP
  "sm-Regular self-development habits"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  13
  7
  7
  SCORED-NORMAL
  LIKEME7)
 (SMTBALAN
  "sm-Life area balance/satisfaction"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  14
  7
  7
  SCORED-NORMAL
  LIKEME7)
 (SMTHABCH
  "sm-Take good advice--make changes"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  15
  7
  7
  SCORED-NORMAL
  LIKEME7)
 :SCALE
 SEMOTCOP
 (COPNEGTH
  "cp-Not worry, neg thoughts"
  :SINGLE
  "81 to 100 percent"
  "0.167"
  1
  1
  6
  1
  SCORED-NORMAL
  PERCENT6COPEREVERSE)
 (COPCOPEA
  "cp-Not eat"
  :SINGLE
  "81 to 100 percent"
  "0.167"
  1
  2
  6
  1
  SCORED-NORMAL
  PERCENT6COPEREVERSE)
 (COPPSOLV
  "cp-Face & problem solve"
  :SINGLE
  "81 to 100 percent"
  "1.000"
  6
  3
  6
  6
  SCORED-NORMAL
  PERCENT6COPE)
 (COPAVOPS
  "cp-Not avoid thinking about-dealing w/problemNEW"
  :SINGLE
  "81 to 100 percent"
  "0.167"
  1
  4
  6
  1
  SCORED-NORMAL
  PERCENT6COPEREVERSE)
 (COPEMOTA
  "cp-Not outward anger"
  :SINGLE
  "81 to 100 percent"
  "0.167"
  1
  5
  6
  1
  SCORED-NORMAL
  PERCENT6COPEREVERSE)
 (COPBLAME
  "cp-Not blame others or self"
  :SINGLE
  "81 to 100 percent"
  "0.167"
  1
  6
  6
  1
  SCORED-NORMAL
  PERCENT6COPEREVERSE)
 (COPWDRW
  "cp-Not withdraw from others"
  :SINGLE
  "81 to 100 percent"
  "0.167"
  1
  7
  6
  1
  SCORED-NORMAL
  PERCENT6COPEREVERSE)
 (COPFUN
  "cp-Fun or involving activity"
  :SINGLE
  "81 to 100 percent"
  "1.000"
  6
  8
  6
  6
  SCORED-NORMAL
  PERCENT6COPE)
 (COPTALKS
  "cp-Talk about problem"
  :SINGLE
  "81 to 100 percent"
  "1.000"
  6
  9
  6
  6
  SCORED-NORMAL
  PERCENT6COPE)
 (COPPEPTA
  "cp-Positive thoughts-pep talk"
  :SINGLE
  "81 to 100 percent"
  "1.000"
  6
  10
  6
  6
  SCORED-NORMAL
  PERCENT6COPE)
 (COPSMOKE
  "cp-Not smoke tobacco"
  :SINGLE
  "81 to 100 percent"
  "0.167"
  1
  11
  6
  1
  SCORED-NORMAL
  PERCENT6COPEREVERSE)
 (COPDRUG
  "cp-Not drink alcohol, street drugs,or meds"
  :SINGLE
  "81 to 100 percent"
  "0.167"
  1
  12
  6
  1
  SCORED-NORMAL
  PERCENT6COPEREVERSE)
 (COPPE
  "cp-Vigorous physical activity"
  :SINGLE
  "81 to 100 percent"
  "1.000"
  6
  13
  6
  6
  SCORED-NORMAL
  PERCENT6COPE)
 (COPNEGPH
  "cp-Not critical-punative thoughts"
  :SINGLE
  "81 to 100 percent"
  "0.167"
  1
  14
  6
  1
  SCORED-NORMAL
  PERCENT6COPEREVERSE)
 (COPSELFB
  "cp-Not anger at self"
  :SINGLE
  "81 to 100 percent"
  "0.167"
  1
  15
  6
  1
  SCORED-NORMAL
  PERCENT6COPEREVERSE)
 (COPPOSPH
  "cp-Phil or religious viewpoint"
  :SINGLE
  "81 to 100 percent"
  "1.000"
  6
  16
  6
  6
  SCORED-NORMAL
  PERCENT6COPE)
 (COPEXPEC
  "cp-Examine expectations"
  :SINGLE
  "81 to 100 percent"
  "1.000"
  6
  17
  6
  6
  SCORED-NORMAL
  PERCENT6COPE)
 (COPHAPPY
  "cp-Think happy no matter what"
  :SINGLE
  "81 to 100 percent"
  "1.000"
  6
  18
  6
  6
  SCORED-NORMAL
  PERCENT6COPE)
 (COPAVOAT
  "cp-Not miss work, school, etc-"
  :SINGLE
  "More than 60 days per year"
  "0.143"
  1
  19
  7
  1
  SCORED-NORMAL
  FREQ7REVERSE)
 (COPSELFE
  "cp-Self-exploration enjoyment"
  :SINGLE
  "Extremely important to me"
  "1.000"
  9
  20
  9
  9
  SCORED-NORMAL
  PRIORITY9)
 :SCALE
 INTSS1AASSERTCR
 (CR1ISSUE
  "cr-One issue at a time"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  1
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (CRRESOLV
  "cr-Rarely repeat arguments of same issue"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  2
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (CRNTHREA
  "cr-I rarely make threats"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  3
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (CRUNDERL
  "cr-Discuss underlying issues"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  4
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (CRWINWIN
  "cr-Discuss until win-win solution"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  5
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (CRLONGTK
  "cr-Keep going until reach a solution"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  6
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (CRSUMMAR
  "cr-I repeat summary"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  7
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (CRCPRAIS
  "cr-We laugh & praise during disagree"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  8
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (CRBOASSR
  "cr-Both assertive pos,firm,diplom"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  9
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (CROPHONE
  "cr-We open,nondefensive,honest"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  10
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (CRANGRES
  "cr-If one angry, other assertive back"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  11
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (CRTLKMOR
  "cr-One partner not much more talkative"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  12
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 (CREQWIN
  "cr-Equal winning of disagreements"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  13
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 :SCALE
 INTSS1BOPENHON
 (INTTELAL
  "in-Told partner all about self"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  1
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (INTSMGOA
  "in-We agree on long term goals"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  2
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (INTEQDEC
  "in-Equality in decision influence"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  3
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (INTIOPEN
  "in-We tell almost exactly what we thinking"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  4
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (INTWEOPN
  "in-We open, nondefensive,honest"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  5
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (INTDAILY
  "in-Daily sharing of feelings on events"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  6
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (INTALLOP
  "in-Open, specific about sensitive issues"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  7
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (INTKNPFE
  "in-Not frequently don't know p- feelings"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  8
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 (INCOMTWO
  "id-Not-worries of other's commitment"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  9
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 :SCALE
 INTSS2ROMANTC
 (ROMSURPR
  "ro-Surprise p- once/week"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  1
  7
  7
  SCORED-NORMAL
  LIKEME7)
 (ROMFANTA
  "ro-Freq fantasies about p-"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  2
  7
  7
  SCORED-NORMAL
  LIKEME7)
 (ROMCELEB
  "ro-Celebrate special days 1/month"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  3
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (ROMPLACE
  "ro-We go to romantic places 1/week"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  4
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (ROMATTRA
  "ro-Sexually attracted to partner"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  5
  7
  7
  SCORED-NORMAL
  LIKEME7)
 (ROMPLAYF
  "ro-Some playful interactions weekly"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  6
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (ROMCHARM
  "ro-Partner charming & romantic"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  7
  7
  7
  SCORED-NORMAL
  LIKEME7)
 :SCALE
 INTSS3LIBROLE
 (LROMTASK
  "find"
  :SINGLE
  "EXTREMELY agree"
  "0.143"
  1
  1
  7
  1
  SCORED-NORMAL
  AGREE7REVERSE)
 (LROFTASK
  "find"
  :SINGLE
  "EXTREMELY agree"
  "0.143"
  1
  2
  7
  1
  SCORED-NORMAL
  AGREE7REVERSE)
 (LRMFINAL
  "find"
  :SINGLE
  "EXTREMELY agree"
  "0.143"
  1
  3
  7
  1
  SCORED-NORMAL
  AGREE7REVERSE)
 (LROEMBAR
  "find"
  :SINGLE
  "EXTREMELY agree"
  "0.143"
  1
  4
  7
  1
  SCORED-NORMAL
  AGREE7REVERSE)
 (LROMSTRO
  "find"
  :SINGLE
  "EXTREMELY agree"
  "0.143"
  1
  5
  7
  1
  SCORED-NORMAL
  AGREE7REVERSE)
 (LROEQINC
  "find"
  :SINGLE
  "EXTREMELY agree"
  "1.000"
  7
  6
  7
  7
  SCORED-NORMAL
  AGREE7)
 (LRCARCON
  "find"
  :SINGLE
  "EXTREMELY agree"
  "0.143"
  1
  7
  7
  1
  SCORED-NORMAL
  AGREE7REVERSE)
 :SCALE
 INTSS4LOVERES
 (CRIFAVOR
  "cr-I do favors cheerfully when asked"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  1
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (CRIFOLUP
  "cr-I do what I tell partner"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  2
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (INTCOMIT
  "in-Not-commitment cause feel trapped"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  3
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 (INTRESPT
  "in-Respect partner above others"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  4
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (INTLSQPR
  "in-Tell of respect, love of p- to others"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  5
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (INTLOVE
  "in-I love partner very much"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  6
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (INNEVARG
  "id-Not-partners never disagree if happy"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  7
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 :SCALE
 INTSS5INDEP
 (INRLUNCH
  "id-Ok--p - lunch w/ attr- opposite sex"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  1
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (INRINHAP
  "id-Marriage not greater than ind- happy"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  2
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 (INRIGROW
  "id-I end relationship if can't grow"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  3
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (INRSAYWE
  "id-Not say we'when mean 'I"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  4
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 (INDIFGOA
  "id-Ok for different goals"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  5
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (INFINDAN
  "id-Could be happy with another"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  6
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (INENALON
  "id-Not-can't enjoy being w/o partner"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  7
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 (INOKALON
  "id-Not-not happy if not partner"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  8
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 (INRHATEA
  "id-Not-I hate to be alone"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  9
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 (INSEPINT
  "id-sep-interests"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  10
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (INRMONEY
  "id-SeparateFunds"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  11
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (INRBEALN
  "id-OK for weekends alone"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  12
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 (INALCNST
  "id-Not consult for small decisions"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  13
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 (INRFREEH
  "id-Free at home if partner there"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  14
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 :SCALE
 INTSS6POSSUP
 (CRNTHREA
  "cr-I rarely make threats"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  1
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (CRNNEGLB
  "cr-I rarely use negative labels"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  2
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (CREXAGGR
  "cr-I not freq use 'always' or exaggeration"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  3
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 (CRANGANG
  "cr-If p-angry at me, I don't get angry-def"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  4
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 (CRIPRAIS
  "cr-I not criticize more than praise p-"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  5
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 (CRANGRES
  "cr-If one angry, other assertive back"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  6
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 (INDIFDEC
  "id-Support p decision if disagree"
  :SINGLE
  "EXTREMELY accurate / like us"
  "1.000"
  7
  7
  7
  7
  SCORED-NORMAL
  LIKEUS7)
 :SCALE
 INTSS7COLLAB
 (CRTKLONG
  "cr-Not one talk long before other"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  1
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 (CRTEWEAK
  "cr-Not uncomfortable about tell weakness"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  2
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 (CRMANIPU
  "cr-Not feel me or partner manipulate"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  3
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 (CRREPRAI
  "cr-Partner gives more praise than criticism"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  4
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 (CRTEACH
  "cr-Not problem teaching other"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  5
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 (CRTLKMOR
  "cr-One partner not much more talkative"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  6
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 (INTWKTOG
  "in-We enjoy working together"
  :SINGLE
  "EXTREMELY accurate / like us"
  "0.143"
  1
  7
  7
  1
  SCORED-NORMAL
  LIKEUS7REVERSE)
 :SCALE
 SEHAPPY
 (HAPCLFRN
  "h-Happy w/ number & closeness of friends"
  :SINGLE
  "Extremely happy"
  "1.000"
  7
  1
  7
  7
  SCORED-NORMAL
  HAPPY7)
 (HAPCARNW
  "h-Happy w/ my career now"
  :SINGLE
  "Extremely happy"
  "1.000"
  7
  2
  7
  7
  SCORED-NORMAL
  HAPPY7)
 (HAPCARFU
  "h-Happy w/ future career expectations"
  :SINGLE
  "Extremely happy"
  "1.000"
  7
  3
  7
  7
  SCORED-NORMAL
  HAPPY7)
 (HAPFRIEN
  "h-Happy w/ friendships"
  :SINGLE
  "Extremely happy"
  "1.000"
  7
  4
  7
  7
  SCORED-NORMAL
  HAPPY7)
 (HAPWKREL
  "h-Happy w/ work-school relationships"
  :SINGLE
  "Extremely happy"
  "1.000"
  7
  5
  7
  7
  SCORED-NORMAL
  HAPPY7)
 (HAPPE
  "h-Happy w/ physical activity"
  :SINGLE
  "Extremely happy"
  "1.000"
  7
  6
  7
  7
  SCORED-NORMAL
  HAPPY7)
 (HAPRECRE
  "h-Happy w/ recreation"
  :SINGLE
  "Extremely happy"
  "1.000"
  7
  7
  7
  7
  SCORED-NORMAL
  HAPPY7)
 (HAPSEXRE
  "h-Happy w/ sex/romance"
  :SINGLE
  "Extremely happy"
  "1.000"
  7
  8
  7
  7
  SCORED-NORMAL
  HAPPY7)
 (HAPFAMIL
  "h-Happy w/ family relationships"
  :SINGLE
  "Extremely happy"
  "1.000"
  7
  9
  7
  7
  SCORED-NORMAL
  HAPPY7)
 (HAPSELFD
  "h-Happy w/ self & development"
  :SINGLE
  "Extremely happy"
  "1.000"
  7
  10
  7
  7
  SCORED-NORMAL
  HAPPY7)
 (HAPSPIRI
  "h-Happy w/ meaning & spiritual/religious"
  :SINGLE
  "Extremely happy"
  "1.000"
  7
  11
  7
  7
  SCORED-NORMAL
  HAPPY7)
 (HAPYEAR
  "h-Happiness during past year"
  :SINGLE
  "Extremely happy"
  "1.000"
  7
  12
  7
  7
  SCORED-NORMAL
  HAPPY7)
 (HAP3YEAR
  "h-Happiness 1-3 years ago"
  :SINGLE
  "Extremely happy"
  "1.000"
  7
  13
  7
  7
  SCORED-NORMAL
  HAPPY7)
 (HAPLIFE
  "h-Happiness up to 3 years ago"
  :SINGLE
  "Extremely happy"
  "1.000"
  7
  14
  7
  7
  SCORED-NORMAL
  HAPPY7)
 (HAPEXPEC
  "h-Happiness expected in future"
  :SINGLE
  "Extremely happy"
  "1.000"
  7
  15
  7
  7
  SCORED-NORMAL
  HAPPY7)
 :SCALE
 SRDEPRES
 (RDEPFEEL
  "de-Not often sad,apathetic,depressed"
  :SINGLE
  "EXTREMELY accurate / like me"
  "0.143"
  1
  1
  7
  1
  SCORED-NORMAL
  LIKEME7REVERSE)
 (RDEPTHOU
  "de-Not worthless, very neg a-death,etc"
  :SINGLE
  "EXTREMELY accurate / like me"
  "0.143"
  1
  2
  7
  1
  SCORED-NORMAL
  LIKEME7REVERSE)
 (RDEPDYSS
  "de-RevDysthemia symptoms checklist"
  :SINGLE
  "Most or all of my life"
  "0.091"
  1
  3
  11
  1
  SCORED-NORMAL
  DURATION11REVERSE)
 (RDEPMAJS
  "de-RevMajor depression symptoms chkl"
  :SINGLE
  "Almost all the time"
  "0.111"
  1
  4
  9
  1
  SCORED-NORMAL
  EPISODEFREQ9REVERSE)
 (RDEPMEDS
  "de-RevLength of time meds for depression"
  :SINGLE
  "Most or all of my life"
  "0.091"
  1
  5
  11
  1
  SCORED-NORMAL
  DURATION11REVERSE)
 (RDEPTHER
  "de-RevAmount of therapy for depression"
  :SINGLE
  "Almost all the time"
  "0.111"
  1
  6
  9
  1
  SCORED-NORMAL
  EPISODEFREQ9REVERSE)
 :SCALE
 SRANXIET
 (RANXPERF
  "ax-RevPerformance anxiety level"
  :SINGLE
  "EXTREMELY accurate / like me"
  "0.143"
  1
  1
  7
  1
  SCORED-NORMAL
  LIKEME7REVERSE)
 (RANXALLT
  "ax-Not feel anxious almost all time"
  :SINGLE
  "EXTREMELY accurate / like me"
  "0.143"
  1
  2
  7
  1
  SCORED-NORMAL
  LIKEME7REVERSE)
 (RANXPSTD
  "ax-RevPSTD symptoms chkl"
  :SINGLE
  "EXTREMELY accurate / like me"
  "0.143"
  1
  3
  7
  1
  SCORED-NORMAL
  LIKEME7REVERSE)
 (RANXSOCI
  "ax-RevAnxiety with other people"
  :SINGLE
  "EXTREMELY accurate / like me"
  "0.143"
  1
  4
  7
  1
  SCORED-NORMAL
  LIKEME7REVERSE)
 (RANXOCD
  "ax-RevTimes lasting OCD problems"
  :SINGLE
  "Almost all the time"
  "0.111"
  1
  5
  9
  1
  SCORED-NORMAL
  EPISODEFREQ9REVERSE)
 (RANXPHOB
  "ax-RevNumber of phobias"
  :SINGLE
  "12 or more"
  "0.077"
  1
  6
  13
  1
  SCORED-NORMAL
  NUMBERTO12REVERSE)
 (RANXPANI
  "ax-RevNumber of panic attacks"
  :SINGLE
  "12 or more"
  "0.077"
  1
  7
  13
  1
  SCORED-NORMAL
  NUMBERTO12REVERSE)
 (RANXTHER
  "ax-Amount of therapy for anxiety"
  :SINGLE
  "Almost all the time"
  "0.111"
  1
  8
  9
  1
  SCORED-NORMAL
  EPISODEFREQ9REVERSE)
 (RANXMEDS
  "ax-RevTime meds for anxiety DEPRESSION?"
  :SINGLE
  "Most or all of my life"
  "0.091"
  1
  9
  11
  1
  SCORED-NORMAL
  DURATION11REVERSE)
 :SCALE
 SRANGAGG
 (RANGFEEL
  "ag-RevFreq lose temper"
  :SINGLE
  "More than 10 per day"
  "0.125"
  1
  1
  8
  1
  SCORED-NORMAL
  FREQ8REVERSE)
 (RANGYELL
  "ag-RevFreq yell or call hurtful names"
  :SINGLE
  "More than 10 per day"
  "0.125"
  1
  2
  8
  1
  SCORED-NORMAL
  FREQ8REVERSE)
 (RANGDOMI
  "ag-RevFreq get way by [aggression]"
  :SINGLE
  "More than 10 per day"
  "0.125"
  1
  3
  8
  1
  SCORED-NORMAL
  FREQ8REVERSE)
 (RANGTHOU
  "ag-RevFreq think about get even"
  :SINGLE
  "More than 10 per day"
  "0.125"
  1
  4
  8
  1
  SCORED-NORMAL
  FREQ8REVERSE)
 (RANGDEST
  "ag-RevFreq damage prop etc/break law"
  :SINGLE
  "More than 10 per day"
  "0.125"
  1
  5
  8
  1
  SCORED-NORMAL
  FREQ8REVERSE)
 :SCALE
 SRELHLTH
 (RHLFREQI
  "he-LoFreq of illness past 3 years"
  :SINGLE
  "More than 60 days per year"
  "0.143"
  1
  1
  7
  1
  SCORED-NORMAL
  FREQ7REVERSE)
 (RHLALCOH
  "he-LoFreq of alcohol drinks"
  :SINGLE
  "More than 10 per day"
  "0.125"
  1
  2
  8
  1
  SCORED-NORMAL
  FREQ8REVERSE)
 (RHLSMOKE
  "he-LoFreq of cigarrettes"
  :SINGLE
  "More than 10 per day"
  "0.125"
  1
  3
  8
  1
  SCORED-NORMAL
  FREQ8REVERSE)
 (RHLDRUGS
  "he-LoFreq of illegal drugs"
  :SINGLE
  "More than 10 per day"
  "0.125"
  1
  4
  8
  1
  SCORED-NORMAL
  FREQ8REVERSE)
 (RHLPHYSI
  "he-Physical conditioning level"
  :SINGLE
  "Excellent for competitive athlete"
  "0.889"
  8
  5
  9
  8
  SCORED-NORMAL
  RHLPHYSIANSARRAY)
 (RHLWEIGH
  "he-LoWeight"
  :SINGLE
  "Ideal for my height"
  "1.000"
  10
  6
  10
  10
  SCORED-NORMAL
  RHLWEIGHANSARRAY)
 :SCALE
 SRPEOPLE
 (RPEHAPFR
  "re-Friends happy-successful"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  1
  7
  7
  SCORED-NORMAL
  LIKEME7)
 (RPEHMARR
  "re-Have or had happy marital rel"
  :SINGLE
  "EXTREMELY agree"
  "1.000"
  8
  2
  8
  8
  SCORED-NORMAL
  LIKEME8NOTAPPLY)
 (RPENETW
  "re-Close network of friends & career-rel"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  3
  7
  7
  SCORED-NORMAL
  LIKEME7)
 (RPECLFRN
  "re-Have/had friends share innermost"
  :SINGLE
  "EXTREMELY accurate / like me"
  "1.000"
  7
  4
  7
  7
  SCORED-NORMAL
  LIKEME7)
 (RPENUMFR
  "re-Number friends socialize 1/month"
  :SINGLE
  "21 or more"
  "1.000"
  12
  5
  12
  12
  SCORED-NORMAL
  NUMBERBY2)
 (RPENUMCL
  "re-Number extremely close friends"
  :SINGLE
  "21 or more"
  "1.000"
  12
  6
  12
  12
  SCORED-NORMAL
  NUMBERBY2)
 (RPECOMMI
  "re-Degree of commit to 3 mo romantic"
  :SINGLE
  "Married--extremely high commitment"
  "0.923"
  12
  7
  13
  12
  SCORED-NORMAL
  RPECOMMITANSARRAY)
 ))

;;xxx ------------------------------ *shaq-scaledata-list for above ---------------

(setf  *shaq-scaledata-list
 '((:SCALEDATA
  ST1HIGHERSELF
  :N
  10
  :REL
  1.0
  :MN
  10.0
  :TOT
  100
  :MAX
  100
  :SD
  0.0
  :VAR
  0.0
  :QV
  (THM6LEAR
   THM9SHAP
   THM14IND
   THM22BOD
   THM23BAL
   THMCOMPC
   THMINTEG
   THMPHIL
   THMSESUF
   THMSEDIS))
 (:SCALEDATA
  ST2SOCINTIMNOFAM
  :N
  6
  :REL
  1.0
  :MN
  10.0
  :TOT
  60
  :MAX
  60
  :SD
  0.0
  :VAR
  0.0
  :QV
  (THM8ROMA THM12PLE THMRESPE THM20INT THMLIKED THMSUPPO))
 (:SCALEDATA
  ST3FAMCARE
  :N
  3
  :REL
  1.0
  :MN
  10.0
  :TOT
  30
  :MAX
  30
  :SD
  0.0
  :VAR
  0.0
  :QV
  (THMCAREG THMPARLV THMFAMIL))
 (:SCALEDATA
  ST4SUCCESSSTATUSMATER
  :N
  8
  :REL
  1.0
  :MN
  10.0
  :TOT
  80
  :MAX
  80
  :SD
  0.0
  :VAR
  0.0
  :QV
  (THM3EDUC THM4MONE THM25POS THM26SUC THM30CEO THM33GOA THMRESPE THM1ACH))
 (:SCALEDATA
  ST5-ORDERPERFECTIONGOODNESS
  :N
  7
  :REL
  1.0
  :MN
  10.0
  :TOT
  70
  :MAX
  70
  :SD
  0.0
  :VAR
  0.0
  :QV
  (THMORDER THMCLEAN THMPERFE THMJUSTI THMSIMPL THMBEAUT THMGOODN))
 (:SCALEDATA
  ST6GODSPIRITRELIG
  :N
  4
  :REL
  1.0
  :MN
  10.0
  :TOT
  40
  :MAX
  40
  :SD
  0.0
  :VAR
  0.0
  :QV
  (THMOBGOD THMRELGD THMSPIRI THMRELIG))
 (:SCALEDATA
  ST7IMPACTCHALLENGEEXPLOR
  :N
  6
  :REL
  1.0
  :MN
  10.0
  :TOT
  60
  :MAX
  60
  :SD
  0.0
  :VAR
  0.0
  :QV
  (THM10OTH THMIMPAC THM28CRE THMMENCH THM34EXP THMUNIQU))
 (:SCALEDATA
  ST8ATTENTIONFUNEASY
  :N
  4
  :REL
  1.0
  :MN
  10.0
  :TOT
  40
  :MAX
  40
  :SD
  0.0
  :VAR
  0.0
  :QV
  (THMATTEN THM5ADVE THMEFORT THMPLAYF))
 (:SCALEDATA
  ST9VALUESELFALLUNCOND
  :N
  3
  :REL
  0.7
  :MN
  7.0
  :TOT
  21
  :MAX
  30
  :SD
  4.2426405
  :VAR
  18.0
  :QV
  (THVUNCON THVSELFW THVSELFA))
 (:SCALEDATA
  ST10OVERCMPROBACCEPTSELF
  :N
  2
  :REL
  1.0
  :MN
  10.0
  :TOT
  20
  :MAX
  20
  :SD
  0.0
  :VAR
  0.0
  :QV
  (THMSPROT THMPHURT))
 (:SCALEDATA
  ST11DUTYPUNCTUAL
  :N
  2
  :REL
  1.0
  :MN
  10.0
  :TOT
  20
  :MAX
  20
  :SD
  0.0
  :VAR
  0.0
  :QV
  (THMPUNCT THMOBLIG))
 (:SCALEDATA
  SWORLDVIEW
  :N
  11
  :REL
  0.68445457
  :MN
  5.3636365
  :TOT
  59
  :MAX
  86
  :SD
  3.4712515
  :VAR
  12.049587
  :QV
  (WOVPROGR
   WOVGOODF
   WOVMYLIF
   WOVNFAIR
   TBVENTIT
   WOVINJUR
   WOVABUND
   TBVGRATI
   WOVENTIT
   WOVGRATE
   WOVPOSTH)
  :SS
  ("SSWVGRATPT" "SSWVOPTIMS" "SSWVENTIT"))
 (:SUBSCALEDATA
  "SSWVGRATPT"
  :N
  3
  :REL
  1.0
  :MN
  8.0
  :TOT
  24
  :MAX
  24
  :SD
  1.4142135
  :VAR
  2.0
  :QV
  (TBVGRATI WOVABUND WOVGRATE))
 (:SUBSCALEDATA
  "SSWVOPTIMS"
  :N
  4
  :REL
  1.0
  :MN
  7.75
  :TOT
  31
  :MAX
  31
  :SD
  1.299038
  :VAR
  1.6875
  :QV
  (WOVPROGR WOVGOODF WOVMYLIF WOVPOSTH))
 (:SUBSCALEDATA
  "SSWVENTIT"
  :N
  4
  :REL
  0.13225001
  :MN
  1.0
  :TOT
  4
  :MAX
  31
  :SD
  0.0
  :VAR
  0.0
  :QV
  (TBVENTIT WOVNFAIR WOVINJUR WOVENTIT))
 (:SCALEDATA
  STBSLFWO
  :N
  11
  :REL
  0.4272727
  :MN
  4.2727275
  :TOT
  47
  :MAX
  110
  :SD
  4.329411
  :VAR
  18.743802
  :QV
  (TBVOTHFI
   TBVLIKED
   TBVWEAK
   TBVBEST
   TBVRULES
   TBVWINNE
   TBVBALAN
   TBVHAPCA
   THVSELFA
   THVUNCON
   THVSELFW)
  :SS
  ("SSSWNONCONT" "SSSWHAPALLGRAT" "SSSWACALLSELF"))
 (:SUBSCALEDATA
  "SSSWNONCONT"
  :N
  6
  :REL
  0.1
  :MN
  1.0
  :TOT
  6
  :MAX
  60
  :SD
  0.0
  :VAR
  0.0
  :QV
  (TBVOTHFI TBVLIKED TBVWEAK TBVBEST TBVRULES TBVWINNE))
 (:SUBSCALEDATA
  "SSSWHAPALLGRAT"
  :N
  4
  :REL
  1.0
  :MN
  10.0
  :TOT
  40
  :MAX
  40
  :SD
  0.0
  :VAR
  0.0
  :QV
  (TBVBALAN TBVHAPCA TBVGRATI THVUNCON THVSELFW))
 (:SUBSCALEDATA
  "SSSWACALLSELF"
  :N
  1
  :REL
  0.1
  :MN
  1.0
  :TOT
  1
  :MAX
  10
  :SD
  0.0
  :VAR
  0.0
  :QV
  (THVSELFA))
 (:SCALEDATA
  SIECONTR
  :N
  7
  :REL
  0.38785723
  :MN
  2.7142856
  :TOT
  19
  :MAX
  49
  :SD
  2.7105236
  :VAR
  7.3469377
  :QV
  (IECSELFS IECICONT IECGENET IECPEOPL IECDEPEN IECCOFEE IECCOPRB)
  :SS
  ("SSIEAUTONY" "SSIENCODEP" "SSIENOTHER"))
 (:SUBSCALEDATA
  "SSIEAUTONY"
  :N
  3
  :REL
  0.71433336
  :MN
  5.0
  :TOT
  15
  :MAX
  21
  :SD
  2.828427
  :VAR
  8.0
  :QV
  (IECSELFS IECICONT IECDEPEN))
 (:SUBSCALEDATA
  "SSIENCODEP"
  :N
  2
  :REL
  0.143
  :MN
  1.0
  :TOT
  2
  :MAX
  14
  :SD
  0.0
  :VAR
  0.0
  :QV
  (IECCOFEE IECCOPRB))
 (:SUBSCALEDATA
  "SSIENOTHER"
  :N
  2
  :REL
  0.143
  :MN
  1.0
  :TOT
  2
  :MAX
  14
  :SD
  0.0
  :VAR
  0.0
  :QV
  (IECPEOPL IECGENET))
 (:SCALEDATA
  SETHBEL
  :N
  14
  :REL
  0.48571426
  :MN
  4.857143
  :TOT
  68
  :MAX
  140
  :SD
  4.4538446
  :VAR
  19.836733
  :QV
  (TB2RELAT
   TB2PUNIS
   TBV2NOTR
   TB2GROUM
   TB2SELFM
   TB2GDWRK
   TB2GDATT
   TB2ALLGD
   TB2REASO
   TBV2ASTR
   TB2IDHUM
   TB2LIFAD
   TB2MOVEM
   TBV2CORE)
  :SS
  ("SSB2ETHIC"
   "SSB2FORGIV"
   "SSB2IDGRND"
   "SSB2GRNDMNG"
   "SSB2INRGOOD"
   "SSB2NOASTR"
   "SSB2LIFAD"))
 (:SUBSCALEDATA
  "SSB2ETHIC"
  :N
  4
  :REL
  0.325
  :MN
  3.25
  :TOT
  13
  :MAX
  40
  :SD
  3.8971143
  :VAR
  15.1875
  :QV
  (TB2RELAT TBV2NOTR TB2REASO TBV2CORE))
 (:SUBSCALEDATA
  "SSB2FORGIV"
  :N
  2
  :REL
  0.1
  :MN
  1.0
  :TOT
  2
  :MAX
  20
  :SD
  0.0
  :VAR
  0.0
  :QV
  (TB2PUNIS TB2GDWRK))
 (:SUBSCALEDATA
  "SSB2IDGRND"
  :N
  2
  :REL
  1.0
  :MN
  10.0
  :TOT
  20
  :MAX
  20
  :SD
  0.0
  :VAR
  0.0
  :QV
  (TB2IDHUM TB2MOVEM))
 (:SUBSCALEDATA
  "SSB2GRNDMNG"
  :N
  2
  :REL
  0.1
  :MN
  1.0
  :TOT
  2
  :MAX
  20
  :SD
  0.0
  :VAR
  0.0
  :QV
  (TB2GROUM TB2SELFM))
 (:SUBSCALEDATA
  "SSB2INRGOOD"
  :N
  2
  :REL
  1.0
  :MN
  10.0
  :TOT
  20
  :MAX
  20
  :SD
  0.0
  :VAR
  0.0
  :QV
  (TB2GDATT TB2ALLGD))
 (:SUBSCALEDATA
  "SSB2NOASTR"
  :N
  1
  :REL
  0.1
  :MN
  1.0
  :TOT
  1
  :MAX
  10
  :SD
  0.0
  :VAR
  0.0
  :QV
  (TBV2ASTR))
 (:SUBSCALEDATA
  "SSB2LIFAD"
  :N
  1
  :REL
  1.0
  :MN
  10.0
  :TOT
  10
  :MAX
  10
  :SD
  0.0
  :VAR
  0.0
  :QV
  (TB2LIFAD))
 (:SCALEDATA
  SGRFEARS
  :N
  12
  :REL
  0.21441667
  :MN
  1.5
  :TOT
  18
  :MAX
  84
  :SD
  1.6583124
  :VAR
  2.75
  :QV
  (WOVHAPPY
   WOVPOOR
   WOVILL
   WOVDEATH
   WOVALONE
   WOVNOLOV
   WOVLIKED
   WOVPERSO
   WOVPROBL
   WOVDISCO
   WOVSUCCE
   WOVOVERC)
  :SS
  ("SSWFSOCIAL" "SSWFSELF" "SSWFPOVFAI" "SSWFILLDEA"))
 (:SUBSCALEDATA
  "SSWFSOCIAL"
  :N
  4
  :REL
  0.143
  :MN
  1.0
  :TOT
  4
  :MAX
  28
  :SD
  0.0
  :VAR
  0.0
  :QV
  (WOVALONE WOVNOLOV WOVLIKED WOVPROBL))
 (:SUBSCALEDATA
  "SSWFSELF"
  :N
  3
  :REL
  0.42866668
  :MN
  3.0
  :TOT
  9
  :MAX
  21
  :SD
  2.828427
  :VAR
  8.0
  :QV
  (WOVPERSO WOVDISCO WOVOVERC))
 (:SUBSCALEDATA
  "SSWFPOVFAI"
  :N
  3
  :REL
  0.143
  :MN
  1.0
  :TOT
  3
  :MAX
  21
  :SD
  0.0
  :VAR
  0.0
  :QV
  (WOVHAPPY WOVPOOR WOVSUCCE))
 (:SUBSCALEDATA
  "SSWFILLDEA"
  :N
  2
  :REL
  0.143
  :MN
  1.0
  :TOT
  2
  :MAX
  14
  :SD
  0.0
  :VAR
  0.0
  :QV
  (WOVILL WOVDEATH))
 (:SCALEDATA
  SSLFCONF
  :N
  41
  :REL
  1.0
  :MN
  7.0
  :TOT
  287
  :MAX
  287
  :SD
  0.0
  :VAR
  0.0
  :QV
  (SLFLEARN
   SLFCRITT
   SLFRESEA
   SLFANALY
   SLFSYNTH
   SLFCREAT
   SLFCOMPU
   SLFBIOSC
   SLFNATSC
   SLFLIBAR
   SLFSOCSC
   SLFPHILR
   SLFPERFA
   SLFFINEA
   SLFBUSAN
   SLFHEAL2
   SLFENGIN
   SLFEDUCH
   SLFIQ
   SLFDECMA
   SLFTIMEM
   SLFCOPE
   SLFSELF4
   SLFSELFM
   SLFACHAN
   SLFMANA6
   SLFHEAL3
   SLFMEETP
   SLFLISTE
   SLFSELF5
   SLFCONFL
   SLFPERSU
   SLFMANA7
   SLFHELPS
   SLFSPEAK
   SLFJOBSE
   SLFADAPT
   SLFHAPPY
   SLFOPTIM
   SLFFRIEN
   SLFINDEP)
  :SS
  ("SSSCLEARN"
   "SSSCCOPOPT"
   "SSSCSMSMSD"
   "SSSCINTERP"
   "SSSCALLHELP"
   "SSSCSCIENCE"
   "SSSCARTCRE"))
 (:SUBSCALEDATA
  "SSSCLEARN"
  :N
  7
  :REL
  1.0
  :MN
  7.0
  :TOT
  49
  :MAX
  49
  :SD
  0.0
  :VAR
  0.0
  :QV
  (SLFLEARN SLFCRITT SLFRESEA SLFANALY SLFSYNTH SLFCOMPU SLFIQ))
 (:SUBSCALEDATA
  "SSSCCOPOPT"
  :N
  6
  :REL
  1.0
  :MN
  7.0
  :TOT
  42
  :MAX
  42
  :SD
  0.0
  :VAR
  0.0
  :QV
  (SLFSELF4 SLFCOPE SLFSELF5 SLFCONFL SLFOPTIM SLFFRIEN))
 (:SUBSCALEDATA
  "SSSCSMSMSD"
  :N
  7
  :REL
  1.0
  :MN
  7.0
  :TOT
  49
  :MAX
  49
  :SD
  0.0
  :VAR
  0.0
  :QV
  (SLFDECMA SLFTIMEM SLFSELFM SLFACHAN SLFMANA6 SLFHEAL3 SLFINDEP))
 (:SUBSCALEDATA
  "SSSCINTERP"
  :N
  7
  :REL
  1.0
  :MN
  7.0
  :TOT
  49
  :MAX
  49
  :SD
  0.0
  :VAR
  0.0
  :QV
  (SLFADAPT SLFMEETP SLFPERSU SLFMANA7 SLFBUSAN SLFSPEAK SLFJOBSE))
 (:SUBSCALEDATA
  "SSSCALLHELP"
  :N
  6
  :REL
  1.0
  :MN
  7.0
  :TOT
  42
  :MAX
  42
  :SD
  0.0
  :VAR
  0.0
  :QV
  (SLFSOCSC SLFPHILR SLFLIBAR SLFEDUCH SLFLISTE SLFHELPS))
 (:SUBSCALEDATA
  "SSSCSCIENCE"
  :N
  4
  :REL
  1.0
  :MN
  7.0
  :TOT
  28
  :MAX
  28
  :SD
  0.0
  :VAR
  0.0
  :QV
  (SLFBIOSC SLFNATSC SLFHEAL2 SLFENGIN))
 (:SUBSCALEDATA
  "SSSCARTCRE"
  :N
  3
  :REL
  1.0
  :MN
  7.0
  :TOT
  21
  :MAX
  21
  :SD
  0.0
  :VAR
  0.0
  :QV
  (SLFCREAT SLFPERFA SLFFINEA))
 (:SCALEDATA
  SSELFMAN
  :N
  15
  :REL
  1.0
  :MN
  7.733333
  :TOT
  116
  :MAX
  116
  :SD
  1.8785336
  :VAR
  3.5288885
  :QV
  (SMTBUSY
   SMTFUTUR
   SMTEXERC
   SMTEATH
   SMTSLEEP
   SMTSDEVE
   SMTNPROC
   SMTPTODO
   SMTGOALS
   SMTSCHD
   SMT2DTOD
   SMTACMPL
   SMTGHELP
   SMTBALAN
   SMTHABCH)
  :SS
  ("SSSMTIMEMANGOALSET"
   "SSSMACCOMPLORUSH"
   "SSSMSELFDEVEL"
   "SSSMHEALTHHABS"))
 (:SUBSCALEDATA
  "SSSMTIMEMANGOALSET"
  :N
  5
  :REL
  1.0
  :MN
  7.0
  :TOT
  35
  :MAX
  35
  :SD
  0.0
  :VAR
  0.0
  :QV
  (SMTFUTUR SMTPTODO SMTGOALS SMTSCHD SMT2DTOD))
 (:SUBSCALEDATA
  "SSSMACCOMPLORUSH"
  :N
  2
  :REL
  1.0
  :MN
  7.0
  :TOT
  14
  :MAX
  14
  :SD
  0.0
  :VAR
  0.0
  :QV
  (SMTBUSY SMTACMPL))
 (:SUBSCALEDATA
  "SSSMSELFDEVEL"
  :N
  3
  :REL
  1.0
  :MN
  7.0
  :TOT
  21
  :MAX
  21
  :SD
  0.0
  :VAR
  0.0
  :QV
  (SMTSDEVE SMTGHELP SMTHABCH))
 (:SUBSCALEDATA
  "SSSMHEALTHHABS"
  :N
  3
  :REL
  1.0
  :MN
  10.666667
  :TOT
  32
  :MAX
  32
  :SD
  2.6246693
  :VAR
  6.888889
  :QV
  (SMTEXERC SMTEATH SMTSLEEP))
 (:SCALEDATA
  SEMOTCOP
  :N
  20
  :REL
  0.54064996
  :MN
  3.4
  :TOT
  68
  :MAX
  124
  :SD
  2.7276364
  :VAR
  7.44
  :QV
  (COPNEGTH
   COPCOPEA
   COPPSOLV
   COPAVOPS
   COPEMOTA
   COPBLAME
   COPWDRW
   COPFUN
   COPTALKS
   COPPEPTA
   COPSMOKE
   COPDRUG
   COPPE
   COPNEGPH
   COPSELFB
   COPPOSPH
   COPEXPEC
   COPHAPPY
   COPAVOAT
   COPSELFE)
  :SS
  ("SSCPPROBSOLV"
   "SSCPPOSTHOUGHTS"
   "SSCPPOSACTS"
   "SSCPNOBLAMEANGERWDRAW"
   "SSCPNOTSMOKDRUGMED"
   "SSCPNOTEAT"))
 (:SUBSCALEDATA
  "SSCPPROBSOLV"
  :N
  4
  :REL
  1.0
  :MN
  6.75
  :TOT
  27
  :MAX
  27
  :SD
  1.299038
  :VAR
  1.6875
  :QV
  (COPPSOLV COPTALKS COPEXPEC COPSELFE))
 (:SUBSCALEDATA
  "SSCPPOSTHOUGHTS"
  :N
  2
  :REL
  0.5835
  :MN
  3.5
  :TOT
  7
  :MAX
  12
  :SD
  2.5
  :VAR
  6.25
  :QV
  (COPNEGTH COPPEPTA))
 (:SUBSCALEDATA
  "SSCPPOSACTS"
  :N
  2
  :REL
  1.0
  :MN
  6.0
  :TOT
  12
  :MAX
  12
  :SD
  0.0
  :VAR
  0.0
  :QV
  (COPFUN COPPE))
 (:SUBSCALEDATA
  "SSCPNOBLAMEANGERWDRAW"
  :N
  5
  :REL
  0.16700001
  :MN
  1.0
  :TOT
  5
  :MAX
  30
  :SD
  0.0
  :VAR
  0.0
  :QV
  (COPEMOTA COPBLAME COPWDRW COPNEGPH COPSELFB))
 (:SUBSCALEDATA
  "SSCPNOTSMOKDRUGMED"
  :N
  2
  :REL
  0.16700001
  :MN
  1.0
  :TOT
  2
  :MAX
  12
  :SD
  0.0
  :VAR
  0.0
  :QV
  (COPSMOKE COPDRUG))
 (:SUBSCALEDATA
  "SSCPNOTEAT"
  :N
  1
  :REL
  0.16700001
  :MN
  1.0
  :TOT
  1
  :MAX
  6
  :SD
  0.0
  :VAR
  0.0
  :QV
  (COPCOPEA))
 (:SCALEDATA
  INTSS1AASSERTCR
  :N
  13
  :REL
  0.9340769
  :MN
  6.5384617
  :TOT
  85
  :MAX
  91
  :SD
  1.5988162
  :VAR
  2.5562132
  :QV
  (CR1ISSUE
   CRRESOLV
   CRNTHREA
   CRUNDERL
   CRWINWIN
   CRLONGTK
   CRSUMMAR
   CRCPRAIS
   CRBOASSR
   CROPHONE
   CRANGRES
   CRTLKMOR
   CREQWIN))
 (:SCALEDATA
  INTSS1BOPENHON
  :N
  9
  :REL
  0.8095556
  :MN
  5.6666665
  :TOT
  51
  :MAX
  63
  :SD
  2.4944382
  :VAR
  6.2222223
  :QV
  (INTTELAL
   INTSMGOA
   INTEQDEC
   INTIOPEN
   INTWEOPN
   INTDAILY
   INTALLOP
   INTKNPFE
   INCOMTWO))
 (:SCALEDATA
  INTSS2ROMANTC
  :N
  7
  :REL
  1.0
  :MN
  7.0
  :TOT
  49
  :MAX
  49
  :SD
  0.0
  :VAR
  0.0
  :QV
  (ROMSURPR ROMFANTA ROMCELEB ROMPLACE ROMATTRA ROMPLAYF ROMCHARM))
 (:SCALEDATA
  INTSS3LIBROLE
  :N
  7
  :REL
  0.26542857
  :MN
  1.8571428
  :TOT
  13
  :MAX
  49
  :SD
  2.0995627
  :VAR
  4.408163
  :QV
  (LROMTASK LROFTASK LRMFINAL LROEMBAR LROMSTRO LROEQINC LRCARCON))
 (:SCALEDATA
  INTSS4LOVERES
  :N
  7
  :REL
  0.75514287
  :MN
  5.285714
  :TOT
  37
  :MAX
  49
  :SD
  2.7105239
  :VAR
  7.346939
  :QV
  (CRIFAVOR CRIFOLUP INTCOMIT INTRESPT INTLSQPR INTLOVE INNEVARG))
 (:SCALEDATA
  INTSS5INDEP
  :N
  14
  :REL
  0.5715001
  :MN
  4.0
  :TOT
  56
  :MAX
  98
  :SD
  3.0
  :VAR
  9.0
  :QV
  (INRLUNCH
   INRINHAP
   INRIGROW
   INRSAYWE
   INDIFGOA
   INFINDAN
   INENALON
   INOKALON
   INRHATEA
   INSEPINT
   INRMONEY
   INRBEALN
   INALCNST
   INRFREEH))
 (:SCALEDATA
  INTSS6POSSUP
  :N
  7
  :REL
  0.63271434
  :MN
  4.428571
  :TOT
  31
  :MAX
  49
  :SD
  2.96923
  :VAR
  8.816327
  :QV
  (CRNTHREA CRNNEGLB CREXAGGR CRANGANG CRIPRAIS CRANGRES INDIFDEC))
 (:SCALEDATA
  INTSS7COLLAB
  :N
  7
  :REL
  0.143
  :MN
  1.0
  :TOT
  7
  :MAX
  49
  :SD
  0.0
  :VAR
  0.0
  :QV
  (CRTKLONG CRTEWEAK CRMANIPU CRREPRAI CRTEACH CRTLKMOR INTWKTOG))
 (:SCALEDATA
  SEHAPPY
  :N
  15
  :REL
  1.0
  :MN
  7.0
  :TOT
  105
  :MAX
  105
  :SD
  0.0
  :VAR
  0.0
  :QV
  (HAPCLFRN
   HAPCARNW
   HAPCARFU
   HAPFRIEN
   HAPWKREL
   HAPPE
   HAPRECRE
   HAPSEXRE
   HAPFAMIL
   HAPSELFD
   HAPSPIRI
   HAPYEAR
   HAP3YEAR
   HAPLIFE
   HAPEXPEC)
  :SS
  ("HAPSDMEANSPIRITSS"
   "HAPCAREEREXSS"
   "HAPRECPESS"
   "HAPAREASS"
   "HAPFAMSS"
   "HAPROMSS"
   "HAPFRIENDSSS"
   "HAPFUTURESS"
   "HAPPASTSS"
   "HAPRECENTSS"))
 (:SUBSCALEDATA
  "HAPSDMEANSPIRITSS"
  :N
  2
  :REL
  1.0
  :MN
  7.0
  :TOT
  14
  :MAX
  14
  :SD
  0.0
  :VAR
  0.0
  :QV
  (HAPSELFD HAPSPIRI))
 (:SUBSCALEDATA
  "HAPCAREEREXSS"
  :N
  2
  :REL
  1.0
  :MN
  7.0
  :TOT
  14
  :MAX
  14
  :SD
  0.0
  :VAR
  0.0
  :QV
  (HAPCARFU HAPCARNW))
 (:SUBSCALEDATA
  "HAPRECPESS"
  :N
  2
  :REL
  1.0
  :MN
  7.0
  :TOT
  14
  :MAX
  14
  :SD
  0.0
  :VAR
  0.0
  :QV
  (HAPPE HAPRECRE))
 (:QV (HAPAREA))
 (:SUBSCALEDATA
  "HAPFAMSS"
  :N
  1
  :REL
  1.0
  :MN
  7.0
  :TOT
  7
  :MAX
  7
  :SD
  0.0
  :VAR
  0.0
  :QV
  (HAPFAMIL))
 (:SUBSCALEDATA
  "HAPROMSS"
  :N
  1
  :REL
  1.0
  :MN
  7.0
  :TOT
  7
  :MAX
  7
  :SD
  0.0
  :VAR
  0.0
  :QV
  (HAPSEXRE))
 (:SUBSCALEDATA
  "HAPFRIENDSSS"
  :N
  3
  :REL
  1.0
  :MN
  7.0
  :TOT
  21
  :MAX
  21
  :SD
  0.0
  :VAR
  0.0
  :QV
  (HAPCLFRN HAPFRIEN HAPWKREL))
 (:SUBSCALEDATA
  "HAPFUTURESS"
  :N
  1
  :REL
  1.0
  :MN
  7.0
  :TOT
  7
  :MAX
  7
  :SD
  0.0
  :VAR
  0.0
  :QV
  (HAPEXPEC))
 (:SUBSCALEDATA
  "HAPPASTSS"
  :N
  1
  :REL
  1.0
  :MN
  7.0
  :TOT
  7
  :MAX
  7
  :SD
  0.0
  :VAR
  0.0
  :QV
  (HAPLIFE))
 (:SUBSCALEDATA
  "HAPRECENTSS"
  :N
  2
  :REL
  1.0
  :MN
  7.0
  :TOT
  14
  :MAX
  14
  :SD
  0.0
  :VAR
  0.0
  :QV
  (HAPYEAR HAP3YEAR))
 (:SCALEDATA
  SRDEPRES
  :N
  6
  :REL
  0.11500001
  :MN
  1.0
  :TOT
  6
  :MAX
  54
  :SD
  0.0
  :VAR
  0.0
  :QV
  (RDEPFEEL RDEPTHOU RDEPDYSS RDEPMAJS RDEPMEDS RDEPTHER)
  :SS
  ("SSDELODEPSYMP" "SSDELODEPTREATS"))
 (:SUBSCALEDATA
  "SSDELODEPSYMP"
  :N
  4
  :REL
  0.12200001
  :MN
  1.0
  :TOT
  4
  :MAX
  34
  :SD
  0.0
  :VAR
  0.0
  :QV
  (RDEPFEEL RDEPTHOU RDEPDYSS RDEPMAJS))
 (:SUBSCALEDATA
  "SSDELODEPTREATS"
  :N
  2
  :REL
  0.10100001
  :MN
  1.0
  :TOT
  2
  :MAX
  20
  :SD
  0.0
  :VAR
  0.0
  :QV
  (RDEPMEDS RDEPTHER))
 (:SCALEDATA
  SRANXIET
  :N
  9
  :REL
  0.11544445
  :MN
  1.0
  :TOT
  9
  :MAX
  83
  :SD
  0.0
  :VAR
  0.0
  :QV
  (RANXPERF
   RANXALLT
   RANXPSTD
   RANXSOCI
   RANXOCD
   RANXPHOB
   RANXPANI
   RANXTHER
   RANXMEDS)
  :SS
  ("SSAXLOPERFGENANX" "SSAXLOWFEAROCD" "SSAXLOANXTREATS"))
 (:SUBSCALEDATA
  "SSAXLOPERFGENANX"
  :N
  4
  :REL
  0.143
  :MN
  1.0
  :TOT
  4
  :MAX
  28
  :SD
  0.0
  :VAR
  0.0
  :QV
  (RANXPERF RANXALLT RANXPSTD RANXSOCI))
 (:SUBSCALEDATA
  "SSAXLOWFEAROCD"
  :N
  3
  :REL
  0.088333346
  :MN
  1.0
  :TOT
  3
  :MAX
  35
  :SD
  0.0
  :VAR
  0.0
  :QV
  (RANXOCD RANXPHOB RANXPANI))
 (:SUBSCALEDATA
  "SSAXLOANXTREATS"
  :N
  2
  :REL
  0.10100001
  :MN
  1.0
  :TOT
  2
  :MAX
  20
  :SD
  0.0
  :VAR
  0.0
  :QV
  (RANXTHER RANXMEDS))
 (:SCALEDATA
  SRANGAGG
  :N
  5
  :REL
  0.125
  :MN
  1.0
  :TOT
  5
  :MAX
  40
  :SD
  0.0
  :VAR
  0.0
  :QV
  (RANGFEEL RANGYELL RANGDOMI RANGTHOU RANGDEST))
 (:SCALEDATA
  SRELHLTH
  :N
  6
  :REL
  0.40116668
  :MN
  3.6666668
  :TOT
  22
  :MAX
  50
  :SD
  3.8151744
  :VAR
  14.555554
  :QV
  (RHLFREQI RHLALCOH RHLSMOKE RHLDRUGS RHLPHYSI RHLWEIGH)
  :SS
  ("SSHELONEGADDICTHABS" "SSHELOFREQILL" "SSHEPELOWEIGHT"))
 (:SUBSCALEDATA
  "SSHELONEGADDICTHABS"
  :N
  3
  :REL
  0.125
  :MN
  1.0
  :TOT
  3
  :MAX
  24
  :SD
  0.0
  :VAR
  0.0
  :QV
  (RHLALCOH RHLSMOKE RHLDRUGS))
 (:SUBSCALEDATA
  "SSHELOFREQILL"
  :N
  1
  :REL
  0.143
  :MN
  1.0
  :TOT
  1
  :MAX
  7
  :SD
  0.0
  :VAR
  0.0
  :QV
  (RHLFREQI))
 (:SUBSCALEDATA
  "SSHEPELOWEIGHT"
  :N
  2
  :REL
  0.9445
  :MN
  9.0
  :TOT
  18
  :MAX
  19
  :SD
  1.0
  :VAR
  1.0
  :QV
  (RHLPHYSI RHLWEIGH))
 (:SCALEDATA
  SRPEOPLE
  :N
  7
  :REL
  0.98899997
  :MN
  9.285714
  :TOT
  65
  :MAX
  66
  :SD
  2.373321
  :VAR
  5.632653
  :QV
  (RPEHAPFR RPEHMARR RPENETW RPECLFRN RPENUMFR RPENUMCL RPECOMMI)
  :SS
  ("SSRECLOSEFRIENDS" "SSREROMRELSUC" "SSRENUMFRIENDS" "SSREHAPSUCFRS"))
 (:SUBSCALEDATA
  "SSRECLOSEFRIENDS"
  :N
  2
  :REL
  1.0
  :MN
  7.0
  :TOT
  14
  :MAX
  14
  :SD
  0.0
  :VAR
  0.0
  :QV
  (RPENETW RPECLFRN))
 (:SUBSCALEDATA
  "SSREROMRELSUC"
  :N
  2
  :REL
  0.96150005
  :MN
  10.0
  :TOT
  20
  :MAX
  21
  :SD
  2.0
  :VAR
  4.0
  :QV
  (RPEHMARR RPECOMMI))
 (:SUBSCALEDATA
  "SSRENUMFRIENDS"
  :N
  2
  :REL
  1.0
  :MN
  12.0
  :TOT
  24
  :MAX
  24
  :SD
  0.0
  :VAR
  0.0
  :QV
  (RPENUMFR RPENUMCL))
 (:SUBSCALEDATA
  "SSREHAPSUCFRS"
  :N
  2
  :REL
  0.96150005
  :MN
  10.0
  :TOT 
  20
  :MAX
  21
  :SD
  2.0
  :VAR
  4.0
  :QV
  (RPEHMARR RPECOMMI)))
;;end *shaq-scaledata-list
 )

(setf *shaq-alldata-list (append *shaq-data-list *shaq-scaledata-list))