Strict

Private

Import bono

Public

Class ResizeEmptyArrayTest Extends TestCase
    Method TestResizeWithItems:Void()
        Local arr:Int[] = [1]
        AssertEquals(1, arr.Length())

        arr = arr.Resize(2)
        AssertEquals(2, arr.Length())
    End

    Method TestResizeEmptyAfterAssignment:Void()
        Local arr:Int[] = []
        AssertEquals(0, arr.Length())

        arr = arr.Resize(1)
        AssertEquals(1, arr.Length())
    End

    Method TestResizeEmptyDirect:Void()
        Local arr:Int[] = [].Resize(1)
        AssertEquals(1, arr.Length())
    End
End
