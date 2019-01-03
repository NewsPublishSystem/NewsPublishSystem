﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsManage.aspx.cs" Inherits="NewsReleaseSystem.BackDesk.NewsManage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body
        {
            width: 810px;
            text-align: center;
            color: #606060;
            font-size: 12px;
        }
        td
        {
            line-height: 21.0px;
        }
        /* 未访问前的样式 */
        A:link
        {
            color: #606060;
            font-size: 12px;
            text-decoration: none;
        }
        /* 鼠标激活样式 */
        A:visited
        {
            color: #606060;
            font-size: 12px;
            text-decoration: none;
        }
        /* 鼠标悬停时的样式 */
        A:hover
        {
            color: #009966;
            font-size: 12px;
            text-decoration: none;
        }
        .titleSystemName
        {
            float: left;
            margin-left: 350px;
            font-size: 20px;
            font-weight: bolder;
            color: #ffffff;
        }
        .style1
        {
            background-color: #66ccff;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table width="810px" style="border: solid 1px #6AC0FF;">
                <tr>
                    <td class="style1 ">
                        <div class="titleSystemName">
                            新闻信息
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        输入关键字：
                        <asp:TextBox ID="txtKey" runat="server"></asp:TextBox>&nbsp;
                        <asp:DropDownList ID="ddlNewsCategories" runat="server" Width="78px" CausesValidation="True">
                            <asp:ListItem>时事新闻</asp:ListItem>
                            <asp:ListItem>环球经济</asp:ListItem>
                            <asp:ListItem>军事世界</asp:ListItem>
                            <asp:ListItem>科学技术</asp:ListItem>
                            <asp:ListItem>生活理财</asp:ListItem>
                            <asp:ListItem>社会百态</asp:ListItem>
                            <asp:ListItem>世界体育</asp:ListItem>
                            <asp:ListItem>娱乐综艺</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;
                        <asp:Button ID="btnSearch" runat="server" Height="20px" OnClick="btnSearch_Click"
                            Text="查询" />&nbsp;
                        <span style="float: right;">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" Target="_parent">返回首页</asp:HyperLink>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <asp:GridView ID="gvdNews" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                            Height="1px" PageSize="12" Width="100%" CssClass="txt" OnPageIndexChanging="gvdNews_PageIndexChanging"
                            OnRowDeleting="gvdNews_RowDeleting" OnRowDataBound="gvdNews_RowDataBound" CellPadding="3"
                            BackColor="White">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="ID"></asp:BoundField>
                                <asp:BoundField DataField="title" HeaderText="新闻标题"></asp:BoundField>
                                <asp:BoundField DataField="Type" HeaderText="新闻类别"></asp:BoundField>
                                <asp:BoundField DataField="IssueDate" HeaderText="发布时间"></asp:BoundField>
                                <asp:HyperLinkField HeaderText="操作" Text="编辑" DataNavigateUrlFields="id" DataNavigateUrlFormatString="~/BackDesk/UpdateNews.aspx?id={0}"
                                    Target="right"></asp:HyperLinkField>
                                <asp:CommandField ShowDeleteButton="True" HeaderText="操作"></asp:CommandField>
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <RowStyle ForeColor="#000066" />
                            <EmptyDataTemplate>
                                抱歉，您要查询的信息不存在!
                            </EmptyDataTemplate>
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#6AC0FF" Font-Bold="True" ForeColor="White" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
