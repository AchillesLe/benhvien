<?php include('header.php') ?>
<?php 
	$id_bacsi = $user['id'];
	$conn = connection::_open();
	$sql = "SELECT * FROM tbldatlichkham A , tblbenhnhan B WHERE A.idBenhnhan = B.id AND A.idBacsi='{$id_bacsi}' ORDER BY A.ngayHen DESC";
	$data = mysqli_query($conn,$sql)->fetch_all(MYSQLI_ASSOC);
	connection::_close($conn);
?>
<div class="container-fluid">
	<div class="card mb-3 card-ds-lich-kham">
		<div class="card-header">
			<i class="fas fa-table"></i>
			Danh sách lịch khám
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="table-ds-lich-kham" width="100%" cellspacing="0">
					<thead>
						<tr>
                            <th>#</th>
                            <th>Ngày</th>
                            <th>Giờ</th>
                            <th>Số TT</th>
                            <th>Họ tên</th>
							<th>Số ĐT</th>
							<th>Lý do</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
					<?php 
						if($data){
							$index = 0;
							foreach($data as $lichkham){
								$index++;
								$status = 'warning';
								if($lichkham['tinhTrang']==0){
									$status = 'success';
								}
							echo "<tr>
									<td>{$index}</td>
									<td>{$lichkham['ngayHen']}</td>
									<td>{$lichkham['gioHen']}</td>
									<td>{$lichkham['soTT']}</td>
									<td>{$lichkham['ten']}</td>
									<td>{$lichkham['soDT']}</td>
									<td>{$lichkham['lyDo']}</td>
									<td><button class='btn btn-{$status}'><i class='fas fa-check'></i></button></td>
								</tr>";
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