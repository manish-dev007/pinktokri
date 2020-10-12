<div class="modal fade" id="add_new-addr_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add New Address</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        <form class="add_new_adrs_form" method="post">
      <div class="modal-body ">
                  <ul class="row">
                    
                    <!-- Name -->
                    <li class="col-md-6">
                      <label> *FIRST NAME
                        <input type="text" name="first-name" placeholder="First Name" required>
                      </label>
                    </li>
                    <!-- LAST NAME -->
                    <li class="col-md-6">
                      <label> *LAST NAME
                        <input type="text" name="last-name" placeholder="Last Name">
                      </label>
                    </li>
                    
                    <!-- EMAIL ADDRESS -->
                    <li class="col-md-4">
                      <label> *City
                        <input type="text" name="city" placeholder="City" required>
                      </label>
                    </li>
                    <li class="col-md-4">
                      <label> *State
                        <input type="text" name="state" placeholder="State" required>
                      </label>
                    </li>
                    <!-- PHONE -->
                    <li class="col-md-4">
                      <label> *Landmark
                        <input type="text" name="landmark" placeholder="Landmark" required>
                      </label>
                    </li>
                    
                    <!-- LAST NAME -->
                    <li class="col-md-12">
                      <label> *Address
                        <input type="text" name="address" placeholder="Enter Full Address" required>
                      </label>
                    </li>
                    <input type="hidden" name="adr_id" value="0">
                    
                    <!-- LAST NAME -->
                    <li class="col-md-6">
                      <label> *Address Type
                        <select class="select_adr_type">
                            <option value="Home">Home</option>
                            <option value="Office">office</option>
                        </select>
                      </label>
                    </li>
                    <li class="col-md-6">
                      <label> *Pincode
                        <input type="number" name="pincode" placeholder="Enter Pincode" required>
                      </label>
                    </li>
                  </ul>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
                </form>
    </div>
  </div>
</div>