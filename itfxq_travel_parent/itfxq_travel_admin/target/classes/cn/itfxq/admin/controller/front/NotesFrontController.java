package cn.itfxq.admin.controller.front;


import cn.itfxq.admin.service.INotesService;
import cn.itfxq.admin.service.ISpotsService;
import cn.itfxq.common.domain.Notes;
import cn.itfxq.common.domain.Spots;
import cn.itfxq.common.query.NotesQuery;
import cn.itfxq.common.query.SpotsQuery;
import cn.itfxq.common.util.PageList;
import cn.itfxq.common.util.ResResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @description:NotesFrontController
 * @date: created by 10/26 8:15
 */
@Controller
public class NotesFrontController {


    @Autowired
    private INotesService notesService;


    @RequestMapping("/front/notes/saveNotes")
    @ResponseBody
    public ResResult saveNotes(@RequestBody Notes notes){
        try {
            notesService.saveNotes(notes);
            return new ResResult(20000,"操作成功");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ResResult(50000,"操作失败");
    }

    @RequestMapping("/front/notes/page")
    @ResponseBody
    public ResResult getNotesPageList(@RequestBody NotesQuery notesQuery){
        try {
            PageList notesPageList = notesService.getNotesPageList(notesQuery);
            return new ResResult(20000,"操作成功",notesPageList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ResResult(50000,"操作失败");
    }

    @RequestMapping("/front/notes/getNotesById")
    @ResponseBody
    public ResResult getNotesById(@RequestBody NotesQuery notesQuery){
        try {
            //更新浏览次数
            notesService.updateNotesViewNum(notesQuery.getId());
            Notes notes = notesService.getNotesById(notesQuery);
            return new ResResult(20000,"操作成功",notes);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ResResult(50000,"操作失败");
    }




}
