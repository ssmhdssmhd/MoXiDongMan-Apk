package com.wsw.cospa.bean;

import java.util.Map;

/* loaded from: classes2.dex */
public interface BaseComicBean {
    String getCoverHeader();

    String getNoteUrl();

    String getUrlHeader();

    String getVariable();

    Map<String, String> getVariableMap();

    void putVariable(String str, String str2);

    void setNoteUrl(String str);

    void setVariable(String str);
}
