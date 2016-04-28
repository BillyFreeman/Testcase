$(function () {
    var pieChartCanvas = $("#pieChart").get(0).getContext("2d");
    var pieChart = new Chart(pieChartCanvas);
    var pieOptions = {
        //Boolean - Whether we should show a stroke on each segment
        segmentShowStroke: true,
        //String - The colour of each segment stroke
        segmentStrokeColor: "#fff",
        //Number - The width of each segment stroke
        segmentStrokeWidth: 1,
        //Number - The percentage of the chart that we cut out of the middle
        percentageInnerCutout: 50, // This is 0 for Pie charts
        //Number - Amount of animation steps
        animationSteps: 100,
        //String - Animation easing effect
        animationEasing: "easeOutBounce",
        //Boolean - Whether we animate the rotation of the Doughnut
        animateRotate: true,
        //Boolean - Whether we animate scaling the Doughnut from the centre
        animateScale: false,
        //Boolean - whether to make the chart responsive to window resizing
        responsive: true,
        // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
        maintainAspectRatio: false,
        //String - A legend template
        legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<segments.length; i++){%><li><span style=\"background-color:<%=segments[i].fillColor%>\"></span><%if(segments[i].label){%><%=segments[i].label%><%}%></li><%}%></ul>",
        //String - A tooltip template
        tooltipTemplate: "<%=value %> <%=label%> engines"
    };

    $.getJSON('api/engines.json', {}, function (json) {
        var donutChartData = [];
        var colorIterator = new ColorIterator();
        $.each(json, function (i, val) {
            //Checks if donutChartData array contains specified engine. If not - adds new engine element to the array
            if (!incrementExistingValue(donutChartData, val.name)) {
                var colorObj = colorIterator.getNextColor();
                donutChartData.push({
                    value: 1,
                    color: colorObj.hex,
                    highlight: colorObj.hex,
                    label: val.name,
                    //
                    colorClassName: colorObj.className
                });
            }
        });
        //
        insertChartLegendDOMElements(donutChartData);
        //Create donut chart
        // You can switch between pie and douhnut using the method below.
        pieChart.Doughnut(donutChartData, pieOptions);
    });
});

//If donutChartData array allready contains current engine, function increments engines amount field ("value") end return true.
//Otherwise return false
var incrementExistingValue = function (collection, target) {
    for (var i = 0; i < collection.length; i++) {
        if (collection[i].label === target) {
            collection[i].value++;
            return true;
        }
    }
    ;
    return false;
}

//create chart legend "i" elements using bootstrap text-color class and label, defined in donutChartData array
var insertChartLegendDOMElements = function (chartData) {
    var container = $("#donut-chart-legend");
    for (var i = 0; i < chartData.length; i++) {
        container.append("<li><i class='fa fa-circle-o " + chartData[i].colorClassName + "'></i> " + chartData[i].label + "</li>");
    }
};

//An object containing array of predefined colours. Not the best solution if the number of chart elements will increase
var ColorIterator = function () {
    this.currentPos = 0;
    this.colorArray = [
        {
            className: "text-red",
            hex: "#F56954"
        },
        {
            className: "text-green",
            hex: "#00A65A"
        },
        {
            className: "text-yellow",
            hex: "#F39C12"
        },
        {
            className: "text-aqua",
            hex: "#00C0EF"
        },
        {
            className: "text-light-blue",
            hex: "#3C8DBC"
        },
        {
            className: "text-gray",
            hex: "#D2D6DE"
        },
        {
            className: "text-muted",
            hex: "#8D778D"
        },
        {
            className: "text-purple",
            hex: "#605CA8"
        }
    ];
    this.getNextColor = function () {
        this.currentPos = this.currentPos < this.colorArray.length ? this.currentPos : 0;
        var color = this.colorArray[this.currentPos];
        this.currentPos++;
        return color;
    }
}
