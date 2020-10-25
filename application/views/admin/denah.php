<table class="table table-borderless">
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
<?php 
    $blokterisi = 0;
    $jumlahblok = 0;
    foreach($blok as $b):
        // ambil pedagang di blok n 
        $this->db->where('blokdagangan',$b->id_blok);
        $ambilBlokPedagang = $this->db->get('tbl_pedagang')->result();
        // print_r($ambilBlokPedagang);
?>
<table class="table table-bordered mb-4">
    <tr>
        <td class="bg-primary"><b><?= $b->nama_blok ?></b></td>
        <td></td>
        <?php 
            foreach($bloknumber as $bn): 
                ?>
                <td class='text-center <?php foreach($ambilBlokPedagang as $abp){if($abp->bloknomor == $bn->nomor){echo 'bg-danger'; $blokterisi+=1;}} ?>' ><?= $b->nama_blok ?> - <?= $bn->nomor ?></td>
        <?php
            $jumlahblok += 1;
            endforeach
        ?>
    </tr>
</table>
<br>
<?php endforeach ?>
<p><b>Jumlah Tempat Dagangan :</b> <?= $jumlahblok ?> Tempat</p>
<p><b>Tempat Dagangan yang terisi :</b> <?= $blokterisi ?> Tempat</p>
<p><b>Tempat Dagangan yang kosong :</b> <?php $blokkosong = $jumlahblok - $blokterisi; echo $blokkosong; ?> Tempat</p>