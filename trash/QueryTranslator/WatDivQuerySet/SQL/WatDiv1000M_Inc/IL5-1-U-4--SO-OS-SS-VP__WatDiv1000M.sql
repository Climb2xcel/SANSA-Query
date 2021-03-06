SELECT tab0.v1 AS v1 , tab4.v5 AS v5 , tab3.v4 AS v4 , tab2.v3 AS v3 , tab1.v2 AS v2 
 FROM    (SELECT obj AS v1 
	 FROM wsdbm__follows$$1$$
	 
	 WHERE sub = 'wsdbm:User7861426'
	) tab0
 JOIN    (SELECT sub AS v1 , obj AS v2 
	 FROM wsdbm__likes$$2$$
	) tab1
 ON(tab0.v1=tab1.v1)
 JOIN    (SELECT obj AS v3 , sub AS v2 
	 FROM rev__hasReview$$3$$
	
	) tab2
 ON(tab1.v2=tab2.v2)
 JOIN    (SELECT obj AS v4 , sub AS v3 
	 FROM rev__reviewer$$4$$
	
	) tab3
 ON(tab2.v3=tab3.v3)
 JOIN    (SELECT obj AS v5 , sub AS v4 
	 FROM wsdbm__friendOf$$5$$
	
	) tab4
 ON(tab3.v4=tab4.v4)


++++++Tables Statistic
wsdbm__likes$$2$$	2	OS	wsdbm__likes/rev__hasReview
	VP	<wsdbm__likes>	11246476
	SO	<wsdbm__likes><wsdbm__follows>	10131513	0.9
	OS	<wsdbm__likes><rev__hasReview>	2148995	0.19
------
rev__reviewer$$4$$	2	OS	rev__reviewer/wsdbm__friendOf
	VP	<rev__reviewer>	15000000
	SO	<rev__reviewer><rev__hasReview>	14789439	0.99
	OS	<rev__reviewer><wsdbm__friendOf>	5991501	0.4
------
rev__hasReview$$3$$	1	SO	rev__hasReview/wsdbm__likes
	VP	<rev__hasReview>	14789439
	SO	<rev__hasReview><wsdbm__likes>	13979801	0.95
	OS	<rev__hasReview><rev__reviewer>	14789439	1.0
------
wsdbm__follows$$1$$	1	OS	wsdbm__follows/wsdbm__likes
	VP	<wsdbm__follows>	327487530
	OS	<wsdbm__follows><wsdbm__likes>	77832476	0.24
------
wsdbm__friendOf$$5$$	1	SO	wsdbm__friendOf/rev__reviewer
	VP	<wsdbm__friendOf>	449969341
	SO	<wsdbm__friendOf><rev__reviewer>	139006924	0.31
------
