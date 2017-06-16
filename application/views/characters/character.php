  <?php 
  function showR($val)
	{
		if ($val != null)
		{
			echo "+" . $val;
		}
		else
		{
			echo " ";
		}
	}
  ?>
  <div id="mainPage">
    <div id="ramka_gora"></div>
    <div id="ramka_lewa"></div>
    <div id="ramka_prawa"></div>
    <div id="logo"></div>
    <div id="top">
      <div id="top_left">
        <div id="obraz_gora"></div>
        <table id="tl_table" class="skills">
          <tr><th>Umiejętności</th><th>Umiejętności</th></tr>
          <?php
          	$am = count($sk);
          	for ($i = 0; $i < 20; $i++)
						{
							if ($i >= $am)
							{
								echo "<tr><td></td><td></td></tr>";
							}
							else
							{
								echo "<tr><td>" . $sk[$i] . "</td><td></td></tr>"; 
							}
						}
          ?>
        </table>
      </div>
      <div id="top_right">
        <table id="tr_table">
          <tr>
            <td class="tr1td"><label>Imię: </label><?php echo $name; ?></td>
            <td class="tr1td"><label>Rasa: </label><?php echo $race; ?></td>
            <td class="tr1td"><label>Płeć: </label><?php echo $gender; ?></td>
          </tr>
          <tr>
            <td class="tr2td"><label>Klasa: </label><?php echo $classes; ?></td>
            <td class="tr2td"><label>Charakter: </label><?php echo $nature; ?></td>
            <td class="tr2td"><label>Wiek: </label><?php echo $age; ?></td>
          </tr>
          <tr>
            <td><label>Wzrost: </label><?php echo $height; ?></td>
            <td><label>Waga: </label><?php echo $weight; ?></td>
            <td><label>Włosy: </label><?php echo $hair; ?></td>
          </tr>
          <tr>
            <td><label>Oczy: </label><?php echo $eyes; ?></td>
            <td colspan="2"><label>Opis: </label><?php echo $description; ?></td>
          </tr>
          <tr>
            <td colspan="3"><label>Pochodzenie: </label></td>
          </tr>
          <tr>
            <td colspan="3"><label>Kariera: </label><?php echo $profession; ?></td>
          </tr>
          <tr>
            <td colspan="3"><label>Profesje wyjściowe: </label></td>
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
            <td><?php echo $i; ?></td>
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
						for ($i = 0; $i < 14; $i++)
							echo "<td></td>";
            ?>
          </tr>
          <tr>
            <th rowspan="2">Akt:</th>
            <?php
						for ($i = 0; $i < 14; $i++)
							echo "<td></td>";
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
          <th>Specjalizacja</th><th>P.S.</th><th>Modyfikator:</th>
        </tr>
        <tr>
          <td></td><td></td><td></td>
        </tr>
        <tr>
          <td></td><td></td><td></td>
        </tr>
        <tr>
          <td></td><td></td><td></td>
        </tr>
        <tr>
          <td></td><td></td><td></td>
        </tr>
        <tr>
          <td></td><td></td><td></td>
        </tr>
        <tr>
          <td></td><td></td><td></td>
        </tr>
        <tr>
          <td></td><td></td><td></td>
        </tr>
      </table>
      <table id="m2">
        <tr>
          <th>Broń ręczna:</th><th>I</th><th>WW</th><th>O</th><th>P</th><th class="tk">Tr.Kryt.</th><th>PWT:</th><th>Żw. B.</th><th>Żw. A.</th>
        </tr>
        <tr>
          <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
        </tr>
        <tr>
          <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
        </tr>
        <tr>
          <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
        </tr>
        <tr>
          <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
        </tr>
        <tr>
          <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
        </tr>
        <tr>
          <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
        </tr>
      </table>
    </div>
    <div id="middle_2">
      <table id="m3">
        <tr>
          <td colspan="5" class="small_th" style="font-size: 16px;">Całe ciało: </td>
        </tr>
        
        <tr>
          <th class="small_th">PP:</th>
          <th class="small_th">PWT:</th>
          <th class="small_th">WO:</th>
          <th class="small_th">Żw B:</th>
          <th class="small_th">Żw A:</th>
        </tr>
      </table>
      <table id="m4" class="armour">
        <caption>Głowa (01-15)</caption>
        <tr>
          <td colspan="5"></td>
        </tr>
        <tr>
          <td colspan="5"></td>
        </tr>
        <tr>
          <th class="small_th">PP:</th>
          <th class="small_th">PWT:</th>
          <th class="small_th">WO:</th>
          <th class="small_th">Żw B:</th>
          <th class="small_th">Żw A:</th>
        </tr>
      </table>
      <table id="m5">
        <tr>
          <th>Broń strzelecka</th><th>K</th><th>D</th><th>M</th><th>SE</th><th>ŁAD</th><th class="tk">Tr.Kryt.</th><th>Żw. B.</th><th>Żw. A.</th>
        </tr>
        <tr>
          <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
        </tr>
        <tr>
          <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
        </tr>
        <tr>
          <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
        </tr>
        <tr>
          <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
        </tr>
        <tr>
          <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
        </tr>
        <tr>
          <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
        </tr>
      </table>
    </div>
    <div id="down_left">
      <table id="dl1" class="armour">
        <caption>Prawa ręka (16-35)</caption>
        <tr>
          <td colspan="5"></td>
        </tr>
        <tr>
          <td colspan="5"></td>
        </tr>
        <tr>
          <th class="small_th">PP:</th>
          <th class="small_th">PWT:</th>
          <th class="small_th">WO:</th>
          <th class="small_th">Żw B:</th>
          <th class="small_th">Żw A:</th>
        </tr>
      </table>
      <table id="dl2" class="armour">
        <caption>Prawa noga(81-90)</caption>
        <tr>
          <td colspan="5"></td>
        </tr>
        <tr>
          <td colspan="5"></td>
        </tr>
        <tr>
          <th class="small_th">PP:</th>
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
          <td></td><td></td><td></td><td></td>
        </tr>
      </table>
      <table id="dl4" class="armour">
        <tr>
          <th>Atak</th><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td>
        </tr>
        <tr>
          <th>Inicjatywa:</th><td></td><td></td><td></td><td></td><td></td>
        </tr>
      </table>
    </div>
    <div id="down_middle">
      <div id="obraz_dol1"></div>
      <table id="dm1" class="armour">
        <caption>Lewa ręka(36-55)</caption>
        <tr>
          <td colspan="5"></td>
        </tr>
        <tr>
          <td colspan="5"></td>
        </tr>
        <tr>
          <th class="small_th">PP:</th>
          <th class="small_th">PWT:</th>
          <th class="small_th">WO:</th>
          <th class="small_th">Żw B:</th>
          <th class="small_th">Żw A:</th>
        </tr>
      </table>
      <table id="dm2" class="armour">
        <caption>Korpus(56-80)</caption>
        <tr>
          <td colspan="5"></td>
        </tr>
        <tr>
          <td colspan="5"></td>
        </tr>
        <tr>
          <th class="small_th">PP:</th>
          <th class="small_th">PWT:</th>
          <th class="small_th">WO:</th>
          <th class="small_th">Żw B:</th>
          <th class="small_th">Żw A:</th>
        </tr>
      </table>
      <table id="dm3" class="armour">
        <caption>Lewa noga(91-00)</caption>
        <tr>
          <td colspan="5"></td>
        </tr>
        <tr>
          <td colspan="5"></td>
        </tr>
        <tr>
          <th class="small_th">PP:</th>
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