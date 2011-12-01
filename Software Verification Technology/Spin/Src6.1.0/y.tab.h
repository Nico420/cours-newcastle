
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     ASSERT = 258,
     PRINT = 259,
     PRINTM = 260,
     C_CODE = 261,
     C_DECL = 262,
     C_EXPR = 263,
     C_STATE = 264,
     C_TRACK = 265,
     RUN = 266,
     LEN = 267,
     ENABLED = 268,
     EVAL = 269,
     PC_VAL = 270,
     TYPEDEF = 271,
     MTYPE = 272,
     INLINE = 273,
     LABEL = 274,
     OF = 275,
     GOTO = 276,
     BREAK = 277,
     ELSE = 278,
     SEMI = 279,
     IF = 280,
     FI = 281,
     DO = 282,
     OD = 283,
     FOR = 284,
     SELECT = 285,
     IN = 286,
     SEP = 287,
     DOTDOT = 288,
     ATOMIC = 289,
     NON_ATOMIC = 290,
     D_STEP = 291,
     UNLESS = 292,
     TIMEOUT = 293,
     NONPROGRESS = 294,
     ACTIVE = 295,
     PROCTYPE = 296,
     D_PROCTYPE = 297,
     HIDDEN = 298,
     SHOW = 299,
     ISLOCAL = 300,
     PRIORITY = 301,
     PROVIDED = 302,
     FULL = 303,
     EMPTY = 304,
     NFULL = 305,
     NEMPTY = 306,
     CONST = 307,
     TYPE = 308,
     XU = 309,
     NAME = 310,
     UNAME = 311,
     PNAME = 312,
     INAME = 313,
     STRING = 314,
     CLAIM = 315,
     TRACE = 316,
     INIT = 317,
     LTL = 318,
     ASGN = 319,
     R_RCV = 320,
     RCV = 321,
     O_SND = 322,
     SND = 323,
     EQUIV = 324,
     IMPLIES = 325,
     OR = 326,
     AND = 327,
     EVENTUALLY = 328,
     ALWAYS = 329,
     RELEASE = 330,
     WEAK_UNTIL = 331,
     UNTIL = 332,
     NEXT = 333,
     NE = 334,
     EQ = 335,
     LE = 336,
     GE = 337,
     LT = 338,
     GT = 339,
     RSHIFT = 340,
     LSHIFT = 341,
     DECR = 342,
     INCR = 343,
     NEG = 344,
     UMIN = 345,
     DOT = 346
   };
#endif
/* Tokens.  */
#define ASSERT 258
#define PRINT 259
#define PRINTM 260
#define C_CODE 261
#define C_DECL 262
#define C_EXPR 263
#define C_STATE 264
#define C_TRACK 265
#define RUN 266
#define LEN 267
#define ENABLED 268
#define EVAL 269
#define PC_VAL 270
#define TYPEDEF 271
#define MTYPE 272
#define INLINE 273
#define LABEL 274
#define OF 275
#define GOTO 276
#define BREAK 277
#define ELSE 278
#define SEMI 279
#define IF 280
#define FI 281
#define DO 282
#define OD 283
#define FOR 284
#define SELECT 285
#define IN 286
#define SEP 287
#define DOTDOT 288
#define ATOMIC 289
#define NON_ATOMIC 290
#define D_STEP 291
#define UNLESS 292
#define TIMEOUT 293
#define NONPROGRESS 294
#define ACTIVE 295
#define PROCTYPE 296
#define D_PROCTYPE 297
#define HIDDEN 298
#define SHOW 299
#define ISLOCAL 300
#define PRIORITY 301
#define PROVIDED 302
#define FULL 303
#define EMPTY 304
#define NFULL 305
#define NEMPTY 306
#define CONST 307
#define TYPE 308
#define XU 309
#define NAME 310
#define UNAME 311
#define PNAME 312
#define INAME 313
#define STRING 314
#define CLAIM 315
#define TRACE 316
#define INIT 317
#define LTL 318
#define ASGN 319
#define R_RCV 320
#define RCV 321
#define O_SND 322
#define SND 323
#define EQUIV 324
#define IMPLIES 325
#define OR 326
#define AND 327
#define EVENTUALLY 328
#define ALWAYS 329
#define RELEASE 330
#define WEAK_UNTIL 331
#define UNTIL 332
#define NEXT 333
#define NE 334
#define EQ 335
#define LE 336
#define GE 337
#define LT 338
#define GT 339
#define RSHIFT 340
#define LSHIFT 341
#define DECR 342
#define INCR 343
#define NEG 344
#define UMIN 345
#define DOT 346




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


