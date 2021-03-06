<?php 
function showR($val) {
	if ($val > 0) {
	echo "+" . $val;
	} else {
		echo " ";
	}
}

function draw_points($val) {
	if ($val > 0) {
		for ($i = 0; $i < $val; $i++) {
			if ($i > 0 && $i % 4 == 0)  {
				echo "\n";
			}
				echo "*";
		}
	} else {
		echo " ";
	}
}
$dev = array($dsz, $dww, $dus, $ds, $dwt, $dzw, $di, $da, $dzr, $dcp, $dint, $dop, $dsw, $dogd);
$currnet = array($csz, $cww, $cus, $cs, $cwt, $czw, $ci, $ca, $czr, $ccp, $cint, $cop, $csw, $cogd);
?>
<div class="container">
<?php
	echo "<small>" . anchor('login/logout', 'Wyloguj') . "</small>";
	echo br();
?>
	<div class="text-center">
	<?php
		echo br();
		echo "<small>" . anchor('show_char_2/page_2', 'Następna strona') . "</small>";
		echo br(2);
	?>
	</div>
  <div id="mainPage">
    <div id="ramka_gora"></div>
    <div id="ramka_lewa"></div>
    <div id="ramka_prawa"></div>
    <div id="logo"></div>
    <div id="top">
      <div id="top_left">
        <div id="obraz_gora"></div>
        <table id="tl_table" class="skills">
          <tr>
          	<th>Umiejętności</th>
          	<th>Umiejętności</th>
          </tr>
          <tr>
          	<td class="text-top">
          		<ul class="skill_list">
          			<?php 
          				foreach ($sk as $skill) {
          					echo "<li>" . $skill . "</li>";
									}?>
          		</ul>
         		</td>
         		<td></td>
         	</tr>
        </table>
      </div>
      <div id="top_right">
        <table id="tr_table">
          <tr>
            <td class="tr1td"><label>Imię: </label><?php echo " " . $name; ?></td>
            <td class="tr1td"><label>Rasa: </label><?php echo " " . $race; ?></td>
            <td class="tr1td"><label>Płeć: </label><?php echo " " . $gender; ?></td>
          </tr>
          <tr>
            <td class="tr2td"><label>Klasa: </label><?php echo " " . $classes; ?></td>
            <td class="tr2td"><label>Charakter: </label><?php echo " " . $nature; ?></td>
            <td class="tr2td"><label>Wiek: </label><?php echo " " . $age; ?></td>
          </tr>
          <tr>
            <td><label>Wzrost: </label><?php echo " " . $height; ?></td>
            <td><label>Waga: </label><?php echo " " . $weight; ?></td>
            <td><label>Włosy: </label><?php echo " " . $hair; ?></td>
          </tr>
          <tr>
            <td><label>Oczy: </label><?php echo " " . $eyes; ?></td>
            <td colspan="2"><label>Opis: </label><?php echo " " . $description; ?></td>
          </tr>
          <tr>
            <td colspan="3"><label>Pochodzenie: </label><?php echo " " . $origin; ?></td>
          </tr>
          <tr>
            <td colspan="3"><label>Kariera: </label>
            <?php 
          		foreach ($professions as $row) {
          			if (count($professions) > 1) {
									echo " " . $row . " -> ";
          			} else {
          				echo " " . $row;
          			}
            	} 
            ?>
            </td>
          </tr>
          <tr>
            <td colspan="3"><label>Profesje wyjściowe: </label>
            <?php
            if (!empty($exit_professions) && is_array($exit_professions)) {
            	foreach ($exit_professions as $exit) {
            		echo $exit['profession_name'] . ", ";
            	}
            } else if (!is_array($exit_professions)){
            	echo $exit_professions;
            }
            ?>
            </td>
          </tr>
        </table>
        
        </form>
        <table id="stats">
          <tr>
            <th></th><th>Sz</th><th>WW</th><th>US</th><th>S</th><th>Wt</th><th>Żw</th><th>I</th>
            <th>A</th><th>Zr</th><th>CP</th><th>Int</th><th>Op</th><th>SW</th><th>Ogd</th>
          </tr>
          <tr>
            <th rowspan="2">P:</th>
            <td><?php echo $sz; ?></td>
            <td><?php echo $ww; ?></td>
            <td><?php echo $us; ?></td>
            <td><?php echo $s; ?></td>
            <td><?php echo $wt; ?></td>
            <td><?php echo $zw; ?></td>
            <td><?php echo $ini; ?></td>
            <td><?php echo $a; ?></td>
            <td><?php echo $zr; ?></td>
            <td><?php echo $cp; ?></td>
            <td><?php echo $int; ?></td>
            <td><?php echo $op; ?></td>
            <td><?php echo $sw; ?></td>
            <td><?php echo $ogd; ?></td>
          </tr>
          <tr>
            <?php
						for ($i = 0; $i < 14; $i++)
							echo "<td></td>";
            ?>
          </tr>
          <tr>
            <th rowspan="2">S.R.:</th>
            <td><?php showR($rsz); ?></td>
            <td><?php showR($rww); ?></td>
            <td><?php showR($rus); ?></td>
            <td><?php showR($rs); ?></td>
            <td><?php showR($rwt); ?></td>
            <td><?php showR($rzw); ?></td>
            <td><?php showR($ri); ?></td>
            <td><?php showR($ra); ?></td>
            <td><?php showR($rzr); ?></td>
            <td><?php showR($rcp); ?></td>
            <td><?php showR($rint); ?></td>
            <td><?php showR($rop); ?></td>
            <td><?php showR($rsw); ?></td>
            <td><?php showR($rogd); ?></td>
          </tr>
          <tr>
            <?php
							foreach ($dev as $row) {
								echo "<td>" , draw_points($row) . "</td>";
							}
						?>
          </tr>
          
          <tr>
            <th rowspan="2">Akt:</th>
	          <?php
	          	foreach ($currnet as $row) {
	          		echo "<td>" . $row . "</td>";
	          	}
	          ?>
          </tr>
          <tr>
          	<?php
						for ($i = 0; $i < 14; $i++)
							echo "<td></td>";
            ?>
          </tr>
        </table>
      </div>
    </div>
    <div id="middle">
      <table id="m1">
        <tr>
          <th>Specjalizacja</th>
          <th>P.S.</th>
          <th>Modyfikator:</th>
        </tr>
        <tr>
          <td></td>
          <td></td>
          <td></td>
        </tr>
      </table>
      <table id="m2">
        <tr>
          <th>Broń ręczna:</th>
          <th id="i">I</th>
          <th class="tk">WW</th>
          <th>O</th>
          <th>P</th>
          <th class="tk">Tr.Kryt.</th>
          <th class="tk">PWT:</th>
          <th class="tk">Żw. B.</th>
          <th class="tk">Żw. A.</th>
        </tr>
        <tr>
          <td class="text-top text-left">
          <?php
          if (!empty($weapon)) {
          	foreach ($weapon as $item) {
          		if ($item['items_group_id'] == 1 || $item['items_group_id'] == 2)
          		echo $item['item'] . "<br>";
          	}
					} else {
						echo "";
					}
					?>
          </td>
          <td class="text-center text-top">
          <?php
          if (!empty($weapon)) {
          	foreach ($weapon as $item) {
          		if ($item['items_group_id'] == 1 || $item['items_group_id'] == 2)
          		echo $item['inic'] . "<br>";
          	}
					} else {
						echo "";
					}
					?>
          </td>
          <td class="text-center text-top">
          <?php
          if (!empty($weapon)) {
          	foreach ($weapon as $item) {
          		if ($item['items_group_id'] == 1 || $item['items_group_id'] == 2)
          		echo $item['mod_traf'] . "<br>";
          	}
					} else {
						echo "";
					}
					?>
					</td>
          <td class="text-center text-top">
          <?php
          if (!empty($weapon)) {
          	foreach ($weapon as $item) {
          		if ($item['items_group_id'] == 1 || $item['items_group_id'] == 2)
          		echo $item['obr'] . "<br>";
          	}
					} else {
						echo "";
					}
					?>
					</td>
          <td class="text-center text-top">
          <?php
          if (!empty($weapon)) {
          	foreach ($weapon as $item) {
          		if ($item['items_group_id'] == 1 || $item['items_group_id'] == 2)
          		echo $item['par'] . "<br>";
          	}
					} else {
						echo "";
					}
					?>
          </td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
        </tr>
      </table>
    </div>
    <div id="middle_2">
      <table id="m3">
        <tr>
          <td colspan="5" class="small_th text-left text-top" style="font-size: 16px;">Całe ciało:<br> 
          <?php
          if (!empty($armour)) {
          	foreach ($armour as $item) {
          		if ($item['placement'] == 1) {
          			echo $item['item'];
          		}
          	}
          } else {
          	echo "";
          }					
          ?>
          </td>
        </tr>
        
        <tr>
          <th class="small_th text-center">PP:
          <?php
          $pp = 0;
          if (!empty($armour)) {
          	foreach ($armour as $item) {
          		if ($item['placement'] == 1) {
          			$pp += $item['pp'];
          		}
          	}
          }
					if ($pp == 0) {
						$pp = "";
					}
					echo br();
					echo "<span class='lead text-center'>" . $pp . "</span>";
          ?>
          </th>
          <th class="small_th">PWT:</th>
          <th class="small_th">WO:</th>
          <th class="small_th">Żw B:</th>
          <th class="small_th">Żw A:</th>
        </tr>
      </table>
      <table id="m4" class="armour">
        <caption class="caption">Głowa (01-15)</caption>
        <tr>
          <td colspan="5" class="text-left text-top">
          <?php
          if (!empty($armour)) {
          	foreach ($armour as $item) {
          		if ($item['placement'] == 2) {
          			echo $item['item'];
          		}
          	}
          } else {
          	echo "";
          }					
          ?>
          </td>
        </tr>
        
        <tr>
          <th class="small_th text-center">PP:
          <?php
          if (!empty($armour)) {
          	$pp = array();
          	$arr = array();
          	foreach ($armour as $item) {
          		if ($item['placement'] == 2) {
          			if(strlen($item['pp']) > 1) {
          				$arr = explode("/" , $item['pp']);
									foreach($arr as $p) {
										$pp[] = $p; 
									}
          			} else if (strlen($item['pp']) == 1){
          				foreach ($armour as $item) {
          					$pp = $item['pp'];
          				}
          			}
          		}
          	}
          }
          if ($pp == 0) {
						$pp = "";
					}
					echo br();
					if (is_array($pp)) {
						echo "<span class='lead'>" . implode("/", $pp) . "</span>";
					} else {
						echo "<span class='lead'>" . $pp . "</span>";
					}
          ?>
          </th>
          <th class="small_th">PWT:</th>
          <th class="small_th">WO:</th>
          <th class="small_th">Żw B:</th>
          <th class="small_th">Żw A:</th>
        </tr>
      </table>
      <table id="m5">
        <tr>
          <th>Broń strzelecka</th>
          <th class="dyst">K</th>
          <th class="dyst">D</th>
          <th class="dyst">M</th>
          <th>SE</th>
          <th>ŁAD</th>
          <th class="tk">Tr.Kryt.</th>
          <th class="tk">Żw. B.</th>
          <th class="tk">Żw. A.</th>
        </tr>
        <tr>
          <td class="text-top text-left">
          <?php
          if (!empty($ranged)) {
          	foreach ($ranged as $weapon) {
          		echo $weapon['item'] . "<br>";
          	}
          } else {
          	echo "";
          }
          ?>
          </td>
          <td class="text-center text-top" >
          <?php
          if (!empty($ranged)) {
          	foreach ($ranged as $weapon) {
          		echo $weapon['s'] . "<br>";
          	}
          } else {
          	echo "";
          }
          ?>
          </td>
          <td class="text-center text-top">
          <?php
          if (!empty($ranged)) {
          	foreach ($ranged as $weapon) {
          		echo $weapon['l'] . "<br>";
          	}
          } else {
          	echo "";
          }
          ?>
          </td>
          <td class="text-center text-top">
          <?php
          if (!empty($ranged)) {
          	foreach ($ranged as $weapon) {
          		echo $weapon['m'] . "<br>";
          	}
          } else {
          	echo "";
          }
          ?>
          </td>
          <td class="text-center text-top">
          <?php
          if (!empty($ranged)) {
          	foreach ($ranged as $weapon) {
          		echo $weapon['SE'] . "<br>";
          	}
          } else {
          	echo "";
          }
          ?>
          </td>
          <td class="text-center text-top">
          <?php
          if (!empty($ranged)) {
          	foreach ($ranged as $weapon) {
          		echo $weapon['reload'] . "<br>";
          	}
          } else {
          	echo "";
          }
          ?>
          </td>
          <td></td>
          <td></td>
          <td></td>
        </tr>
      </table>
    </div>
    <div id="down_left">
      <table id="dl1" class="armour">
        <caption class="caption">Prawa ręka (16-35)</caption>
        <tr>
          <td colspan="5" class="text-top text-left">
          <?php
          if (!empty($armour)) {
          	foreach ($armour as $item) {
          		if ($item['placement'] == 4) {
          			echo $item['item'];
          		}
          	}
          } else {
          	echo "";
          }					
          ?>
          </td>
        </tr>
        <tr>
          <th class="small_th text-center">PP:
          <?php
          if (!empty($armour)) {
          	$pp = array();
          	$arr = array();
          	foreach ($armour as $item) {
          		if ($item['placement'] == 4) {
          			if(strlen($item['pp']) > 1) {
          				$arr = explode("/" , $item['pp']);
									foreach($arr as $p) {
										$pp[] = $p; 
									}
          			} else if (strlen($item['pp']) == 1){
          				foreach ($armour as $item) {
          					$pp = $item['pp'];
          				}
          			}
          		}
          	}
          }
          if ($pp == 0) {
						$pp = "";
					}
					echo br();
					if (is_array($pp)) {
						echo "<span class='lead'>" . implode("/", $pp) . "</span>";
					} else {
						echo "<span class='lead'>" . $pp . "</span>";
					}
          ?>
          </th>
          <th class="small_th">PWT:</th>
          <th class="small_th">WO:</th>
          <th class="small_th">Żw B:</th>
          <th class="small_th">Żw A:</th>
        </tr>
      </table>
      <table id="dl2" class="armour">
        <caption class="caption">Prawa noga(81-90)</caption>
        <tr>
          <td colspan="5" class="text-top text-left">
          <?php
          if (!empty($armour)) {
          	foreach ($armour as $item) {
          		if ($item['placement'] == 5) {
          			echo $item['item'];
          		}
          	}
          } else {
          	echo "";
          }					
          ?>
          </td>
        </tr>
        <tr>
          <th class="small_th text-center">PP:
          <?php
          if (!empty($armour)) {
          	$pp = array();
          	$arr = array();
          	foreach ($armour as $item) {
          		if ($item['placement'] == 5) {
          			if(strlen($item['pp']) > 1) {
          				$arr = explode("/" , $item['pp']);
									foreach($arr as $p) {
										$pp[] = $p; 
									}
          			} else if (strlen($item['pp']) == 1){
          				foreach ($armour as $item) {
          					$pp = $item['pp'];
          				}
          			}
          		}
          	}
          }
          if ($pp == 0) {
						$pp = "";
					}
					echo br();
					if (is_array($pp)) {
						echo "<span class='lead'>" . implode("/", $pp) . "</span>";
					} else {
						echo "<span class='lead'>" . $pp . "</span>";
					}
          ?>
          </th>
          <th class="small_th">PWT:</th>
          <th class="small_th">WO:</th>
          <th class="small_th">Żw B:</th>
          <th class="small_th">Żw A:</th>
        </tr>
      </table>
      <table id="dl3" class="armour">
        <tr>
          <th>Inicjatywa</th><th>MOB</th><th>GIB</th><th>PW</th>
        </tr>
        <tr>
          <td class="lead">
          <?php
          	echo $ini;
          ?>
          </td>
          <td class="lead">
          <?php
          	echo ceil(($ini + $zr) / 2);
          ?>
          </td>
          <td class="lead">
          <?php
          	echo ceil(($s * 10 + $zr) / 2);
          ?>
          </td>
          <td class="lead">
          <?php
          	echo ceil($ww / 10);
          ?>
          </td>
        </tr>
      </table>
      <table id="dl4" class="armour">
        <tr>
          <th>Atak</th>
          <td>1</td>
          <td>2</td>
          <td>3</td>
          <td>4</td>
          <td>5</td>
        </tr>
        <tr>
          <th>Inicjatywa:</th>
          <td class="text-center">
          <?php
          	if($a >= 1) {
          		echo $ini;
          	}
          ?>
          </td>
          <td class="text-center">
          <?php
          	if ($a > 1) {
          		echo ceil($ini * 0.5);
          	} else if ($a > 2) {
          		echo ceil($ini * 0.66);
          	} else if ($a > 3) {
          		echo ceil($ini * 0.75);
          	} else  if ($a > 4) {
          		echo ceil($ini * 0.8);
          	}
          ?>
          </td>
          <td class="text-center">
          <?php
          	if ($a == 3) {
          		echo ceil($ini * 0.33);
          	} else if ($a == 4) {
          		echo ceil($ini * 0.5);
          	} else if ($a == 5){
          		echo ceil($ini * 0.6);
          	}
          ?>
          </td>
          <td class="text-center">
          <?php
          	if ($a == 4) {
          		echo ceil($ini * 0.25);
          	} else if ($a == 5){
          		echo ceil($ini * 0.4);
          	}
          ?>
          </td>
          <td class="text-center">
          <?php
          	if($a == 5) {
          		echo ceil($ini * 0.2);
          	}
          ?>
          </td>
        </tr>
      </table>
    </div>
    <div id="down_middle">
      <div id="obraz_dol1"></div>
      <table id="dm1" class="armour">
        <caption class="caption">Lewa ręka(36-55)</caption>
        <tr>
          <td colspan="5" class="text-top text-left">
          <?php
          if (!empty($armour)) {
          	foreach ($armour as $item) {
          		if ($item['placement'] == 4) {
          			echo $item['item'];
          		}
          	}
          } else {
          	echo "";
          }					
          ?>
          </td>
        </tr>
        <tr>
          <th class="small_th text-center">PP:
          <?php
          if (!empty($armour)) {
          	$pp = array();
          	$arr = array();
          	foreach ($armour as $item) {
          		if ($item['placement'] == 4) {
          			if(strlen($item['pp']) > 1) {
          				$arr = explode("/" , $item['pp']);
									foreach($arr as $p) {
										$pp[] = $p; 
									}
          			} else if (strlen($item['pp']) == 1){
          				foreach ($armour as $item) {
          					$pp = $item['pp'];
          				}
          			}
          		}
          	}
          }
          if ($pp == 0) {
						$pp = "";
					}
					echo br();
					if (is_array($pp)) {
						echo "<span class='lead'>" . implode("/", $pp) . "</span>";
					} else {
						echo "<span class='lead'>" . $pp . "</span>";
					}
          ?>
          </th>
          <th class="small_th">PWT:</th>
          <th class="small_th">WO:</th>
          <th class="small_th">Żw B:</th>
          <th class="small_th">Żw A:</th>
        </tr>
      </table>
      <table id="dm2" class="armour">
        <caption class="caption">Korpus(56-80)</caption>
        <tr>
          <td colspan="5" class="text-top text-left">
          <?php
          if (!empty($armour)) {
          	foreach ($armour as $item) {
          		if ($item['placement'] == 3) {
          			echo $item['item'];
          		}
          	}
          } else {
          	echo "";
          }					
          ?>
          </td>
        </tr>
        <tr>
          <th class="small_th text-center">PP:
          <?php
          if (!empty($armour)) {
          	$pp = array();
          	$arr = array();
          	foreach ($armour as $item) {
          		if ($item['placement'] == 3) {
          			if(strlen($item['pp']) > 1) {
          				$arr = explode("/" , $item['pp']);
									foreach($arr as $p) {
										$pp[] = $p; 
									}
          			} else if (strlen($item['pp']) == 1){
          				foreach ($armour as $item) {
          					$pp = $item['pp'];
          				}
          			}
          		}
          	}
          }
          if ($pp == 0) {
						$pp = "";
					}
					echo br();
					if (is_array($pp)) {
						echo "<span class='lead'>" . implode("/", $pp) . "</span>";
					} else {
						echo "<span class='lead'>" . $pp . "</span>";
					}
          ?>
          </th>
          <th class="small_th">PWT:</th>
          <th class="small_th">WO:</th>
          <th class="small_th">Żw B:</th>
          <th class="small_th">Żw A:</th>
        </tr>
      </table>
      <table id="dm3" class="armour">
        <caption class="caption">Lewa noga(91-00)</caption>
        <tr>
          <td colspan="5" class="text-top text-left">
          <?php
          if (!empty($armour)) {
          	foreach ($armour as $item) {
          		if ($item['placement'] == 5) {
          			echo $item['item'];
          		}
          	}
          } else {
          	echo "";
          }					
          ?>
          </td>
        </tr>
        <tr>
          <th class="small_th text-center">PP:
          <?php
          if (!empty($armour)) {
          	$pp = array();
          	$arr = array();
          	foreach ($armour as $item) {
          		if ($item['placement'] == 5) {
          			if(strlen($item['pp']) > 1) {
          				$arr = explode("/" , $item['pp']);
									foreach($arr as $p) {
										$pp[] = $p; 
									}
          			} else if (strlen($item['pp']) == 1){
          				foreach ($armour as $item) {
          					$pp = $item['pp'];
          				}
          			}
          		}
          	}
          }
          if ($pp == 0) {
						$pp = "";
					}
					echo br();
					if (is_array($pp)) {
						echo "<span class='lead'>" . implode("/", $pp) . "</span>";
					} else {
						echo "<span class='lead'>" . $pp . "</span>";
					}
          ?>
          </th>
          <th class="small_th">PWT:</th>
          <th class="small_th">WO:</th>
          <th class="small_th">Żw B:</th>
          <th class="small_th">Żw A:</th>
        </tr>
      </table>
    </div>
    <div id="down_right">
      <div id="obraz_dol2"></div>
      <table>
        <tr>
          <th>Modyfikator</th><th>Sob 1 (-)</th><th>Sob 2 (-10)</th><th> Sob 3 (-20)</th>
        </tr>
        <tr>
          <th>Maksymalne obciążenie</th><td></td><td></td><td></td>
        </tr>
      </table>
    </div>
    <div id="ramka_dol"></div>
	</div>
	<div class="text-center">
	<?php
		echo br();
		echo "<small>" . anchor('show_char_2/page_2', 'Następna strona') . "</small>";
		echo br();
	?>
	</div>
</div>

  