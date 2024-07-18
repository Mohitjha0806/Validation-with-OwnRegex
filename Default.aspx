<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Student Registration Form</title>
    <link href="bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <asp:ValidationSummary runat="server" ID="ValidationSummary1" ValidationGroup="a" ShowValidationErrors="true" ShowMessageBox="true" ShowSummary="false" />
            <div class="container-fluid">
                <div class="container mt-2 form-control">
                    <h1 class="display-4 fw-semibold text-center">Student Registration Form</h1>
                    <div class="row g-3 mt-2">

                        <h1 class="fs-3 fw-semibold text-start">Student Information</h1>

                        <div class="col-md-4">
                            <asp:Label Text="User Name " runat="server" ID="lbl_Username" CssClass="form-label fw-semibold" />
                            <asp:TextBox runat="server" ID="txt_Username" CssClass="form-control border-2 border-primary-subtle" Placeholder="Enter Alphanumeric Value" MaxLength="20" />
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please enter Username."
                                ControlToValidate="txt_Username" runat="server" Display="Dynamic" ValidationGroup="a" />
                            <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="[a-zA-Z0-9](_(?!(\.|_))|\.(?!(_|\.))|[a-zA-Z0-9]){6,18}[a-zA-Z0-9]$"
                                ErrorMessage="Enter valid Username" ControlToValidate="txt_Username" runat="server" Display="Dynamic" ValidationGroup="a" />
                        </div>
                    

                        <div class="col-md-4">
                            <asp:Label Text="Password" runat="server" ID="lbl_Password" CssClass="form-label fw-semibold" />
                            <asp:TextBox runat="server" Placeholder="Abcd@1234" ID="txt_Password" CssClass="form-control border-2 border-primary-subtle" MaxLength="10" TextMode="Password" />
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Enter Password" ControlToValidate="txt_Password" ValidationGroup="a" runat="server" Display="Dynamic" />

                            <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,10}"
                                ErrorMessage="Password must contain: Minimum 8 and Maximum 10 characters atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet, 1 Number and 1 Special Character"
                                ControlToValidate="txt_Password" runat="server" Display="Dynamic" ValidationGroup="a" />
                        </div>

                        <div class="col-md-4">
                            <asp:Label Text="Re-enter Password" runat="server" ID="lbl_RePassword" CssClass="form-label fw-semibold" />
                            <asp:TextBox runat="server" ID="txt_RePassword" CssClass="form-control border-2 border-primary-subtle" Placeholder="Same As Password" MaxLength="10" TextMode="Password" />
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please Re-Enter Password." ValidationGroup="a" ControlToValidate="txt_RePassword" runat="server" Display="Dynamic" />
                            <asp:CompareValidator ErrorMessage="Password Not Matched" ControlToValidate="txt_RePassword" ValidationGroup="a" ForeColor="Red" runat="server" ControlToCompare="txt_Password" />
                        </div>

                        <div class="col-md-4">
                            <asp:Label Text="Fisrt Name" runat="server" ID="lblFname" CssClass="form-label fw-semibold" />
                            <asp:TextBox runat="server" ID="txtFname" CssClass="form-control border-2 border-primary-subtle" />
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please enter first your name." ValidationGroup="a" ControlToValidate="txtFname" runat="server" Display="Dynamic" />
                            <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^([A-z][A-Za-z]*\s*[A-Za-z]*)$" ValidationGroup="a" ErrorMessage="Enter valid name"
                                ControlToValidate="txtFname" runat="server" Display="Dynamic" />
                        </div>

                        <div class="col-md-4 ">
                            <asp:Label Text="Middle Name" runat="server" ID="lblMname" CssClass="form-label fw-semibold" />
                            <asp:TextBox runat="server" ID="txtMname" CssClass="form-control border-2 border-primary-subtle" />
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please enter middle your name." ValidationGroup="a" ControlToValidate="txtMname" runat="server" Display="Dynamic" />
                            <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^([A-z][A-Za-z]*\s*[A-Za-z]*)$" ValidationGroup="a" ErrorMessage="Enter valid name"
                                ControlToValidate="txtMname" runat="server" Display="Dynamic" />
                        </div>

                        <div class="col-md-4 ">
                            <asp:Label Text="Last Name" runat="server" ID="lblLname" CssClass="form-label fw-semibold" />
                            <asp:TextBox runat="server" ID="txtLname" CssClass="form-control border-2 border-primary-subtle" />
                            <asp:RequiredFieldValidator ForeColor="Red" ValidationGroup="a" ErrorMessage="Please enter your last name." ControlToValidate="txtLname" runat="server" Display="Dynamic" />
                            <asp:RegularExpressionValidator ForeColor="Red" ValidationGroup="a" ValidationExpression="^([A-z][A-Za-z]*\s*[A-Za-z]*)$" ErrorMessage="Enter valid name"
                                ControlToValidate="txtLname" runat="server" Display="Dynamic" />
                        </div>

                    </div>
                    <div class="row g-3 mt-2">
                        <div class="col">
                            <asp:Label Text="Date Of Birth" ID="lbl_DOB" runat="server" CssClass="form-label fw-semibold" /> 
                            <asp:TextBox runat="server" ID="txt_DOB" CssClass="form-control border-2 border-primary-subtle" TextMode="Date" />
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please select your date of birth." ValidationGroup="a" ControlToValidate="txt_DOB" runat="server" Display="Dynamic" />
                        </div>
                        <div class="col">
                            <asp:Label Text="Applicable Age" ID="lbl_ApplicableAge" runat="server" CssClass="form-label fw-semibold" />
                            <asp:TextBox runat="server" ID="txt_ApplicableAge" CssClass="form-control border-2 border-primary-subtle" />
                            <asp:RangeValidator ErrorMessage="You Are Not Applicable" ForeColor="Red" ControlToValidate="txt_ApplicableAge" MinimumValue="05" MaximumValue="25" runat="server" Display="Dynamic" />
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please select your age." ValidationGroup="a" ControlToValidate="txt_ApplicableAge" runat="server" Display="Dynamic" />
                        </div>
                        <div class="col">
                            <asp:Label Text="Roll No." ID="lbl_RollNo" runat="server" CssClass="form-label fw-semibold" />
                            <asp:TextBox runat="server" ID="txt_RollNo" CssClass="form-control border-2 border-primary-subtle" Placeholder="0123AB123456" />
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please enter your Roll No.." ValidationGroup="a" ControlToValidate="txt_RollNo" runat="server" Display="Dynamic" />
                            <asp:RegularExpressionValidator ForeColor="Red" ValidationGroup="a" ValidationExpression="^\d\d\d\d[A-Z][A-Z]\d\d\d\d\d\d$" ErrorMessage="Please Enter valid Roll No." ControlToValidate="txt_RollNo" runat="server" Display="Dynamic" />
                        </div>
                    </div>

                    <div class="row g-3 mt-2">

                        <h1 class="fs-3 fw-semibold text-start">Student Documents Information</h1>

                        <div class="col-md-4">
                            <asp:Label Text="Aadhar No." runat="server" ID="lbl_Aadhar" CssClass="form-label fw-semibold" />
                            <asp:TextBox runat="server" ID="txt_Aadhar" CssClass="form-control border-2 border-primary-subtle" MaxLength="12" Placeholder="31xx47xx40xx" />
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please enter Aadhar No."
                                ControlToValidate="txt_Aadhar" runat="server" Display="Dynamic" ValidationGroup="a" />
                            <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^[3]{1}[1]{1}[0-9]{2}[4]{1}[7]{1}[0-9]{2}[4]{1}[0]{1}[0-9]{2}$"
                                ErrorMessage="Enter valid Aadhar No." ControlToValidate="txt_Aadhar" runat="server" Display="Dynamic" ValidationGroup="a" />
                        </div>

                        <div class="col-md-4">
                            <asp:Label Text="PAN No." runat="server" ID="lbl_PanNo" CssClass="form-label fw-semibold" />
                            <asp:TextBox runat="server" Placeholder="ABCTY1234D" ID="txt_PanNo" CssClass="form-control border-2 border-primary-subtle" MaxLength="10" />
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please Enter PAN No." ControlToValidate="txt_PanNo" runat="server" Display="Dynamic" />

                            <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^[A-Z]{5}[0-9]{4}[A-Z]{1}$"
                                ErrorMessage="Please Enter Valid Pan Card No."
                                ControlToValidate="txt_PanNo" runat="server" Display="Dynamic" ValidationGroup="a"/>
                        </div>

                        <div class="col-md-4">
                            <asp:Label Text="Voiter Id" runat="server" ID="lbl_Voter" CssClass="form-label fw-semibold" /><span class="mx-2 h6 fw-bold text-danger">*</span>
                            <asp:TextBox runat="server" ID="txt_Voter" CssClass="form-control border-2 border-primary-subtle" Placeholder="ABC1234567"
                                MaxLength="10" />
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please Enter Voter Id No." ValidationGroup="a" ControlToValidate="txt_Voter"
                                runat="server" Display="Dynamic" />

                            <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^[A-Z]{3}[0-9]{7}$"
                                ErrorMessage="Enter Valid Voter Id No."
                                ControlToValidate="txt_Voter" runat="server" Display="Dynamic" ValidationGroup="a" />
                        </div>

                        <div class="col-md-4">
                            <asp:Label Text="Back Account Number" runat="server" ID="lbl_AcountNo" CssClass="form-label fw-semibold" /><span class="mx-2 h6 fw-bold text-danger">*</span>
                            <asp:TextBox runat="server" ID="txt_AcountNo" CssClass="form-control border-2 border-primary-subtle" Placeholder="3xxxxxxxxx" MaxLength="10" />
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please enter Account No." ValidationGroup="a" ControlToValidate="txt_AcountNo"
                                runat="server" Display="Dynamic" />
                            <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^[3-9]{1}[0-9]{9}$" ValidationGroup="a"
                                ErrorMessage="Invalid Account No."
                                ControlToValidate="txt_AcountNo" runat="server" Display="Dynamic" />
                        </div>

                        <div class="col-md-3 ">
                            <asp:Label Text="IFSC Code" runat="server" ID="lbl_Ifsc" CssClass="form-label fw-semibold" />
                            <asp:TextBox runat="server" ID="txt_Ifsc" CssClass="form-control border-2 border-primary-subtle" Placeholder="CBIN028xxxx" MaxLength="11" />
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please enter IFSC Code." ValidationGroup="a" ControlToValidate="txt_Ifsc" runat="server" Display="Dynamic" />
                            <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^[C]{1}[B]{1}[I]{1}[N]{1}[0]{1}[2]{1}[8]{1}[0-9]{4}$" ValidationGroup="a" ErrorMessage="Enter valid name"
                                ControlToValidate="txt_Ifsc" runat="server" Display="Dynamic" />
                        </div>

                        <div class="col-md-5 ">
                            <asp:Label Text="Branch" runat="server" ID="lbl_Branch" CssClass="form-label fw-semibold" />
                            <asp:DropDownList runat="server" CssClass="form-control dropdown border-2 border-primary-subtle" ID="ddl_Branch">
                                <asp:ListItem Value="" Text="Select" />
                                <asp:ListItem Value="Ashoka Garden" Text="Ashoka Garden" />
                                <asp:ListItem Value="M.P. Nagar" Text="M.P. Nagar" />
                                <asp:ListItem Value="Indrapuri" Text="Indrapuri" />
                                <asp:ListItem Value="Ayodhya Nagar" Text="Ayodhya Nagar" />
                                <asp:ListItem Value="Anand Nagar" Text="Anand Nagar" />
                                <asp:ListItem Value="Kokta Branch" Text="Kokta Branch" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ForeColor="Red" ValidationGroup="a" ErrorMessage="Please Select Branch." ControlToValidate="txtLname" runat="server" Display="Dynamic" />
                            <asp:RegularExpressionValidator ForeColor="Red" ValidationGroup="a" ValidationExpression="^([A-z][A-Za-z]*\s*[A-Za-z]*)$" ErrorMessage="Enter valid name"
                                ControlToValidate="txtLname" runat="server" Display="Dynamic" />
                        </div>

                    </div>

                    <div class="row g-3 mt-2">
                        <h1 class="fs-3 fw-semibold text-start">Student Address</h1>
                        <div class="col-12">
                            <asp:Label Text="Street Address" runat="server" ID="lblAdd" CssClass="form-label fw-semibold" />
                            <asp:TextBox runat="server" ID="txtAdd" CssClass="form-control border-2 border-primary-subtle" />
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please enter your street address." ControlToValidate="txtAdd" ValidationGroup="a" runat="server" Display="Dynamic" />
                            <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="[0-9a-zA-Z #,-]+" ValidationGroup="a" ErrorMessage="Please Enter valid Address" ControlToValidate="txtAdd" runat="server" Display="Dynamic" />
                        </div>
                        <div class="col-md-6">
                            <asp:Label Text="State" runat="server" ID="lblState" CssClass="form-label fw-semibold" />
                            <asp:DropDownList CssClass="form-control  border-2 border-primary-subtle" ID="ddl_State" ValidationGroup="a" runat="server" OnSelectedIndexChanged="ddl_State_SelectedIndexChanged1" AutoPostBack="true">
                                <asp:ListItem Text="Select" Value="" />
                                <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                <asp:ListItem Text="Andra Pradesh" Value="Andra Pradesh" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please Select your State." ValidationGroup="a" ControlToValidate="txtLname" runat="server" Display="Dynamic" />

                        </div>
                        <div class="col-md-6">
                            <asp:Label Text="Division" runat="server" ID="lblDivision" CssClass="form-label fw-semibold" />
                            <asp:DropDownList CssClass="form-control  border-2 border-primary-subtle" ID="ddl_Division" runat="server">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please Select your Division." ValidationGroup="a" ControlToValidate="txtLname" runat="server" Display="Dynamic" />
                        </div>
                        <div class="col-md-6">
                            <asp:Label Text="Country" runat="server" ID="lbl_Country" CssClass="form-label fw-semibold" />
                            <asp:DropDownList CssClass="form-control  border-2 border-primary-subtle" runat="server" ValidationGroup="a" ID="ddl_Country">
                                <asp:ListItem Text="Select" Value="" />
                                <asp:ListItem Text="India" Value="India" />
                                <asp:ListItem Text="Nepal" Value="Nepal" />
                                <asp:ListItem Text="Bhutan" Value="Bhutan" />
                                <asp:ListItem Text="Bangladesh" Value="Bangladesh" />
                                <asp:ListItem Text="Shri Lanka" Value="Shri Lanka" />
                                <asp:ListItem Text="Pakistan" Value="Pakistan" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please Select your country." ValidationGroup="a" ControlToValidate="txtLname" runat="server" Display="Dynamic" />
                        </div>

                        <div class="col-md-6">
                            <asp:Label Text="Pin Code" runat="server" CssClass="form-label fw-semibold" ID="lbl_Pincode" />
                            <asp:ListBox CssClass="form-control  border-2 border-primary-subtle" runat="server" ID="lb_Pincode">
                                <asp:ListItem Text="462001" />
                                <asp:ListItem Text="462002" />
                                <asp:ListItem Text="462003" />
                                <asp:ListItem Text="462004" />
                                <asp:ListItem Text="462005" />
                                <asp:ListItem Text="462006" />
                                <asp:ListItem Text="462007" />
                                <asp:ListItem Text="462008" />
                                <asp:ListItem Text="462009" />
                                <asp:ListItem Text="462010" />
                                <asp:ListItem Text="462011" />
                            </asp:ListBox>
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please select your pincode." ValidationGroup="a" ControlToValidate="txtAdd" runat="server" Display="Dynamic" />
                        </div>
                    </div>

                    <div class="row g-3 mt-2">
                        <h1 class="fs-3 fw-semibold text-start">Contect Information</h1>
                        <div class="col-md-6">
                            <asp:Label Text="Email" runat="server" CssClass="form-label fw-semibold" ID="lbl_Email" />
                            <asp:TextBox runat="server" CssClass="form-control border-2 border-primary-subtle" ID="txtEmail" Placeholder="example@gmail.com" MaxLength="24" />
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please enter your email." ControlToValidate="txtAdd" ValidationGroup="a" runat="server" Display="Dynamic" />
                            <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^[a-zA-Z.0-9]+@[g]{1}[m]{1}[a]{1}[i]{1}[l]{1}[.]{1}[c]{1}[o]{1}[m]{1}$" ValidationGroup="a"
                                ErrorMessage="Enter valid email." ControlToValidate="txtEmail" runat="server" Display="Dynamic" />
                        </div>
                        <div class="col-md-6">
                            <asp:Label Text="Mobile No." runat="server" CssClass="form-label fw-semibold" ID="lbl_Mobile" />
                            <asp:TextBox runat="server" CssClass="form-control border-2 border-primary-subtle" ID="txt_Mobile" MaxLength="10" />
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please enter your mobile number." ControlToValidate="txtAdd" ValidationGroup="a" runat="server" Display="Dynamic" />
                            <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^[6-9]{1}[0-9]{9}$" ValidationGroup="a" ErrorMessage="Enter valid number" ControlToValidate="txt_Mobile" runat="server" Display="Dynamic" />
                        </div>

                    </div>
                    <div class="row mt-4 gap-4">
                        <div class="col-md-1">
                            <asp:Button Text="Register" runat="server" CssClass="btn btn-primary " ID="btn_Registration" OnClick="btn_Registration_Click" ValidationGroup="a"></asp:Button>
                        </div>
                        <div class="col-md-1">
                            <asp:Button Text="Reset" runat="server" CssClass="btn btn-danger" TextMode="Reset" ID="Reset" OnClick="Reset_Click" />
                        </div>
                    </div>








                </div>
            </div>


            <div class="container-fluid">
                <div class="container">
                    <div class="row mt-4">
                        <h1 class="fs-2 fw-semibold text-center">Student Details</h1>
                        <h1 class="fs-4 fw-semibold text-start">Student Username</h1>
                        <asp:Table runat="server" CssClass="table mt-4 border-3">
                            <asp:TableHeaderRow>
                                <asp:TableHeaderCell>#</asp:TableHeaderCell>
                                <asp:TableHeaderCell>User Name</asp:TableHeaderCell>
                            </asp:TableHeaderRow>
                            <asp:TableRow>
                                <asp:TableHeaderCell>1.</asp:TableHeaderCell>
                                <asp:TableCell ID="tblc_Username"></asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>

                        <h1 class="fs-4 fw-semibold text-start">Student Information</h1>
                        <asp:Table runat="server" CssClass="table mt-4 border-3">
                            <asp:TableHeaderRow>
                                <asp:TableHeaderCell>#</asp:TableHeaderCell>
                                <asp:TableHeaderCell>First Name</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Middle Name</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Last Name</asp:TableHeaderCell>
                                <asp:TableHeaderCell>DOB</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Roll No.</asp:TableHeaderCell>
                            </asp:TableHeaderRow>
                            <asp:TableRow>
                                <asp:TableHeaderCell>1.</asp:TableHeaderCell>
                                <asp:TableCell ID="tblc_Fname"></asp:TableCell>
                                <asp:TableCell ID="tblc_Mname"></asp:TableCell>
                                <asp:TableCell ID="tblc_Lname"></asp:TableCell>
                                <asp:TableCell ID="tblc_DOB"></asp:TableCell>
                                <asp:TableCell ID="tblc_RollNo"></asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        <h1 class="fs-4 fw-semibold text-start">Student Doucument Information</h1>
                        <asp:Table runat="server" CssClass="table mt-4 border-3">
                            <asp:TableHeaderRow>
                                <asp:TableHeaderCell>#</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Aadhar No.</asp:TableHeaderCell>
                                <asp:TableHeaderCell>PAN No.</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Voter Id No.</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Back Account Number</asp:TableHeaderCell>
                                <asp:TableHeaderCell>IFSC Code</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Branch</asp:TableHeaderCell>
                            </asp:TableHeaderRow>
                            <asp:TableRow>
                                <asp:TableHeaderCell>1.</asp:TableHeaderCell>
                                <asp:TableCell ID="tblc_Aadhar"></asp:TableCell>
                                <asp:TableCell ID="tblc_PanNo"></asp:TableCell>
                                <asp:TableCell ID="tblc_VoterId"></asp:TableCell>
                                <asp:TableCell ID="tblc_Account"></asp:TableCell>
                                <asp:TableCell ID="tblc_Ifsc"></asp:TableCell>
                                <asp:TableCell ID="tblc_Branch"></asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        <h1 class="fs-4 fw-semibold text-start">Student Address</h1>

                        <asp:Table runat="server" CssClass="table mt-4 table-borderd">
                            <asp:TableHeaderRow>
                                <asp:TableHeaderCell>#</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Student Address</asp:TableHeaderCell>
                                <asp:TableHeaderCell>State</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Division</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Country</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Pin Code</asp:TableHeaderCell>
                            </asp:TableHeaderRow>

                            <asp:TableRow runat="server">
                                <asp:TableHeaderCell>1.</asp:TableHeaderCell>
                                <asp:TableCell ID="tblc_StudentAdd"></asp:TableCell>
                                <asp:TableCell ID="tblc_State"></asp:TableCell>
                                <asp:TableCell ID="tblc_Division"></asp:TableCell>
                                <asp:TableCell ID="tblc_Country"></asp:TableCell>
                                <asp:TableCell ID="tblc_Pincode"></asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        <h1 class="fs-4 fw-semibold text-start">Contact Details</h1>
                        <asp:Table runat="server" CssClass="table mt-4 table-borderd">
                            <asp:TableHeaderRow>
                                <asp:TableHeaderCell>#</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Email</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Mobile.No.</asp:TableHeaderCell>
                            </asp:TableHeaderRow>
                            <asp:TableRow runat="server">
                                <asp:TableHeaderCell>1.</asp:TableHeaderCell>
                                <asp:TableCell ID="tblc_Email"></asp:TableCell>
                                <asp:TableCell ID="tblc_Mobileno"></asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>


