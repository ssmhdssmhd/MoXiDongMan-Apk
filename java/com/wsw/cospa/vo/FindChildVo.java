package com.wsw.cospa.vo;

import java.io.Serializable;

/* loaded from: classes2.dex */
public class FindChildVo implements Serializable {
    private String kindName;
    private String kindUrl;
    private String parentName;
    private String parentTag;
    public int position = -1;

    public String getKindName() {
        return this.kindName;
    }

    public String getKindUrl() {
        return this.kindUrl;
    }

    public String getParentName() {
        return this.parentName;
    }

    public String getParentTag() {
        return this.parentTag;
    }

    public void setKindName(String str) {
        this.kindName = str;
    }

    public void setKindUrl(String str) {
        this.kindUrl = str;
    }

    public void setParentName(String str) {
        this.parentName = str;
    }

    public void setParentTag(String str) {
        this.parentTag = str;
    }
}
