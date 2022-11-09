    PROGRAM testCallj
    class_name = "io.henks.helloworld.Greeting"
    method_name = "hello"
    param = "Henk"

    CALLJ class_name, method_name, param SETTING ret ON ERROR
        err = SYSTEM(0)
        CRT "Error code ": err
        RETURN
    END

    CRT ""
    CRT "Received from java ": ret
END
