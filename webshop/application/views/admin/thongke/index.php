<html>

<head>
    <style>
        * {
            box-sizing: border-box;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
        }

        body {
            font-family: Helvetica;
            -webkit-font-smoothing: antialiased;
            background: rgba(71, 147, 227, 1);
        }

        h2 {
            text-align: center;
            font-size: 18px;
            text-transform: uppercase;
            letter-spacing: 1px;
            color: white;
            padding: 20px 0;
        }

        /* Table Styles */

        .table-wrapper {
            margin: 10px 70px 70px;
            box-shadow: 0px 35px 50px rgba(0, 0, 0, 0.2);
        }

        .fl-table {
            border-radius: 5px;
            font-size: 16px;
            font-weight: normal;
            border: none;
            border-collapse: collapse;
            width: 100%;
            max-width: 100%;
            white-space: nowrap;
            background-color: white;
        }

        .fl-table td,
        .fl-table th {
            text-align: center;
            padding: 8px;
        }

        .fl-table td {
            border-right: 1px solid #f8f8f8;
            font-size: 16px;
        }

        .fl-table thead th {
            color: #ffffff;
            background: #4FC3A1;
        }


        .fl-table thead th:nth-child(odd) {
            color: #ffffff;
            background: #324960;
        }

        .fl-table tr:nth-child(even) {
            background: #F8F8F8;
        }

        /* Responsive */

        @media (max-width: 767px) {
            .fl-table {
                display: block;
                width: 100%;
            }

            .table-wrapper:before {
                content: "Scroll horizontally >";
                display: block;
                text-align: right;
                font-size: 16px;
                color: white;
                padding: 0 0 10px;
            }

            .fl-table thead,
            .fl-table tbody,
            .fl-table thead th {
                display: block;
            }

            .fl-table thead th:last-child {
                border-bottom: none;
            }

            .fl-table thead {
                float: left;
            }

            .fl-table tbody {
                width: auto;
                position: relative;
                overflow-x: auto;
            }

            .fl-table td,
            .fl-table th {
                padding: 20px .625em .625em .625em;
                height: 60px;
                vertical-align: middle;
                box-sizing: border-box;
                overflow-x: hidden;
                overflow-y: auto;
                width: 10px;
                font-size: 16px;
                text-overflow: ellipsis;
            }

            .fl-table thead th {
                text-align: left;
                border-bottom: 1px solid #f7f7f9;
            }

            .fl-table tbody tr {
                display: table-cell;
            }

            .fl-table tbody tr:nth-child(odd) {
                background: none;
            }

            .fl-table tr:nth-child(even) {
                background: transparent;
            }

            .fl-table tr td:nth-child(odd) {
                background: #F8F8F8;
                border-right: 1px solid #E6E4E4;
            }

            .fl-table tr td:nth-child(even) {
                border-right: 1px solid #E6E4E4;
            }

            .fl-table tbody td {
                display: block;
                text-align: center;
            }


        }
    </style>

</head>

<body>
    <h2>Th???ng K??</h2>
    <div class="table-wrapper" >
        <table  class="fl-table" style="border-radius:3px" >
            <thead>
                <tr>
                    <th>Qu???n L??</th>
                    <th>S??? L?????ng</th>

                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Danh m???c</td>
                    <td><?php echo $total_catalog ?></td>

                </tr>
                <tr>
                    <td>S???n ph???m</td>
                    <td><?php echo $total_product ?></td>

                </tr>
                <tr>
                    <td>Slider</td>
                    <td><?php echo $total_slider ?></td>

                </tr>
                <tr>
                    <td>????n ?????t h??ng</td>
                    <td><?php echo $total_transaction ?></td>

                </tr>
                <tr>
                    <td>Kh??ch h??ng</td>
                    <td><?php echo $total_user ?></td>

                </tr>
                <tr>
                    <td>Nh??n Vi??n</td>
                    <td><?php echo $total_admin ?></td>

                </tr>

            <tbody>
        </table>


    </div>


   
    <div>
        <h2>Doanh thu</h2>
    </div>

    <div class="col-lg-8">
			
			
    <table class="table" style="border-radius:3px">
    <thead>
      <tr>
        <th>Doanh thu h??m nay</th>
        <th class="money" style=" color: #BF0000; font-size:18px">450,000 VND</th>
        
      </tr>
    </thead>
    <thead>
      <tr>
        <th>Doanh thu th??ng qua</th>
        <th class="money" style=" color: #BF0000; font-size:18px" >2,500,000 VND</th>
        
      </tr>
    </thead>
    <thead>
      <tr>
        <th>Doanh thu ?????n hi???n t???i</th>
        <th class="money" style=" color: #BF0000;font-size:20px">
        <?php 
    $total=0;
    foreach ($user as $value) { 
        if($value->status==1) { 
            
    $total+= $value->amount; 
									

   } }
   echo number_format($total);
  
 
?>
 VND
    
    </th>
        
      </tr>
    </thead>
   
  </table>
  </div>


    <!-- <div class="col-xs-9 col-md-3"> -->
        <div class="col-lg-4">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>????n ?????t h??ng</h4>
						<div class="easypiechart" id="easypiechart-blue" data-percent="92" ><span class="percent">92%</span>
						</div>
					</div>
				</div>
               
</body>

</html>