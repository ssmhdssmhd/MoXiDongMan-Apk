package com.wsw.cospa.bean;

import java.io.Serializable;

/* loaded from: classes2.dex */
public class LocalComicBean implements Serializable {
    private String folderName;
    private String folderPath;

    public String getFolderName() {
        return this.folderName;
    }

    public String getFolderPath() {
        return this.folderPath;
    }

    public void setFolderName(String str) {
        this.folderName = str;
    }

    public void setFolderPath(String str) {
        this.folderPath = str;
    }
}
