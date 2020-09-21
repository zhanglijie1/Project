package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hjf.entity.Chaxun;

public interface ChaxunMapper {
    /*
     * ���� id ���� t_Chaxun �н�ɫ��Ϣ������ ��ɫid����ɫ����ע��
     */
    public List<Chaxun> getChaxun(@Param("diaochaname")String diaochaname,@Param("name")String name,@Param("diaochaname1")String diaochaname1,@Param("name1")String name1,@Param("diaochaname2")String diaochaname2,@Param("name2")String name2,@Param("pzrq1")String pzrq1,@Param("pzrq2")String pzrq2
    		,@Param("key1")String key1,@Param("key2")String key2,@Param("zhi1")String zhi1,@Param("zhi2")String zhi2);

    /*
     *�� t_Chaxun ����id, ɾ��һ����ɫ����
     */
    public int deleteChaxun(Long id);

    /*
     *�� t_Chaxun ����һ����ɫ����, ��ɫid����
     */
    public int insertChaxun(Chaxun Chaxun);

}
