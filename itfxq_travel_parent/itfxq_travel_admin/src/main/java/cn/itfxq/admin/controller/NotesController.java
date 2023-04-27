package cn.itfxq.admin.controller;


import cn.itfxq.admin.service.IHotelService;
import cn.itfxq.admin.service.INotesService;
import cn.itfxq.common.domain.Hotel;
import cn.itfxq.common.query.HotelQuery;
import cn.itfxq.common.query.NotesQuery;
import cn.itfxq.common.util.PageList;
import cn.itfxq.common.util.ResResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * Notes游记
 */
@RestController
@RequestMapping("/notes")
public class NotesController {


    @Autowired
    private INotesService notesService;


    //查询所有游记
    @PostMapping("/page")
    public ResResult getNotesList(NotesQuery notesQuery){
        try {
            PageList notesPageList = notesService.getNotesPageList(notesQuery);
            return new ResResult(ResResult.CodeStatus.OK,"操作成功",notesPageList);
        }catch (Exception e){
            return new ResResult(ResResult.CodeStatus.ILLEGAL_REQUEST,"操作失败");
        }
    }

    @RequestMapping("/deleteNotes/{id}")
    @ResponseBody
    public ResResult deleteNotes(@PathVariable("id") Long id){
        try {
            notesService.deleteNotesById(id);
            return new ResResult(20000,"操作成功");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ResResult(50000,"操作失败");

    }









}
