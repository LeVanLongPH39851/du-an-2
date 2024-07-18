<div class="container">
    <h5 style="height:50px;display:flex;justify-content:center; align-items:center;font-weight:700;" class="title">Chi
        Tiết Đơn Hàng
    </h5>
    <div class="row">
        <div class="col">
            <div style="margin-bottom:15px;" class="card">
                <div style="background-color: #d19c97;border-bottom:none;" class="card-header">
                    <h5 style="margin-bottom: 0;" class="card-title">Sản Phẩm</h5>
                </div>
                <div class="card-content">
                    <div class="order-details">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th class="">Tên sản phẩm</th>
                                    <th class="">Hình</th>
                                    <th class="">Số lượng</th>
                                    <th class="">Size</th>
                                    <th class="">Color</th>
                                    <th class="">Giá</th>
                                    <th class="">Tạm tính</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                $sum = 0;
                $id_dh = $_GET["id_dh"];
                $dh = showonedh($id_dh);
                foreach (showchitietdh($id_dh) as $row) :
                  $sp = loadone_sanpham($row["id_product"]);
                  $pv = showonepvbyid($row["id_variants"]);
                ?>
                                <tr>
                                    <td><?php echo $sp[0]['name'] ?></td>
                                    <td><img src="adminduanmau/<?php echo $sp[0]['img'] ?>" width="70px" alt=""></td>
                                    <td><?php echo $row['soluong'] ?></td>
                                    <td><?php echo $pv[0]['color_name'] ?></td>
                                    <td><?php echo $pv[0]['size_name'] ?></td>
                                    <td><?php echo intval($sp[0]['price'])?>.000 VNĐ</td>
                                    <td><?php echo intval($row['total'])?>.000 VNĐ</td>
                                </tr>
                                <?php
                  $sum += $row['total'];
                endforeach ?>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <th>Trạng Thái:</th>
                                    <td
                                        <?php if($dh[0]['trangthai']=="Đã hủy"){echo 'style="color:#FF0000;font-weight:700"';}else if($dh[0]['trangthai']=="Đã giao hàng"){echo 'style="color:#2ECC71;font-weight:700"';}else{echo 'style="color:#FFD700;font-weight:700"';}?>>
                                        <?php echo $dh[0]['trangthai'] ?></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- <div class="card-footer">
                </div> -->
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xl-6">
            <?php $dh = showonedh($id_dh); ?>
            <div style="background-color: #d19c97;height:50px;padding-left:15px">
                <h3 style="line-height:50px;">Thông tin khách hàng</h3>
            </div>
            <ul class="list-group">
                <li class="list-group-item">Họ tên: <?php echo $dh[0]['hoten'] ?></li>
                <li class="list-group-item">Địa chỉ: <?php echo $dh[0]['address'] ?></li>
                <li class="list-group-item">Điện thoại: <?php echo $dh[0]['phone'] ?></li>
            </ul>
        </div>
        <div class="col-xl-6">
            <div style="background-color: #d19c97;height:50px;padding-left:12px">
                <h3 style="line-height:50px;">Hóa Đơn</h3>
            </div>
            <table class="table no-bordered">
                <thead>
                    <tr>
                        <th style="border-left: 2px solid #edf1ff;">Tên</th>
                        <th style="border-right: 2px solid #edf1ff;">Giá</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="border-left: 2px solid #edf1ff;">Tổng tiền</td>
                        <td style="border-right: 2px solid #edf1ff;"><?php echo number_format($sum, 0, ',', '.') ?>.000
                            VNĐ</td>
                    </tr>
                    <tr>
                        <td style="border-left: 2px solid #edf1ff;">Phí vận chuyển</td>
                        <td style="border-right: 2px solid #edf1ff;">10.000 VNĐ</td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td style="border-left: 2px solid #edf1ff;border-bottom: 2px solid #edf1ff;">Tổng cộng</td>
                        <?php $sum+=10; ?>
                        <td style="border-right: 2px solid #edf1ff;border-bottom: 2px solid #edf1ff;">
                            <?php echo number_format($sum, 0, ',', '.') ?>.000
                            VNĐ</td>
                    </tr>
                </tfoot>
            </table>
        </div>
    </div>
    <div class="row">
        <?php
     $dh = showonedh($id_dh);
     if ($dh[0]['trangthai']!='Đã hủy'&&$dh[0]['trangthai']!='Đã giao hàng'&&$dh[0]['trangthai']!="Đang giao hàng") : ?>
        <div class="col-xl-6">
            <a href="index.php?act=huydonhang&id_dh=<?php echo $id_dh ?>" class='btn btn-danger'>Huỷ Đơn Hàng</a>
        </div>
        <?php endif?>
    </div>
</div>
</div>