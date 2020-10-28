<div class="p-3" style="padding: 20px;">
<h3 class="text-center">Denah Lokasi</h3>
<table class="table table-borderless" style="border:0px !important; margin-bottom:10px;">
    <tr>
        <td width="2%">
            <div style="width:20px; height:20px;; border:1px solid black; background-color:red;">
            <p style="color:red;">clr</p>
            </div>
        </td>
        <td class="p-5" width="13%"><h5>BLOK SUDAH TERISI</h5></td>
        <td width="2%">
            <div style="width:20px; height:20px;; border:1px solid black; background-color:white;">
            <p style="color:white;">clr</p>
            </div>
        </td>
        <td class="p-5"><h5>BLOK BELUM TERISI</h5></td>
    </tr>
</table>

<div class="row">
    <div class="col-md-9">
        <div style="width: auto; height: 410px; border: 1px solid black;">
            <h6 class="text-center" style="margin-bottom: auto; margin-top: 200px" >MONUMEN</h6>
        </div>
    </div>
    <div class="col-md-3">
        <table class="table table-bordered denah table-sm" >
            <?php 
            $blokterisi = 0;
            $jumlahblok = 0;
            foreach($blok as $b):
                if($b->id_blok == 1){
                    // ambil pedagang di blok n 
                    $this->db->where('blokdagangan',$b->id_blok);
                    $ambilBlokPedagang = $this->db->get('tbl_pedagang')->result();
                    foreach($bloknumber as $bn):
                    ?>
                    <?php 
                        if(fmod($bn->nomor,2)!=0){
                    ?>
                    <tr>
                        <td class="text-center <?php foreach($ambilBlokPedagang as $abp){if($abp->bloknomor == $bn->nomor){echo 'bg-danger'; $blokterisi+=1;}} ?>">A - <?= $bn->nomor ?></td>
                    <?php 
                        }else if(fmod($bn->nomor,2)==0){
                    ?>
                        <td class="text-center <?php foreach($ambilBlokPedagang as $abp){if($abp->bloknomor == $bn->nomor){echo 'bg-danger'; $blokterisi+=1;}} ?>">A - <?= $bn->nomor ?></td>
                    </tr>
                        <?php } ?>
            <?php 
                    $jumlahblok += 1;
                    endforeach;
                }
            endforeach;
            ?>
        </table>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <h6 class="text-center">AREA KOSONG</h6>
    </div>
</div>

<div class="row">
    <div class="col-md-3">
        <table class="table table-bordered denah table-sm" >
            <?php 
            foreach($blok as $b):
                if($b->id_blok == 5){
                    // ambil pedagang di blok n 
                    $this->db->where('blokdagangan',$b->id_blok);
                    $ambilBlokPedagang = $this->db->get('tbl_pedagang')->result();                
                    foreach($bloknumber as $bn):
                    ?>
                    <?php 
                        if(fmod($bn->nomor,2)!=0){
                    ?>
                    <tr>
                        <td class="text-center <?php foreach($ambilBlokPedagang as $abp){if($abp->bloknomor == $bn->nomor){echo 'bg-danger'; $blokterisi+=1;}} ?>">E - <?= $bn->nomor ?></td>
                    <?php 
                        }else if(fmod($bn->nomor,2)==0){
                    ?>
                        <td class="text-center <?php foreach($ambilBlokPedagang as $abp){if($abp->bloknomor == $bn->nomor){echo 'bg-danger'; $blokterisi+=1;}} ?>">E - <?= $bn->nomor ?></td>
                    </tr>
                        <?php } ?>
            <?php 
                    $jumlahblok += 1;
                    endforeach;
                }
            endforeach;
            ?>
        </table>
    </div>
    <div class="col-md-6">
        <div style="width: auto; height: 410px; border: 1px solid black;">
            <h6 class="text-center" style="margin-bottom: auto; margin-top: 200px" >TAMAN</h6>
        </div>
    </div>
    <div class="col-md-3">
        <table class="table table-bordered denah table-sm" >
            <?php 
            foreach($blok as $b):
                if($b->id_blok == 2){
                    // ambil pedagang di blok n 
                    $this->db->where('blokdagangan',$b->id_blok);
                    $ambilBlokPedagang = $this->db->get('tbl_pedagang')->result();
                    foreach($bloknumber as $bn):
                    ?>
                    <?php 
                        if(fmod($bn->nomor,2)!=0){
                    ?>
                    <tr>
                        <td class="text-center <?php foreach($ambilBlokPedagang as $abp){if($abp->bloknomor == $bn->nomor){echo 'bg-danger'; $blokterisi+=1;}} ?>">B - <?= $bn->nomor ?></td>
                    <?php 
                        }else if(fmod($bn->nomor,2)==0){
                    ?>
                        <td class="text-center <?php foreach($ambilBlokPedagang as $abp){if($abp->bloknomor == $bn->nomor){echo 'bg-danger'; $blokterisi+=1;}} ?>">B - <?= $bn->nomor ?></td>
                    </tr>
                        <?php } ?>
            <?php 
                    $jumlahblok += 1;
                    endforeach;
                }
            endforeach;
            ?>
        </table>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <h6 class="text-center">JALAN</h6>
    </div>
</div>
<div class="row">
    <div class="col-md-3">
        <table class="table table-bordered denah table-sm" >
            <?php 
            foreach($blok as $b):
                if($b->id_blok == 6){
                    // ambil pedagang di blok n 
                    $this->db->where('blokdagangan',$b->id_blok);
                    $ambilBlokPedagang = $this->db->get('tbl_pedagang')->result();
                    foreach($bloknumber as $bn):
                    ?>
                    <?php 
                        if(fmod($bn->nomor,2)!=0){
                    ?>
                    <tr>
                        <td class="text-center <?php foreach($ambilBlokPedagang as $abp){if($abp->bloknomor == $bn->nomor){echo 'bg-danger'; $blokterisi+=1;}} ?>">F - <?= $bn->nomor ?></td>
                    <?php 
                        }else if(fmod($bn->nomor,2)==0){
                    ?>
                        <td class="text-center <?php foreach($ambilBlokPedagang as $abp){if($abp->bloknomor == $bn->nomor){echo 'bg-danger'; $blokterisi+=1;}} ?>">F - <?= $bn->nomor ?></td>
                    </tr>
                        <?php } ?>
            <?php 
                    $jumlahblok += 1;
                    endforeach;
                }
            endforeach;
            ?>
        </table>
    </div>
    <div class="col-md-6">
        <div style="width: auto; height: 410px; border: 1px solid black;">
            <h6 class="text-center" style="margin-bottom: auto; margin-top: 200px" >TAMAN</h6>
        </div>
    </div>
    <div class="col-md-3">
        <table class="table table-bordered denah table-sm" >
            <?php 
            foreach($blok as $b):
                if($b->id_blok == 3){
                    // ambil pedagang di blok n 
                    $this->db->where('blokdagangan',$b->id_blok);
                    $ambilBlokPedagang = $this->db->get('tbl_pedagang')->result();
                    foreach($bloknumber as $bn):
                    ?>
                    <?php 
                        if(fmod($bn->nomor,2)!=0){
                    ?>
                    <tr>
                        <td class="text-center <?php foreach($ambilBlokPedagang as $abp){if($abp->bloknomor == $bn->nomor){echo 'bg-danger'; $blokterisi+=1;}} ?>">C - <?= $bn->nomor ?></td>
                    <?php 
                        }else if(fmod($bn->nomor,2)==0){
                    ?>
                        <td class="text-center <?php foreach($ambilBlokPedagang as $abp){if($abp->bloknomor == $bn->nomor){echo 'bg-danger'; $blokterisi+=1;}} ?>">C - <?= $bn->nomor ?></td>
                    </tr>
                        <?php } ?>
            <?php 
                    $jumlahblok += 1;
                    endforeach;
                }
            endforeach;
            ?>
        </table>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <h6 class="text-center">JALAN</h6>
    </div>
</div>
<div class="row">
    <div class="col-md-3">
        <table class="table table-bordered denah table-sm" >
            <?php 
            foreach($blok as $b):
                if($b->id_blok == 18){
                    // ambil pedagang di blok n 
                    $this->db->where('blokdagangan',$b->id_blok);
                    $ambilBlokPedagang = $this->db->get('tbl_pedagang')->result();
                    foreach($bloknumber as $bn):
                    ?>
                    <?php 
                        if(fmod($bn->nomor,2)!=0){
                    ?>
                    <tr>
                        <td class="text-center <?php foreach($ambilBlokPedagang as $abp){if($abp->bloknomor == $bn->nomor){echo 'bg-danger'; $blokterisi+=1;}} ?>">G - <?= $bn->nomor ?></td>
                    <?php 
                        }else if(fmod($bn->nomor,2)==0){
                    ?>
                        <td class="text-center <?php foreach($ambilBlokPedagang as $abp){if($abp->bloknomor == $bn->nomor){echo 'bg-danger'; $blokterisi+=1;}} ?>">G - <?= $bn->nomor ?></td>
                    </tr>
                        <?php } ?>
            <?php 
                    $jumlahblok += 1;
                    endforeach;
                }
            endforeach;
            ?>
        </table>
    </div>
    <div class="col-md-6">
        <div style="width: auto; height: 410px; border: 1px solid black;">
            <h6 class="text-center" style="margin-bottom: auto; margin-top: 200px" >TAMAN</h6>
        </div>
    </div>
    <div class="col-md-3">
        <table class="table table-bordered denah table-sm" >
            <?php 
            foreach($blok as $b):
                if($b->id_blok == 4){
                    // ambil pedagang di blok n 
                    $this->db->where('blokdagangan',$b->id_blok);
                    $ambilBlokPedagang = $this->db->get('tbl_pedagang')->result();
                    foreach($bloknumber as $bn):
                    ?>
                    <?php 
                        if(fmod($bn->nomor,2)!=0){
                    ?>
                    <tr>
                        <td class="text-center <?php foreach($ambilBlokPedagang as $abp){if($abp->bloknomor == $bn->nomor){echo 'bg-danger'; $blokterisi+=1;}} ?>">D - <?= $bn->nomor ?></td>
                    <?php 
                        }else if(fmod($bn->nomor,2)==0){
                    ?>
                        <td class="text-center <?php foreach($ambilBlokPedagang as $abp){if($abp->bloknomor == $bn->nomor){echo 'bg-danger'; $blokterisi+=1;}} ?>">D - <?= $bn->nomor ?></td>
                    </tr>
                        <?php } ?>
            <?php 
                    $jumlahblok += 1;
                    endforeach;
                }
            endforeach;
            ?>
        </table>
    </div>
</div>
<br>
<p><b>Jumlah Tempat Dagangan :</b> <?= $jumlahblok ?> Tempat</p>
<p><b>Tempat Dagangan yang terisi :</b> <?= $blokterisi ?> Tempat</p>
<p><b>Tempat Dagangan yang kosong :</b> <?php $blokkosong = $jumlahblok - $blokterisi; echo $blokkosong; ?> Tempat</p>
</div>