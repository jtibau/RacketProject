;Input type 1 (Team_record_list):
;================================
;
;	test case 1:
;       "normal" test case: each team has distinct ratio
;	input list
 ( (baylor 5 10) (cardinals 0 2) (crows 3 0) (villanova 4 1) (xavier 2 3) (aces 7 8) (bulls 10 11) )
;	output of teamRatio
 ( (baylor 0.33) (cardinals 0.00) (crows 1.00) (villanova 0.80) (xavier 0.40) (aces 0.47) (bulls 0.48) )
;	output of sortedTeamRatio
 ( (crows 1.00) (villanova 0.80) (bulls 0.48) (aces 0.47) (xavier 0.40) (baylor 0.33) (cardinals 0.00) )
;	output of topThree
 ( (crows 1.00) (villanova 0.80) (bulls 0.48) )
	
;	test case 2:
;       "normal" test case: multiple teams have the same ratio
;	input list
 ( (baylor 5 10) (cardinals 4 2)  (villanova 4 1) (crows 6 3) (xavier 2 3) (aces 8 12) (bulls 5 10) )
;	output of teamRatio
 ( (baylor 0.33) (cardinals 0.67) (villanova 0.80) (crows 0.67) (xavier 0.40) (aces 0.40) (bulls 0.33) )
;	output of sortedTeamRatio
 ( (villanova 0.80) (cardinals 0.67) (crows 0.67) (xavier 0.40) (aces 0.40) (baylor 0.33) (bulls 0.33) )
;	output of topThree
 ( (villanova 0.80) (cardinals 0.67) (crows 0.67) (xavier 0.40) (aces 0.40) )
	
;Error cases: less than 3 distinct top scores or less than 3 teams
;
;	test case 3:
;       special/error test case: all the teams have the same ratio 0.00 so only 1 top score 0.00
;	check what the topThree() function prints
;	input list
 ( (baylor 0 10) (cardinals 0 2) (crows 0 3) (villanova 0 1) (xavier 0 3) )
;	output of teamRatio
 ( (baylor 0.00) (cardinals 0.00) (crows 0.00) (villanova 0.00) (xavier 0.00) )
;	output of sortedTeamRatio
 ( (baylor 0.00) (cardinals 0.00) (crows 0.00) (villanova 0.00) (xavier 0.00) )
;	output of topThree
 ( (baylor 0.00) (cardinals 0.00) (crows 0.00) (villanova 0.00) (xavier 0.00) )
	
;	test case 4:
;	special/error test case: there are only two top scores 1.00 and 0.67
;	check what the topThree() function prints
;	input list
 ( (baylor 15 0) (cardinals 4 2) (crows 6 0) (villanova 4 2) (xavier 2 1) (aces 8 4) (bulls 5 0) )
;	output of teamRatio
 ( (baylor 1.00) (cardinals 0.67) (crows 1.00) (villanova 0.67) (xavier 0.67) (aces 0.67) (bulls 1.00) )
;	output of sortedTeamRatio
 ( (baylor 1.00) (bulls 1.00) (crows 1.00) (cardinals 0.67) (villanova 0.67) (xavier 0.67) (aces 0.67) )
;	output of topThree
 ( (baylor 1.00) (bulls 1.00) (crows 1.00) (cardinals 0.67) (villanova 0.67) (xavier 0.67) (aces 0.67) )
	
;	test case 5:
;	special/error test case: there are only two teams, check what the topThree() function prints
;	check what the topThree() function prints
;	input list
 ( (baylor 5 10) (villanova 4 1) )
;	output of teamRatio
 ( (baylor 0.33) (villanova 0.80) )
;	output of sortedTeamRatio
 ( (villanova 0.80) (baylor 0.33) )
;	output of topThree
 ( (villanova 0.80) (baylor 0.33) )
