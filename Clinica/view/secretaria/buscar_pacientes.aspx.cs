﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Clinica.controller;
using Clinica.model;

namespace Clinica.view.secretaria
{
    public partial class buscar_pacientes : System.Web.UI.Page
    {
        method metodo = new method();
        cPaciente paciente = new cPaciente();
        cCitaMedica citaMedica = new cCitaMedica();

        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGridView();
        }

        protected void btn_excelClick(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=Pacientes.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            Response.ContentEncoding = System.Text.Encoding.UTF8;
            Response.Charset = "";
            using (StringWriter sw = new StringWriter())
            {
                HtmlTextWriter hw = new HtmlTextWriter(sw);

                gv_data.AllowPaging = false;
                this.cargarGridView();

                foreach (TableCell cell in gv_data.HeaderRow.Cells)
                {
                    cell.BackColor = gv_data.HeaderStyle.BackColor;
                }
                foreach (GridViewRow row in gv_data.Rows)
                {
                    foreach (TableCell cell in row.Cells)
                    {
                        if (row.RowIndex % 2 == 0)
                        {
                            cell.BackColor = gv_data.AlternatingRowStyle.BackColor;
                        }
                        else
                        {
                            cell.BackColor = gv_data.RowStyle.BackColor;
                        }
                        cell.CssClass = "textmode";
                    }
                }

                gv_data.RenderControl(hw);

                string style = @"<style> .textmode { } </style>";
                Response.Write(style);
                Response.Output.Write(sw.ToString());
                Response.Flush();
                Response.End();
            }
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            return;
        }

        public void cargarGridView()
        {
            var queryTable = from cit in citaMedica.listCitaMedica().GroupBy(cit => cit.Paciente_idPaciente_CitaMedica)
                              select new
                              {
                                  cit.First().Paciente.rut_Paciente,
                                  cit.First().Paciente.nombres_Paciente,
                                  cit.First().Paciente.apellidos_Paciente,
                                  cit.First().Paciente.fechaNac_Paciente,
                                  cit.First().Paciente.nTelefono_Paciente,
                                  cit.First().Paciente.direccion_Paciente,
                                  count = cit.Count()
                              };

            gv_data.DataSource = queryTable;
            gv_data.DataBind();
        }
    }
}