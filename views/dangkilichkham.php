<?php include('header.php') ?>
<div id="content-wrapper">
    <div class="container-fluid">
        <div class="card mb-3 dklichkham">
            <div class="card-header">
              <i class="fas fa-table"></i> Đăng kí lịch hẹn
            </div>
            <div class="card-body">
            <form>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="sel_khoa">Khoa</label>
                        <select name="sel_khoa">
                            <option value="1">1</option>
                        </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="sel_bacsi">Bác sĩ</label>
                        <select name="sel_bacsi">
                            <option value="1">1</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAddress">Address</label>
                    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
                </div>
                <div class="form-group">
                    <label for="inputAddress2">Address 2</label>
                    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                    <label for="inputCity">City</label>
                    <input type="text" class="form-control" id="inputCity">
                    </div>
                    <div class="form-group col-md-4">
                    <label for="inputState">State</label>
                    <select id="inputState" class="form-control">
                        <option selected>Choose...</option>
                        <option>...</option>
                    </select>
                    </div>
                    <div class="form-group col-md-2">
                    <label for="inputZip">Zip</label>
                    <input type="text" class="form-control" id="inputZip">
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="gridCheck">
                    <label class="form-check-label" for="gridCheck">
                        Check me out
                    </label>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Sign in</button>
            </form>
            </div>
        </div>
    </div>
</div>
<?php include('footer.php') ?>