namespace Orden_de_trabajo
{
    partial class ListaMaterial
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
            this.dataMaterial = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txtIdMaterial = new System.Windows.Forms.TextBox();
            this.txtNombreMaterial = new System.Windows.Forms.TextBox();
            this.cmbTipo = new System.Windows.Forms.ComboBox();
            this.btnModificarMaterial = new System.Windows.Forms.Button();
            this.btnEliminarMaterial = new System.Windows.Forms.Button();
            this.btnCancelar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataMaterial)).BeginInit();
            this.SuspendLayout();
            // 
            // dataMaterial
            // 
            this.dataMaterial.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataMaterial.Location = new System.Drawing.Point(13, 12);
            this.dataMaterial.Name = "dataMaterial";
            this.dataMaterial.Size = new System.Drawing.Size(400, 373);
            this.dataMaterial.TabIndex = 1;
            this.dataMaterial.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataMaterial_CellClick);
            this.dataMaterial.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataMaterial_CellContentClick);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(419, 31);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(19, 13);
            this.label1.TabIndex = 2;
            this.label1.Text = "Id:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(419, 86);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(47, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Nombre:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(419, 143);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(71, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Tipo Material:";
            this.label3.Click += new System.EventHandler(this.label3_Click);
            // 
            // txtIdMaterial
            // 
            this.txtIdMaterial.Location = new System.Drawing.Point(489, 24);
            this.txtIdMaterial.Name = "txtIdMaterial";
            this.txtIdMaterial.Size = new System.Drawing.Size(121, 20);
            this.txtIdMaterial.TabIndex = 5;
            // 
            // txtNombreMaterial
            // 
            this.txtNombreMaterial.Location = new System.Drawing.Point(489, 79);
            this.txtNombreMaterial.Name = "txtNombreMaterial";
            this.txtNombreMaterial.Size = new System.Drawing.Size(121, 20);
            this.txtNombreMaterial.TabIndex = 6;
            // 
            // cmbTipo
            // 
            this.cmbTipo.FormattingEnabled = true;
            this.cmbTipo.Location = new System.Drawing.Point(489, 135);
            this.cmbTipo.Name = "cmbTipo";
            this.cmbTipo.Size = new System.Drawing.Size(121, 21);
            this.cmbTipo.TabIndex = 7;
            // 
            // btnModificarMaterial
            // 
            this.btnModificarMaterial.Location = new System.Drawing.Point(489, 185);
            this.btnModificarMaterial.Name = "btnModificarMaterial";
            this.btnModificarMaterial.Size = new System.Drawing.Size(75, 23);
            this.btnModificarMaterial.TabIndex = 8;
            this.btnModificarMaterial.Text = "Modificar";
            this.btnModificarMaterial.UseVisualStyleBackColor = true;
            this.btnModificarMaterial.Click += new System.EventHandler(this.btnModificarMaterial_Click);
            // 
            // btnEliminarMaterial
            // 
            this.btnEliminarMaterial.Location = new System.Drawing.Point(489, 230);
            this.btnEliminarMaterial.Name = "btnEliminarMaterial";
            this.btnEliminarMaterial.Size = new System.Drawing.Size(75, 23);
            this.btnEliminarMaterial.TabIndex = 9;
            this.btnEliminarMaterial.Text = "Eliminar";
            this.btnEliminarMaterial.UseVisualStyleBackColor = true;
            this.btnEliminarMaterial.Click += new System.EventHandler(this.button2_Click);
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(489, 269);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(75, 23);
            this.btnCancelar.TabIndex = 10;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // ListaMaterial
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.ClientSize = new System.Drawing.Size(622, 440);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.btnEliminarMaterial);
            this.Controls.Add(this.btnModificarMaterial);
            this.Controls.Add(this.cmbTipo);
            this.Controls.Add(this.txtNombreMaterial);
            this.Controls.Add(this.txtIdMaterial);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dataMaterial);
            this.Name = "ListaMaterial";
            this.Text = "CONSTRUCTORA BECTEK-LISTA MATERIAL";
            this.Load += new System.EventHandler(this.ListaMaterial_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataMaterial)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataMaterial;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtIdMaterial;
        private System.Windows.Forms.TextBox txtNombreMaterial;
        private System.Windows.Forms.ComboBox cmbTipo;
        private System.Windows.Forms.Button btnModificarMaterial;
        private System.Windows.Forms.Button btnEliminarMaterial;
        private System.Windows.Forms.Button btnCancelar;
    }
}