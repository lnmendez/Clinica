﻿<%@ Page Title="" Language="C#" MasterPageFile="~/view/secretaria/master_secretaria.Master" AutoEventWireup="true" CodeBehind="gestion_pacientes.aspx.cs" Inherits="Clinica.view.secretaria.gestion_pacientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-margin">
        <div class="container h-100">
            <div class="row h-100 justify-content-center align-items-center">
                <div class="card card-color mb-3 col-md-12 h-100 d-inline-block">
                    <div class="card-body">
                        <div class="form-row">
                            <div class="col-12">
                                <h3 class="card-title">Gestión Pacientes</h3>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-2">
                                <br>
                                <asp:Label Text="Rut: " runat="server" />
                                <asp:TextBox ID="txt_rut" runat="server" Placeholder="12345678-9" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <br>
                                <asp:Label Text="Nombres: " runat="server" />
                                <asp:TextBox ID="txt_nombre" runat="server" Placeholder="Nicolás Ignacio" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <br>
                                <asp:Label Text="Apellidos: " runat="server" />
                                <asp:TextBox ID="txt_apellido" runat="server" Placeholder="Luco Palomino" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-2">
                                <br>
                                <asp:Label Text="Estado: " runat="server" />
                                <asp:DropDownList ID="dp_estado" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="Activo" Text="Activo"></asp:ListItem>
                                    <asp:ListItem Value="Inactivo" Text="Inactivo"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-2">
                                <br>
                                <asp:Label Text="Fecha Nacimiento: " runat="server" />
                                <asp:TextBox ID="txt_fecha" runat="server" TextMode="Date" CssClass="form-control" PlaceHolder="dd/mm/aaaa"></asp:TextBox>
                            </div>
                            <div class="col-md-2">
                                <br>
                                <asp:Label Text="Telefono: " runat="server" />
                                <asp:TextBox ID="txt_telefono" runat="server" Placeholder="987654321" TextMode="Phone" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <br>
                                <asp:Label Text="Direccion: " runat="server" />
                                <asp:TextBox ID="txt_direccion" runat="server" Placeholder="Psj. 4 Norte 1540, Talca" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-2">
                                <br>
                                <br>
                                <asp:Button ID="btn_add" runat="server" Text="Agregar" CssClass="btn btn-primary btn-block" OnClick="btn_addClick" />
                            </div>
                        </div>
                        <br>
                        <div class="text-center text-danger">
                            <asp:Label ID="lbl_red" runat="server"></asp:Label>
                        </div>
                        <div class="text-center text-success">
                            <asp:Label ID="lbl_green" runat="server"></asp:Label>
                        </div>
                        <asp:GridView ID="gv_data" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped">
                            <Columns>
                                <asp:BoundField DataField="id_Paciente" HeaderText="ID" Visible="true" />
                                <asp:BoundField DataField="rut_Paciente" HeaderText="Rut" />
                                <asp:BoundField DataField="nombres_Paciente" HeaderText="Nombres" />
                                <asp:BoundField DataField="apellidos_Paciente" HeaderText="Apellidos" />
                                <asp:BoundField DataField="fechaNac_Paciente" HeaderText="Fecha Nac." DataFormatString="{0:d}" />
                                <asp:BoundField DataField="nTelefono_Paciente" HeaderText="Telefono" />
                                <asp:BoundField DataField="direccion_Paciente" HeaderText="Dirección" />
                                <asp:BoundField DataField="estado_Paciente" HeaderText="Estado" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
