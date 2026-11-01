package com.wsw.cospa.web.controller;

import android.support.v4.hi0;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.dao.Cdo;
import com.wsw.cospa.dao.Cnew;
import com.wsw.cospa.model.Cwhile;
import com.wsw.cospa.web.utils.ReturnData;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class BookshelfController {
    public ReturnData getBookContent(Map<String, List<String>> map) {
        List<String> list = map.get("url");
        ReturnData returnData = new ReturnData();
        if (list == null) {
            return returnData.setErrorMsg("参数url不能为空，请指定内容地址");
        }
        ChapterListBean chapterListBeanLoad = Cnew.m26132case().m26138try().m3140if().load(list.get(0));
        if (chapterListBeanLoad == null) {
            return returnData.setErrorMsg("未找到");
        }
        if (Cdo.m26100finally(chapterListBeanLoad.getNoteUrl()) == null) {
            return returnData.setErrorMsg("未找到");
        }
        try {
            return returnData.setData(Cwhile.m26502catch().m26512break(chapterListBeanLoad).blockingFirst().getDurContentUrl());
        } catch (Exception e) {
            return returnData.setErrorMsg(e.getMessage());
        }
    }

    public ReturnData getBookshelf() {
        List<ComicShelfBean> listM26115static = Cdo.m26115static();
        ReturnData returnData = new ReturnData();
        return listM26115static.isEmpty() ? returnData.setErrorMsg("还没有添加漫画") : returnData.setData(listM26115static);
    }

    public ReturnData getChapterList(Map<String, List<String>> map) {
        List<String> list = map.get("url");
        ReturnData returnData = new ReturnData();
        return list == null ? returnData.setErrorMsg("参数url不能为空，请指定书籍地址") : returnData.setData(Cdo.m26111private(list.get(0)));
    }

    public ReturnData saveBook(String str) {
        ComicShelfBean comicShelfBean = (ComicShelfBean) hi0.m3042if(str, ComicShelfBean.class);
        ReturnData returnData = new ReturnData();
        if (comicShelfBean == null) {
            return returnData.setErrorMsg("格式不对");
        }
        Cnew.m26132case().m26138try().m3132case().insertOrReplace(comicShelfBean);
        return returnData.setData("");
    }
}
