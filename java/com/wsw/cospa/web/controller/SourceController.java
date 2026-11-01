package com.wsw.cospa.web.controller;

import android.support.v4.hi0;
import android.text.TextUtils;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.model.Cdo;
import com.wsw.cospa.web.utils.ReturnData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class SourceController {
    public ReturnData deleteSources(String str) {
        Iterator it = hi0.m3040do(str, ComicSourceBean.class).iterator();
        while (it.hasNext()) {
            Cdo.d((ComicSourceBean) it.next());
        }
        return new ReturnData().setData("已执行");
    }

    public ReturnData getSource(Map<String, List<String>> map) {
        List<String> list = map.get("url");
        ReturnData returnData = new ReturnData();
        if (list == null) {
            return returnData.setErrorMsg("参数url不能为空，请指定图源地址");
        }
        ComicSourceBean comicSourceBeanM26358abstract = Cdo.m26358abstract(list.get(0));
        return comicSourceBeanM26358abstract == null ? returnData.setErrorMsg("未找到图源，请检查图源地址") : returnData.setData(comicSourceBeanM26358abstract);
    }

    public ReturnData getSources() {
        List<ComicSourceBean> listM26366package = Cdo.m26366package();
        ReturnData returnData = new ReturnData();
        return listM26366package.size() == 0 ? returnData.setErrorMsg("设备图源列表为空") : returnData.setData(Cdo.m26366package());
    }

    public ReturnData saveSource(String str) {
        ComicSourceBean comicSourceBean = (ComicSourceBean) hi0.m3042if(str, ComicSourceBean.class);
        ReturnData returnData = new ReturnData();
        if (TextUtils.isEmpty(comicSourceBean.getBookSourceName()) || TextUtils.isEmpty(comicSourceBean.getBookSourceUrl())) {
            return returnData.setErrorMsg("图源名称和URL不能为空");
        }
        Cdo.m26360default(comicSourceBean);
        return returnData.setData("");
    }

    public ReturnData saveSources(String str) {
        List<ComicSourceBean> listM3040do = hi0.m3040do(str, ComicSourceBean.class);
        ArrayList arrayList = new ArrayList();
        for (ComicSourceBean comicSourceBean : listM3040do) {
            if (!TextUtils.isEmpty(comicSourceBean.getBookSourceName()) && !TextUtils.isEmpty(comicSourceBean.getBookSourceUrl())) {
                Cdo.m26360default(comicSourceBean);
                arrayList.add(comicSourceBean);
            }
        }
        return new ReturnData().setData(arrayList);
    }
}
