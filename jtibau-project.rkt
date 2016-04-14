;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname test) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Author: Javier Tibau (jtibau@vt.edu)

; Calculates average of a list
; will crash on empty list
; (average '(1 2 3 4))
(define (average l)
  (/ (apply + l) (length l)))


; Rounds a real number to 2 decimals of precision,
; uses racket's built-in rounding rules
; (round2 1.2334224)
(define (round2 n)
  (/ (round (* n 100)) 100))

; Calculates a ratio between x and y
; (ratio 1 10)
(define (ratio x y)
  (round2 (/ x (+ x y))))

; A team is a list with 3 elements '(teamName nWins nLosses)
; It changes that list into another one with '(teamName ratioOfWins)
; This is meant to receive a single team, not the list of all teams
; (reduceTeamToRatio (first TC1r)) ; reduces the first team in one of the test cases
(define (reduceTeamToRatio team)
  (list (first team) (ratio (second team)(third team))))

; teamRatio(): Calculates the ratio of wins to lossses for each team
; and returns it as a list of pairs: team_name, team_win_loss_ratio.
; view the several applications in the test cases below
(define (teamRatio teamList)
  (map reduceTeamToRatio teamList))

; Simple compare function that doesn't care if the two teams have the same score
; Used for sorting.
; Given that teams and players are sorted and the syntax for both lists are equivalent,
; this same function is used to sort them both. Which is why it's not called "greaterTeam"
(define (greaterScore? t1 t2)
  (> (second t1) (second t2)))

; Other function that helps in telling if two teams have the same score
; Same as the above, this function can be used to compare teams or players
(define (sameScore? t1 t2)
  ( = (second t1) (second t2) ))

; sortedTeamRatio(): Returns the team_ratio pairs in a list sorted
; in order by team_ratio, highest to lowest from front of the list.
; Note if 2 teams have the same team_ratio they must appear next to
; each other in either order in the returned list.
; NOTE: The part in the note above has not been implemented
(define (sortedTeamRatio teamList)
  (sort (teamRatio teamList) greaterScore?))


; Returns all the teams/players with the top 3 scores
; TODO, convert to higher-order :(
(define (getTop l n)
  (cond
    [ (> (length l) 1) (cond
                         [ (> n 0) (cond
                                     [(sameScore? (first l) (second l)) (cons (first l) (getTop (rest l) n))]
                                     [else (cons (first l) (getTop (rest l) (- n 1)))])
                                   ]
                         [else empty]
                         )
                       ]
    [else (list (first l))]))




; topThree(): Calculates the teams with the top 3 scores in terms of their win_loss_ratios.
; If there are ties at the top, it may return a list with more than 3 teams.
(define (topThree teamList)
  (getTop (sortedTeamRatio teamList) 3))

(define TC1r
  '( (baylor 5 10)
     (cardinals 0 2)
     (crows 3 0)
     (villanova 4 1)
     (xavier 2 3)
     (aces 7 8)
     (bulls 10 11) ))
"Test Case 1 Data"
TC1r
"Output of teamRatio"
(teamRatio TC1r)
(check-expect (teamRatio TC1r)
              '((baylor 0.33)
                (cardinals 0.00)
                (crows 1.00)
                (villanova 0.80)
                (xavier 0.40)
                (aces 0.47)
                (bulls 0.48)))
"Output of sortedTeamRatio"
(sortedTeamRatio TC1r)
(check-expect (sortedTeamRatio TC1r)
              ' ( (crows 1.00)
                  (villanova 0.80)
                  (bulls 0.48)
                  (aces 0.47)
                  (xavier 0.40)
                  (baylor 0.33)
                  (cardinals 0.00) ))
"Output of topThree"
(topThree TC1r)
(check-expect (topThree TC1r)
              '( (crows 1.00)
                 (villanova 0.80)
                 (bulls 0.48) ))

"Team Records Tests"
(define TC2r
  ' ( (baylor 5 10)
      (cardinals 4 2)
      (villanova 4 1)
      (crows 6 3)
      (xavier 2 3)
      (aces 8 12)
      (bulls 5 10)))
"Test Case 2 Data"
TC2r
"Output of teamRatio"
(teamRatio TC2r)
(check-expect (teamRatio TC2r)
              '( (baylor 0.33)
                 (cardinals 0.67)
                 (villanova 0.80)
                 (crows 0.67)
                 (xavier 0.40)
                 (aces 0.40)
                 (bulls 0.33) ))
"Output of sortedTeamRatio"
(sortedTeamRatio TC2r)
(check-expect (sortedTeamRatio TC2r)
              ' ( (villanova 0.80)
                  (cardinals 0.67)
                  (crows 0.67)
                  (xavier 0.40)
                  (aces 0.40)
                  (baylor 0.33)
                  (bulls 0.33) ))
"Output of topThree"
(topThree TC2r)
(check-expect (topThree TC2r)
              ' ( (villanova 0.80)
                  (cardinals 0.67)
                  (crows 0.67)
                  (xavier 0.40)
                  (aces 0.40) ))

(define TC3r
  ' ( (baylor 0 10) (cardinals 0 2) (crows 0 3) (villanova 0 1) (xavier 0 3) ))
"Test Case 3 Data"
TC3r
"Output of teamRatio"
(teamRatio TC3r)
(check-expect (teamRatio TC3r)
              ' ( (baylor 0.00) (cardinals 0.00) (crows 0.00) (villanova 0.00) (xavier 0.00) ))
"Output of sortedTeamRatio"
(sortedTeamRatio TC3r)
(check-expect (sortedTeamRatio TC3r)
              ' ( (baylor 0.00) (cardinals 0.00) (crows 0.00) (villanova 0.00) (xavier 0.00) ))
"Output of topThree"
(topThree TC3r)
(check-expect (topThree TC3r)
              '( (baylor 0.00) (cardinals 0.00) (crows 0.00) (villanova 0.00) (xavier 0.00) ))

(define TC4r
  ' ( (baylor 15 0) (cardinals 4 2) (crows 6 0) (villanova 4 2) (xavier 2 1) (aces 8 4) (bulls 5 0) ))
"Test Case 4 Data"
TC4r
"Output of teamRatio"
(teamRatio TC4r)
(check-expect (teamRatio TC4r)
              '( (baylor 1.00) (cardinals 0.67) (crows 1.00) (villanova 0.67) (xavier 0.67) (aces 0.67) (bulls 1.00) ))
"Output of sortedTeamRatio"
(sortedTeamRatio TC4r)
(check-expect (sortedTeamRatio TC4r)
              '( (baylor 1.00) (crows 1.00) (bulls 1.00) (cardinals 0.67) (villanova 0.67) (xavier 0.67) (aces 0.67) ))
"Output of topThree"
(topThree TC4r)
(check-expect (topThree TC4r)
              '( (baylor 1.00) (crows 1.00) (bulls 1.00) (cardinals 0.67) (villanova 0.67) (xavier 0.67) (aces 0.67) ))

(define TC5r
  '( (baylor 5 10) (villanova 4 1) ))
"Test Case 5 Data"
TC5r
"Output of teamRatio"
(teamRatio TC5r)
(check-expect (teamRatio TC5r)
              '( (baylor 0.33) (villanova 0.80) ))
"Output of sortedTeamRatio"
(sortedTeamRatio TC5r)
(check-expect (sortedTeamRatio TC5r)
              '( (villanova 0.80) (baylor 0.33) ))
"Output of topThree"
(topThree TC5r)
(check-expect (topThree TC5r)
              '( (villanova 0.80) (baylor 0.33) ))

; A flatten function :)
(define (flatten l)
  (foldr append empty l))



; Helper function for totalPointsOnTeamByName
; It extracts the list that represents a single team from the teamsList
; (getTeamByName 'cardinals TC1s)
(define (getTeamByName name teamsList)
  (first (filter (lambda (x) (eq? (first x) name)) teamsList)))

; Helper function for below. Calculates the total number of points
; for a single team. Receives the pair that describes the team.
(define (totalPointsOnTeam team)
  (apply + (flatten (map second (rest team))  )))

; totalPoints(id): Returns the total number of points scored over the season
; by players on team id.
; The actual function must receive the team name and the whole team list.
(define (totalPointsOnTeamByName name teamsList)
  (totalPointsOnTeam (getTeamByName name teamsList)))

; averageScorePerPlayer(): Calculates the average score per player by
; combining the scores of all players on all teams in the league.
(define (averageScorePerPlayer teamList)
  (round2 (average (flatten
                    (map (lambda (t)
                           (flatten (map second (rest t))))
                         teamList)))))

; Helper function
; averageScorePerPlayerH(): Calculates the average score per player
; across all teams.
; Calculates the average scores of each player but keeps them separate maintaining the nested structure
; of the original team scores list.
(define (averageScorePerPlayerH teamList)
  (map 
   (lambda (team)(
                  list (first team)
                       (map (lambda(p) (list (first p) (average (second p)))) (rest team))
                       )
     )
   teamList))

; averageScoreTeam(id): Calculates the average of the average scores
; per player for team id.
; 
(define (averageScoreTeamByName name teamList)
  (round2
   (average
    (map +
         (map second
              (second (first (averageScorePerPlayerH (list (getTeamByName name teamList)))))
              )))))

; Gets the top numerical element in list l
(define (maxElementInList l)
  (argmax (lambda (x) x) l))

; maxScore(): Returns a list of pairs of player name and his/her max score for the season.
; NOTE: Are the team names expected to remain in the list
; Currently the team names are still in the list
(define (maxScore teamList)
  (map (lambda (x)
         (list (first x)
               (maxElementInList (second x))))
       (flatten (map rest teamList))))


; topThreeScorers(): Returns a list of the players obtaining one of
; the top 3 scores across all the teams.
; Note: What if there are several players with the same top score,
; the same 2nd to the top score etc. What should this function return? 
; The function needs to calculate the top 3 scores from all the scores
; in all the teams, and then it needs to identify all players who had one
; of those scores and put each of them into the final list returned.
; NOTE: Definitely not doing the note yet
(define (topThreeScorers teamList)
  (getTop (sort (maxScore teamList) greaterScore?) 3))

; Returns the teams with the top 3 win/lose ratios
; receives TEAM_RECORDS
(define (topThreeTeams teamList)
  (getTop (sortedTeamRatio teamList) 3))

"Team Scores Tests"
(define TC1s
  '( (cardinals (mary (2 14)) (james (10 2 3)) (alam (8 7 9)) ) ))
"Test Case 1 Data"
TC1s
"output of totalPoints(cardinals)"
(totalPointsOnTeamByName 'cardinals TC1s)
(check-expect (totalPointsOnTeamByName 'cardinals TC1s) 55)
"output of averageScorePerPlayer"
(averageScorePerPlayer TC1s)
(check-expect (averageScorePerPlayer TC1s) 6.88)
"output of averageScoreTeam(cardinals)"
(averageScoreTeamByName 'cardinals TC1s)
(check-expect (averageScoreTeamByName 'cardinals TC1s) 7.00)
"output of maxScore"
(maxScore TC1s)
(check-expect (maxScore TC1s) '((mary 14) (james 10) (alam 9)))
"output of topThreeScorers"
(topThreeScorers TC1s)
(check-expect (topThreeScorers TC1s) '((mary 14) (james 10) (alam 9)))

(define TC2s
  '( (cardinals (mary (2 14))
                (james (10 2 3))
                (alam (8 6 10)))
     (crows (joe (2))
            (sue (5 10 15 20))
            (frank (7 9)))))
"output of totalPoints(crows)"
(totalPointsOnTeamByName 'crows TC2s)
(check-expect (totalPointsOnTeamByName 'crows TC2s) 68)
"output of averageScorePerPlayer"
(averageScorePerPlayer TC2s)
(check-expect (averageScorePerPlayer TC2s) 8.20)
"output of averageScoreTeam(crows)"
(averageScoreTeamByName 'crows TC2s)
(check-expect (averageScoreTeamByName 'crows TC2s) 7.50)
"output of maxScore"
(maxScore TC2s)
(check-expect (maxScore TC2s)
              '((mary 14) (james 10) (alam 10) (joe 2) (sue 20) (frank 9)))
"output of topThreeScorers"
(topThreeScorers TC2s)
(check-expect (topThreeScorers TC2s) '((sue 20) (mary 14) (james 10) (alam 10)))

(define TC3s
  '( (cardinals (mary (2 14))
                (james (10 15 3)))
     (crows (joe (2))
            (sue (5 10 15 20))
            (frank (5 15)))
     (villanova (tom (3))
                (sally (15 20 18 17))
                (ruth (5 15)))
     (bulls (hardy (4 6))
            (john (15 15)))))
"Test Case 3 Data"
TC3s
"output of totalPoints(cardinals)"
(totalPointsOnTeamByName 'cardinals TC3s)
(check-expect (totalPointsOnTeamByName 'cardinals TC3s) 44)
"output of averageScorePerPlayer"
(averageScorePerPlayer TC3s)
(check-expect (averageScorePerPlayer TC3s) 10.83)
"output of averageScoreTeam(cardinals)"
(averageScoreTeamByName 'cardinals TC3s)
(check-expect (averageScoreTeamByName 'cardinals TC3s) 8.67)
"output of maxScore"
(maxScore TC3s)
(check-expect (maxScore TC3s)
              '((mary 14)
                (james 15)
                (joe 2)
                (sue 20)
                (frank 15)
                (tom 3)
                (sally 20)
                (ruth 15)
                (hardy 6)
                (john 15)))
"output of topThreeScorers"
(topThreeScorers TC3s)
(check-expect (topThreeScorers TC3s)
              '( (sue 20)
                 (sally 20)
                 (james 15)
                 (frank 15)
                 (ruth 15)
                 (john 15)
                 (mary 14)))

(define TC4s
  '( (cardinals (mary (25 15))
                (james (10 2 3))
                (alam (8 6 10)))
     (crows (joe (20))
            (sue (18 19 21 22))
            (frank (7 9)))
     (villanova (tom (3))
                (sally (15 20 18 17))
                (ruth (5 15)))
     (bulls (hardy (4 6))
            (john (17 18))))
  )
"Test Case 4 Data"
TC4s
"output of totalPoints(cardinals)"
(totalPointsOnTeamByName 'cardinals TC4s)
(check-expect (totalPointsOnTeamByName 'cardinals TC4s) 79)
"output of averageScorePerPlayer"
(averageScorePerPlayer TC4s)
(check-expect (averageScorePerPlayer TC4s) 12.81)
"output of averageScoreTeam(cardinals)"
(averageScoreTeamByName 'cardinals TC4s)
(check-expect (averageScoreTeamByName 'cardinals TC4s) 11.00)
"output of maxScore"
(maxScore TC4s)
(check-expect (maxScore TC4s)
              '((mary 25)
                (james 10)
                (alam 10)
                (joe 20)
                (sue 22)
                (frank 9)
                (tom 3)
                (sally 20)
                (ruth 15)
                (hardy 6)
                (john 18)))
"output of topThreeScorers"
(topThreeScorers TC4s)
(check-expect (topThreeScorers TC4s)
              '((mary 25) (sue 22) (joe 20) (sally 20)))

(define TC5s
  '( (cardinals (mary (2 14)) (james (10 15 3))) ))
"Test Case 5 Data"
TC5s
"output of totalPoints(cardinals)"
(totalPointsOnTeamByName 'cardinals TC5s)
(check-expect (totalPointsOnTeamByName 'cardinals TC5s) 44)
"output of averageScorePerPlayer"
(averageScorePerPlayer TC5s)
(check-expect (averageScorePerPlayer TC5s) 8.80)
"output of averageScoreTeam(cardinals)"
(averageScoreTeamByName 'cardinals TC5s)
(check-expect (averageScoreTeamByName 'cardinals TC5s) 8.67)
"output of maxScore"
(maxScore TC5s)
(check-expect (maxScore TC5s)  '((mary 14) (james 15)))
"output of topThreeScorers"
(topThreeScorers TC5s)
(check-expect (topThreeScorers TC5s) '((james 15) (mary 14)))

(define TC6s
  ' ( (cardinals (mary (0 0))
                 (james (0 0 0))
                 (alam (0 0 0)))
      (crows (joe (0))
             (sue (0 0 0 0))
             (frank (0 0)))))
"Test Case 6 Data"
TC6s
"output of totalPoints(cardinals)"
(totalPointsOnTeamByName 'cardinals TC6s)
(check-expect (totalPointsOnTeamByName 'cardinals TC6s) 0)
"output of averageScorePerPlayer"
(averageScorePerPlayer TC6s)
(check-expect (averageScorePerPlayer TC6s) 0.00)
"output of averageScoreTeam(cardinals)"
(averageScoreTeamByName 'cardinals TC6s)
(check-expect (averageScoreTeamByName 'cardinals TC6s) 0.00)
"output of maxScore"
(maxScore TC6s)
(check-expect (maxScore TC6s)
              '((mary 0) (james 0) (alam 0) (joe 0) (sue 0) (frank 0)))
"output of topThreeScorers"
(topThreeScorers TC6s)
(check-expect (topThreeScorers TC6s)
              '((mary 0) (james 0) (alam 0) (joe 0) (sue 0) (frank 0)))

(define TC7s
  ' ( (cardinals (mary (2 14)) (james (10 15 3)) (alam (14 2)))))
"Test Case 7 Data"
TC7s
"output of totalPoints(cardinals)"
(totalPointsOnTeamByName 'cardinals TC7s)
(check-expect (totalPointsOnTeamByName 'cardinals TC7s) 60)
"output of averageScorePerPlayer"
(averageScorePerPlayer TC7s)
(check-expect (averageScorePerPlayer TC7s) 8.57)
"output of averageScoreTeam(cardinals)"
(averageScoreTeamByName 'cardinals TC7s)
(check-expect (averageScoreTeamByName 'cardinals TC7s) 8.44)
"output of maxScore"
(maxScore TC7s)
(check-expect (maxScore TC7s)  '( (mary 14) (james 15) (alam 14) ))
"output of topThreeScorers"
(topThreeScorers TC7s)
(check-expect (topThreeScorers TC7s) '( (james 15) (mary 14) (alam 14) ))

; These 2 are "my own" higher-order functions
; For various purposes, the league might not want to read a teams/players based on scores
; These two functions facilitate the ordering alphabetically and remove all references to scores.

; Extra higher order functions
; Out of a team scorers list, keeps the names of all the players only
; The symbols are converted into strings to be able to sort the list alphabetically
(define (extractRoster team)
  (list (symbol->string (first team))
        (sort (map (compose symbol->string first)
                   (rest team))
              string<?)))
(check-expect (extractRoster (first TC4s))
              (list "cardinals" (list "alam" "james" "mary")))

; Removes all scores and orders teams and their players alphabetically
(define (allRosters teamList)
  (sort (map extractRoster teamList)
        (lambda (t1 t2) (string<? (first t1) (first t2)))))

(check-expect (allRosters TC4s)
              (list
                (list "bulls" (list "hardy" "john"))
                (list "cardinals" (list "alam" "james" "mary"))
                (list "crows" (list "frank" "joe" "sue"))
                (list "villanova" (list "ruth" "sally" "tom"))))