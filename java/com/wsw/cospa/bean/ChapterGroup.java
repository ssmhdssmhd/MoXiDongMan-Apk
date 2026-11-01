package com.wsw.cospa.bean;

import java.util.List;

/* loaded from: classes2.dex */
public class ChapterGroup {
    private List<ChapterListBean> element;
    private boolean enable;

    public List<ChapterListBean> getElement() {
        return this.element;
    }

    public boolean isEnable() {
        return this.enable;
    }

    public void setElement(List<ChapterListBean> list) {
        this.element = list;
    }

    public void setEnable(boolean z) {
        this.enable = z;
    }
}
