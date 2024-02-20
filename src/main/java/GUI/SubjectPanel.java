/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package GUI;

import BUS.SubjectBUS;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import DTO.Subject;

/**
 *
 * @author M S I
 */
public class SubjectPanel extends javax.swing.JPanel {

    /**
     * Creates new form SubjectPanel
     */
    SubjectBUS subjectBUS = new SubjectBUS();

    public SubjectPanel() {
        initComponents();
        loadDataTable();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        InputSubjectDialog = new javax.swing.JDialog();
        jPanel2 = new javax.swing.JPanel();
        jPanel11 = new javax.swing.JPanel();
        btnAddSubject = new javax.swing.JButton();
        btnEditSubject = new javax.swing.JButton();
        btnEsc = new javax.swing.JButton();
        jLabel7 = new javax.swing.JLabel();
        txtNumberOfLesson = new javax.swing.JTextField();
        txtCoefficient = new javax.swing.JTextField();
        txtSubjectID = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        txtSubjectName = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jTabbedPane1 = new javax.swing.JTabbedPane();
        jPanel1 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        subjectList = new javax.swing.JTable();
        jPanel4 = new javax.swing.JPanel();
        btnShowSubjectDialog = new javax.swing.JButton();
        btnShowEditSubjectDialog = new javax.swing.JButton();
        deleteSubjectBtn = new javax.swing.JButton();

        InputSubjectDialog.setMinimumSize(new java.awt.Dimension(344, 450));
        InputSubjectDialog.setModal(true);
        InputSubjectDialog.setUndecorated(true);
        InputSubjectDialog.setPreferredSize(new java.awt.Dimension(344, 450));

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Thông tin môn học", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        jPanel11.setForeground(new java.awt.Color(255, 255, 255));

        btnAddSubject.setBackground(new java.awt.Color(204, 0, 204));
        btnAddSubject.setForeground(new java.awt.Color(255, 255, 255));
        btnAddSubject.setText("Thêm");
        btnAddSubject.setPreferredSize(new java.awt.Dimension(100, 35));
        btnAddSubject.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAddSubjectActionPerformed(evt);
            }
        });
        jPanel11.add(btnAddSubject);

        btnEditSubject.setBackground(new java.awt.Color(255, 153, 51));
        btnEditSubject.setForeground(new java.awt.Color(255, 255, 255));
        btnEditSubject.setText("Sửa");
        btnEditSubject.setPreferredSize(new java.awt.Dimension(100, 35));
        btnEditSubject.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnEditSubjectActionPerformed(evt);
            }
        });
        jPanel11.add(btnEditSubject);

        btnEsc.setBackground(new java.awt.Color(255, 0, 0));
        btnEsc.setForeground(new java.awt.Color(255, 255, 255));
        btnEsc.setText("Thoát");
        btnEsc.setPreferredSize(new java.awt.Dimension(100, 35));
        btnEsc.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnEscActionPerformed(evt);
            }
        });
        jPanel11.add(btnEsc);

        jLabel7.setFont(new java.awt.Font("Segoe UI Variable", 1, 14)); // NOI18N
        jLabel7.setText("Hệ số");

        jLabel2.setFont(new java.awt.Font("Segoe UI Variable", 1, 14)); // NOI18N
        jLabel2.setText("Mã môn học");

        jLabel3.setFont(new java.awt.Font("Segoe UI Variable", 1, 14)); // NOI18N
        jLabel3.setText("Tên môn học");

        jLabel6.setFont(new java.awt.Font("Segoe UI Variable", 1, 14)); // NOI18N
        jLabel6.setText("Số tiết");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(29, 29, 29)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(12, 12, 12)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txtCoefficient, javax.swing.GroupLayout.PREFERRED_SIZE, 194, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txtNumberOfLesson, javax.swing.GroupLayout.PREFERRED_SIZE, 194, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel6)
                            .addComponent(txtSubjectID, javax.swing.GroupLayout.PREFERRED_SIZE, 194, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 87, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 87, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txtSubjectName, javax.swing.GroupLayout.PREFERRED_SIZE, 194, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addComponent(jPanel11, javax.swing.GroupLayout.PREFERRED_SIZE, 220, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(31, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtSubjectID, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jLabel3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtSubjectName, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jLabel6)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtNumberOfLesson, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jLabel7)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtCoefficient, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(21, 21, 21)
                .addComponent(jPanel11, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout InputSubjectDialogLayout = new javax.swing.GroupLayout(InputSubjectDialog.getContentPane());
        InputSubjectDialog.getContentPane().setLayout(InputSubjectDialogLayout);
        InputSubjectDialogLayout.setHorizontalGroup(
            InputSubjectDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(InputSubjectDialogLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        InputSubjectDialogLayout.setVerticalGroup(
            InputSubjectDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(InputSubjectDialogLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        setPreferredSize(new java.awt.Dimension(1050, 600));

        jTabbedPane1.setPreferredSize(new java.awt.Dimension(1050, 600));

        jPanel1.setPreferredSize(new java.awt.Dimension(1050, 600));

        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder("Danh sách môn học"));

        subjectList.setFont(new java.awt.Font("Segoe UI Variable", 0, 14)); // NOI18N
        subjectList.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Mã môn học", "Tên môn học", "Hệ số", "Số tiết"
            }
        ));
        subjectList.setAutoResizeMode(javax.swing.JTable.AUTO_RESIZE_ALL_COLUMNS);
        subjectList.setRowHeight(30);
        subjectList.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                subjectListMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(subjectList);

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 1016, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 438, Short.MAX_VALUE)
                .addContainerGap())
        );

        jPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder("Thao tác"));

        btnShowSubjectDialog.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        btnShowSubjectDialog.setIcon(new javax.swing.ImageIcon(getClass().getResource("/GUI/Add.png"))); // NOI18N
        btnShowSubjectDialog.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnShowSubjectDialogActionPerformed(evt);
            }
        });

        btnShowEditSubjectDialog.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        btnShowEditSubjectDialog.setIcon(new javax.swing.ImageIcon(getClass().getResource("/GUI/Edit.png"))); // NOI18N
        btnShowEditSubjectDialog.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnShowEditSubjectDialogActionPerformed(evt);
            }
        });

        deleteSubjectBtn.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        deleteSubjectBtn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/GUI/Remove.png"))); // NOI18N
        deleteSubjectBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                deleteSubjectBtnActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(btnShowSubjectDialog, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(btnShowEditSubjectDialog, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(deleteSubjectBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addComponent(deleteSubjectBtn, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                    .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addComponent(btnShowSubjectDialog, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(btnShowEditSubjectDialog, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        jTabbedPane1.addTab("Môn học", jPanel1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jTabbedPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jTabbedPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 605, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void loadDataTable() {
        DefaultTableModel model = (DefaultTableModel) subjectList.getModel();
        model.setRowCount(0); // xóa table 
        for (Subject subject : subjectBUS.getAllSubjects()) {
            Object dataRow[] = new Object[4];
            dataRow[0] = subject.getSubjectID();
            dataRow[1] = subject.getSubjectName();
            dataRow[2] = subject.getCoefficient();
            dataRow[3] = subject.getNumberOfLesson();
            model.addRow(dataRow);
            System.out.println(subject.toString());
        }

    }

    public boolean validateForm() {
        if (txtSubjectID.getText().isEmpty() || txtSubjectName.getText().isEmpty() || txtSubjectID.getText().isEmpty() || txtNumberOfLesson.getText().isEmpty()) {
            return false;
        }
        return true;
    }

    public void setModel(Subject subject) {
        txtSubjectID.setText(subject.getSubjectID());
        txtSubjectName.setText(subject.getSubjectName());
        txtCoefficient.setText(subject.getCoefficient() + "");
        txtNumberOfLesson.setText(subject.getNumberOfLesson() + "");
    }

    public Subject getModel() {
        Subject subject = new Subject();
        subject.setSubjectID(txtSubjectID.getText());
        subject.setSubjectName(txtSubjectName.getText());
        subject.setCoefficient(Integer.parseInt(txtCoefficient.getText()));
        subject.setNumberOfLesson(Integer.parseInt(txtNumberOfLesson.getText()));
        return subject;
    }

    public void reset() {
        txtSubjectID.setText("");
        txtSubjectName.setText("");
        txtCoefficient.setText("");
        txtNumberOfLesson.setText("");
    }

    // hiển thị form nhập môn học
    private void btnShowSubjectDialogActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnShowSubjectDialogActionPerformed
        // TODO add your handling code here:
        reset();
        InputSubjectDialog.setLocationRelativeTo(null);
        btnAddSubject.setVisible(true);
        btnEditSubject.setVisible(false);
        InputSubjectDialog.setVisible(true);

    }//GEN-LAST:event_btnShowSubjectDialogActionPerformed

    // hiển thị form sửa môn học
    private void btnShowEditSubjectDialogActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnShowEditSubjectDialogActionPerformed
        // TODO add your handling code here:
        if (validateForm()) {
            InputSubjectDialog.setLocationRelativeTo(null);
            btnAddSubject.setVisible(false);
            btnEditSubject.setVisible(true);
            InputSubjectDialog.setVisible(true);
        } else {
            JOptionPane.showMessageDialog(this, "Vui lòng chọn môn học cần sửa");
        }

    }//GEN-LAST:event_btnShowEditSubjectDialogActionPerformed

    // xóa môn học
    private void deleteSubjectBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_deleteSubjectBtnActionPerformed
        // TODO add your handling code here:
        if(validateForm()) {
            Subject subject = getModel();
            if (subjectBUS.deleteSubject(subject)) {
                JOptionPane.showMessageDialog(this, "Xóa thành công");
                loadDataTable();
            } else {
                JOptionPane.showMessageDialog(this, "Xóa thất bại");
            }
        } else {
            JOptionPane.showMessageDialog(this, "Vui lòng chọn môn học cần xóa");
        }
        
    }//GEN-LAST:event_deleteSubjectBtnActionPerformed

    // ấn chọn môn học trên danh sách
    private void subjectListMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_subjectListMouseClicked
        // TODO add your handling code here:
        int row = subjectList.rowAtPoint(evt.getPoint());
        String subjectID = subjectList.getValueAt(row, 0).toString();
        Subject subject = subjectBUS.getSubjectByID(subjectID);
        setModel(subject);

    }//GEN-LAST:event_subjectListMouseClicked

    // Thêm môn học
    private void btnAddSubjectActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAddSubjectActionPerformed
        if (validateForm()) {
            Subject subject = getModel();
            if (subjectBUS.addSubject(subject)) {
                JOptionPane.showMessageDialog(this, "Thêm môn học thành công");
                loadDataTable();
            } else {
                JOptionPane.showMessageDialog(this, "Thêm thất bại");
            }

        } else {
            JOptionPane.showMessageDialog(this, "Vui lòng nhập đầy đủ thông tin");
        }
    }//GEN-LAST:event_btnAddSubjectActionPerformed

    private void btnEscActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnEscActionPerformed
        // TODO add your handling code here:
        InputSubjectDialog.setVisible(false);
    }//GEN-LAST:event_btnEscActionPerformed

    // sửa môn học
    private void btnEditSubjectActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnEditSubjectActionPerformed
        // TODO add your handling code here:
        Subject subject = getModel();
        if (subjectBUS.editSubject(subject)) {
            JOptionPane.showMessageDialog(this, "Sửa thành công");
            loadDataTable();
        } else {
            JOptionPane.showMessageDialog(this, "Sửa thất bại");
        }
    }//GEN-LAST:event_btnEditSubjectActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JDialog InputSubjectDialog;
    private javax.swing.JButton btnAddSubject;
    private javax.swing.JButton btnEditSubject;
    private javax.swing.JButton btnEsc;
    private javax.swing.JButton btnShowEditSubjectDialog;
    private javax.swing.JButton btnShowSubjectDialog;
    private javax.swing.JButton deleteSubjectBtn;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel11;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JTable subjectList;
    private javax.swing.JTextField txtCoefficient;
    private javax.swing.JTextField txtNumberOfLesson;
    private javax.swing.JTextField txtSubjectID;
    private javax.swing.JTextField txtSubjectName;
    // End of variables declaration//GEN-END:variables
}
