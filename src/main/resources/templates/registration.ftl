<#import "parts/login.ftl" as l>
<#import "parts/bootstrapLoad.ftl" as bs>
<#import "parts/common.ftl" as c>
<@c.page "InterShop">
<div class="row mt-3 ml-3">
    <div class="col col-md-6">
        <form action="/registration" method="post" enctype="multipart/form-data">
            <h5>User info</h5>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputFirstName4">First name</label>
                    <input type="text" name="firstName" class="form-control form-control-sm" id="inputFirstName4" placeholder="First name">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputLastName4">Last name</label>
                    <input type="text" name="lastName" class="form-control form-control-sm" id="inputLastName4" placeholder="Last name">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputPhoto4">Photo</label><br>
                    <input id="inputPhoto4" type="file" name="photo_url" value="Add file" />
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-12">
                    <label for="inputEmail4">Email</label>
                    <input type="email" name="email" class="form-control form-control-sm" id="inputEmail4" placeholder="Email">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputPassword4">Password</label>
                    <input type="password" name="password" class="form-control form-control-sm" id="inputPassword4" placeholder="Password">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputPasswordConfirm4">Confirm password</label>
                    <input type="password" name="confirmPassword" class="form-control form-control-sm" id="inputPasswordConfirm4" placeholder="Confirm password">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="inputState">Role</label>
                    <select id="inputState" name="role" class="custom-select custom-select-sm">
                        <option value="empty" selected>Choose...</option>
                        <option value="USER">USER</option>
                        <option value="SELLER">SELLER</option>
                    </select>
                </div>
            </div>
            <h5>Card info</h5>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputFirstNameCard">First name</label>
                    <input type="text" name="firstNameCard" class="form-control form-control-sm" id="inputFirstNameCard" >
                </div>
                <div class="form-group col-md-6">
                    <label for="inputLastNameCard">Last name</label>
                    <input type="text" name="lastNameCard" class="form-control form-control-sm" id="inputLastNameCard">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputNumber">Number</label>
                    <input type="text" name="numberCard" class="form-control form-control-sm" id="inputNumber">
                </div>
                <div class="form-group col-md-3">
                    <label for="inputMonth">Month</label>
                    <input type="text" name="monthCard" class="form-control form-control-sm" id="inputMonth">
                </div>
                <div class="form-group col-md-3">
                    <label for="inputYear">Year</label>
                    <input type="text" name="yearCard" class="form-control form-control-sm" id="inputYear">
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Create</button>
        </form>
    </div>
</div>
</@c.page>