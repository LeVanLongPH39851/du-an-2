<!-- Featured Start -->
<div class="container-fluid pt-5">
    <div class="row px-xl-5 pb-3">
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                <h5 class="font-weight-semi-bold m-0">Quality Product</h5>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                <h5 class="font-weight-semi-bold m-0">Free Shipping</h5>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                <h5 class="font-weight-semi-bold m-0">14-Day Return</h5>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                <h5 class="font-weight-semi-bold m-0">24/7 Support</h5>
            </div>
        </div>
    </div>
</div>
<!-- Featured End -->

<!-- Offer Start -->
<div class="container-fluid offer pt-5">
    <div class="row px-xl-5">
        <div class="col-md-6 pb-4">
            <div class="position-relative bg-secondary text-center text-md-right text-white mb-2 py-5 px-5">
                <img src="img/offer-53.png" alt="">
                <div class="position-relative" style="z-index: 1;">
                    <h5 class="text-uppercase text-primary mb-3">GIẢM GIÁ 20% CHO TẤT CẢ ĐƠN HÀNG</h5>
                    <h1 class="mb-4 font-weight-semi-bold">Thời Trang Mùa Xuân</h1>
                    <a href="" class="btn btn-outline-primary py-md-2 px-md-3">Mua Ngay</a>
                </div>
            </div>
        </div>
        <div class="col-md-6 pb-4">
            <div class="position-relative bg-secondary text-center text-md-left text-white mb-2 py-5 px-5">
                <img src="img/offer-6.png" alt="">
                <div class="position-relative" style="z-index: 1;">
                    <h5 class="text-uppercase text-primary mb-3">GIẢM GIÁ 20% CHO TẤT CẢ ĐƠN HÀNG</h5>
                    <h1 class="mb-4 font-weight-semi-bold">Thời Trang Mùa Đông</h1>
                    <a href="" class="btn btn-outline-primary py-md-2 px-md-3">Mua Ngay</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Offer End -->


<!-- Products Start -->
<div class="container-fluid pt-5">
    <div class="text-center mb-4">
        <h2 class="section-title px-5"><span class="px-2">Sản Phẩm Mới Nhất</span></h2>
    </div>
    <div class="row px-xl-5 pb-3">
        <?php
                 foreach($spnew as $sp){
                     extract($sp);
                     $linksp="index.php?act=sanphamct&idsp=".$id;
                     $integerValue = intval($price);
                     echo'<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                     <div class="card product-item border-0 mb-4">
                         <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                             <img class="img-fluid w-100" src="adminduanmau/'.$img.'" alt="">
                         </div>
                         <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                             <h6 class="text-truncate mb-3">'.$name.'</h6>
                             <div class="d-flex justify-content-center">
                                 <h6>'.$integerValue.'.000 VNĐ</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
                             </div>
                         </div>
                        <div class="card-footer d-flex justify-content-between bg-light border">
                  <a href="'.$linksp.'" class="btn btn btn-block text-dark p-0">
                   <i class="fas fa-eye text-primary mr-1"></i>Xem Chi Tiết</a>
              </div>
                     </div>
                 </div>';
                 }
                 ?>
    </div>
</div>
<!-- Products End -->


<!-- Subscribe Start -->
<div class="container-fluid bg-secondary my-5">
    <div class="row justify-content-md-center py-5 px-xl-5">
        <div class="col-md-6 col-12 py-5">
            <div class="text-center mb-2 pb-2">
                <h2 class="section-title px-5 mb-3"><span class="bg-secondary px-2">Luôn Cập Nhật Thông Tin</span></h2>
                <p>Thời trang không chỉ là một lựa chọn, mà là một cái nhìn khẳng định phong cách và cái tôi của bạn với
                    nhiều quần áo đa dạng và đầy màu sắc tại cửa hàng chúng tôi.</p>
            </div>
            <form action="">
                <div class="input-group">
                    <input type="text" class="form-control border-white p-4" placeholder="Nhập Email Tại Đây">
                    <div class="input-group-append">
                        <button class="btn btn-primary px-4">Đặt Mua</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Subscribe End -->


<!-- Products Start -->
<div class="container-fluid pt-5">
    <div class="text-center mb-4">
        <h2 class="section-title px-5"><span class="px-2">Sản Phẩm Yêu Thích</span></h2>
    </div>
    <div class="row px-xl-5 pb-3">
        <?php
            foreach($dstop8 as $sp){
              extract($sp);
              $linksp="index.php?act=sanphamct&idsp=".$id;
              $integerValue = intval($price);
              echo '<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
              <div class="card product-item border-0 mb-4">
                  <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                      <img class="img-fluid w-100" src="adminduanmau/'.$img.'" alt="">
                  </div>
                  <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                      <h6 class="text-truncate mb-3">'.$name.'</h6>
                      <div class="d-flex justify-content-center">
                          <h6>'.$integerValue.'.000 VNĐ</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
                      </div>
                  </div>
                  <div class="card-footer d-flex justify-content-between bg-light border">
                  <a href="'.$linksp.'" class="btn btn btn-block text-dark p-0">
                   <i class="fas fa-eye text-primary mr-1"></i>Xem Chi Tiết
                  </a>
              </div>
              </div>
          </div>';
            }
            ?>
    </div>
</div>
<!-- Products End -->


<!-- Vendor Start -->
<div class="container-fluid py-5">
    <div class="row px-xl-5">
        <div class="col">
            <div class="owl-carousel vendor-carousel">
                <div class="vendor-item border p-4">
                    <img src="img/vendor-1.jpg" alt="">
                </div>
                <div class="vendor-item border p-4">
                    <img src="img/vendor-2.jpg" alt="">
                </div>
                <div class="vendor-item border p-4">
                    <img src="img/vendor-3.jpg" alt="">
                </div>
                <div class="vendor-item border p-4">
                    <img src="img/vendor-4.jpg" alt="">
                </div>
                <div class="vendor-item border p-4">
                    <img src="img/vendor-5.jpg" alt="">
                </div>
                <div class="vendor-item border p-4">
                    <img src="img/vendor-6.jpg" alt="">
                </div>
                <div class="vendor-item border p-4">
                    <img src="img/vendor-7.jpg" alt="">
                </div>
                <div class="vendor-item border p-4">
                    <img src="img/vendor-8.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Vendor End -->