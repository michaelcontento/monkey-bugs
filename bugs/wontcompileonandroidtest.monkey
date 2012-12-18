Strict

Private

Import bono

Public

Class WontCompileOnAndroidTest Extends TestCase
    Const TRUE_CONST:Bool = True

    Method TestThisWontCompile:String()
        If TRUE_CONST Then Return "A"
        Return "B"
    End

    ' Generated code:
    ' ===============
    '
    ' 3687 class bb_wontcompileonandroidtest_WontCompileOnAndroidTest extends bb_testcase_TestCase{
    ' 3688     public String m_TestThisWontCompile(){
    ' 3689         if(true){
    ' 3690             return "A";
    ' 3691         }
    ' 3692     }
    ' 3693     public bb_wontcompileonandroidtest_WontCompileOnAndroidTest g_new(){
    ' 3694         super.g_new();
    ' 3695         return this;
    ' 3696     }
    ' 3697 }
    '
    ' Error message:
    ' ==============
    '
    ' [javac] Compiling 3 source files to /monkey-bugs/runall.build/android/bin/classes
    ' [javac] /monkey-bugs/runall.build/android/src/com/monkey/MonkeyGame.java:3692: missing return statement
    ' [javac]    }
    ' [javac]    ^
    ' [javac] Note: /monkey-bugs/runall.build/android/src/com/monkey/MonkeyGame.java uses unchecked or unsafe operations.
    ' [javac] Note: Recompile with -Xlint:unchecked for details.
    ' [javac] 1 error
End
