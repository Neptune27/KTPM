/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BUS;

import DAO.MarkDAO;
import DTO.Mark;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author M S I
 */
public class MarkBUS {

    MarkDAO markDAO = new MarkDAO();

    public ArrayList<Mark> getAllMark() {
        return markDAO.getAllMark();
    }

    public boolean addMark(Mark mark) {
        return markDAO.addMark(mark);
    }

    public boolean editmark(Mark mark) {
        return markDAO.editmark(mark);
    }

    public boolean editMarkWithHK(Mark mark, int hk) {
        return markDAO.editMarkWithHK(mark, hk);
    }

    public Mark getmarkbystdandteacher(String studentID, String teacherID) {

        for (Mark mark : markDAO.getAllMark()) {
            if (mark.getStudentID().equals(studentID)) {
                if (mark.getTeacherId().equals(teacherID)) {
                    return mark;
                }
            }
        }
        return null;
    }

    public List<Mark> getMarksByStudentIdAndTeacherIdAndHK(String studentID, String teacherID, int hk) {
        return markDAO.getAllMark().stream()
                .filter(m -> m.getStudentID().equals(studentID)
                        && m.getTeacherId().equals(teacherID)
                        && m.getHk() == hk)
                .toList();
    }

    public ArrayList<Mark> getmarkbystudentID(String studentID) {
        ArrayList<Mark> markList = new ArrayList<Mark>();
        for (Mark mark : markDAO.getAllMark())
        {
            if (mark.getStudentID().equals(studentID))
                markList.add(mark);
        }
        return markList;
    }

    public boolean addMarkWithHK(Mark mark, int hk) {
        return markDAO.addMarkWithHK(mark, hk);
    }
}
