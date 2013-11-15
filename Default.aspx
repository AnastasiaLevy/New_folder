<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8" />
  <title>jQuery UI Tabs - Default functionality</title>
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css" />
  <script>
      $(function () {
          $("#tabs").tabs();
      });
  </script>
      <style type="text/css">
          .auto-style1 {
              height: 894px;
              width: 1304px;
              margin-right: 149px;
              margin-left: 21px;
          }
          #form1 {
              height: 811px;
              width: 628px;
              margin-left: 423px;
              margin-top: 89px;
          }
          .auto-style2 {
              height: 670px;
          }
          .auto-style3 {
              height: 713px;
          }
          .auto-style4 {
              height: 962px;
          }
      </style>
</head>

<body class="auto-style1" background="Images/school-desk-wallpaper.jpg">
    <form id="form1" runat="server">
    <div>
    <div id="tabs">
  <ul>
    <li><a href="#tabs-1">View a class list</a></li>
    <li><a href="#tabs-2">View your profile</a></li>
    <li><a href="#tabs-3">View exam list</a></li>
  </ul>
  <div id="tabs-1">
      <div class="auto-style3">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource2">
        </asp:GridView>
          <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="ReturnFullList" TypeName="ServiceLayerPerson"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="FindPersonById" TypeName="ServiceLayerPerson">
            <SelectParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </SelectParameters>
          </asp:ObjectDataSource>
      </div>
  </div>
  <div id="tabs-2">
      <div class="auto-style4">
          <asp:GridView ID="GridView2" runat="server"></asp:GridView>
      </div>

  </div>
  <div id="tabs-3">
    
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="ReturnFullList" TypeName="ServiceLayerEvent"></asp:ObjectDataSource>
      </p>
    
  </div>
</div>
    </div>
    </form>
</body>
</html>
