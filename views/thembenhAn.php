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
							<input class="form-control" type="text" name="text_chieu_cao">
						</div>
						<div class="col-md-1 offset-md-1">
							<label for="txt_can_nang">Cân nặng</label>
						</div>	
						<div class="col-md-2">
							<input class="form-control" type="text" name="txt_can_nang">
						</div>
						<div class="col-md-1 offset-md-1">
							<label for="txt_huyet_ap">Huyết Áp</label>
						</div>
						<div class="col-md-2">
							<input class="form-control" type="text" name="txt_huyet_ap" >
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
			<form>
				<div class="form-group">
					<div class="form-row">
						<div class="col-md-2">
							<label for="text_bacsi">Xét nghiệm</label>
						</div>	
						<div class="col-md-3">
							<select class="form-control" name="sel_xet_nghiem">
								<option>1</option>
							</select>
						</div>
						<div class="col-md-1">
							<label for="id_benh_nhan">Kết quả</label>
						</div>	
						<div class="col-md-3">
							<textarea name="" id="" cols="30" rows="10"></textarea>
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
						<div class="col-md-1">
							<label for="text_chieu_cao">Chiều cao</label>
						</div>	
						<div class="col-md-2">
							<input class="form-control" type="text" name="text_chieu_cao">
						</div>
						<div class="col-md-1 offset-md-1">
							<label for="txt_can_nang">Cân nặng</label>
						</div>	
						<div class="col-md-2">
							<input class="form-control" type="text" name="txt_can_nang">
						</div>
						<div class="col-md-1 offset-md-1">
							<label for="txt_huyet_ap">Huyết Áp</label>
						</div>
						<div class="col-md-2">
							<input class="form-control" type="text" name="txt_huyet_ap" >
						</div>
					</div>
				</div>
			</form>
		</div>
    </div>
    <div class="card mb-3 mt-3">
		<div class="card-header bg-dark text-white">
			<i class="fas fa-table"></i>
			Thông tin toa thuốc
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
						<div class="col-md-1">
							<label for="text_chieu_cao">Chiều cao</label>
						</div>	
						<div class="col-md-2">
							<input class="form-control" type="text" name="text_chieu_cao">
						</div>
						<div class="col-md-1 offset-md-1">
							<label for="txt_can_nang">Cân nặng</label>
						</div>	
						<div class="col-md-2">
							<input class="form-control" type="text" name="txt_can_nang">
						</div>
						<div class="col-md-1 offset-md-1">
							<label for="txt_huyet_ap">Huyết Áp</label>
						</div>
						<div class="col-md-2">
							<input class="form-control" type="text" name="txt_huyet_ap" >
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="card mb-3">
		<div class="card-header">
			<i class="fas fa-table"></i>
			Danh sách bệnh án
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="table-benh-an-bacsi" width="100%" cellspacing="0">
					<thead>
						<tr>
							<th>#</th>
							<th>Họ tên</th>
							<th>Số TT</th>
							<th>Chuẩn đoán</th>
							<th>Ngày</th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>#</th>
							<th>Họ tên</th>
							<th>Số TT</th>
							<th>Chuẩn đoán</th>
							<th>Ngày</th>
							<th></th>
							<th></th>
						</tr>
					<tbody>
						<tr>
							<td>1</td>
							<td>System Architect</td>
							<td>15</td>
							<td>XXXXXX</td>
							<td>2011/04/25</td>
							<td><input type="button" class="btn btn-info btn-detail" value="Chi tiết"></td>
							<td><input type="button" class="btn btn-warning btn-edit" value="Sửa"></td>
						</tr>
						<tr>
							<td>1</td>
							<td>System Architect</td>
							<td>15</td>
							<td>XXXXXX</td>
							<td>2011/04/25</td>
							<td><input type="button" class="btn btn-info btn-detail" value="Chi tiết"></td>
							<td><input type="button" class="btn btn-warning btn-edit" value="Sửa"></td>
						</tr>
						<tr>
							<td>1</td>
							<td>System Architect</td>
							<td>15</td>
							<td>XXXXXX</td>
							<td>2011/04/25</td>
							<td><input type="button" class="btn btn-info btn-detail" value="Chi tiết"></td>
							<td><input type="button" class="btn btn-warning btn-edit" value="Sửa"></td>
						</tr>
						<tr>
							<td>1</td>
							<td>System Architect</td>
							<td>15</td>
							<td>XXXXXX</td>
							<td>2011/04/25</td>
							<td><input type="button" class="btn btn-info btn-detail" value="Chi tiết"></td>
							<td><input type="button" class="btn btn-warning btn-edit" value="Sửa"></td>
						</tr>
						<tr>
							<td>1</td>
							<td>System Architect</td>
							<td>15</td>
							<td>XXXXXX</td>
							<td>2011/04/25</td>
							<td><input type="button" class="btn btn-info btn-detail" value="Chi tiết"></td>
							<td><input type="button" class="btn btn-warning btn-edit" value="Sửa"></td>
						</tr>
						<tr>
							<td>1</td>
							<td>System Architect</td>
							<td>15</td>
							<td>XXXXXX</td>
							<td>2011/04/25</td>
							<td><input type="button" class="btn btn-info btn-detail" value="Chi tiết"></td>
							<td><input type="button" class="btn btn-warning btn-edit" value="Sửa"></td>
						</tr>
						<tr>
							<td>1</td>
							<td>System Architect</td>
							<td>15</td>
							<td>XXXXXX</td>
							<td>2011/04/25</td>
							<td><input type="button" class="btn btn-info btn-detail" value="Chi tiết"></td>
							<td><input type="button" class="btn btn-warning btn-edit" value="Sửa"></td>
						</tr>
						<tr>
							<td>1</td>
							<td>System Architect</td>
							<td>15</td>
							<td>XXXXXX</td>
							<td>2011/04/25</td>
							<td><input type="button" class="btn btn-info btn-detail" value="Chi tiết"></td>
							<td><input type="button" class="btn btn-warning btn-edit" value="Sửa"></td>
						</tr>
						<tr>
							<td>1</td>
							<td>System Architect</td>
							<td>15</td>
							<td>XXXXXX</td>
							<td>2011/04/25</td>
							<td><input type="button" class="btn btn-info btn-detail" value="Chi tiết"></td>
							<td><input type="button" class="btn btn-warning btn-edit" value="Sửa"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="card-footer small text-muted">Cập nhật mới nhất lúc 14:30 4/8/2018</div>
	</div>

</div>
<?php include('footer.php') ?>