<?php include('header.php') ?>
<?php 
	$quyen = $user['quyen'];
	if( isset($_GET['bn']) && $quyen == '0'){
		$id_bacsi =  $user['id'];
		$id_benhnhan = $_GET['bn'];
		$conn = connection::_open();
		$sql = "SELECT * FROM tblbenhan A , tblbenhnhan B WHERE A.idBenhnhan = B.id 
		AND A.idBenhnhan = '{$id_benhnhan}'
		AND A.idBacsi =  '{$id_bacsi}' ";
		$benhAn = mysqli_query($conn,$sql)->fetch_all(MYSQLI_ASSOC);
		connection::_close($conn);
	}else if( $quyen == '1' ){
		$id_benhnhan =  $user['id'];
		$conn = connection::_open();
		$sql = "SELECT * FROM tblbenhan A , tblbenhnhan B WHERE A.idBenhnhan = B.id 
		AND A.idBenhnhan = '{$id_benhnhan}' ";
		$benhAn = mysqli_query($conn,$sql)->fetch_all(MYSQLI_ASSOC);
		connection::_close($conn);
	}else{
		echo "<meta http-equiv='Refresh' content='0;URL=/' />";
	}
	
?>
<div class="container-fluid">
	<div class="row mt-3 mb-3 ">
		<div class="col-md-2 col-offset-2">
			<a class="btn btn-success"  href="/them-ho-so-benh-an" ><i class="fas fa-plus"></i>Thêm bệnh án</a>
		</div>
	</div>
	<div class="card mb-3">
		<div class="card-header">
			<i class="fas fa-table"></i>
			Danh sách bệnh án
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="table-ds-benh-an" width="100%" cellspacing="0">
					<thead>
						<tr>
							<th>#</th>
							<th>Họ tên</th>
							<th>Số TT</th>
							<th>Chuẩn đoán</th>
							<th>Ngày</th>
							<th></th>
							<?php if($quyen=='0'):?>
							<th></th>
							<?php endif;?>
						</tr>
					</thead>
					<tbody>
						<?php 
							$index = 0;
							if($benhAn){
								foreach($benhAn as $ba){
									$index ++;
									$ngay = date('d/m/Y' , strtotime($ba['ngayTao']));
									echo "<tr>
										<td>{$index}</td>
										<td>{$ba['ten']}</td>
										<td>{$ba['soTT']}</td>
										<td>{$ba['chuanDoan']}</td>
										<td>{$ngay}</td> 
										<td><a class='btn btn-info btn-detail'>Chi tiết</a></td>";
										if($quyen=='0'):
											echo "<td><a class='btn btn-warning btn-edit' >Sửa</a></td>";
										endif;
									echo"</tr>";
								}
							}
						?>
					</tbody>
				</table>
			</div>
		</div>
		<div class="card-footer small text-muted">Cập nhật mới nhất lúc 14:30 4/8/2018</div>
	</div>

</div>
<?php include('footer.php') ?>