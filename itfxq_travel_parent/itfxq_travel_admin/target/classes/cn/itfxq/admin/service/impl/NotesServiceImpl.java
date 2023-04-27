package cn.itfxq.admin.service.impl;

import cn.itfxq.admin.mapper.CustormMapper;
import cn.itfxq.admin.mapper.NotesMapper;
import cn.itfxq.admin.mapper.SpotsMapper;
import cn.itfxq.admin.mapper.UserMapper;
import cn.itfxq.admin.service.INotesService;
import cn.itfxq.admin.service.ISpotsService;
import cn.itfxq.auth.config.util.AuthUtils;
import cn.itfxq.common.domain.*;
import cn.itfxq.common.query.NotesQuery;
import cn.itfxq.common.query.SpotsQuery;
import cn.itfxq.common.util.PageList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

/**
 * @description: TODO
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS,readOnly = true)
public class NotesServiceImpl implements INotesService {

    @Autowired
    private NotesMapper notesMapper;

    @Autowired
    private CustormMapper custormMapper;


    @Override
    @Transactional
    public void saveNotes(Notes notes) {
        notes.setCreatetime(LocalDateTime.now());
        notesMapper.saveNotes(notes);
    }

    @Override
    public PageList getNotesPageList(NotesQuery notesQuery) {
        //查询游记的总数
        Long total  =  notesMapper.queryTotal(notesQuery);
        //查询游记的每页显示的数据
        List<Notes> notesList = notesMapper.queryData(notesQuery);
        notesList.forEach(note->{
            Custorm custorm  = custormMapper.queryCustormById(note.getCreatorid());
            note.setCustorm(custorm);
        });
        PageList pageList = new PageList(notesQuery.getCurrentPage(),total,notesList);
        return pageList;
    }

    @Override
    public Notes getNotesById(NotesQuery notesQuery) {
        Notes notes = notesMapper.getNotesById(notesQuery);
        Custorm custorm = custormMapper.queryCustormById(notes.getCreatorid());
        notes.setCustorm(custorm);
        return notes;
    }

    @Override
    public void updateNotesViewNum(Long id) {
        notesMapper.updateNotesViewNum(id);
    }

    @Override
    public void deleteNotesById(Long id) {
        notesMapper.deleteNotesById(id);
    }


}
