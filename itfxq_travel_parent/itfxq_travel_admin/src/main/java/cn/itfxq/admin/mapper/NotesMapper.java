package cn.itfxq.admin.mapper;

import cn.itfxq.common.domain.Notes;
import cn.itfxq.common.query.NotesQuery;
import lombok.Data;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/**
 * @description: NotesMapper
 * @author: soulcoder 灵魂码仔
 * @email: 2579692606@qq.com
 * @date: created by 10/30 8:49
 * @copyright: itxfq 项目分享圈
 */
public interface NotesMapper {
    @Insert("insert into t_notes(title,notesdesc,departureTime,traveldays," +
            "precost,content,createtime,viewnum,creatorid," +
            "fmUrl,travelnums,hotelname) " +
            "values(#{title},#{notesdesc},#{departureTime}" +
            ",#{traveldays},#{precost},#{content},#{createtime}," +
            "#{viewnum},#{creatorid},#{fmUrl},#{travelnums},#{hotelname})")
    void saveNotes(Notes notes);


    Long queryTotal(NotesQuery notesQuery);


    List queryData(NotesQuery notesQuery);

    @Select("select * from t_notes where id=#{id}")
    Notes getNotesById(NotesQuery notesQuery);

    @Update("update t_notes set viewnum=viewnum+1 where id=#{id}")
    void updateNotesViewNum(Long id);

    @Delete("delete from t_notes where id=#{id}")
    void deleteNotesById(Long id);
}
