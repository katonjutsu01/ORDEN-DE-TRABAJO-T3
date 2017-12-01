namespace Orden_de_trabajo
{
    partial class ListaObra
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
            this.dataObra = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtNombreObra = new System.Windows.Forms.TextBox();
            this.txtDescripcionObra = new System.Windows.Forms.TextBox();
            this.btnModificarObra = new System.Windows.Forms.Button();
            this.btnEliminarObra = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.cmbPresupuestoObra = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtIdObra = new System.Windows.Forms.TextBox();
            this.btnCancelar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataObra)).BeginInit();
            this.SuspendLayout();
            // 
            // dataObra
            // 
            this.dataObra.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataObra.Location = new System.Drawing.Point(24, 24);
            this.dataObra.Name = "dataObra";
            this.dataObra.Size = new System.Drawing.Size(397, 298);
            this.dataObra.TabIndex = 0;
            this.dataObra.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataObra_CellClick);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(427, 76);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(47, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Nombre:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(427, 113);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(66, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Descripcion:";
            // 
            // txtNombreObra
            // 
            this.txtNombreObra.Location = new System.Drawing.Point(499, 69);
            this.txtNombreObra.Name = "txtNombreObra";
            this.txtNombreObra.Size = new System.Drawing.Size(150, 20);
            this.txtNombreObra.TabIndex = 3;
            // 
            // txtDescripcionObra
            // 
            this.txtDescripcionObra.Location = new System.Drawing.Point(499, 106);
            this.txtDescripcionObra.Name = "txtDescripcionObra";
            this.txtDescripcionObra.Size = new System.Drawing.Size(150, 20);
            this.txtDescripcionObra.TabIndex = 4;
            // 
            // btnModificarObra
            // 
            this.btnModificarObra.Location = new System.Drawing.Point(500, 179);
            this.btnModificarObra.Name = "btnModificarObra";
            this.btnModificarObra.Size = new System.Drawing.Size(88, 23);
            this.btnModificarObra.TabIndex = 5;
            this.btnModificarObra.Text = "Modificar";
            this.btnModificarObra.UseVisualStyleBackColor = true;
            this.btnModificarObra.Click += new System.EventHandler(this.btnModificarObra_Click);
            // 
            // btnEliminarObra
            // 
            this.btnEliminarObra.Location = new System.Drawing.Point(500, 222);
            this.btnEliminarObra.Name = "btnEliminarObra";
            this.btnEliminarObra.Size = new System.Drawing.Size(88, 23);
            this.btnEliminarObra.TabIndex = 6;
            this.btnEliminarObra.Text = "Eliminar";
            this.btnEliminarObra.UseVisualStyleBackColor = true;
            this.btnEliminarObra.Click += new System.EventHandler(this.btnEliminarObra_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(427, 151);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(69, 13);
            this.label3.TabIndex = 7;
            this.label3.Text = "Presupuesto:";
            // 
            // cmbPresupuestoObra
            // 
            this.cmbPresupuestoObra.FormattingEnabled = true;
            this.cmbPresupuestoObra.Location = new System.Drawing.Point(500, 143);
            this.cmbPresupuestoObra.Name = "cmbPresupuestoObra";
            this.cmbPresupuestoObra.Size = new System.Drawing.Size(150, 21);
            this.cmbPresupuestoObra.TabIndex = 8;
            this.cmbPresupuestoObra.Text = "Seleccionar";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(430, 39);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(19, 13);
            this.label4.TabIndex = 9;
            this.label4.Text = "Id:";
            // 
            // txtIdObra
            // 
            this.txtIdObra.Location = new System.Drawing.Point(499, 31);
            this.txtIdObra.Name = "txtIdObra";
            this.txtIdObra.Size = new System.Drawing.Size(150, 20);
            this.txtIdObra.TabIndex = 10;
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(500, 262);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(88, 23);
            this.btnCancelar.TabIndex = 11;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // ListaObra
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.ClientSize = new System.Drawing.Size(662, 400);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.txtIdObra);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.cmbPresupuestoObra);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.btnEliminarObra);
            this.Controls.Add(this.btnModificarObra);
            this.Controls.Add(this.txtDescripcionObra);
            this.Controls.Add(this.txtNombreObra);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dataObra);
            this.Name = "ListaObra";
            this.Text = "ListaObra";
            this.Load += new System.EventHandler(this.ListaObra_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataObra)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataObra;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtNombreObra;
        private System.Windows.Forms.TextBox txtDescripcionObra;
        private System.Windows.Forms.Button btnModificarObra;
        private System.Windows.Forms.Button btnEliminarObra;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cmbPresupuestoObra;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtIdObra;
        private System.Windows.Forms.Button btnCancelar;
    }
}