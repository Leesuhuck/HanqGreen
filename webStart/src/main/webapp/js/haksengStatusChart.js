/*!
 * Chart.js v2.9.3
 * https://www.chartjs.org
 * (c) 2019 Chart.js Contributors
 * Released under the MIT License
 */
var config = {
				type: 'pie',
				data: {
					datasets: [{
						data: [1, 3, 2, 4],
						backgroundColor: [
							window.chartColors.red,
							window.chartColors.yellow,
							window.chartColors.green,
							window.chartColors.blue,
						],
						label: 'Dataset 1'
					}],
					labels: [
						'생존전략',
						'Yellow',
						'Green',
						'Blue'
					]
				},
				options: {
					responsive: true
				}
			};
			
			$(function(){
				
				var ctx = $("#chart-area")[0].getContext('2d');
				window.myPie = new Chart(ctx, config);
				
			});
