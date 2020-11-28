# TranslateFromCtoAssembly
Translate the following C code into assembly language program. All variables are to be allocated space on the stack
without using macros. In the program you are to use only register %o0 and %o1. All variables are to be accessed
from the stack such that at any time during program execution the latest values of the variables are located on the stack.
You are to execute the statements in the order given. Do not try to optimize your code(i.e. do not remote nops).

char ca;

short sb;

int ic;

char cd;

short se;

int ig;

ca =17;

cd = ca +23;

ic = -63 +ca

ig = ic +cd

sb = ic /ca

se = cd *sb +ic

