namespace Orden_de_trabajo
{
    partial class ListaActividad
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dataActividad = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtDescripcion = new System.Windows.Forms.TextBox();
            this.txtTiempo = new System.Windows.Forms.TextBox();
            this.btnModificarActividad = new System.Windows.Forms.Button();
            this.btnEliminarActividad = new System.Windows.Forms.Button();
            this.txtid = new System.Windows.Forms.TextBox();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataActividad)).BeginInit();
            this.SuspendLayout();
            // 
            // dataActividad
            // 
            this.dataActividad.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataActividad.Location = new System.Drawing.Point(25, 34);
            this.dataActividad.Name = "dataActividad";
            this.dataActividad.Size = new System.Drawing.Size(361, 335);
            this.dataActividad.TabIndex = 0;
            this.dataActividad.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataActividad_CellClick);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(392, 66);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(66, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Descripcion:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(401, 106);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(45, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Tiempo:";
            // 
            // txtDescripcion
            // 
            this.txtDescripcion.Location = new System.Drawing.Point(457, 59);
            this.txtDescripcion.Name = "txtDescripcion";
            this.txtDescripcion.Size = new System.Drawing.Size(153, 20);
            this.txtDescripcion.TabIndex = 3;
            // 
            // txtTiempo
            // 
            this.txtTiempo.Location = new System.Drawing.Point(457, 99);
            this.txtTiempo.Name = "txtTiempo";
            this.txtTiempo.Size = new System.Drawing.Size(153, 20);
            this.txtTiempo.TabIndex = 4;
            // 
            // btnModificarActividad
            // 
            this.btnModificarActividad.Location = new System.Drawing.Point(457, 141);
            this.btnModificarActividad.Name = "btnModificarActividad";
            this.btnModificarActividad.Size = new System.Drawing.Size(75, 23);
            this.btnModificarActividad.TabIndex = 5;
            this.btnModificarActividad.Text = "Modificar";
            this.btnModificarActividad.UseVisualStyleBackColor = true;
            this.btnModificarActividad.Click += new System.EventHandler(this.btnModificarActividad_Click);
            // 
            // btnEliminarActividad
            // 
            this.btnEliminarActividad.Location = new System.Drawing.Point(457, 171);
            this.btnEliminarActividad.Name = "btnEliminarActividad";
            this.btnEliminarActividad.Size = new System.Drawing.Size(75, 23);
            this.btnEliminarActividad.TabIndex = 6;
            this.btnEliminarActividad.Text = "Eliminar";
            this.btnEliminarActividad.UseVisualStyleBackColor = true;
            this.btnEliminarActividad.Click += new System.EventHandler(this.btnEliminarActividad_Click);
            // 
            // txtid
            // 
            this.txtid.Location = new System.Drawing.Point(457, 34);
            this.txtid.Name = "txtid";
            this.txtid.Size = new System.Drawing.Size(100, 20);
            this.txtid.TabIndex = 7;
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(457, 201);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(75, 23);
            this.btnCancelar.TabIndex = 8;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(393, 40);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(19, 13);
            this.label3.TabIndex = 9;
            this.label3.Text = "Id:";
            // 
            // ListaActividad
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.ClientSize = new System.Drawing.Size(622, 439);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.txtid);
            this.Controls.Add(this.btnEliminarActividad);
            this.Controls.Add(this.btnModificarActividad);
            this.Controls.Add(this.txtTiempo);
            this.Controls.Add(this.txtDescripcion);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dataActividad);
            this.Name = "ListaActividad";
            this.Text = "CONSTRUCTORA BECTEK-LISTA ACTIVIDAD";
            this.Load += new System.EventHandler(this.ListaActividad_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataActividad)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataActividad;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtDescripcion;
        private System.Windows.Forms.TextBox txtTiempo;
        private System.Windows.Forms.Button btnModificarActividad;
        private System.Windows.Forms.Button btnEliminarActividad;
        private System.Windows.Forms.TextBox txtid;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Label label3;
    }
}