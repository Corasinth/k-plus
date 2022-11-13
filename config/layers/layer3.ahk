layerMatrix.Push([
    {key: "q", function: (x)=>(SendInput("u")), file:"3"},
    {key: "w", function: (x)=>(SendInput("i")), file:"3"},
    {key: "e", function: (x)=>(SendInput("o")), file:"3"},
    {key: "r", function: (x)=>(SendInput("j")), file:"3"},
    {key: "t", function: (x)=>(SendInput("k")), file:"3"},
    {key: "y", function: (x)=>(SendInput("l")), file:"3"},
    {
        key: "1", 
        function: (x)=>(
            toggleLayers(1)
        )
    },
    {
        key: "2", 
        function: (x)=>(
            toggleLayers(2)
        )
    },
    {
        key: "3", 
        function: (x)=>(
            toggleLayers(3)
        )
    },
])