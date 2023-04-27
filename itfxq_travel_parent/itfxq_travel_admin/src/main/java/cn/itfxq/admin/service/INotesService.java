package cn.itfxq.admin.service;


import cn.itfxq.common.domain.Notes;
import cn.itfxq.common.domain.Spots;
import cn.itfxq.common.query.NotesQuery;
import cn.itfxq.common.query.SpotsQuery;
import cn.itfxq.common.util.PageList;

/**
 * @description: TODO
 */
public interface INotesService {

    void saveNotes(Notes notes);


    PageList getNotesPageList(NotesQuery notesQuery);

    Notes getNotesById(NotesQuery notesQuery);


    void updateNotesViewNum(Long id);

    void deleteNotesById(Long id);
}