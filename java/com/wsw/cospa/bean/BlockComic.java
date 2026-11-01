package com.wsw.cospa.bean;

import androidx.annotation.Nullable;
import java.util.List;

/* loaded from: classes2.dex */
public class BlockComic {
    private List<String> list;
    private boolean showComic;
    private boolean showMall;

    public boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }

    public List<String> getList() {
        return this.list;
    }

    public boolean isShowComic() {
        return this.showComic;
    }

    public boolean isShowMall() {
        return this.showMall;
    }

    public void setList(List<String> list) {
        this.list = list;
    }

    public void setShowComic(boolean z) {
        this.showComic = z;
    }

    public void setShowMall(boolean z) {
        this.showMall = z;
    }
}
