package com.wsw.cospa.vo;

import java.io.Serializable;
import java.util.List;

/* loaded from: classes2.dex */
public class FindParentVo implements Serializable {
    private List<FindChildVo> childVoList;
    private String parentName;
    private String parentTag;

    public List<FindChildVo> getChildVoList() {
        return this.childVoList;
    }

    public String getParentName() {
        return this.parentName;
    }

    public String getParentTag() {
        return this.parentTag;
    }

    public void setChildVoList(List<FindChildVo> list) {
        this.childVoList = list;
    }

    public void setParentName(String str) {
        this.parentName = str;
    }

    public void setParentTag(String str) {
        this.parentTag = str;
    }
}
