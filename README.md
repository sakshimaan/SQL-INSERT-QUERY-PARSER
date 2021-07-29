# SQL-INSERT-QUERY-PARSER

SQL Insert Query Parser with LEX / YACC</br></br>
Simple parser for SQL Insert Statement, this tool is developed using Lex and Yacc.

The source file of yacc is defined in sql.y The source file of lex is defined in sql.l

<h3>Statement of the problem</h3>
Using lex/yacc implement a parser for the insert SQL statement.
The Syntax of Insert statement is

<h5>Format 1:</h5>
insert into <table-name> (col1, col2, col3, ...., coln) values (val1, val2, val3, ... , valn)

where the (col1, col2, col3, ..., coln) and values (val1, val2, val3, ... , valn) should have the 
same length.

<h5>Format 2:</h5>
insert into <table-name> values (val1, val2, val3, ... , valn)

<h5>Output:</h5> Valid/Invalid statement
        
 <h3>How to build</h3>
When using lex with yacc, either can be run first. The following command generates a parser in the file y.tab.c:

        $ yacc -vdy sql.y
Now invoke lex with the following command:

        $ flex sql.l
Now compile and link the output files with the command:

        $ gcc lex.yy.c y.tab.c
The execuatable is created in a.exe
