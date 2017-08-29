$(document).ready(function () {
    var labels = []
    var datapoints = [3, 5, 9, 15, 4, 0, 12];
    var colors = ['#de0916', '#fd9e31', '#45fd4e', '#1ca2fd', '#156dfc', '#fd2cfc', '#440b7b'];
    for (var n = 0; n < datapoints.length; n++) {
        labels.push('point ' + datapoints[n]);
    }
    console.log(labels);
    var ctx = document.getElementById("myChart1").getContext('2d');
    var thisChart = new Chart(ctx, {
        type: 'doughnut',
        data: {
            labels: [
                labels[0],
                labels[1],
                labels[2],
                labels[3],
                labels[4],
                labels[5],
                labels[6],
            ],
            datasets: [{
                data: [
                    datapoints[0],
                    datapoints[1],
                    datapoints[2],
                    datapoints[3],
                    datapoints[4],
                    datapoints[5],
                    datapoints[6]
                ],
                backgroundColor: [
                    colors[0],
                    colors[1],
                    colors[2],
                    colors[3],
                    colors[4],
                    colors[5],
                    colors[6]
                ],
                borderColor: [
                    colors[0],
                    colors[1],
                    colors[2],
                    colors[3],
                    colors[4],
                    colors[5],
                    colors[6]
                ]
            }]
        },
        options: {
            animation: {
                animateRotate: true,
                animateScale: true
            }
        }

    });
})