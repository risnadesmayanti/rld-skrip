
    <!-- jQuery -->
    <script src="<?php echo base_url(); ?>assets/admin/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo base_url(); ?>assets/admin/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<?php echo base_url(); ?>assets/admin/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="<?php echo base_url(); ?>assets/admin/vendor/raphael/raphael.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/admin/vendor/morrisjs/morris.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/admin/data/morris-data.js"></script>

    <script src="<?php echo base_url(); ?>assets/admin/js/highcharts.js"></script>
    <script src="<?php echo base_url(); ?>assets/admin/js/highcharts-more.js"></script>
    <script src="<?php echo base_url(); ?>assets/admin/js/exporting.js"></script>
    <script type="text/javascript">
        $(function() {
            <?php if(isset($graph1)){ ?>
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
         Highcharts.chart('container2', {

        chart: {
            polar: true,
            type: 'line'
        },

        title: {
            text: 'Maturity Level',
            x: -80
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
            pointFormat: '<span style="color:{series.color}">{series.name}: <b>{point.y:,.f}</b><br/>'
        },

        legend: {
            align: 'right',
            verticalAlign: 'top',
            y: 70,
            layout: 'vertical'
        },

        series: [{
            name: 'Allocated Budget',
            data: [1,2,3,4,5,6],
            pointPlacement: 'on'
        }]

    });            
        });

       

    </script>
    <!-- Custom Theme JavaScript -->
    <script src="<?php echo base_url(); ?>assets/admin/dist/js/sb-admin-2.js"></script>
    <script type="text/javascript">


    </script>
</body>

</html>
