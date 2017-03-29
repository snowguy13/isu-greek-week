<?php
	
	$teams = array(
		"Alpha Trifecta",
		"The Ash Branch",
		"DAAKstreet Boyz",
		"Gamme Kappa Psi",
		"Greek Madness",
		"Greek AtTacK",
		"Greekelodeon",
		"Greek Busters",
		"The Greek Gatsby",
		"IV League ", 
		"Juju on that Greek",
		"The Mighty Greeks",
		"Peace.Love.Greeks",
		"The Pirates of Greekland",
		"Threat Level Theta"
	);
	
	function curl_up($URL){
		$ch = curl_init();
			curl_setopt($ch, CURLOPT_URL, $URL);
			curl_setopt($ch, CURLOPT_HEADER, 1);
			curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
			$data = curl_exec($ch);
		curl_close($ch);
		return $data;
	}
	
	//arr1 = teams
	//arr2 = pulled data
	function find_index($data, $arr1){
		$index = array();
		$i = 0;
			
		foreach($data as $item1){
			foreach($arr1 as $item2){
				if(strcmp($item1, $item2) == 0){
					array_push($index,$i);
				}
			}
			$i++;
		}
		return $index;
	}
	
	function remove_extra_data_r($arr1){
		$ret = array();
		$garbage = array();
		foreach($arr1 as $item){
			if(preg_match('/^(\$)[0-9]/m', $item, $garbage, 0) != 0) array_push($ret, $item);
		}
		return $ret;
	}
	
	function get_data($data, $isTeam){
		$dom = new DOMDocument();
		@$dom->loadHTML($data);
		
		$arr = array();
		if($isTeam == 1){
			foreach($dom->getElementsByTagName('h5') as $HFive){
				//echo $HFive->nodeValue;
				//echo '<br />';
				array_push($arr, $HFive->nodeValue);
			}
		}
		else{
			foreach($dom->getElementsByTagName('strong') as $strong){
				//echo $strong->nodeValue;
				//echo '<br />';
				array_push($arr, $strong->nodeValue);
			}
			$arr = remove_extra_data_r($arr);
		}
		
		return $arr;
	}
	
	
	function reindex_data($index, $data){
		$ret = array();
		for($i=0; $i<sizeof($index);$i++){
		array_push($ret, $data[$index[$i]]);
		} 
		return $ret;
	}
	
	function finalize_teams($url1, $url2, $arr){
		$i = 0;
		$t0_arr = array();
		$t1_arr = array();
		
		while($i < 2){
			$url = $url1;
			if($i == 1) $url = $url2;
			
			$data = curl_up($url);
			$t_arr = get_data($data, 1);
			$order = find_index($t_arr, $arr);
			$t_arr = reindex_data($order, $t_arr);
			
			$mr_arr = get_data($data, 0);
			$mr_arr = reindex_data($order, $mr_arr);
			
			if($i == 0){
				$t0_arr = $t_arr;
				$mr0_arr = $mr_arr;
			}
			else{
				$t1_arr = $t_arr;
				$mr1_arr = $mr_arr;
			}
			$i++;
		}
		
		foreach($t1_arr as $item){
			array_push($t0_arr, $item);
		}
		
		foreach($mr1_arr as $item){
			array_push($mr0_arr, $item);
		}
		
		foreach($mr0_arr as $item){
			array_push($t0_arr, $item);
		}
		
		return $t0_arr;
	}
	
	function calculate_points($donation, $top_donation){
		$sqrt_res = sqrt($donation/$top_donation);
		$result = 90*$sqrt_res;
		return (int)$result;
	}
	
	function convert_mtoi($arr){
		foreach($arr as &$item){
			$item = str_replace('$', '', $item);
			$item = str_replace(',', '', $item);
			$item = (int)$item;
		}
		return $arr;
	}
	
	function determine_points($amount_raised){
		$points = array();
		for($i=0;$i<sizeof($amount_raised);$i++){
			if($i == 0){
				array_push($points,120);
			}
			else if($i == 1){
				array_push($points,105);
			}
			else if($i == 2){
				array_push($points,90);
			}
			else{
				array_push($points, calculate_points($amount_raised[$i],$amount_raised[0]));
			}
		}
		return $points;
	}
	
	
	$t_arr = array();
	$mr_arr = array();
	$points = array();
	$amount_raised = array();
	
	$t_arr = finalize_teams('https://www.firstgiving.com/soiowa/teams','https://www.firstgiving.com/soiowa/teams/2', $teams);
	
	for($i=15; $i<sizeof($t_arr); $i++){
		array_push($mr_arr, $t_arr[$i]);
	}
	array_splice($t_arr, 15);
	
		
	$amount_raised = $mr_arr;
	$mr_arr = convert_mtoi($mr_arr);
	$points = determine_points($mr_arr);

	
	
?>
		<html lang="en">
		<head>
			<meta charset="UTF-8">
			<meta http-equiv="refresh" content="10">
			<title>This is a Test</title>
			<script type="text/javascript" src="./jquery-3.1.1.min.js"></script>
			<script src="plotly-latest.min.js"></script>
			<link rel="stylesheet" href="gw2016.css" />
		</head>
		<body background="bg1.png" style="background-size: cover;background-repeat: no-repeat; background-attachment: fixed; background-position: 50% 50%;">
			<button id="section-back-button" class="button" data-href="./index.htm">◄ Back</button>
			<div id="container" style="margin-top: 150px">
			<?php

				echo '<div id="table" style="float:left;">';
				
				echo '<table style="border-collapse: collapse; height:450px;">';
				echo '<thead>';
				echo '<tr style="background-color: #FFFFFF">';
				echo '<th style="border: 1px solid black; text-align:left; padding:5px; font-size:16; font-family:Arial"> Team </th>';
				echo '<th style="border: 1px solid black; text-align:left; padding:5px; font-size:16; font-family:Arial"> Amount Raised </th>';
				echo '<th style="border: 1px solid black; text-align:left; padding:5px; font-size:16; font-family:Arial"> Points </th>';
				echo '</thead>';
				echo '<tbody>';
				for($i=0; $i<sizeof($t_arr); $i++){
					echo '<tr>';
					if($i%2 == 0){
						echo '<td style="border: 1px solid black; background-color: #EEEEEE; padding:5px; font-size:12; font-family:Arial">';
						echo $t_arr[$i];
						echo '</td>';
						echo '<td style="border: 1px solid black; background-color: #EEEEEE; padding:5px; font-size:12; font-family:Arial">';
						echo $amount_raised[$i];
						echo '</td>';
						echo '<td style="border: 1px solid black; background-color: #EEEEEE; padding:5px; font-size:12; font-family:Arial">';
						echo $points[$i];
						echo '</td>';
					}
					else{
						echo '<td style="border: 1px solid black; background-color: #FFFFFF; padding:5px; font-size:12; font-family:Arial">';
						echo $t_arr[$i];
						echo '</td>';
						echo '<td style="border: 1px solid black; background-color: #FFFFFF; padding:5px; font-size:12; font-family:Arial">';
						echo $amount_raised[$i];
						echo '</td>';
						echo '<td style="border: 1px solid black; background-color: #FFFFFF; padding:5px; font-size:12; font-family:Arial">';
						echo $points[$i];
						echo '</td>';
					}
					
					echo '</tr>';
				}
				echo '</tbody>';
				echo '</table>';
				echo '</div>';



			?>
		
			<div id="graph" style="float:right; width:700px; height:450px; border:1px solid black;"></div>
			<script type="text/javascript">
				
				var ordered_teams = <?php echo json_encode($t_arr); ?>;
				var money_raised = <?php echo json_encode($mr_arr); ?>;
				var points = <?php echo json_encode($points); ?>;
				
				console.log(ordered_teams);

				var trace1 = {
				  x: money_raised,
				  y: points,
				  mode: 'lines+markers',
				  marker: {
					  color: 'rgb(164, 210, 117)',
					  size: 8
				  },
				  line: {
					  color: 'rgb(164, 210, 117)',
					  width: 2
				  },
				  font: {
					  family: 'Arial'					  
				  }
				};

				var data = [trace1];

				var layout = {
				  title: 'Polar Bear Plunge Point Tracker',
				  xaxis: {
					title: 'Amount Raised'
				  },
				  yaxis: {
					title: 'Points Earned'
				  },
				  margin:{r:10, t:50, l:60, b:60}
				};

				Plotly.newPlot('graph', data, layout);
				
			</script>
			</div>
			</body>
			</html>
	
