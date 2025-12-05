<%@ Page Title="" Language="C#" MasterPageFile="~/igtr.Master" AutoEventWireup="true" CodeBehind="vendor-registration.aspx.cs" Inherits="igtrahd.vendor_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="service-box-heading">
        <span>Vendor Registration</span>
    </div>

    <div class="row">
        <div class="col-md-12" style="padding: 5px; background-color: #66CCFF;">
            Vendor Detail
                                   
        </div>
        <div class="clearfix">&nbsp;</div>
        <div class="col-sm-6">
            <p style="margin-top: 5px;">
                Vendor Name&nbsp;:&nbsp;<asp:TextBox ID="txtVName" runat="server" CssClass="form-control"></asp:TextBox>
            </p>
            <p>
                Address&nbsp;:&nbsp;<asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
            </p>
            <p>
                Phone&nbsp;:&nbsp;<asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
            </p>
            <p>
                Email&nbsp;:&nbsp;<asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            </p>
            <p>
                List of Branches (if applicable)&nbsp;:&nbsp;<asp:TextBox ID="txtBranch" TextMode="MultiLine"  Rows="2" runat="server" CssClass="form-control"></asp:TextBox>
            </p>
            <p>
                E.C.C. No (if applicable):<asp:TextBox ID="txtECCNo" runat="server" CssClass="form-control"></asp:TextBox>
                <span>Covered under Excise Regulation</span>
            </p> 
            <p>
                Central Tax Number&nbsp;:&nbsp;<asp:TextBox ID="txtCTNo" runat="server" CssClass="form-control"></asp:TextBox>
                Date&nbsp;:&nbsp;<asp:TextBox ID="txtCTDate" runat="server" CssClass="form-control"></asp:TextBox>
            </p>
        </div>
        <div class="col-sm-6">
            <p>
                Kind of Job&nbsp;:&nbsp;
                <asp:CheckBoxList ID="chkJob" runat="server" CssClass="form-control" Height="70" RepeatColumns="2">
                    <asp:ListItem Text="Manufacturer" Value="Manufacturer">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:ListItem>
                    <asp:ListItem Text="Job Worker" Value="Job Worker" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:ListItem>
                    <asp:ListItem Text="Authorized Dealer" Value="Authorized Dealer">&nbsp;&nbsp;&nbsp;&nbsp;</asp:ListItem>
                    <asp:ListItem Text="General Traders" Value="General Traders">&nbsp;&nbsp;&nbsp;&nbsp;</asp:ListItem>
                </asp:CheckBoxList>
             
            </p>
            <p>
                Country&nbsp;:&nbsp;
                <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control">
                    <asp:ListItem selected="selected" value="0">Select </asp:ListItem>
                    <asp:ListItem value="Albania">Albania </asp:ListItem>
                    <asp:ListItem value="Algeria">Algeria </asp:ListItem>
                    <asp:ListItem value="American Samoa">American Samoa </asp:ListItem>
                    <asp:ListItem value="Andorra">Andorra </asp:ListItem>
                    <asp:ListItem value="Angola">Angola </asp:ListItem>
                    <asp:ListItem value="Anguilla">Anguilla </asp:ListItem>
                    <asp:ListItem value="Antigua">Antigua </asp:ListItem>
                    <asp:ListItem value="Argentina">Argentina </asp:ListItem>
                    <asp:ListItem value="Armenia">Armenia </asp:ListItem>
                    <asp:ListItem value="Aruba">Aruba </asp:ListItem>
                    <asp:ListItem value="Australia">Australia </asp:ListItem>
                    <asp:ListItem value="Austria">Austria </asp:ListItem>
                    <asp:ListItem value="Azerbaijan">Azerbaijan </asp:ListItem>
                    <asp:ListItem value="Bahamas">Bahamas </asp:ListItem>
                    <asp:ListItem value="Bahrain">Bahrain </asp:ListItem>
                    <asp:ListItem value="Bangladesh">Bangladesh </asp:ListItem>
                    <asp:ListItem value="Barbados">Barbados </asp:ListItem>
                    <asp:ListItem value="Belarus">Belarus </asp:ListItem>
                    <asp:ListItem value="Belgium">Belgium </asp:ListItem>
                    <asp:ListItem value="Belize">Belize </asp:ListItem>
                    <asp:ListItem value="Benin">Benin </asp:ListItem>
                    <asp:ListItem value="Bermuda">Bermuda </asp:ListItem>
                    <asp:ListItem value="Bhutan">Bhutan </asp:ListItem>
                    <asp:ListItem value="Bolivia">Bolivia </asp:ListItem>
                    <asp:ListItem value="Bosnia">Bosnia </asp:ListItem>
                    <asp:ListItem value="Botswana">Botswana </asp:ListItem>
                    <asp:ListItem value="Brazil">Brazil </asp:ListItem>
                    <asp:ListItem value="British Virgin Is.">British Virgin Is. </asp:ListItem>
                    <asp:ListItem value="Brunei">Brunei </asp:ListItem>
                    <asp:ListItem value="Bulgaria">Bulgaria </asp:ListItem>
                    <asp:ListItem value="Burkino Faso">Burkino Faso </asp:ListItem>
                    <asp:ListItem value="Burma">Burma </asp:ListItem>
                    <asp:ListItem value="Burundi">Burundi </asp:ListItem>
                    <asp:ListItem value="Cambodia">Cambodia </asp:ListItem>
                    <asp:ListItem value="Cameroon">Cameroon </asp:ListItem>
                    <asp:ListItem value="Canada">Canada </asp:ListItem>
                    <asp:ListItem value="Cape Verde">Cape Verde </asp:ListItem>
                    <asp:ListItem value="Cayman Islands">Cayman Islands </asp:ListItem>
                    <asp:ListItem value="Central African Rep.">Central African Rep. </asp:ListItem>
                    <asp:ListItem value="Chad">Chad </asp:ListItem>
                    <asp:ListItem value="Chile">Chile </asp:ListItem>
                    <asp:ListItem value="China">China </asp:ListItem>
                    <asp:ListItem value="Colombia">Colombia </asp:ListItem>
                    <asp:ListItem value="Congo">Congo </asp:ListItem>
                    <asp:ListItem value="Cook Islands">Cook Islands </asp:ListItem>
                    <asp:ListItem value="Costa Rica">Costa Rica </asp:ListItem>
                    <asp:ListItem value="Croatia">Croatia </asp:ListItem>
                    <asp:ListItem value="Cuba">Cuba </asp:ListItem>
                    <asp:ListItem value="Cyprus">Cyprus </asp:ListItem>
                    <asp:ListItem value="Czech Republic">Czech Republic </asp:ListItem>
                    <asp:ListItem value="Denmark">Denmark </asp:ListItem>
                    <asp:ListItem value="Djibouti">Djibouti </asp:ListItem>
                    <asp:ListItem value="Dominica">Dominica </asp:ListItem>
                    <asp:ListItem value="Dominican Republic">Dominican Republic </asp:ListItem>
                    <asp:ListItem value="Ecuador">Ecuador </asp:ListItem>
                    <asp:ListItem value="Egypt">Egypt </asp:ListItem>
                    <asp:ListItem value="El Salvador">El Salvador </asp:ListItem>
                    <asp:ListItem value="Equatorial Guinea">Equatorial Guinea </asp:ListItem>
                    <asp:ListItem value="Eritrea">Eritrea </asp:ListItem>
                    <asp:ListItem value="Estonia">Estonia </asp:ListItem>
                    <asp:ListItem value="Ethiopia">Ethiopia </asp:ListItem>
                    <asp:ListItem value="FYR Macedonia">FYR Macedonia </asp:ListItem>
                    <asp:ListItem value="61">Faeroe Islands </asp:ListItem>
                    <asp:ListItem value="62">Fiji </asp:ListItem>
                    <asp:ListItem value="Finland">Finland </asp:ListItem>
                    <asp:ListItem value="France">France </asp:ListItem>
                    <asp:ListItem value="French Guiana">French Guiana </asp:ListItem>
                    <asp:ListItem value="French Polynesia">French Polynesia </asp:ListItem>
                    <asp:ListItem value="Gabon">Gabon </asp:ListItem>
                    <asp:ListItem value="Gambia">Gambia </asp:ListItem>
                    <asp:ListItem value="Georgia">Georgia </asp:ListItem>
                    <asp:ListItem value="Georgia, Republic Of">Georgia, Republic Of </asp:ListItem>
                    <asp:ListItem value="Germany">Germany </asp:ListItem>
                    <asp:ListItem value="Ghana">Ghana </asp:ListItem>
                    <asp:ListItem value="Gibraltar">Gibraltar </asp:ListItem>
                    <asp:ListItem value="Greece">Greece </asp:ListItem>
                    <asp:ListItem value="Greenland">Greenland </asp:ListItem>
                    <asp:ListItem value="Grenada">Grenada </asp:ListItem>
                    <asp:ListItem value="Guadeloupe">Guadeloupe </asp:ListItem>
                    <asp:ListItem value="Guam">Guam </asp:ListItem>
                    <asp:ListItem value="Guatemala">Guatemala </asp:ListItem>
                    <asp:ListItem value="Guinea">Guinea </asp:ListItem>
                    <asp:ListItem value="Guinea-bissau">Guinea-bissau </asp:ListItem>
                    <asp:ListItem value="Guyana">Guyana </asp:ListItem>
                    <asp:ListItem value="Haiti">Haiti </asp:ListItem>
                    <asp:ListItem value="Honduras">Honduras </asp:ListItem>
                    <asp:ListItem value="Hong Kong">Hong Kong </asp:ListItem>
                    <asp:ListItem value="Hungary">Hungary </asp:ListItem>
                    <asp:ListItem value="Iceland">Iceland </asp:ListItem>
                    <asp:ListItem value="India">India </asp:ListItem>
                    <asp:ListItem value="Indonesia">Indonesia </asp:ListItem>
                    <asp:ListItem value="Iran">Iran </asp:ListItem>
                    <asp:ListItem value="Iraq">Iraq </asp:ListItem>
                    <asp:ListItem value="Ireland">Ireland </asp:ListItem>
                    <asp:ListItem value="Israel">Israel </asp:ListItem>
                    <asp:ListItem value="Italy">Italy </asp:ListItem>
                    <asp:ListItem value="Ivory Coast">Ivory Coast </asp:ListItem>
                    <asp:ListItem value="Jamaica">Jamaica </asp:ListItem>
                    <asp:ListItem value="Japan">Japan </asp:ListItem>
                    <asp:ListItem value="Jordan">Jordan </asp:ListItem>
                    <asp:ListItem value="Kazakhstan">Kazakhstan </asp:ListItem>
                    <asp:ListItem value="Kenya">Kenya </asp:ListItem>
                    <asp:ListItem value="Kuwait">Kuwait </asp:ListItem>
                    <asp:ListItem value="Kyrgyzstan">Kyrgyzstan </asp:ListItem>
                    <asp:ListItem value="Latvia">Latvia </asp:ListItem>
                    <asp:ListItem value="Lebanon">Lebanon </asp:ListItem>
                    <asp:ListItem value="Lesotho">Lesotho </asp:ListItem>
                    <asp:ListItem value="Liberia">Liberia </asp:ListItem>
                    <asp:ListItem value="Libia">Libia </asp:ListItem>
                    <asp:ListItem value="Liechtenstein">Liechtenstein </asp:ListItem>
                    <asp:ListItem value="Lithuania">Lithuania </asp:ListItem>
                    <asp:ListItem value="Luxembourg">Luxembourg </asp:ListItem>
                    <asp:ListItem value="Macau">Macau </asp:ListItem>
                    <asp:ListItem value="Macedonia">Macedonia </asp:ListItem>
                    <asp:ListItem value="Madagascar">Madagascar </asp:ListItem>
                    <asp:ListItem value="Malawi">Malawi </asp:ListItem>
                    <asp:ListItem value="Malaysia">Malaysia </asp:ListItem>
                    <asp:ListItem value="Maldives">Maldives </asp:ListItem>
                    <asp:ListItem value="Mali">Mali </asp:ListItem>
                    <asp:ListItem value="Malta">Malta </asp:ListItem>
                    <asp:ListItem value="Marshall Islands">Marshall Islands </asp:ListItem>
                    <asp:ListItem value="Martinique">Martinique </asp:ListItem>
                    <asp:ListItem value="Mauritania">Mauritania </asp:ListItem>
                    <asp:ListItem value="Mauritius">Mauritius </asp:ListItem>
                    <asp:ListItem value="Mexico">Mexico </asp:ListItem>
                    <asp:ListItem value="Micronesia">Micronesia </asp:ListItem>
                    <asp:ListItem value="Moldova">Moldova </asp:ListItem>
                    <asp:ListItem value="Monaco">Monaco </asp:ListItem>
                    <asp:ListItem value="Mongolia">Mongolia </asp:ListItem>
                    <asp:ListItem value="Montserrat">Montserrat </asp:ListItem>
                    <asp:ListItem value="Morocco">Morocco </asp:ListItem>
                    <asp:ListItem value="Mozambique">Mozambique </asp:ListItem>
                    <asp:ListItem value="Myanmar">Myanmar </asp:ListItem>
                    <asp:ListItem value="Namibia">Namibia </asp:ListItem>
                    <asp:ListItem value="Nepal">Nepal </asp:ListItem>
                    <asp:ListItem value="Netherlands">Netherlands </asp:ListItem>
                    <asp:ListItem value="Netherlands Antilles">Netherlands Antilles </asp:ListItem>
                    <asp:ListItem value="New Caledonia">New Caledonia </asp:ListItem>
                    <asp:ListItem value="New Zealand">New Zealand </asp:ListItem>
                    <asp:ListItem value="Nicaragua">Nicaragua </asp:ListItem>
                    <asp:ListItem value="Niger">Niger </asp:ListItem>
                    <asp:ListItem value="Nigeria">Nigeria </asp:ListItem>
                    <asp:ListItem value="North Korea">North Korea </asp:ListItem>
                    <asp:ListItem value="Norway">Norway </asp:ListItem>
                    <asp:ListItem value="Oman">Oman </asp:ListItem>
                    <asp:ListItem value="Pakistan">Pakistan </asp:ListItem>
                    <asp:ListItem value="Palau">Palau </asp:ListItem>
                    <asp:ListItem value="Panama">Panama </asp:ListItem>
                    <asp:ListItem value="Papua New Guinea">Papua New Guinea </asp:ListItem>
                    <asp:ListItem value="Paraguay">Paraguay </asp:ListItem>
                    <asp:ListItem value="Peru">Peru </asp:ListItem>
                    <asp:ListItem value="Philippines">Philippines </asp:ListItem>
                    <asp:ListItem value="Poland">Poland </asp:ListItem>
                    <asp:ListItem value="Portugal">Portugal </asp:ListItem>
                    <asp:ListItem value="Puerto Rico">Puerto Rico </asp:ListItem>
                    <asp:ListItem value="Qatar">Qatar </asp:ListItem>
                    <asp:ListItem value="Reunion Island">Reunion Island </asp:ListItem>
                    <asp:ListItem value="Romania">Romania </asp:ListItem>
                    <asp:ListItem value="Russia">Russia </asp:ListItem>
                    <asp:ListItem value="Rwanda">Rwanda </asp:ListItem>
                    <asp:ListItem value="Saipan">Saipan </asp:ListItem>
                    <asp:ListItem value="San Marino">San Marino </asp:ListItem>
                    <asp:ListItem value="Saudi Arabia">Saudi Arabia </asp:ListItem>
                    <asp:ListItem value="Senegal">Senegal </asp:ListItem>
                    <asp:ListItem value="Seychelles">Sierra Leone </asp:ListItem>
                    <asp:ListItem value="Singapore">Singapore </asp:ListItem>
                    <asp:ListItem value="Slovak Republic">Slovak Republic </asp:ListItem>
                    <asp:ListItem value="Slovenia">Slovenia </asp:ListItem>
                    <asp:ListItem value="South Africa">South Africa </asp:ListItem>
                    <asp:ListItem value="South Korea">South Korea </asp:ListItem>
                    <asp:ListItem value="Spain">Spain </asp:ListItem>
                    <asp:ListItem value="Sri Lanka">Sri Lanka </asp:ListItem>
                    <asp:ListItem value="St. Kitts Nevis">St. Kitts Nevis </asp:ListItem>
                    <asp:ListItem value="St. Lucia">St. Lucia </asp:ListItem>
                    <asp:ListItem value="St. Vincent">St. Vincent </asp:ListItem>
                    <asp:ListItem value="Sudan">Sudan </asp:ListItem>
                    <asp:ListItem value="Suriname">Suriname </asp:ListItem>
                    <asp:ListItem value="Swaziland">Swaziland </asp:ListItem>
                    <asp:ListItem value="Sweden">Sweden </asp:ListItem>
                    <asp:ListItem value="Switzerland">Switzerland </asp:ListItem>
                    <asp:ListItem value="Syria">Syria </asp:ListItem>
                    <asp:ListItem value="Taiwan">Taiwan </asp:ListItem>
                    <asp:ListItem value="Tajikistan">Tajikistan </asp:ListItem>
                    <asp:ListItem value="Tanzania">Tanzania </asp:ListItem>
                    <asp:ListItem value="Tatarstan">Tatarstan </asp:ListItem>
                    <asp:ListItem value="Thailand">Thailand </asp:ListItem>
                    <asp:ListItem value="Togo">Togo </asp:ListItem>
                    <asp:ListItem value="Trinidad Tobago">Trinidad Tobago </asp:ListItem>
                    <asp:ListItem value="Tunisia">Tunisia </asp:ListItem>
                    <asp:ListItem value="Turkey">Turkey </asp:ListItem>
                    <asp:ListItem value="Turkmenistan">Turkmenistan </asp:ListItem>
                    <asp:ListItem value="Turkmenistan, Republic Of">Turkmenistan, Republic Of </asp:ListItem>
                    <asp:ListItem value="Turks Caicos Is.">Turks Caicos Is. </asp:ListItem>
                    <asp:ListItem value="U.A.E.">U.A.E. </asp:ListItem>
                    <asp:ListItem value="U.S. Virgin Islands">U.S. Virgin Islands </asp:ListItem>
                    <asp:ListItem value="UK">UK </asp:ListItem>
                    <asp:ListItem value="USA">USA </asp:ListItem>
                    <asp:ListItem value="Uganda">Uganda </asp:ListItem>
                    <asp:ListItem value="Ukraine">Ukraine </asp:ListItem>
                    <asp:ListItem value="Uruguay">Uruguay </asp:ListItem>
                    <asp:ListItem value="Uzbekistan">Uzbekistan </asp:ListItem>
                    <asp:ListItem value="Vanuatu">Vanuatu </asp:ListItem>
                    <asp:ListItem value="Vatican City">Vatican City </asp:ListItem>
                    <asp:ListItem value="Venezuela">Venezuela </asp:ListItem>
                    <asp:ListItem value="Vietnam">Vietnam </asp:ListItem>
                    <asp:ListItem value="Wallis Futuna Islands">Wallis Futuna Islands </asp:ListItem>
                    <asp:ListItem value="Western Samoa">Western Samoa </asp:ListItem>
                    <asp:ListItem value="Yemen">Yemen </asp:ListItem>
                    <asp:ListItem value="Zaire">Zaire </asp:ListItem>
                    <asp:ListItem value="Zambia">Zambia </asp:ListItem>
                    <asp:ListItem value="Zimbabwe">Zimbabwe</asp:ListItem>
                     </asp:DropDownList>
            </p>
            <p>
                City&nbsp;:&nbsp;<asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
            </p>
            <p>
                Fax&nbsp;:&nbsp;<asp:TextBox ID="txtFax" runat="server" CssClass="form-control"></asp:TextBox>
            </p>
            <p>
                Web site&nbsp;:&nbsp;<asp:TextBox ID="txtWebsite" runat="server" CssClass="form-control"></asp:TextBox>
            </p>
           
            <p>
                Sales Tax Number&nbsp;:&nbsp;<asp:TextBox ID="txtSTNo" runat="server" CssClass="form-control"></asp:TextBox>
                Date&nbsp;:&nbsp;<asp:TextBox ID="txtSTDate" runat="server" CssClass="form-control"></asp:TextBox>
            </p>
        </div>

        <div class="col-md-12" style="padding: 5px; background-color: #66CCFF;">
            Contact Person Details
                       
        </div>

        <div class="col-sm-6">
            <p>
                Person Name&nbsp;:&nbsp;<asp:TextBox ID="txtCntName" runat="server" CssClass="form-control"></asp:TextBox>
            </p>
            <p>
                Mobile&nbsp;:&nbsp;<asp:TextBox ID="txtMobile" runat="server" CssClass="form-control"></asp:TextBox>
            </p>

        </div>


        <div class="col-sm-6">
            <p>
                Designation&nbsp;:&nbsp;<asp:TextBox ID="txtDesignation" runat="server" CssClass="form-control"></asp:TextBox>
            </p>
            <p>
                Email&nbsp;:&nbsp;<asp:TextBox ID="txtCntEmail" runat="server" CssClass="form-control"></asp:TextBox>
            </p>
        </div>
        <div class="col-md-12">
            <p>
                Items / Materials Supplied&nbsp;:&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server"  CssClass="form-control"/>
               
            </p>
            <div class="clearfix">
                &nbsp;<br/>
                <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="Button1_Click" />
                <input type="reset" name="Submit2" value="Reset" class="btn btn-default" />
                 <asp:Label ID="lbSucess" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
   

</asp:Content>
