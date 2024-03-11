<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DynamicTableCRUD.aspx.cs" Inherits="WebFormsApplication.DynamicCRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dynamic CRUD</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h2 {
            margin-bottom: 10px;
        }
        .form-group {
            margin-bottom: 10px;
        }
        label {
            font-weight: bold;
        }
        .btn {
            padding: 5px 10px;
            background-color: #007bff;
            border: none;
            color: #fff;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .table {
            width: 100%;
            border-collapse: collapse;
        }
        .table th, .table td {
            padding: 8px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }
        .table th {
            background-color: #007bff;
            color: #fff;
        }
        .table tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .enclose{
            border:solid;
            padding:50px;
        }
    </style>
</head>
<body>
    <div class="enclose">
        <h1 class="text-center">Task 1 CRUD</h1>
    <form id="form1" runat="server">
        <div>
            <h2>Add Record</h2>
            <div class="form-group">
                <label for="txtAddName">Name:</label>
                <asp:TextBox ID="txtAddName" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtAddAge">Age:</label>
                <asp:TextBox ID="txtAddAge" runat="server" TextMode="Number"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnAdd" runat="server" Text="Add Record" CssClass="btn" OnClick="btnAdd_Click" />
            </div>
        </div>
        <hr />
        <div>
            <h2>Employee Records</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" 
                OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" 
                OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" 
                OnRowDataBound="GridView1_RowDataBound" CssClass="table">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Age" HeaderText="Age" />
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
            </div>

</body>
</html>
