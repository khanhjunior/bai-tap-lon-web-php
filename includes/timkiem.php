<?php
    if (isset($_POST['search_button'])) {

        $tukhoa = $_POST['search_product'];


        $sql_product = mysqli_query($con, "SELECT * FROM tbl_sanpham WHERE sanpham_name LIKE '%$tukhoa%' ORDER BY sanpham_id DESC");

        $title = $tukhoa;
    }
    ?>
 <div class="ads-grid py-sm-5 py-4">
     <div class="container py-xl-4 py-lg-2">
         <h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">Từ khóa tìm kiếm : <?php echo $title ?></h3>
         <div class="row">
             <div class="agileinfo-ads-display col-lg-12">
                 <div class="wrapper">
                     <div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
                         <div class="row">
                             <?php
                                while ($row_sanpham = mysqli_fetch_array($sql_product)) {
                                ?>
                                 <div class="col-md-3 product-men">
                                     <div class="men-pro-item simpleCart_shelfItem">
                                         <div class="men-thumb-item text-center">
                                             <img style="width: 100%" src="uploads/<?php echo $row_sanpham['sanpham_image'] ?>" alt="">
                                         </div>
                                         <div class="item-info-product text-center border-top mt-4">
                                             <h4 class="pt-1">
                                                 <a href="?quanly=chitietsp&id=<?php echo $row_sanpham['sanpham_id'] ?>"><?php echo $row_sanpham['sanpham_name'] ?></a>
                                             </h4>
                                             <div class="info-product-price my-2">
                                                 <span class="item_price"><?php echo number_format($row_sanpham['sanpham_giakhuyenmai']) . 'vnđ' ?></span>
                                                 <del><?php echo number_format($row_sanpham['sanpham_gia']) . 'vnđ' ?></del>
                                             </div>
                                             <div style="width: 100%" class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                                 <form action="?quanly=giohang" method="post">
                                                     <fieldset>
                                                         <input type="hidden" name="tensanpham" value="<?php echo $row_sanpham['sanpham_name'] ?>" />
                                                         <input type="hidden" name="sanpham_id" value="<?php echo $row_sanpham['sanpham_id'] ?>" />
                                                         <input type="hidden" name="giasanpham" value="<?php echo $row_sanpham['sanpham_gia'] ?>" />
                                                         <input type="hidden" name="hinhanh" value="<?php echo $row_sanpham['sanpham_image'] ?>" />
                                                         <input type="hidden" name="soluong" value="1" />
                                                         <div style="display: flex; justify-content: space-between;">
                                                             <a style="display: inline-block; background: #0876C4; padding-top: 10px; font-weight: 600" href="?quanly=chitietsp&id=<?php echo $row_sanpham['sanpham_id'] ?>" class="btn my-2 my-sm-0 text-white">Chi tiết</a>
                                                             <input style="width: 60%" type="submit" name="themgiohang" value="Thêm giỏ hàng" class="button" />
                                                         </div>
                                                     </fieldset>
                                                 </form>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                             <?php
                                }
                                ?>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </div>