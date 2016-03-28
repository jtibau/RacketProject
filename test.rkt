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

(define (teamRatio teamList)
  (map (lambda (t)
         (list (first t) (/ (second t) (+ (second t)(third t))))
         )
       teamList
       )
  )

(define (compareTeams t1 t2)
  (cond
    [(> (second t1) (second t2)) #t ]
    [else #f]
    )
  )

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

(define (topThree teamList)
  (getFirstItems (sortedTeamRatio teamList) 3)
  )

(define (average l)
  (/ (apply + l) (length l))
  )

; removes the ids from the first team, keeps the score lists
;(map second (second (first TEAM_SCORES)))

(define (flatten l)
  (cond
    [(empty? l) (list)]
    [(list? (first l)) (append (flatten (first l)) (flatten (rest l)))]
    [else (cons (first l) (flatten (rest l)))]
    )
  )

(define (totalPointsOnTeam team)
  (apply + (flatten (map second (second team))  ))
  )

(define (totalPointsOnTeamByName name teamsList)
  (totalPointsOnTeam (first (filter (lambda (x) (eq? (first x) name)) teamsList)))
  )
  