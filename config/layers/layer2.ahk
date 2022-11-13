layerMatrix.Push([
    {key: "q", function: (x)=>(SendInput("z")), file:"2"},
    {key: "w", function: (x)=>(SendInput("x")), file:"2"},
    {key: "e", function: (x)=>(SendInput("c")), file:"2"},
    {key: "r", function: (x)=>(SendInput("v")), file:"2"},
    {key: "t", function: (x)=>(SendInput("b")), file:"2"},
    {key: "y", function: (x)=>(SendInput("n")), file:"2"},
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