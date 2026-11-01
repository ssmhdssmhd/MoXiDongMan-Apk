package com.wsw.cospa.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.wq;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class HistoryComicBean implements Parcelable, BaseComicBean {
    public static final Parcelable.Creator<HistoryComicBean> CREATOR = new Parcelable.Creator<HistoryComicBean>() { // from class: com.wsw.cospa.bean.HistoryComicBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HistoryComicBean createFromParcel(Parcel parcel) {
            return new HistoryComicBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HistoryComicBean[] newArray(int i) {
            return new HistoryComicBean[i];
        }
    };
    private String author;
    private String chapterUrl;
    private String coverUrl;
    private String desc;
    private Map<String, String> headersMap;
    private String introduce;
    private boolean isChecked;
    private String kind;
    private String lastChapter;
    private String name;
    private String noteUrl;
    private String origin;
    private String searchCoverHeaders;
    private String searchPage;
    private String tag;
    private Long upTime;
    private String variable;

    public HistoryComicBean(Parcel parcel) {
        this.upTime = 0L;
        this.noteUrl = parcel.readString();
        this.coverUrl = parcel.readString();
        this.name = parcel.readString();
        this.author = parcel.readString();
        this.tag = parcel.readString();
        this.kind = parcel.readString();
        this.origin = parcel.readString();
        this.desc = parcel.readString();
        this.lastChapter = parcel.readString();
        this.introduce = parcel.readString();
        this.chapterUrl = parcel.readString();
        this.upTime = (Long) parcel.readValue(Long.class.getClassLoader());
        this.variable = parcel.readString();
        this.searchPage = parcel.readString();
        this.searchCoverHeaders = parcel.readString();
        this.isChecked = ((Boolean) parcel.readValue(Boolean.class.getClassLoader())).booleanValue();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAuthor() {
        return this.author;
    }

    public String getChapterUrl() {
        return this.chapterUrl;
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public String getCoverHeader() {
        Map<String, String> variableMap = getVariableMap();
        if (variableMap == null) {
            return null;
        }
        return variableMap.get(wq.l0);
    }

    public String getCoverUrl() {
        return this.coverUrl;
    }

    public String getDesc() {
        return this.desc;
    }

    public Map<String, String> getHeadersMap() {
        return this.headersMap;
    }

    public String getIntroduce() {
        return this.introduce;
    }

    public boolean getIsChecked() {
        return this.isChecked;
    }

    public String getKind() {
        return this.kind;
    }

    public String getLastChapter() {
        return this.lastChapter;
    }

    public String getName() {
        return this.name;
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public String getNoteUrl() {
        return this.noteUrl;
    }

    public String getOrigin() {
        return this.origin;
    }

    public String getSearchCoverHeaders() {
        return this.searchCoverHeaders;
    }

    public String getSearchPage() {
        return this.searchPage;
    }

    public String getTag() {
        return this.tag;
    }

    public Long getUpTime() {
        return this.upTime;
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public String getUrlHeader() {
        Map<String, String> variableMap = getVariableMap();
        if (variableMap == null) {
            return null;
        }
        return variableMap.get(wq.n0);
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public String getVariable() {
        return this.variable;
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public Map<String, String> getVariableMap() {
        return (Map) new Gson().fromJson(this.variable, new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.bean.HistoryComicBean.3
        }.getType());
    }

    public boolean isChecked() {
        return this.isChecked;
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public void putVariable(String str, String str2) {
        Map map = (Map) new Gson().fromJson(this.variable, new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.bean.HistoryComicBean.2
        }.getType());
        if (map == null) {
            map = new HashMap();
        }
        map.put(str, str2);
        this.variable = new Gson().toJson(map);
    }

    public void setAuthor(String str) {
        this.author = str;
    }

    public void setChapterUrl(String str) {
        this.chapterUrl = str;
    }

    public void setChecked(boolean z) {
        this.isChecked = z;
    }

    public void setCoverUrl(String str) {
        this.coverUrl = str;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public void setHeadersMap(Map<String, String> map) {
        this.headersMap = map;
    }

    public void setIntroduce(String str) {
        this.introduce = str;
    }

    public void setIsChecked(boolean z) {
        this.isChecked = z;
    }

    public void setKind(String str) {
        this.kind = str;
    }

    public void setLastChapter(String str) {
        this.lastChapter = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public void setNoteUrl(String str) {
        this.noteUrl = str;
    }

    public void setOrigin(String str) {
        this.origin = str;
    }

    public void setSearchCoverHeaders(String str) {
        this.searchCoverHeaders = str;
    }

    public void setSearchPage(String str) {
        this.searchPage = str;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public void setUpTime(Long l) {
        this.upTime = l;
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public void setVariable(String str) {
        this.variable = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.noteUrl);
        parcel.writeString(this.coverUrl);
        parcel.writeString(this.name);
        parcel.writeString(this.author);
        parcel.writeString(this.tag);
        parcel.writeString(this.kind);
        parcel.writeString(this.origin);
        parcel.writeString(this.desc);
        parcel.writeString(this.lastChapter);
        parcel.writeString(this.introduce);
        parcel.writeString(this.chapterUrl);
        parcel.writeValue(this.upTime);
        parcel.writeString(this.variable);
        parcel.writeString(this.searchPage);
        parcel.writeString(this.searchCoverHeaders);
        parcel.writeValue(Boolean.valueOf(this.isChecked));
    }

    public HistoryComicBean() {
        this.upTime = 0L;
    }

    public HistoryComicBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, Long l, String str12, String str13, String str14, boolean z) {
        this.upTime = 0L;
        this.noteUrl = str;
        this.coverUrl = str2;
        this.name = str3;
        this.author = str4;
        this.tag = str5;
        this.kind = str6;
        this.origin = str7;
        this.desc = str8;
        this.lastChapter = str9;
        this.introduce = str10;
        this.chapterUrl = str11;
        this.upTime = l;
        this.variable = str12;
        this.searchPage = str13;
        this.searchCoverHeaders = str14;
        this.isChecked = z;
    }
}
