SELECT tab0.v1 AS v1 , tab2.v0 AS v0 , tab5.v5 AS v5 , tab3.v4 AS v4 , tab4.v6 AS v6 , tab1.v2 AS v2 
 FROM    (SELECT sub AS v0 
	 FROM wsdbm__hasGenre$$3$$
	 
	 WHERE obj = 'wsdbm:SubGenre95'
	) tab2
 JOIN    (SELECT sub AS v0 , obj AS v2 
	 FROM sorg__contentSize$$2$$
	
	) tab1
 ON(tab2.v0=tab1.v0)
 JOIN    (SELECT obj AS v1 , sub AS v0 
	 FROM sorg__contentRating$$1$$
	
	) tab0
 ON(tab1.v0=tab0.v0)
 JOIN    (SELECT obj AS v0 , sub AS v5 
	 FROM wsdbm__purchaseFor$$6$$
	
	) tab5
 ON(tab0.v0=tab5.v0)
 JOIN    (SELECT sub AS v5 , obj AS v6 
	 FROM wsdbm__purchaseDate$$5$$
	
	) tab4
 ON(tab5.v5=tab4.v5)
 JOIN    (SELECT obj AS v5 , sub AS v4 
	 FROM wsdbm__makesPurchase$$4$$
	
	) tab3
 ON(tab4.v5=tab3.v5)


++++++Tables Statistic
wsdbm__purchaseDate$$5$$	0	VP	wsdbm__purchaseDate/
	VP	<wsdbm__purchaseDate>	4519
------
wsdbm__purchaseFor$$6$$	0	VP	wsdbm__purchaseFor/
	VP	<wsdbm__purchaseFor>	15000
------
wsdbm__hasGenre$$3$$	0	VP	wsdbm__hasGenre/
	VP	<wsdbm__hasGenre>	5961
------
sorg__contentSize$$2$$	0	VP	sorg__contentSize/
	VP	<sorg__contentSize>	245
------
sorg__contentRating$$1$$	0	VP	sorg__contentRating/
	VP	<sorg__contentRating>	749
------
wsdbm__makesPurchase$$4$$	0	VP	wsdbm__makesPurchase/
	VP	<wsdbm__makesPurchase>	15000
------
