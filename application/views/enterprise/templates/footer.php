<div id="myModal" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h5 class="modal-title"><span class="fa fa-info-circle aria-hidden="true"></span>&nbsp;&nbsp;Aplikasi Tingkat Kematangan Penyelarasan Strategi SI dan Organisasi</h5>
      </div>
            <div class="modal-body">
                <h3><center>ICT Readiness Level Definition Application</center></h3> 
                <hr>
                <p align="justify">
                    Aplikasi ini dibuat untuk kepentingan penelitian. Tujuan pembuatan aplikasi ini untuk mengetahui ukuran kematangan organisasi mengenai keselarasan strategi organisasi yang telah dibuat dengan strategi sistem informasi. Penilaian dilakukan dengan mengembangkan model kerangka kerja SAMM yang menilai 6 indikator / dimensi. Hasil pengukuran akan diperoleh setelah responden mengisi kuisioner ini. <b>Link URL yang tertera dalam isi halaman ini digunakan untuk mengakses hasil pengukuran tingkat kematangan organisasi.</b>
                </p>
            </div>  
          <!-- end of bagian validasi -->
          <div class="modal-footer">
            <h6 align="center">&copy;&nbsp;Copyright Risna Desmayanti <br> Ilmu Komputer - Universitas Pendidikan Indonesia</h6>
            
            <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
          </div>
      </div>
     
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


    <!-- Modal -->
    <!-- jQuery -->
    <script src="<?php echo base_url(); ?>assets/admin/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo base_url(); ?>assets/admin/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<?php echo base_url(); ?>assets/admin/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="<?php echo base_url(); ?>assets/admin/vendor/raphael/raphael.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/admin/vendor/morrisjs/morris.min.js"></script>
    <!-- <script src="<?php echo base_url(); ?>assets/admin/data/morris-data.js"></script> -->

    <script src="<?php echo base_url(); ?>assets/admin/js/highcharts.js"></script>
    <script src="<?php echo base_url(); ?>assets/admin/js/highcharts-more.js"></script>
    <script src="<?php echo base_url(); ?>assets/admin/js/exporting.js"></script>
    <script type="text/javascript">
        $(function() {
        /**
         * (c) 2010-2017 Torstein Honsi
         *
         * License: www.highcharts.com/license
         * 
         * Sand-Signika theme for Highcharts JS
         * @author Torstein Honsi
         */

        Highcharts.createElement('link', {
           href: 'https://fonts.googleapis.com/css?family=Signika:400,700',
           rel: 'stylesheet',
           type: 'text/css'
        }, null, document.getElementsByTagName('head')[0]);

        // Add the background image to the container
        Highcharts.wrap(Highcharts.Chart.prototype, 'getContainer', function (proceed) {
           proceed.call(this);
           this.container.style.background =
              'url(http://www.highcharts.com/samples/graphics/sand.png)';
        });


        Highcharts.theme = {
           colors: ['#f45b5b', '#8085e9', '#8d4654', '#7798BF', '#aaeeee',
              '#ff0066', '#eeaaee', '#55BF3B', '#DF5353', '#7798BF', '#aaeeee'],
           chart: {
              backgroundColor: null,
              style: {
                 fontFamily: 'Signika, serif'
              }
           },
           title: {
              style: {
                 color: 'black',
                 fontSize: '16px',
                 fontWeight: 'bold'
              }
           },
           subtitle: {
              style: {
                 color: 'black'
              }
           },
           tooltip: {
              borderWidth: 0
           },
           legend: {
              itemStyle: {
                 fontWeight: 'bold',
                 fontSize: '13px'
              }
           },
           xAxis: {
              labels: {
                 style: {
                    color: '#6e6e70'
                 }
              }
           },
           yAxis: {
              labels: {
                 style: {
                    color: '#6e6e70'
                 }
              }
           },
           plotOptions: {
              series: {
                 shadow: true
              },
              candlestick: {
                 lineColor: '#404048'
              },
              map: {
                 shadow: false
              }
           },

           // Highstock specific
           navigator: {
              xAxis: {
                 gridLineColor: '#D0D0D8'
              }
           },
           rangeSelector: {
              buttonTheme: {
                 fill: 'white',
                 stroke: '#C0C0C8',
                 'stroke-width': 1,
                 states: {
                    select: {
                       fill: '#D0D0D8'
                    }
                 }
              }
           },
           scrollbar: {
              trackBorderColor: '#C0C0C8'
           },

           // General
           background2: '#E0E0E8'

        };     
        // Apply the theme
        Highcharts.setOptions(Highcharts.theme);

            <?php $faktor = [1=>'Komunikasi', 2=>'Kompetensi', 3=>'Tata Kelola', 4=>'Kerjasama',
                        5=>'Arsitektur dan Ruang Lingkup', 6=>'Kemampuan'];if(isset($graph1)){ ?>
            Morris.Line({
                element: 'morris-area-chart',

                data: [
                <?php foreach($graph1 as $row){ ?>
                {y:'<?php echo $row['y'];?>',Jumlah:<?php echo $row['Jumlah']; ?>},
                <?php   } ?>],
                xkey: 'y',
                ykeys: ['Jumlah'],
                smooth: false,
                labels: ['Jumlah Responden']
            });
            <?php } ?>
            <?php if(isset($graph2)){ ?>
                Morris.Bar({
                    element: 'morris-bar-chart',
                    data: <?php echo json_encode($graph2); ?>,
                    xkey: 'y',
                    ykeys: [<?php foreach($graph2k as $r) echo $r['x'].","; ?>],
                    labels: [<?php foreach($graph2k as $r) echo $r['x'].","; ?>],
                    hideHover: 'auto',
                    resize: true
                });            
            <?php } ?>
            <?php if(isset($d1)){ ?>
                Highcharts.chart('container2', {

                chart: {
                polar: true,
                type: 'line'
                },

                title: {
                text: 'Maturity Level',
                x: -70
                },

                pane: {
                size: '90%'
                },

                xAxis: {
                categories: ['Komunikasi', 'Kompetensi', 'Tata Kelola', 'Kerjasama',
                        'Arsitektur dan Ruang Lingkup', 'Kemampuan'],
                tickmarkPlacement: 'on',
                lineWidth: 0
                },

                yAxis: {
                gridLineInterpolation: 'polygon',
                lineWidth: 0,
                min: 0,
                },

                tooltip: {
                shared: true,
                pointFormat: '<span style="color:{series.color}">{series.name}: <b>{point.y:,.2f}</b><br/>'
                },

                legend: {
                align: 'right',
                verticalAlign: 'top',
                y: 70,
                layout: 'vertical'
                },

                series: [{
                name: 'Readiness Level',
                data: <?php echo json_encode($d1); ?>,
                pointPlacement: 'on',
                color:'green',
                },{
                name: 'Expectations',
                data: <?php echo json_encode($avg); ?>,
                // pointPlacement: 'on',
                color:'red'
                },
                ]

                });
            <?php } ?>
            <?php if(isset($d2)){ $color=['blue','yellow','green','orange','black','purple'];$i=1;foreach($d2 as $row){?>
                Highcharts.chart('pt<?php echo $i; ?>', {

                chart: {
                polar: true,
                type: 'line'
                },

                title: {
                text: 'Maturity Level Faktor <?php echo $faktor[$i]; ?>',
                // y:100
                },

                pane: {
                size: '90%'
                },

                xAxis: {
                categories: <?php echo json_encode($row['cat']); ?>,
                tickmarkPlacement: 'on',
                lineWidth: 0
                },

                yAxis: {
                gridLineInterpolation: 'polygon',
                lineWidth: 0,
                min: 0
                },

                tooltip: {
                shared: true,
                pointFormat: '<span style="color:{series.color}">{series.name}: <b>{point.y:,.2f}</b><br/>'
                },

                series: [{
                name: 'Indikator <?php echo $i++; ?>',
                data: <?php echo json_encode($row['data']); ?>,
                pointPlacement: 'on',
                color: '<?php echo $color[$i-2]; ?>'
                },{
                name: 'Expectations',
                data: <?php echo json_encode($row['avg']); ?>,
                pointPlacement: 'on',
                color: 'red'
                }]

                });
            <?php }} ?>
            <?php if(isset($d3)){ ?>
                Highcharts.chart('containerpts', {

                chart: {
                polar: true,
                type: 'line'
                },

                title: {
                text: 'Maturity Level',
                x: -70
                },

                pane: {
                size: '90%'
                },

                xAxis: {
                categories: ['Komunikasi', 'Kompetensi', 'Tata Kelola', 'Kerjasama',
                        'Arsitektur dan Ruang Lingkup', 'Kemampuan'],
                tickmarkPlacement: 'on',
                lineWidth: 0
                },

                yAxis: {
                gridLineInterpolation: 'polygon',
                lineWidth: 0,
                min: 0
                },

                tooltip: {
                shared: true,
                pointFormat: '<span style="color:{series.color}">{series.name}: <b>{point.y:,.2f}</b><br/>'
                },

                legend: {
                align: 'right',
                verticalAlign: 'top',
                y: 70,
                layout: 'vertical'
                },

                series: [{
                name: 'Readiness Level',
                data: <?php echo json_encode($d3); ?>,
                pointPlacement: 'on',
                color: 'green'
                },{
                name: 'Readiness Level',
                data: <?php echo json_encode($avg); ?>,
                pointPlacement: 'on',
                color: 'red'
                }]

                });
            <?php } ?>
            <?php if(isset($d4)){ $color=['blue','yellow','green','orange','black','purple']; $i=1;foreach($d4 as $row){?>
                Highcharts.chart('pts<?php echo $i; ?>', {
                chart: {
                polar: true,
                type: 'line'
                },

                title: {
                text: 'Maturity Level Faktor <?php echo $faktor[$i]; ?>',
                // y: 120,
                },

                pane: {
                size: '90%'
                },

                xAxis: {
                categories: <?php echo json_encode($row['cat']); ?>,
                tickmarkPlacement: 'on',
                lineWidth: 0
                },

                yAxis: {
                gridLineInterpolation: 'polygon',
                lineWidth: 0,
                min: 0
                },

                tooltip: {
                shared: true,
                pointFormat: '<span style="color:{series.color}">{series.name}: <b>{point.y:,.2f}</b><br/>'
                },

                series: [{
                name: 'Indikator <?php echo $i++; ?>',
                data: <?php echo json_encode($row['data']); ?>,
                pointPlacement: 'on',
                color: '<?php echo $color[$i-2];?>'
                },{
                name: 'Expectations',
                data: <?php echo json_encode($row['avg']); ?>,
                pointPlacement: 'on',
                color: 'red'
                }]

                });
            <?php }} ?>
            <?php 
            if(isset($b1)){ ?>
            Highcharts.chart('batangptn', {
                chart: {
                    type: 'column'
                },
                title: {
                    text: 'Maturity Level'
                },
                xAxis: {
                    categories: [
                        'Komunikasi', 'Kompetensi', 'Tata Kelola', 'Kerjasama',
                        'Arsitektur dan Ruang Lingkup', 'Kemampuan'
                    ],
                    crosshair: true
                },
                yAxis: {
                    min: 0,
                    max: 5,
                    title: {
                        text: 'Level'
                    }
                },
                tooltip: {
                    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name} : </td>' +
                        '<td style="padding:0"><b>{point.y}</b></td></tr>',
                    shared: true,
                    useHTML: true,
                },
                plotOptions: {
                    column: {
                        pointPadding: 0.2,
                        borderWidth: 0
                    }
                },
                series: [{
                    name: 'Readiness Level',
                    data: <?php echo json_encode($b1); ?>,
                    color: 'red'

                }]
            });
            <?php } ?>

            <?php 
            if(isset($b2)){ $color=['blue','yellow','green','orange','black','purple'];$i=1;foreach($b2 as $row){?>
                Highcharts.chart('btn'+<?php echo $i++; ?>, {
                chart: {
                    type: 'column'
                },
                title: {
                    text: 'Maturity Level <?php echo $faktor[$i-1];?>'
                },
                xAxis: {
                    categories: <?php echo json_encode($row['cat']); ?>,
                    crosshair: true
                },
                yAxis: {
                    min: 0,
                    max: 5,
                    title: {
                        text: 'Level'
                    }
                },
                tooltip: {
                    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name} : </td>' +
                        '<td style="padding:0"><b>{point.y}</b></td></tr>',
                    shared: true,
                    useHTML: true,
                },
                plotOptions: {
                    column: {
                        pointPadding: 0.2,
                        borderWidth: 0
                    }
                },
                series: [{
                    name: 'Readiness Level',
                    data: <?php echo json_encode($row['data']); ?>,
                    color: '<?php echo $color[$i-2];?>'

                }]
                 });
            <?php }} ?>
            <?php 
            if(isset($b3)){ ?>
            Highcharts.chart('batangpts', {
                chart: {
                    type: 'column'
                },
                title: {
                    text: 'Maturity Level'
                },
                xAxis: {
                    categories: [
                        'Komunikasi', 'Kompetensi', 'Tata Kelola', 'Kerjasama',
                        'Arsitektur dan Ruang Lingkup', 'Kemampuan'
                    ],
                    crosshair: true
                },
                yAxis: {
                    min: 0,
                    max: 5,
                    title: {
                        text: 'Level'
                    }
                },
                tooltip: {
                    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name} : </td>' +
                        '<td style="padding:0"><b>{point.y}</b></td></tr>',
                    shared: true,
                    useHTML: true,
                },
                plotOptions: {
                    column: {
                        pointPadding: 0.2,
                        borderWidth: 0
                    }
                },
                series: [{
                    name: 'Readiness Level',
                    data: <?php echo json_encode($b3); ?>,
                    color: 'red'

                }]
            });
            <?php } ?>

            <?php 
            if(isset($b4)){ $color=['blue','yellow','green','orange','black','purple'];$i=1;foreach($b4 as $row){?>
                Highcharts.chart('bts'+<?php echo $i++; ?>, {
                chart: {
                    type: 'column'
                },
                title: {
                    text: 'Maturity Level <?php echo $faktor[$i-1];?>'
                },
                xAxis: {
                    categories: <?php echo json_encode($row['cat']); ?>,
                    crosshair: true
                },
                yAxis: {
                    min: 0,
                    max: 5,
                    title: {
                        text: 'Level'
                    }
                },
                tooltip: {
                    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name} : </td>' +
                        '<td style="padding:0"><b>{point.y}</b></td></tr>',
                    shared: true,
                    useHTML: true,
                },
                plotOptions: {
                    column: {
                        pointPadding: 0.2,
                        borderWidth: 0
                    }
                },
                series: [{
                    name: 'Readiness Level',
                    data: <?php echo json_encode($row['data']); ?>,
                    color: '<?php echo $color[$i-2];?>'

                }]
                 });
            <?php }} ?>            

        });

       

    </script>
    <!-- Custom Theme JavaScript -->
    <script src="<?php echo base_url(); ?>assets/admin/dist/js/sb-admin-2.js"></script>
    <script type="text/javascript">


    </script>
</body>

</html>
