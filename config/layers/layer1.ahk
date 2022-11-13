layerMatrix.push([
    {key: "q", function: (x)=>(SendInput("a")), file:"1"},
    {key: "w", function: (x)=>(SendInput("s")), file:"1"},
    {key: "e", function: (x)=>(SendInput("d")), file:"1"},
    {key: "r", function: (x)=>(SendInput("f")), file:"1"},
    {key: "t", function: (x)=>(SendInput("g")), file:"1"},
    {key: "y", function: (x)=>(SendInput("h")), file:"1"},
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