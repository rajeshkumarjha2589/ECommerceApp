<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="Ecommerce.Admin.Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mb-4">
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </div>

    <div class="row">
        <div class=" col-sm-12 col-md-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Category</h4>
                    <hr />
                    <div class="form-body">
                        <label>Category name</label>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <asp:TextBox ID="txtCategoryName" runat="server" CssClass="form-control" placeholder="Enter category name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvCategoryName" runat="server" ForeColor="red" Font-Size="Small"
                                        Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtCategoryName"
                                        ErrorMessage="Category name is required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <label>Category Images</label>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <asp:FileUpload ID="fuCategoryImage" runat="server" CssClass="form-control" />
                                    <asp:HiddenField ID="hfCategoryId" runat="server" Value="0" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <asp:CheckBox ID="cbIsActive" runat="server" Text="&nbsp; IsActive" />
                                </div>
                            </div>

                        </div>

                    </div>
                    <div class="form-action pb-5">
                        <div class="text-left">
                            <asp:Button ID="btnAddOrUpdate" runat="server" CssClass="btn btn-info" Text="Add" OnClick="btnAddOrUpdate_click" />
                            <asp:Button ID="btnClear" runat="server" CssClass="btn btn-dark" Text="Reset" OnClick="btnClear_click" />
                        </div>
                    </div>
                    <div>
                        <asp:Image ID="imagePreview" runat="server" CssClass="img-thumbnail" AlternateText="imgPreview" />
                    </div>
                </div>
            </div>
        </div>

        <div class=" col-sm-12 col-md-8">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Category List</h4>
                    <hr />
                    <div class="table-responsive">
                        <asp:Repeater ID="rCategory" runat="server">
                            <HeaderTemplate>
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="table-plus">Name </th>
                                            <th>Image </th>
                                            <th>IsActive</th>
                                            <th>CreatedDate </th>
                                            <th class="dataTable-nosort">Action </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                </table>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td class="table-plus"><%# Eval("CategoryName") %></td>
                                    <td>
                                        <img width="40" src="<%# Ecommerce.Utils.getImageUrl(Eval("CategoryImageurl")) %>" alt="NoImage" />
                                    </td>
                                    <td>
                                        <asp:Label ID="lblIsActive" runat="server">
                                            Text = '<%# (bool)Eval("IsActive") == true ? "Active" : "In-Active" %>'
                                            CssClass='<%# (bool)Eval("IsActive") == true? "badge badge-success" : "badge badge-danger" %>'
                                        </asp:Label>
                                    </td>
                                    <td>
                                        <%# Eval("CreatedData") %>

                                    </td>
                                    <td>
                                        <asp:LinkButton ID="lbEdit" Text="Edit" runat="server" CssClass="badge badge-primary">
                                            <i class="fas fa-edit"></i>
                                        </asp:LinkButton>
                                        <asp:LinkButton ID="lbDelete" Text="Delete" runat="server" CssClass="badge badge-danger">
                                             <i class="fas fa-trash-alt"></i>
                                        </asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </tbody>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
