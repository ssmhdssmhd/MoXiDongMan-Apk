package com.wsw.cospa.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.wq;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.wsw.cospa.utils.Cwhile;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class SearchComicBean implements Parcelable, BaseComicBean {
    public static final Parcelable.Creator<SearchComicBean> CREATOR = new Parcelable.Creator<SearchComicBean>() { // from class: com.wsw.cospa.bean.SearchComicBean.4
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SearchComicBean createFromParcel(Parcel parcel) {
            return new SearchComicBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SearchComicBean[] newArray(int i) {
            return new SearchComicBean[i];
        }
    };
    private static final long serialVersionUID = 536871008;
    private Long addTime;
    private String author;
    private String chapterUrl;
    private String coverUrl;
    private String desc;
    private Map<String, String> headersMap;
    private String introduce;
    private Boolean isAdd;
    private Boolean isChecked;
    private Boolean isCurrentSource;
    private String kind;
    private String lastChapter;
    private int lastChapterNum;
    private String name;
    private String noteUrl;
    private String origin;
    private int originNum;
    private List<String> originUrls;
    private String searchCoverHeaders;
    private String searchPage;
    private int searchTime;
    private String state;
    private String tag;
    private Long upTime;
    private String urlNext;
    private String variable;
    private int weight;
    private long words;

    public SearchComicBean() {
        this.addTime = 0L;
        this.upTime = 0L;
        Boolean bool = Boolean.FALSE;
        this.isCurrentSource = bool;
        this.originNum = 1;
        this.weight = -1;
        this.lastChapterNum = -2;
        this.searchTime = Integer.MAX_VALUE;
        this.isAdd = bool;
        this.isChecked = bool;
    }

    public void addOriginUrl(String str) {
        if (this.originUrls == null) {
            this.originUrls = new ArrayList();
        }
        if (!this.originUrls.contains(str)) {
            this.originUrls.add(str);
        }
        this.originNum = this.originUrls.size();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getAddTime() {
        return this.addTime.longValue();
    }

    public String getAuthor() {
        return this.author;
    }

    public String getChapterUrl() {
        return this.chapterUrl;
    }

    public Boolean getChecked() {
        return this.isChecked;
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

    public Boolean getIsAdd() {
        return this.isAdd;
    }

    public Boolean getIsCurrentSource() {
        return this.isCurrentSource;
    }

    public String getKind() {
        return this.kind;
    }

    public String getLastChapter() {
        String str = this.lastChapter;
        return str == null ? "" : str;
    }

    public int getLastChapterNum() {
        if (this.lastChapterNum == -2) {
            this.lastChapterNum = Cwhile.m27171catch(this.lastChapter);
        }
        return this.lastChapterNum;
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

    public int getOriginNum() {
        return this.originNum;
    }

    public List<String> getOriginUrls() {
        List<String> list = this.originUrls;
        return list == null ? new ArrayList() : list;
    }

    public String getSearchCoverHeaders() {
        return this.searchCoverHeaders;
    }

    public String getSearchPage() {
        return this.searchPage;
    }

    public int getSearchTime() {
        return this.searchTime;
    }

    public String getState() {
        return this.state;
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

    public String getUrlNext() {
        return this.urlNext;
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public String getVariable() {
        return this.variable;
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public Map<String, String> getVariableMap() {
        return (Map) new Gson().fromJson(this.variable, new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.bean.SearchComicBean.3
        }.getType());
    }

    public int getWeight() {
        this.weight = Integer.MAX_VALUE;
        return Integer.MAX_VALUE;
    }

    public long getWords() {
        return this.words;
    }

    public void mergeVariable(Map<String, String> map) {
        if (map != null) {
            Map map2 = (Map) new Gson().fromJson(this.variable, new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.bean.SearchComicBean.1
            }.getType());
            if (map2 == null) {
                map2 = new HashMap();
            }
            map2.putAll(map);
            this.variable = new Gson().toJson(map2);
        }
    }

    public void originNumAdd() {
        this.originNum++;
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public void putVariable(String str, String str2) {
        Map map = (Map) new Gson().fromJson(this.variable, new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.bean.SearchComicBean.2
        }.getType());
        if (map == null) {
            map = new HashMap();
        }
        map.put(str, str2);
        this.variable = new Gson().toJson(map);
    }

    public void setAddTime(Long l) {
        this.addTime = l;
    }

    public void setAuthor(String str) {
        this.author = str != null ? str.trim().replaceAll("[（【】）\u3000]", "") : null;
    }

    public void setChapterUrl(String str) {
        this.chapterUrl = str;
    }

    public void setChecked(Boolean bool) {
        this.isChecked = bool;
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

    public void setIsAdd(Boolean bool) {
        this.isAdd = bool;
        if (bool.booleanValue()) {
            this.addTime = Long.valueOf(System.currentTimeMillis());
        }
    }

    public void setIsCurrentSource(Boolean bool) {
        this.isCurrentSource = bool;
        if (bool.booleanValue()) {
            this.addTime = Long.valueOf(System.currentTimeMillis());
        }
    }

    public void setKind(String str) {
        this.kind = str;
    }

    public void setLastChapter(String str) {
        this.lastChapter = str;
    }

    public void setName(String str) {
        this.name = str != null ? str.trim().replaceAll("\u3000", "") : null;
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

    public void setSearchTime(int i) {
        this.searchTime = i;
    }

    public void setState(String str) {
        this.state = str;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public void setUpTime(Long l) {
        this.upTime = l;
    }

    public void setUrlNext(String str) {
        this.urlNext = str;
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public void setVariable(String str) {
        this.variable = str;
    }

    public void setWeight(int i) {
        this.weight = i;
    }

    public void setWords(long j) {
        this.words = j;
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
        parcel.writeValue(this.addTime);
        parcel.writeValue(this.upTime);
        parcel.writeString(this.variable);
        parcel.writeString(this.searchPage);
        parcel.writeString(this.urlNext);
        parcel.writeLong(this.words);
        parcel.writeString(this.state);
        parcel.writeValue(this.isCurrentSource);
        parcel.writeInt(this.originNum);
        parcel.writeInt(this.weight);
        parcel.writeInt(this.lastChapterNum);
        parcel.writeInt(this.searchTime);
        parcel.writeStringList(this.originUrls);
        parcel.writeValue(this.isAdd);
        parcel.writeValue(this.isChecked);
        parcel.writeString(this.searchCoverHeaders);
    }

    public SearchComicBean(Parcel parcel) {
        this.addTime = 0L;
        this.upTime = 0L;
        Boolean bool = Boolean.FALSE;
        this.isCurrentSource = bool;
        this.originNum = 1;
        this.weight = -1;
        this.lastChapterNum = -2;
        this.searchTime = Integer.MAX_VALUE;
        this.isAdd = bool;
        this.isChecked = bool;
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
        this.addTime = (Long) parcel.readValue(Long.class.getClassLoader());
        this.upTime = (Long) parcel.readValue(Long.class.getClassLoader());
        this.variable = parcel.readString();
        this.searchPage = parcel.readString();
        this.urlNext = parcel.readString();
        this.words = parcel.readLong();
        this.state = parcel.readString();
        this.isCurrentSource = (Boolean) parcel.readValue(Boolean.class.getClassLoader());
        this.originNum = parcel.readInt();
        this.weight = parcel.readInt();
        this.lastChapterNum = parcel.readInt();
        this.searchTime = parcel.readInt();
        this.originUrls = parcel.createStringArrayList();
        this.isAdd = (Boolean) parcel.readValue(Boolean.class.getClassLoader());
        this.isChecked = (Boolean) parcel.readValue(Boolean.class.getClassLoader());
        this.searchCoverHeaders = parcel.readString();
    }

    public SearchComicBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, Long l, Long l2, String str12, String str13, String str14) {
        this.addTime = 0L;
        this.upTime = 0L;
        Boolean bool = Boolean.FALSE;
        this.isCurrentSource = bool;
        this.originNum = 1;
        this.weight = -1;
        this.lastChapterNum = -2;
        this.searchTime = Integer.MAX_VALUE;
        this.isAdd = bool;
        this.isChecked = bool;
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
        this.addTime = l;
        this.upTime = l2;
        this.variable = str12;
        this.searchPage = str13;
        this.searchCoverHeaders = str14;
    }
}
