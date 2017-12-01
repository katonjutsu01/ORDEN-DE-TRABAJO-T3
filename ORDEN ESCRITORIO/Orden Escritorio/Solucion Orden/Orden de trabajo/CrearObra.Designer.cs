namespace Orden_de_trabajo
{
    partial class CrearObra
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.txtNombreObra = new System.Windows.Forms.TextBox();
            this.txtDescripcionObra = new System.Windows.Forms.TextBox();
            this.cmbPresupuestoObra = new System.Windows.Forms.ComboBox();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(142, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(37, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "OBRA";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(36, 54);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(57, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "NOMBRE:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(35, 99);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(83, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "DESCRIPCION:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(36, 144);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(91, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "PRESUPUESTO:";
            // 
            // btnGuardar
            // 
            this.btnGuardar.Location = new System.Drawing.Point(191, 191);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(75, 23);
            this.btnGuardar.TabIndex = 4;
            this.btnGuardar.Text = "GUARDAR";
            this.btnGuardar.UseVisualStyleBackColor = true;
            this.btnGuardar.Click += new System.EventHandler(this.button1_Click);
            // 
            // txtNombreObra
            // 
            this.txtNombreObra.Location = new System.Drawing.Point(124, 47);
            this.txtNombreObra.Name = "txtNombreObra";
            this.txtNombreObra.Size = new System.Drawing.Size(171, 20);
            this.txtNombreObra.TabIndex = 5;
            // 
            // txtDescripcionObra
            // 
            this.txtDescripcionObra.Location = new System.Drawing.Point(124, 91);
            this.txtDescripcionObra.Name = "txtDescripcionObra";
            this.txtDescripcionObra.Size = new System.Drawing.Size(171, 20);
            this.txtDescripcionObra.TabIndex = 6;
            // 
            // cmbPresupuestoObra
            // 
            this.cmbPresupuestoObra.FormattingEnabled = true;
            this.cmbPresupuestoObra.Location = new System.Drawing.Point(124, 135);
            this.cmbPresupuestoObra.Name = "cmbPresupuestoObra";
            this.cmbPresupuestoObra.Size = new System.Drawing.Size(171, 21);
            this.cmbPresupuestoObra.TabIndex = 7;
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(89, 191);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(75, 23);
            this.btnCancelar.TabIndex = 8;
            this.btnCancelar.Text = "CANCELAR";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // CrearObra
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.ClientSize = new System.Drawing.Size(342, 270);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.cmbPresupuestoObra);
            this.Controls.Add(this.txtDescripcionObra);
            this.Controls.Add(this.txtNombreObra);
            this.Controls.Add(this.btnGuardar);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "CrearObra";
            this.Text = "CONSTRUCTORA BECTEK-CREAR OBRA";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnGuardar;
        private System.Windows.Forms.TextBox txtNombreObra;
        private System.Windows.Forms.TextBox txtDescripcionObra;
        private System.Windows.Forms.ComboBox cmbPresupuestoObra;
        private System.Windows.Forms.Button btnCancelar;
    }
}