Strict

Private

Import bono
Import bugs.floattostringcasttest
Import bugs.resizeemptyarraytest
Import bugs.wontcompileonandroidtest

Public

Function Main:Int()
    Local report:TestReportSimple = New TestReportSimple()
    report.verbose = True

    Local suite:TestSuite = New TestSuite()
    suite.Autodiscover()
    suite.Run(report)

    Return 0
End
