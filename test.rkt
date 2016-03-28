;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname test) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define TEAM_SCORES
  (list
   (list
    'Gary
    (list
     (list 'Arcanine (list 6 6 6 6 6 6 6 6 6))
     (list 'Pidgeot (list 0 0 0 0 2 1 1 2 0))
     (list 'Eevee (list 0 0 0 0 1 1 1 2 0))
     (list 'Scyther (list 2 3 3 3 3 3 4 3 3))
     (list 'Dragonite (list 4 3 4 4 3 5 5 6 5))
     (list 'Blastoise (list 5 5 5 6 6 6 6 6 6))))
   (list
    'Ash
    (list
     (list 'Pikachu (list 5 6 6 6 6 6 6 6 6))
     (list 'Krabby (list 2 1 0 1 3 2 2 2 1))
     (list 'Butterfree (list 2 1 1 1 3 2 2 2 2))
     (list 'Lapras (list 3 3 4 4 3 5 5 6 5))
     (list 'Snorlax (list 3 3 3 4 3 5 5 6 5))
     (list 'Charizard (list 4 4 5 4 3 6 5 6 5))))
   (list
    'Misty
    (list
     (list 'Gyarados (list 2 2 3 3 3 3 4 3 3))
     (list 'Seaking (list 2 2 3 2 3 2 2 3 3))
     (list 'Seadra (list 4 5 5 4 3 6 5 6 5))
     (list 'Starmie (list 5 5 5 6 6 6 6 6 6))
     (list 'Golduck (list 4 4 5 4 3 6 5 6 5))
     (list 'Slowbro (list 2 0 0 1 3 2 2 2 0))))
   (list
    'Brock
    (list
     (list 'Onix (list 3 3 3 4 3 5 5 6 5))
     (list 'Golbat (list 2 1 1 1 3 2 2 2 2))
     (list 'Sandshrew (list 2 2 1 1 3 2 2 3 2))
     (list 'Rhydon (list 2 2 1 1 3 2 2 3 3))
     (list 'Ninetails (list 5 5 6 6 6 6 6 6 6))
     (list 'Golem (list 4 4 3 4 3 5 5 6 5))))
   (list
    'Oak
    (list
     (list 'Taurus (list 4 5 5 5 4 6 6 6 6))
     (list 'Bulbasaur (list 2 2 1 3 3 2 2 3 3))
     (list 'Exeggutor (list 2 0 0 0 2 1 1 2 0))
     (list 'Charmander (list 3 2 3 3 3 3 4 4 3))
     (list 'Squirtle (list 2 2 2 3 3 3 4 3 3))
     (list 'Pidgey (list 4 5 5 5 6 6 6 6 6))))
   (list
    'Jessie
    (list
     (list 'Meowth (list 4 5 5 5 5 6 6 6 6))
     (list 'Lickitung (list 1 0 0 0 0 1 1 2 0))
     (list 'Kingler (list 4 5 5 5 5 6 6 6 6))
     (list 'Arbok (list 4 5 5 5 4 6 6 6 5))
     (list 'Rattata (list 0 0 0 0 0 1 1 1 0))
     (list 'Ekans (list 2 0 0 0 1 1 1 2 0))))
   (list
    'James
    (list
     (list 'Weezing (list 4 4 3 5 4 3 5 6 5))
     (list 'Persian (list 3 2 3 3 4 3 5 6 4))
     (list 'Growlithe (list 3 2 3 3 4 3 4 4 3))
     (list 'Victreebell (list 0 0 0 0 0 0 1 1 0))
     (list 'Magikarp (list 2 0 0 0 1 3 2 2 0))
     (list 'Koffing (list 2 2 2 3 2 3 2 3 3))))
   (list
    'Joy
    (list
     (list 'Chansey (list 3 2 3 3 4 3 4 4 3))
     (list 'Jigglypuff (list 2 2 2 3 2 3 3 3 3))
     (list 'Electabuzz (list 2 0 0 0 1 3 1 2 0))
     (list 'Clefairy (list 0 0 0 0 0 0 0 1 0))
     (list 'Ponyta (list 4 5 5 5 4 3 6 6 5))
     (list 'Weepinbell (list 2 2 2 3 2 3 3 3 3))))
   (list
    'Giovanni
    (list
     (list 'Dugtrio (list 3 2 3 3 4 3 4 5 4))
     (list 'Kangaskhan (list 0 0 0 0 0 0 0 0 0))
     (list 'Rhyhorn (list 0 0 0 0 0 1 1 1 0))
     (list 'Nidoking (list 3 2 3 3 3 3 3 4 3))
     (list 'Nidoqueen (list 3 2 3 3 4 3 4 5 4))
     (list 'Mewtwo (list 2 2 1 1 1 3 2 2 2))))
   (list
    'Leaf
    (list
     (list 'Vileplume (list 2 0 1 0 1 3 2 2 2))
     (list 'Ditto (list 3 2 3 3 4 3 4 5 4))
     (list 'Wigglytuff (list 2 1 1 0 1 3 2 2 2))
     (list 'Venusaur (list 4 5 5 5 4 4 6 6 6))
     (list 'Abra (list 3 2 3 3 4 3 5 5 6))
     (list 'Weedle (list 2 2 1 2 1 3 2 2 3)))))
  )


(define TEAM_RECORDS
  (list
   (list 'Gary 6 2)
   (list 'Ash 8 0)
   (list 'Misty 8 0)
   (list 'Brock 5 3)
   (list 'Oak 6 3)
   (list 'Jessie 3 6)
   (list 'James 2 7)
   (list 'Joy 1 8)
   (list 'Giovanni 0 9)
   (list 'Leaf 4 5))
  )

; teamRatio(): Calculates the ratio of wins to lossses for each team
; and returns it as a list of pairs: team_name, team_win_loss_ratio.
(define (teamRatio teamList)
  (map (lambda (t)
         (list (first t) (/ (second t) (+ (second t)(third t)))))
       
       teamList
       )
  )

(define (compareTeams t1 t2)
  (cond
    [(> (second t1) (second t2)) #t ]
    [else #f]
    )
  )

; sortedTeamRatio(): Returns the team_ratio pairs in a list sorted
; in order by team_ratio, highest to lowest from front of the list.
; Note if 2 teams have the same team_ratio they must appear next to
; each other in either order in the returned list.
; NOTE: The part in the note above has not been implemented
(define (sortedTeamRatio teamList)
  (sort (teamRatio teamList) compareTeams)
  )

; Helper function receives a list and a number < lenght of the list
(define (getFirstItems l n)
  (cond
    [(> n 0) (cons (first l) (getFirstItems (rest l) (- n 1)))]
    [else empty]
    )
  )

; topThree(): Calculates the top three teams in terms of their win_loss_ratios.
; The return value of this function will be the top three team names in a list
; in order of highest ratio to lowest.
; NOTE: Not implemented multiple equal scores
(define (topThree teamList)
  (getFirstItems (sortedTeamRatio teamList) 3)
  )

(define (flatten l)
  (cond
    [(empty? l) (list)]
    [(list? (first l)) (append (flatten (first l)) (flatten (rest l)))]
    [else (cons (first l) (flatten (rest l)))]
    )
  )

; Helper function for below. Calculates the total number of points
; for a single team. Receives the pair that describes the team.
(define (totalPointsOnTeam team)
  (apply + (flatten (map second (second team))  ))
  )

; Helper function
(define (getTeamByName name teamsList)
  (first (filter (lambda (x) (eq? (first x) name)) teamsList))
  )

; totalPoints(id): Returns the total number of points scored over the season
; by players on team id.
; The actual function must receive the team name and the whole team list.
(define (totalPointsOnTeamByName name teamsList)
  (totalPointsOnTeam (getTeamByName name teamsList))
  )

; Calculates average of a list, should crash on empty list
(define (average l)
  (/ (apply + l) (length l))
  )

; averageScorePerPlayer(): Calculates the average score per player
; across all teams.
(define (averageScorePerPlayer teamList)
  (map 
   (lambda (team)(
                  list (first team)
                       (map (lambda(p)(list (first p)(average (second p)))) (second team))
                       )
     )
   teamList))

; averageScoreTeam(id): Calculates the average of the average scores
; per player for team id.
(define (averageScoreTeamByName name teamList)
  (first (averageScorePerPlayer (list (getTeamByName name teamList))))
  )

(define (maxElementInList l)
  (argmax (lambda (x) x) l)
  )

; maxScore(): Returns a list of pairs of player name and his/her max score for the season.
; NOTE: Are the team names expected to remain in the list
; Currently the team names are still in the list
(define (maxScore teamList)
  (map 
   (lambda (team)(
                  list (first team)
                       (map (lambda(p)(list (first p)(maxElementInList (second p)))) (second team))
                       )
     )
   teamList))

; Helper function
(define (flattenOneLevel l)
  (foldr append empty l)
  )

; Consider renaming "compareTeams" function to "compareBasedOnSecond"
(define (sortScorers teamList)
  (sort (flattenOneLevel (map (lambda (x) (second x)) (maxScore teamList))) compareTeams)
  )

; topThreeScorers(): Returns a list of the players obtaining one of
; the top 3 scores across all the teams.
; Note: What if there are several players with the same top score,
; the same 2nd to the top score etc. What should this function return? 
; The function needs to calculate the top 3 scores from all the scores
; in all the teams, and then it needs to identify all players who had one
; of those scores and put each of them into the final list returned.
; NOTE: Definitely not doing the note yet
(define (topThreeScorers teamList)
  (getFirstItems (sortScorers teamList) 3)
  )


(define (tiedTeams? t1 t2)
  ( = (second t1) (second t2) )
  )

; expects an ordered list and using the equalsFunction, returns the top elements
; given that elements can be of the same value, it returns the all elements with
; the top n values.
(define (getTop l n)
  (cond
    [(> n 0)(cond
              [(tiedTeams? (first l) (second l)) (cons (first l) (getTop (rest l) n))]
              [else (cons (first l) (getTop (rest l) (- n 1)))])
            ]
    [else empty])
  )

; Function returns the players with the top 3 scores
; receives TEAM_SCORES
(define (topThreeScorersR teamList)
  (getTop (sortScorers teamList) 3)
  )

; Returns the teams with the top 3 win/lose ratios
; receives TEAM_RECORDS
(define (topThreeTeams teamList)
  (getTop (sortedTeamRatio teamList) 3)
  )