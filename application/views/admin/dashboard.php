<?php
  $cek    = $user->row();
  $id_user = $cek->id_user;
  $nama    = $cek->nama_lengkap;
  $level   = $cek->level;

  $tgl = date('m-Y');
?>

<!-- Main content -->
<div class="content-wrapper">
  <!-- Content area -->
  <div class="content">

    <!-- Dashboard content -->
    <div class="row">
      <!-- Basic datatable -->
      <div class="panel panel-flat bg-info">
        <div class="panel-heading">
          <h3 class="panel-title">
            <center>Selamat Datang, <?php echo ucwords($nama); ?></center>
          </h3>
        </div>
      </div>
      <!-- /basic datatable --> 

      <div class="row">
        <div class="col-lg-12">

          <!-- Quick stats boxes -->
          <div class="row">
            <div class="col-lg-12">
              <!-- Current server load -->
              <div class="panel bg-teal-400">
                <div class="panel-body">
                  <div class="heading-elements">
                    <span class="heading-text"></span>
                  </div>
                  <h3 class="no-margin">
                    <center>
                    <?php
                    $thn_ini = date('Y');
                    $this->db->like('tgl_pedagang', $thn_ini, 'after');
                    echo number_format($this->db->get('tbl_pedagang')->num_rows(),0,",","."); ?>
                  </h3>
                  </center>
                  <center>
                  Pedagang yang mendaftar Tahun <?php echo $thn_ini; ?>
</center>
                </div>
              </div>
              <!-- /current server load -->
            </div>
          </div>
          <!-- /quick stats boxes -->


        </div>

      </div>

      <?php if ($web_ppg->status_ppg == 'buka') {?>
        <div class="alert alert-info alert-dismissible" role="alert">
          <form action="" method="post">
            <button type="submit" name="btnnonaktif" class="btn btn-primary" onclick="return confirm('Anda Yakin?')"><i class="icon-laptop"></i> Tutup Pendaftaran PPG Online!</button>
            <strong>Status Pendaftaran PPG Online</strong> masih dibuka. Terakhir diubah <?php echo date('d-m-Y H:i:s', strtotime($web_ppg->tgl_diubah)); ?>.
           </form>
        </div>
      <?php }else{ ?>
        <div class="alert alert-warning alert-dismissible" role="alert">
          <form action="" method="post">
            <button type="submit" name="btnaktif" class="btn btn-warning" onclick="return confirm('Anda Yakin?')"><i class="icon-laptop"></i> Buka Pendaftaran PPG Online!</button>
            <strong>Status Pendaftaran PPG Online</strong> masih ditutup. Terakhir diubah <?php echo date('d-m-Y H:i:s', strtotime($web_ppg->tgl_diubah)); ?>.
           </form>
        </div>
      <?php } ?>

    </div>
    <!-- /dashboard content -->

    <div class="row">
      <div class="panel panel-flat col-md-12">
          <div class="panel-body">
            <fieldset class="content-group">
              <legend class="text-bold"><i class="icon-stats-dots"></i> Grafik Statistik Pendaftaran</legend>
              <?php $this->load->view('admin/statistik/pendaftar_tahun'); ?>
            </fieldset>
          </div>
      </div>
    </div>

    <div class="row">
      <div class="panel panel-flat col-md-12">
          <div class="panel-body">
            <fieldset class="content-group">
              <legend class="text-bold"><i class="icon-pin"></i> Informasi Blok yang tersedia</legend>
              <?php $this->load->view('admin/denah'); ?>
            </fieldset>
          </div>
      </div>
    </div>