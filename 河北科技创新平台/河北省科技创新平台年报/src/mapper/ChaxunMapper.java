package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hjf.entity.Chaxun;

public interface ChaxunMapper {
    /*
     * 根据 id 查找 t_Chaxun 中角色信息，返回 角色id，角色名和注释
     */
    public List<Chaxun> getChaxun(@Param("diaochaname")String diaochaname,@Param("name")String name,@Param("diaochaname1")String diaochaname1,@Param("name1")String name1,@Param("diaochaname2")String diaochaname2,@Param("name2")String name2,@Param("pzrq1")String pzrq1,@Param("pzrq2")String pzrq2
    		,@Param("key1")String key1,@Param("key2")String key2,@Param("zhi1")String zhi1,@Param("zhi2")String zhi2);

    /*
     *在 t_Chaxun 根据id, 删除一条角色数据
     */
    public int deleteChaxun(Long id);

    /*
     *在 t_Chaxun 插入一条角色数据, 角色id自增
     */
    public int insertChaxun(Chaxun Chaxun);

}
