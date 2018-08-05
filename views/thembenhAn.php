<?php include('header.php') ?>
<div class="container-fluid">
    <div class="card mb-3 mt-3">
		<div class="card-header bg-info">
			<i class="fas fa-table"></i>
			Thông tin cơ bản của bệnh án
		</div>
		<div class="card-body">
			<form>
				<div class="form-group">
					<div class="form-row">
						<div class="col-md-2">
							<label for="text_bacsi">Người tạo bệnh án</label>
						</div>	
						<div class="col-md-3">
							<input class="form-control" type="text" name="text_bacsi" value="<?php echo $user['ten'] ?>" readonly>
						</div>
						<div class="col-md-1">
							<label for="id_benh_nhan">Bệnh nhân</label>
						</div>	
						<div class="col-md-3">
							<input class="form-control" type="text" name="id_benh_nhan" value="25" hidden>
							<input class="form-control" type="text" name="text_benh_nhan" value="Nguyễn Thị Thu Điểm" readonly>
						</div>
						<div class="col-md-1">
							<label for="txt_soTT">Số thứ tự</label>
						</div>
						<div class="col-md-1">
							<input class="form-control" type="text" name="txt_soTT" value="16" readonly>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="form-row">
						<div class="col-md-2">
							<label for="text_chieu_cao">Chiều cao</label>
						</div>	
						<div class="col-md-2">
							<input class="form-control" type="text" name="text_chieu_cao" placeholder="CM">
						</div>
						<div class="col-md-1 offset-md-1">
							<label for="txt_can_nang">Cân nặng</label>
						</div>	
						<div class="col-md-2">
							<input class="form-control" type="text" name="txt_can_nang" placeholder="KG">
						</div>
						<div class="col-md-1 offset-md-1">
							<label for="txt_huyet_ap">Huyết Áp</label>
						</div>
						<div class="col-md-2">
							<input class="form-control" type="text" name="txt_huyet_ap" placeholder="mmHg">
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="form-row">
						<div class="col-md-2">
							<label for="text_chuan_doan">Chuẩn đoán</label>
						</div>	
						<div class="col-md-6">
							<textarea class="form-control" name="text_chuan_doan" cols="30" rows="3"></textarea>
						</div>
					</div>
				</div>
			</form>
		</div>
    </div>
    <div class="card mb-3 mt-3">
		<div class="card-header bg-warning">
			<i class="fas fa-table"></i>
			Thông tin xét nghiệm
		</div>
		<div class="card-body">
			<div class="form-group">
				<div class="form-row">
					<div class="col-md-2">
						<label for="text_bacsi">Xét nghiệm</label>
					</div>	
					<div class="col-md-4">
						<select class="form-control" name="sel_xet_nghiem">
							<option>1</option>
						</select>
					</div>
					<div class="col-md-1">
						<label for="txt_gio">Giờ XN</label>
					</div>
					<div class="col-md-2 bootstrap-timepicker timepicker">
						<input class="form-control" type="text" id="txt_gio" name="txt_gio">
					</div>
					<div class="col-md-1">
						<label for="txt_lan_thu">Lần thứ</label>
					</div>	
					<div class="col-md-2">
						<input class="form-control" type="text" name="txt_lan_thu">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col-md-2">
						<label for="txt_ket_qua">Kết quả</label>
					</div>	
					<div class="col-md-6">
						<textarea class="form-control" name="txt_ket_qua" rows="3"></textarea>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col-md-2 offset-md-2">
						<button class="btn btn-warning" id="btn_them_xet_nghiem"><i class="fas fa-plus"></i>Thêm phiếu</button>
					</div>
				</div>
			</div>

			<hr class="hr_tag_warning">
			<div class="table-responsive">
				<table class="table table-bordered" id="table_xet_nghiem" width="100%" cellspacing="0">
					<thead>
						<tr>
							<th>#</th>
							<th>Xét nghiệm</th>
							<th>Giờ</th>
							<th>Lần thứ</th>
							<th>Kết quả</th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>Chụp X-quang</td>
							<td>15:30</td>
							<td>1</td>
							<td>XXXXXX</td>
							<td><input type="button" class="btn btn-info btn-detail" value="Sửa"></td>
							<td><input type="button" class="btn btn-warning btn-edit" value="Xóa"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
    </div>
    <div class="card mb-3 mt-3">
		<div class="card-header bg-dark text-white">
			<i class="fas fa-table"></i>
			Thông tin toa thuốc
		</div>
		<div class="card-body">
			<div class="form-group">
				<div class="form-row">
					<div class="col-md-2">
						<label for="sel_thuoc">Tên thuốc</label>
					</div>	
					<div class="col-md-4">
						<select class="form-control" name="sel_thuoc" id="sel_thuoc">
							<option>Panadol</option>
							<option>Panadol</option>
							<option>Panadol</option>
							<option>Panadol</option>
						</select>
					</div>
					<div class="col-md-1">
						<label for="txt_donvi">Đơn vị</label>
					</div>
					<div class="col-md-1">
						<input class="form-control" type="text"  name="txt_donvi" value="vỉ" readonly>
					</div>
					<div class="col-md-1">
						<label for="txt_donvi">Số lượng</label>
					</div>
					<div class="col-md-1">
						<input class="form-control" type="text"  name="txt_soluong" value="2">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col-md-2 offset-md-2">
						<button class="btn bg-dark text-white" id="btn_them_xet_nghiem"><i class="fas fa-plus"></i>Thêm vào toa thuốc</button>
					</div>
				</div>
			</div>

			<hr class="hr_tag_dark">
			<div class="table-responsive">
				<table class="table table-bordered" id="table_thuoc" width="100%" cellspacing="0">
					<thead>
						<tr>
							<th>#</th>
							<th>Tên thuốc</th>
							<th>Đơn vị</th>
							<th>Số lượng</th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>Panadol</td>
							<td>vỉ</td>
							<td>2</td>
							<td><input type="button" class="btn btn-info btn-detail" value="Sửa"></td>
							<td><input type="button" class="btn btn-warning btn-edit" value="Xóa"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="row row-end">
		<div class="offset-md-5 col-md-4">
			<input name="nameRequest" value="300" hidden>
			<button class="btn btn-info" name="btn_save" id="btn_save"><i class="fas fa-save"></i> Lưu bệnh án</button>
		</div>
	</div>
</div>
<?php include('footer.php') ?>
<script>
	$("#sel_thuoc").chosen({});
</script>