Strict

Private

Import bono

Public

Class FloatToStringCastTest Extends TestCase
    Method TestManualCast:Void()
        AssertEquals("12.0", String(12.0))
    End

    Method TestCastOnConcatination:Void()
        AssertEquals("12.0", "" + 12.0)
    End

    Method TestCastInFuncReturnStatement:Void()
        AssertEquals("12.0", DummyFunc(12.0))
    End

    Method DummyFunc:String(value:Float)
        Return "" + value
    End
End
