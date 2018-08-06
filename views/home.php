<?php include('header.php') ?>
<?php if($user['quyen'] == 0) :?>
<?php 
	$id_bacsi = $user['id'];
	$conn = connection::_open();
	$sql = "SELECT * FROM tbldatlichkham A , tblbenhnhan B WHERE A.idBenhnhan = B.id AND A.idBacsi='{$id_bacsi}' ORDER BY A.ngayHen DESC";
	$data = mysqli_query($conn,$sql)->fetch_all(MYSQLI_ASSOC);
	connection::_close($conn);
?>
<div class="container-fluid">
	<div class="card mb-2 card-ds-lich-kham">
		<div class="card-header bg-info">
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
                            <th>Bệnh nhân</th>
							<th>Số ĐT</th>
							<th>Lý do</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
					<?php 
						$index = 0;
						if($data){
							foreach($data as $lichkham){			
								if( $lichkham['chuDong'] == 0 ){
									$index++;
									$status = 'warning';
									if( $lichkham['tinhTrang'] == 0){
										$status = 'success';
									}
									$ngayhen = $lichkham['ngayHen'];
										$ngayhen = date_create($ngayhen);
										$ngayhen = date_format($ngayhen,'d/m/Y');
									echo "<tr>
										<td>{$index}</td>
										<td>{$ngayhen}</td>
										<td>{$lichkham['gioHen']}</td>
										<td>{$lichkham['soTT']}</td>
										<td>{$lichkham['ten']}</td>
										<td>{$lichkham['soDT']}</td>
										<td>{$lichkham['lyDo']}</td>
										<td><button class='btn btn-{$status}'><i class='fas fa-check'></i></button></td>
									</tr>";
								}
							}
						}
						if( $index == 0 ){
							echo "<tr>
							<td colspan='8'><center><h4><i>Không có lịch khám với bệnh nhân nào .</i></h4></center></td>
							</tr>";
						}
					?>
					</tbody>
				</table>
			</div>
		</div>
		<?php
			if( $index > 0 ){
				$date_updated = $data[0]['ngayTao'];
				$date_updated = date_create($date_updated);
				$date_updated = date_format($date_updated,'d/m/y H:i:s');
				echo "<div class='card-footer small text-muted'>Cập nhật mới nhất lúc {$date_updated}</div>";
			}
		?>
	</div>
	<div class="card mb-3 card-ds-lich-hen">
		<div class="card-header bg-secondary text-white">
			<i class="fas fa-table"></i>
			Danh sách lịch hẹn với bệnh nhân
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="table-ds-lich-hen" width="100%" cellspacing="0">
					<thead>
						<tr>
                            <th>#</th>
                            <th>Ngày</th>
                            <th>Giờ</th>
                            <th>Số TT</th>
                            <th>Bệnh nhân</th>
							<th>Số ĐT</th>
							<th>Lý do</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
					<?php 
						$index = 0;
						if($data){
							foreach($data as $lichkham){
								if( $lichkham['chuDong']=='1' ){
									$index++;
									$status = 'warning';
									if($lichkham['tinhTrang']==0){
										$status = 'success';
									}
									$ngayhen = $lichkham['ngayHen'];
									$ngayhen = date_create($ngayhen);
									$ngayhen = date_format($ngayhen,'d/m/Y');
									echo "<tr>
										<td>{$index}</td>
										<td>{$ngayhen}</td>
										<td>{$lichkham['gioHen']}</td>
										<td>{$lichkham['soTT']}</td>
										<td>{$lichkham['ten']}</td>
										<td>{$lichkham['soDT']}</td>
										<td>{$lichkham['lyDo']}</td>
										<td><button class='btn btn-{$status}'><i class='fas fa-check'></i></button></td>
									</tr>";
								}
							}
						}
						if($index == 0){
							echo "<tr>
							<td colspan='8'><center><h4><i>Không có lịch hẹn với bệnh nhân nào .</i></h4></center></td>
							</tr>";
						}
					?>
					</tbody>
				</table>
			</div>
		</div>
		<?php
			if( $index > 0 ){
				$date_updated = $data[0]['ngayTao'];
				$date_updated = date_create($date_updated);
				$date_updated = date_format($date_updated,'d/m/y H:i:s');
				echo "<div class='card-footer small text-muted'>Cập nhật mới nhất lúc {$date_updated}</div>";
			}
		?>
	</div>
</div>
<?php else:?>
<?php 
	$id_benhnhan = $user['id'];
	$conn = connection::_open();
	$sql = "SELECT * FROM tbldatlichkham A , tblbacsi B WHERE A.idBacsi = B.id AND A.idBenhnhan='{$id_benhnhan}' ORDER BY A.ngayHen DESC";
	$data = mysqli_query($conn,$sql)->fetch_all(MYSQLI_ASSOC);
	connection::_close($conn);
?>
<div class="container-fluid">
	<div class="card mb-2 card-ds-lich-kham">
		<div class="card-header bg-info">
			<i class="fas fa-table"></i>
			Danh sách lịch hẹn - Bạn hẹn bác sĩ
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
                            <th>Bác sĩ</th>
							<th>Số ĐT</th>
							<th>Lý do</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
					<?php 
						$index = 0;
						if($data){
							foreach( $data as $lichkham ){
								if( $lichkham['chuDong'] == 0 )
								$index++;
								$status = 'warning';
								if( $lichkham['tinhTrang'] == 0 ){
									$status = 'success';
								}
								$ngayhen = $lichkham['ngayHen'];
								$ngayhen = date_create($ngayhen);
								$ngayhen = date_format($ngayhen,'d/m/Y');
								echo "<tr>
										<td>{$index}</td>
										<td>{$ngayhen}</td>
										<td>{$lichkham['gioHen']}</td>
										<td>{$lichkham['soTT']}</td>
										<td>{$lichkham['ten']}</td>
										<td>{$lichkham['soDT']}</td>
										<td>{$lichkham['lyDo']}</td>
										<td><button class='btn btn-{$status}'><i class='fas fa-check'></i></button></td>
									</tr>";
								}
						}
						if($index == 0){
							echo "<tr>
							<td colspan='8'><center><h4><i>Không có lịch hẹn với bác sĩ nào .</i></h4></center></td>
							</tr>";
						}
					?>
						
					</tbody>
				</table>
			</div>
		</div>
		<?php
			if( $index > 0 ){
				$date_updated = $data[0]['ngayTao'];
				$date_updated = date_create($date_updated);
				$date_updated = date_format($date_updated,'d/m/y H:i:s');
				echo "<div class='card-footer small text-muted'>Cập nhật mới nhất lúc {$date_updated}</div>";
			}
		?>
	</div>

	<div class="card mb-3 card-ds-lich-hen">
		<div class="card-header bg-secondary text-white">
			<i class="fas fa-table"></i>
			Danh sách lịch khám - Bác sĩ hẹn bạn
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="table-ds-lich-hen" width="100%" cellspacing="0">
					<thead>
						<tr>
                            <th>#</th>
                            <th>Ngày</th>
                            <th>Giờ</th>
                            <th>Số TT</th>
                            <th>Bác sĩ</th>
							<th>Số ĐT</th>
							<th>Lý do</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
					<?php 
						$index = 0;
						if($data){
							foreach($data as $lichkham){
								if( $lichkham['chuDong']=='1' ){
									$index++;
									$status = 'warning';
									if($lichkham['tinhTrang']==0){
										$status = 'success';
									}
									$ngayhen = $lichkham['ngayHen'];
									$ngayhen = date_create($ngayhen);
									$ngayhen = date_format($ngayhen,'d/m/Y');
									echo "<tr>
										<td>{$index}</td>
										<td>{$ngayhen}</td>
										<td>{$lichkham['gioHen']}</td>
										<td>{$lichkham['soTT']}</td>
										<td>{$lichkham['ten']}</td>
										<td>{$lichkham['soDT']}</td>
										<td>{$lichkham['lyDo']}</td>
										<td><button class='btn btn-{$status}'><i class='fas fa-check'></i></button></td>
									</tr>";
								}
							}
						}
						if($index == 0){
							echo "<tr>
							<td colspan='8'><center><h4><i>Không có bác sĩ nào đặt lịch hẹn khám bệnh với bạn .</i></h4></center></td>
							</tr>";
						}
					?>
					</tbody>
				</table>
			</div>
		</div>
		<?php
			if( $index > 0 ){
				$date_updated = $data[0]['ngayTao'];
				$date_updated = date_create($date_updated);
				$date_updated = date_format($date_updated,'d/m/y H:i:s');
				echo "<div class='card-footer small text-muted'>Cập nhật mới nhất lúc {$date_updated}</div>";
			}
		?>
	</div>
</div>
<?php endif;?>
<?php include('footer.php') ?>