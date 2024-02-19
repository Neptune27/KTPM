/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package GUI;
import java.awt.Image;
import java.io.File;
import java.lang.reflect.Array;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.imageio.ImageIO;
import javax.swing.*;
import DTO.Discipline;
import BUS.DisciplineBUS;
import java.awt.BorderLayout;
import java.awt.Color;
/**
 *
 * @author Leo Kun
 */
public class StudentDisFormJPanel extends JPanel {
    
   
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel9 = new JLabel();
        txtStudentDisID2 = new JTextField();
        jLabel10 = new JLabel();
        txtStudentDisName2 = new JTextField();
        scroll = new JScrollPane();
        jPanel14 = new JPanel();
        btnAddStudentDis2 = new JButton();
        btnEsc3 = new JButton();

        jLabel9.setFont(new java.awt.Font("Segoe UI Variable", 0, 14)); // NOI18N
        jLabel9.setText("Mã học sinh");

        txtStudentDisID2.setEnabled(false);
        txtStudentDisID2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtStudentDisID2ActionPerformed(evt);
            }
        });

        jLabel10.setFont(new java.awt.Font("Segoe UI Variable", 0, 14)); // NOI18N
        jLabel10.setText("Tên học sinh");

        txtStudentDisName2.setEnabled(false);
        txtStudentDisName2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtStudentDisName2ActionPerformed(evt);
            }
        });

        jPanel14.setForeground(new Color(255, 255, 255));
        scroll.setViewportView(jPanel14);

        btnAddStudentDis2.setBackground(new Color(209, 15, 209));
        btnAddStudentDis2.setForeground(new Color(255, 255, 255));
        btnAddStudentDis2.setText("Cập nhật");
        btnAddStudentDis2.setPreferredSize(new java.awt.Dimension(100, 35));
        btnAddStudentDis2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAddStudentDis2ActionPerformed(evt);
            }
        });

        btnEsc3.setBackground(new Color(255, 0, 0));
        btnEsc3.setForeground(new Color(255, 255, 255));
        btnEsc3.setText("Thoát");
        btnEsc3.setPreferredSize(new java.awt.Dimension(100, 35));
        btnEsc3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnEsc3ActionPerformed(evt);
            }
        });

        GroupLayout layout = new GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(19, 19, 19)
                .addGroup(layout.createParallelGroup(GroupLayout.Alignment.LEADING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel9)
                        .addPreferredGap(LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txtStudentDisID2, GroupLayout.PREFERRED_SIZE, 150, GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jLabel10)
                        .addGap(18, 18, 18)
                        .addComponent(txtStudentDisName2))
                    .addComponent(scroll, GroupLayout.PREFERRED_SIZE, 560, GroupLayout.PREFERRED_SIZE))
                .addContainerGap(21, Short.MAX_VALUE))
            .addGroup(GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(btnAddStudentDis2, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(btnEsc3, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
                .addGap(87, 87, 87))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(24, 24, 24)
                .addGroup(layout.createParallelGroup(GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel9)
                    .addComponent(txtStudentDisID2, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel10)
                    .addComponent(txtStudentDisName2, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(scroll, GroupLayout.PREFERRED_SIZE, 302, GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(LayoutStyle.ComponentPlacement.RELATED, GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(GroupLayout.Alignment.BASELINE)
                    .addComponent(btnAddStudentDis2, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnEsc3, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
    }// </editor-fold>//GEN-END:initComponents

    private void txtStudentDisID2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtStudentDisID2ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtStudentDisID2ActionPerformed

    private void txtStudentDisName2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtStudentDisName2ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtStudentDisName2ActionPerformed

    private void btnAddStudentDis2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAddStudentDis2ActionPerformed

    }//GEN-LAST:event_btnAddStudentDis2ActionPerformed

    private void btnEsc3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnEsc3ActionPerformed
        // TODO add your handling code here:
        StudentDisFormJPanel frame = new StudentDisFormJPanel();
    }//GEN-LAST:event_btnEsc3ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private JScrollPane DisResultScroll;
    private JScrollPane DisResultScroll1;
    private JPanel FormDisPanel;
    private JPanel FormDisPanel1;
    private JButton btnAddStudentDis;
    private JButton btnAddStudentDis1;
    private JButton btnAddStudentDis2;
    private JButton btnEsc1;
    private JButton btnEsc2;
    private JButton btnEsc3;
    private JCheckBox cbox;
    private JCheckBox cbox1;
    private JCheckBox cbox10;
    private JCheckBox cbox11;
    private JCheckBox cbox12;
    private JCheckBox cbox13;
    private JCheckBox cbox14;
    private JCheckBox cbox15;
    private JCheckBox cbox16;
    private JCheckBox cbox17;
    private JCheckBox cbox18;
    private JCheckBox cbox19;
    private JCheckBox cbox2;
    private JCheckBox cbox20;
    private JCheckBox cbox21;
    private JCheckBox cbox22;
    private JCheckBox cbox23;
    private JCheckBox cbox24;
    private JCheckBox cbox25;
    private JCheckBox cbox26;
    private JCheckBox cbox27;
    private JCheckBox cbox28;
    private JCheckBox cbox29;
    private JCheckBox cbox3;
    private JCheckBox cbox30;
    private JCheckBox cbox31;
    private JCheckBox cbox32;
    private JCheckBox cbox33;
    private JCheckBox cbox34;
    private JCheckBox cbox35;
    private JCheckBox cbox36;
    private JCheckBox cbox37;
    private JCheckBox cbox38;
    private JCheckBox cbox39;
    private JCheckBox cbox4;
    private JCheckBox cbox40;
    private JCheckBox cbox41;
    private JCheckBox cbox42;
    private JCheckBox cbox43;
    private JCheckBox cbox44;
    private JCheckBox cbox45;
    private JCheckBox cbox46;
    private JCheckBox cbox47;
    private JCheckBox cbox48;
    private JCheckBox cbox49;
    private JCheckBox cbox5;
    private JCheckBox cbox50;
    private JCheckBox cbox51;
    private JCheckBox cbox52;
    private JCheckBox cbox53;
    private JCheckBox cbox54;
    private JCheckBox cbox55;
    private JCheckBox cbox56;
    private JCheckBox cbox57;
    private JCheckBox cbox58;
    private JCheckBox cbox59;
    private JCheckBox cbox6;
    private JCheckBox cbox60;
    private JCheckBox cbox61;
    private JCheckBox cbox62;
    private JCheckBox cbox63;
    private JCheckBox cbox64;
    private JCheckBox cbox65;
    private JCheckBox cbox66;
    private JCheckBox cbox67;
    private JCheckBox cbox68;
    private JCheckBox cbox69;
    private JCheckBox cbox7;
    private JCheckBox cbox70;
    private JCheckBox cbox71;
    private JCheckBox cbox72;
    private JCheckBox cbox73;
    private JCheckBox cbox8;
    private JCheckBox cbox9;
    private JLabel jLabel10;
    private JLabel jLabel5;
    private JLabel jLabel6;
    private JLabel jLabel7;
    private JLabel jLabel8;
    private JLabel jLabel9;
    private JPanel jPanel12;
    private JPanel jPanel13;
    private JPanel jPanel14;
    private JScrollPane scroll;
    private JPanel studentdisFormPanel;
    private JPanel studentdisFormPanel1;
    private JTextField txtContent;
    private JTextField txtContent1;
    private JTextField txtContent10;
    private JTextField txtContent11;
    private JTextField txtContent12;
    private JTextField txtContent13;
    private JTextField txtContent14;
    private JTextField txtContent15;
    private JTextField txtContent16;
    private JTextField txtContent17;
    private JTextField txtContent18;
    private JTextField txtContent19;
    private JTextField txtContent2;
    private JTextField txtContent20;
    private JTextField txtContent21;
    private JTextField txtContent22;
    private JTextField txtContent23;
    private JTextField txtContent24;
    private JTextField txtContent25;
    private JTextField txtContent26;
    private JTextField txtContent27;
    private JTextField txtContent28;
    private JTextField txtContent29;
    private JTextField txtContent3;
    private JTextField txtContent30;
    private JTextField txtContent31;
    private JTextField txtContent32;
    private JTextField txtContent33;
    private JTextField txtContent34;
    private JTextField txtContent35;
    private JTextField txtContent36;
    private JTextField txtContent37;
    private JTextField txtContent38;
    private JTextField txtContent39;
    private JTextField txtContent4;
    private JTextField txtContent40;
    private JTextField txtContent41;
    private JTextField txtContent42;
    private JTextField txtContent43;
    private JTextField txtContent44;
    private JTextField txtContent45;
    private JTextField txtContent46;
    private JTextField txtContent47;
    private JTextField txtContent48;
    private JTextField txtContent49;
    private JTextField txtContent5;
    private JTextField txtContent50;
    private JTextField txtContent51;
    private JTextField txtContent52;
    private JTextField txtContent53;
    private JTextField txtContent54;
    private JTextField txtContent55;
    private JTextField txtContent56;
    private JTextField txtContent57;
    private JTextField txtContent58;
    private JTextField txtContent59;
    private JTextField txtContent6;
    private JTextField txtContent60;
    private JTextField txtContent61;
    private JTextField txtContent62;
    private JTextField txtContent63;
    private JTextField txtContent64;
    private JTextField txtContent65;
    private JTextField txtContent66;
    private JTextField txtContent67;
    private JTextField txtContent68;
    private JTextField txtContent69;
    private JTextField txtContent7;
    private JTextField txtContent70;
    private JTextField txtContent71;
    private JTextField txtContent72;
    private JTextField txtContent73;
    private JTextField txtContent74;
    private JTextField txtContent75;
    private JTextField txtContent76;
    private JTextField txtContent77;
    private JTextField txtContent78;
    private JTextField txtContent79;
    private JTextField txtContent8;
    private JTextField txtContent80;
    private JTextField txtContent81;
    private JTextField txtContent82;
    private JTextField txtContent83;
    private JTextField txtContent9;
    private JTextField txtRole;
    private JTextField txtRole1;
    private JTextField txtRole10;
    private JTextField txtRole11;
    private JTextField txtRole12;
    private JTextField txtRole13;
    private JTextField txtRole14;
    private JTextField txtRole15;
    private JTextField txtRole16;
    private JTextField txtRole17;
    private JTextField txtRole18;
    private JTextField txtRole19;
    private JTextField txtRole2;
    private JTextField txtRole20;
    private JTextField txtRole21;
    private JTextField txtRole22;
    private JTextField txtRole23;
    private JTextField txtRole24;
    private JTextField txtRole25;
    private JTextField txtRole26;
    private JTextField txtRole27;
    private JTextField txtRole28;
    private JTextField txtRole29;
    private JTextField txtRole3;
    private JTextField txtRole30;
    private JTextField txtRole31;
    private JTextField txtRole32;
    private JTextField txtRole33;
    private JTextField txtRole34;
    private JTextField txtRole35;
    private JTextField txtRole36;
    private JTextField txtRole37;
    private JTextField txtRole38;
    private JTextField txtRole39;
    private JTextField txtRole4;
    private JTextField txtRole40;
    private JTextField txtRole41;
    private JTextField txtRole42;
    private JTextField txtRole43;
    private JTextField txtRole44;
    private JTextField txtRole45;
    private JTextField txtRole46;
    private JTextField txtRole47;
    private JTextField txtRole48;
    private JTextField txtRole49;
    private JTextField txtRole5;
    private JTextField txtRole50;
    private JTextField txtRole51;
    private JTextField txtRole52;
    private JTextField txtRole53;
    private JTextField txtRole54;
    private JTextField txtRole55;
    private JTextField txtRole56;
    private JTextField txtRole57;
    private JTextField txtRole58;
    private JTextField txtRole59;
    private JTextField txtRole6;
    private JTextField txtRole60;
    private JTextField txtRole61;
    private JTextField txtRole62;
    private JTextField txtRole63;
    private JTextField txtRole64;
    private JTextField txtRole65;
    private JTextField txtRole66;
    private JTextField txtRole67;
    private JTextField txtRole68;
    private JTextField txtRole69;
    private JTextField txtRole7;
    private JTextField txtRole70;
    private JTextField txtRole71;
    private JTextField txtRole72;
    private JTextField txtRole73;
    private JTextField txtRole74;
    private JTextField txtRole75;
    private JTextField txtRole76;
    private JTextField txtRole77;
    private JTextField txtRole78;
    private JTextField txtRole79;
    private JTextField txtRole8;
    private JTextField txtRole80;
    private JTextField txtRole81;
    private JTextField txtRole82;
    private JTextField txtRole83;
    private JTextField txtRole9;
    private JTextField txtScore;
    private JTextField txtScore1;
    private JTextField txtScore10;
    private JTextField txtScore11;
    private JTextField txtScore12;
    private JTextField txtScore13;
    private JTextField txtScore14;
    private JTextField txtScore15;
    private JTextField txtScore16;
    private JTextField txtScore17;
    private JTextField txtScore18;
    private JTextField txtScore19;
    private JTextField txtScore2;
    private JTextField txtScore20;
    private JTextField txtScore21;
    private JTextField txtScore22;
    private JTextField txtScore23;
    private JTextField txtScore24;
    private JTextField txtScore25;
    private JTextField txtScore26;
    private JTextField txtScore27;
    private JTextField txtScore28;
    private JTextField txtScore29;
    private JTextField txtScore3;
    private JTextField txtScore30;
    private JTextField txtScore31;
    private JTextField txtScore32;
    private JTextField txtScore33;
    private JTextField txtScore34;
    private JTextField txtScore35;
    private JTextField txtScore36;
    private JTextField txtScore37;
    private JTextField txtScore38;
    private JTextField txtScore39;
    private JTextField txtScore4;
    private JTextField txtScore40;
    private JTextField txtScore41;
    private JTextField txtScore42;
    private JTextField txtScore43;
    private JTextField txtScore44;
    private JTextField txtScore45;
    private JTextField txtScore46;
    private JTextField txtScore47;
    private JTextField txtScore48;
    private JTextField txtScore49;
    private JTextField txtScore5;
    private JTextField txtScore50;
    private JTextField txtScore51;
    private JTextField txtScore52;
    private JTextField txtScore53;
    private JTextField txtScore54;
    private JTextField txtScore55;
    private JTextField txtScore56;
    private JTextField txtScore57;
    private JTextField txtScore58;
    private JTextField txtScore59;
    private JTextField txtScore6;
    private JTextField txtScore60;
    private JTextField txtScore61;
    private JTextField txtScore62;
    private JTextField txtScore63;
    private JTextField txtScore64;
    private JTextField txtScore65;
    private JTextField txtScore66;
    private JTextField txtScore67;
    private JTextField txtScore68;
    private JTextField txtScore69;
    private JTextField txtScore7;
    private JTextField txtScore70;
    private JTextField txtScore71;
    private JTextField txtScore72;
    private JTextField txtScore73;
    private JTextField txtScore8;
    private JTextField txtScore9;
    private JTextField txtStudentDisID;
    private JTextField txtStudentDisID1;
    private JTextField txtStudentDisID2;
    private JTextField txtStudentDisName;
    private JTextField txtStudentDisName1;
    private JTextField txtStudentDisName2;
    // End of variables declaration//GEN-END:variables
}
