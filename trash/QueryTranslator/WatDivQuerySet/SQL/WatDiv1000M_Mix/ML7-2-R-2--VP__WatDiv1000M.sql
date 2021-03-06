SELECT tab0.v1 AS v1 , tab6.v7 AS v7 , tab4.v5 AS v5 , tab5.v6 AS v6 , tab3.v4 AS v4 , tab2.v3 AS v3 , tab1.v2 AS v2 
 FROM    (SELECT obj AS v1 
	 FROM sorg__contactPoint$$1$$
	 
	 WHERE sub = 'wsdbm:Retailer16582'
	) tab0
 JOIN    (SELECT sub AS v1 , obj AS v2 
	 FROM wsdbm__likes$$2$$
	) tab1
 ON(tab0.v1=tab1.v1)
 JOIN    (SELECT obj AS v3 , sub AS v2 
	 FROM sorg__author$$3$$
	) tab2
 ON(tab1.v2=tab2.v2)
 JOIN    (SELECT obj AS v4 , sub AS v3 
	 FROM wsdbm__follows$$4$$
	
	) tab3
 ON(tab2.v3=tab3.v3)
 JOIN    (SELECT obj AS v5 , sub AS v4 
	 FROM wsdbm__makesPurchase$$5$$
	
	) tab4
 ON(tab3.v4=tab4.v4)
 JOIN    (SELECT sub AS v5 , obj AS v6 
	 FROM wsdbm__purchaseFor$$6$$
	
	) tab5
 ON(tab4.v5=tab5.v5)
 JOIN    (SELECT obj AS v7 , sub AS v6 
	 FROM og__tag$$7$$
	) tab6
 ON(tab5.v6=tab6.v6)


++++++Tables Statistic
og__tag$$7$$	0	VP	og__tag/
	VP	<og__tag>	14987949
------
wsdbm__makesPurchase$$5$$	0	VP	wsdbm__makesPurchase/
	VP	<wsdbm__makesPurchase>	14999930
------
wsdbm__follows$$4$$	0	VP	wsdbm__follows/
	VP	<wsdbm__follows>	327487530
------
wsdbm__purchaseFor$$6$$	0	VP	wsdbm__purchaseFor/
	VP	<wsdbm__purchaseFor>	15000000
------
sorg__contactPoint$$1$$	0	VP	sorg__contactPoint/
	VP	<sorg__contactPoint>	95822
------
sorg__author$$3$$	0	VP	sorg__author/
	VP	<sorg__author>	399974
------
wsdbm__likes$$2$$	0	VP	wsdbm__likes/
	VP	<wsdbm__likes>	11246476
------
