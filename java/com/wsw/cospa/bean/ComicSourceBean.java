package com.wsw.cospa.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes2.dex */
public class ComicSourceBean implements Parcelable, Cloneable {
    public static final Parcelable.Creator<ComicSourceBean> CREATOR = new Parcelable.Creator<ComicSourceBean>() { // from class: com.wsw.cospa.bean.ComicSourceBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ComicSourceBean createFromParcel(Parcel parcel) {
            return new ComicSourceBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ComicSourceBean[] newArray(int i) {
            return new ComicSourceBean[i];
        }
    };
    private String bookDelayTime;
    private String bookSingleThread;
    private String bookSourceGroup;
    private String bookSourceName;
    private String bookSourceType;
    private String bookSourceUrl;
    private String checkUrl;
    private boolean enable;
    private transient ArrayList<String> groupList;
    private String httpUserAgent;
    private Long lastUpdateTime;
    private String loginUrl;
    private String loginUrlResult;
    private String ruleBookAuthor;
    private String ruleBookContent;
    private String ruleBookContentDecoder;
    private String ruleBookKind;
    private String ruleBookLastChapter;
    private String ruleBookName;
    private String ruleBookUrlPattern;
    private String ruleChapterId;
    private String ruleChapterList;
    private String ruleChapterName;
    private String ruleChapterParentId;
    private String ruleChapterParentName;
    private String ruleChapterUrl;
    private String ruleChapterUrlNext;
    private String ruleContentUrl;
    private String ruleContentUrlNext;
    private String ruleCoverUrl;
    private String ruleFindUrl;
    private String ruleIntroduce;
    private String ruleSearchAuthor;
    private String ruleSearchCoverUrl;
    private String ruleSearchKind;
    private String ruleSearchLastChapter;
    private String ruleSearchList;
    private String ruleSearchName;
    private String ruleSearchNoteUrl;
    private String ruleSearchUrl;
    private String ruleSearchUrlNext;
    private int serialNumber;
    private String sourceRemark;
    private int weight;

    public ComicSourceBean() {
        this.lastUpdateTime = 0L;
        this.weight = 0;
    }

    private Boolean stringEquals(String str, String str2) {
        return Boolean.valueOf(Objects.equals(str, str2) || (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)));
    }

    private void upGroupList() {
        ArrayList<String> arrayList = this.groupList;
        if (arrayList == null) {
            this.groupList = new ArrayList<>();
        } else {
            arrayList.clear();
        }
        if (TextUtils.isEmpty(this.bookSourceGroup)) {
            return;
        }
        for (String str : this.bookSourceGroup.split("\\s*[,;，；]\\s*")) {
            String strTrim = str.trim();
            if (!TextUtils.isEmpty(strTrim) && !this.groupList.contains(strTrim)) {
                this.groupList.add(strTrim);
            }
        }
    }

    public void addGroup(String str) {
        if (this.groupList == null) {
            upGroupList();
        }
        if (this.groupList.contains(str)) {
            return;
        }
        this.groupList.add(str);
        updateModTime();
        this.bookSourceGroup = TextUtils.join("; ", this.groupList);
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public boolean containsGroup(String str) {
        if (this.groupList == null) {
            upGroupList();
        }
        return this.groupList.contains(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ComicSourceBean)) {
            return false;
        }
        ComicSourceBean comicSourceBean = (ComicSourceBean) obj;
        if (!stringEquals(this.bookSourceType, comicSourceBean.bookSourceType).booleanValue() || !stringEquals(this.bookSourceUrl, comicSourceBean.bookSourceUrl).booleanValue() || !stringEquals(this.bookSourceName, comicSourceBean.bookSourceName).booleanValue() || !stringEquals(this.bookSourceGroup, comicSourceBean.bookSourceGroup).booleanValue() || !stringEquals(this.ruleBookName, comicSourceBean.ruleBookName).booleanValue() || !stringEquals(this.ruleBookAuthor, comicSourceBean.ruleBookAuthor).booleanValue() || !stringEquals(this.ruleChapterId, comicSourceBean.ruleChapterId).booleanValue() || !stringEquals(this.ruleChapterUrl, comicSourceBean.ruleChapterUrl).booleanValue()) {
            return false;
        }
        String str = this.ruleChapterUrlNext;
        if (!stringEquals(str, str).booleanValue() || !stringEquals(this.ruleCoverUrl, comicSourceBean.ruleCoverUrl).booleanValue() || !stringEquals(this.ruleIntroduce, comicSourceBean.ruleIntroduce).booleanValue()) {
            return false;
        }
        String str2 = this.ruleChapterList;
        if (!stringEquals((str2 == null || TextUtils.isEmpty(str2)) ? "" : this.ruleChapterList.replace("\n", ""), comicSourceBean.ruleChapterList.replace("\n", "")).booleanValue() || !stringEquals(this.ruleChapterName, comicSourceBean.ruleChapterName).booleanValue() || !stringEquals(this.ruleContentUrl, comicSourceBean.ruleContentUrl).booleanValue() || !stringEquals(this.ruleContentUrlNext, comicSourceBean.ruleContentUrlNext).booleanValue() || !stringEquals(this.ruleChapterParentId, comicSourceBean.ruleChapterParentId).booleanValue() || !stringEquals(this.ruleChapterParentName, comicSourceBean.ruleChapterParentName).booleanValue()) {
            return false;
        }
        String str3 = this.ruleBookContent;
        return stringEquals((str3 == null || TextUtils.isEmpty(str3)) ? "" : this.ruleBookContent.replace("\n", ""), comicSourceBean.ruleBookContent.replace("\n", "")).booleanValue() && stringEquals(this.ruleBookContentDecoder, comicSourceBean.ruleBookContentDecoder).booleanValue() && stringEquals(this.ruleSearchUrl, comicSourceBean.ruleSearchUrl).booleanValue() && stringEquals(this.ruleSearchList, comicSourceBean.ruleSearchList).booleanValue() && stringEquals(this.ruleSearchUrlNext, comicSourceBean.ruleSearchUrlNext).booleanValue() && stringEquals(this.ruleSearchName, comicSourceBean.ruleSearchName).booleanValue() && stringEquals(this.ruleSearchAuthor, comicSourceBean.ruleSearchAuthor).booleanValue() && stringEquals(this.ruleSearchKind, comicSourceBean.ruleSearchKind).booleanValue() && stringEquals(this.ruleSearchLastChapter, comicSourceBean.ruleSearchLastChapter).booleanValue() && stringEquals(this.ruleSearchCoverUrl, comicSourceBean.ruleSearchCoverUrl).booleanValue() && stringEquals(this.ruleSearchNoteUrl, comicSourceBean.ruleSearchNoteUrl).booleanValue() && stringEquals(this.httpUserAgent, comicSourceBean.httpUserAgent).booleanValue() && stringEquals(this.ruleBookKind, comicSourceBean.ruleBookKind).booleanValue() && stringEquals(this.ruleBookLastChapter, comicSourceBean.ruleBookLastChapter).booleanValue() && stringEquals(this.ruleBookUrlPattern, comicSourceBean.ruleBookUrlPattern).booleanValue() && stringEquals(this.checkUrl, comicSourceBean.checkUrl).booleanValue() && stringEquals(this.loginUrl, comicSourceBean.loginUrl).booleanValue() && stringEquals(this.loginUrlResult, comicSourceBean.loginUrlResult).booleanValue() && stringEquals(this.sourceRemark, comicSourceBean.sourceRemark).booleanValue();
    }

    public String getBookDelayTime() {
        return this.bookDelayTime;
    }

    public String getBookSingleThread() {
        return this.bookSingleThread;
    }

    public String getBookSourceGroup() {
        return this.bookSourceGroup;
    }

    public String getBookSourceName() {
        return this.bookSourceName;
    }

    public String getBookSourceType() {
        return TextUtils.isEmpty(this.bookSourceType) ? "漫画" : this.bookSourceType;
    }

    public String getBookSourceUrl() {
        return this.bookSourceUrl;
    }

    public String getCheckUrl() {
        return this.checkUrl;
    }

    public int getDelayTime() {
        if (TextUtils.isEmpty(this.bookDelayTime)) {
            return -1;
        }
        return Integer.parseInt(this.bookDelayTime);
    }

    public boolean getEnable() {
        return this.enable;
    }

    public String getHttpUserAgent() {
        return this.httpUserAgent;
    }

    public Long getLastUpdateTime() {
        return this.lastUpdateTime;
    }

    public String getLoginUrl() {
        return this.loginUrl;
    }

    public String getLoginUrlResult() {
        return this.loginUrlResult;
    }

    public String getRuleBookAuthor() {
        return this.ruleBookAuthor;
    }

    public String getRuleBookContent() {
        return this.ruleBookContent;
    }

    public String getRuleBookContentDecoder() {
        return this.ruleBookContentDecoder;
    }

    public String getRuleBookKind() {
        return this.ruleBookKind;
    }

    public String getRuleBookLastChapter() {
        return this.ruleBookLastChapter;
    }

    public String getRuleBookName() {
        return this.ruleBookName;
    }

    public String getRuleBookUrlPattern() {
        return this.ruleBookUrlPattern;
    }

    public String getRuleChapterId() {
        return this.ruleChapterId;
    }

    public String getRuleChapterList() {
        return this.ruleChapterList;
    }

    public String getRuleChapterName() {
        return this.ruleChapterName;
    }

    public String getRuleChapterParentId() {
        return this.ruleChapterParentId;
    }

    public String getRuleChapterParentName() {
        return this.ruleChapterParentName;
    }

    public String getRuleChapterUrl() {
        return this.ruleChapterUrl;
    }

    public String getRuleChapterUrlNext() {
        return this.ruleChapterUrlNext;
    }

    public String getRuleContentUrl() {
        return this.ruleContentUrl;
    }

    public String getRuleContentUrlNext() {
        return this.ruleContentUrlNext;
    }

    public String getRuleCoverUrl() {
        return this.ruleCoverUrl;
    }

    public String getRuleFindUrl() {
        return this.ruleFindUrl;
    }

    public String getRuleIntroduce() {
        return this.ruleIntroduce;
    }

    public String getRuleSearchAuthor() {
        return this.ruleSearchAuthor;
    }

    public String getRuleSearchCoverUrl() {
        return this.ruleSearchCoverUrl;
    }

    public String getRuleSearchKind() {
        return this.ruleSearchKind;
    }

    public String getRuleSearchLastChapter() {
        return this.ruleSearchLastChapter;
    }

    public String getRuleSearchList() {
        return this.ruleSearchList;
    }

    public String getRuleSearchName() {
        return this.ruleSearchName;
    }

    public String getRuleSearchNoteUrl() {
        return this.ruleSearchNoteUrl;
    }

    public String getRuleSearchUrl() {
        return this.ruleSearchUrl;
    }

    public String getRuleSearchUrlNext() {
        return this.ruleSearchUrlNext;
    }

    public int getSerialNumber() {
        return this.serialNumber;
    }

    public boolean getSingleThreadType() {
        if (TextUtils.isEmpty(this.bookSingleThread)) {
            return false;
        }
        return !this.bookSingleThread.equals("否");
    }

    public String getSourceRemark() {
        return this.sourceRemark;
    }

    public int getWeight() {
        return this.weight;
    }

    public void increaseWeight(int i) {
        this.weight += i;
    }

    public void increaseWeightBySelection() {
        this.weight += 500;
    }

    public void removeGroup(String str) {
        if (this.groupList == null) {
            upGroupList();
        }
        if (this.groupList.contains(str)) {
            this.groupList.remove(str);
            updateModTime();
            this.bookSourceGroup = TextUtils.join("; ", this.groupList);
        }
    }

    public void setBookDelayTime(String str) {
        this.bookDelayTime = str;
    }

    public void setBookSingleThread(String str) {
        this.bookSingleThread = str;
    }

    public void setBookSourceGroup(String str) {
        this.bookSourceGroup = str;
        upGroupList();
        this.bookSourceGroup = TextUtils.join("; ", this.groupList);
    }

    public void setBookSourceName(String str) {
        this.bookSourceName = str;
    }

    public void setBookSourceType(String str) {
        this.bookSourceType = str;
    }

    public void setBookSourceUrl(String str) {
        this.bookSourceUrl = str;
    }

    public void setCheckUrl(String str) {
        this.checkUrl = str;
    }

    public void setEnable(boolean z) {
        this.enable = z;
    }

    public void setHttpUserAgent(String str) {
        this.httpUserAgent = str;
    }

    public void setLastUpdateTime(Long l) {
        this.lastUpdateTime = l;
    }

    public void setLoginUrl(String str) {
        this.loginUrl = str;
    }

    public void setLoginUrlResult(String str) {
        this.loginUrlResult = str;
    }

    public void setRuleBookAuthor(String str) {
        this.ruleBookAuthor = str;
    }

    public void setRuleBookContent(String str) {
        this.ruleBookContent = str;
    }

    public void setRuleBookContentDecoder(String str) {
        this.ruleBookContentDecoder = str;
    }

    public void setRuleBookKind(String str) {
        this.ruleBookKind = str;
    }

    public void setRuleBookLastChapter(String str) {
        this.ruleBookLastChapter = str;
    }

    public void setRuleBookName(String str) {
        this.ruleBookName = str;
    }

    public void setRuleBookUrlPattern(String str) {
        this.ruleBookUrlPattern = str;
    }

    public void setRuleChapterId(String str) {
        this.ruleChapterId = str;
    }

    public void setRuleChapterList(String str) {
        this.ruleChapterList = str;
    }

    public void setRuleChapterName(String str) {
        this.ruleChapterName = str;
    }

    public void setRuleChapterParentId(String str) {
        this.ruleChapterParentId = str;
    }

    public void setRuleChapterParentName(String str) {
        this.ruleChapterParentName = str;
    }

    public void setRuleChapterUrl(String str) {
        this.ruleChapterUrl = str;
    }

    public void setRuleChapterUrlNext(String str) {
        this.ruleChapterUrlNext = str;
    }

    public void setRuleContentUrl(String str) {
        this.ruleContentUrl = str;
    }

    public void setRuleContentUrlNext(String str) {
        this.ruleContentUrlNext = str;
    }

    public void setRuleCoverUrl(String str) {
        this.ruleCoverUrl = str;
    }

    public void setRuleFindUrl(String str) {
        this.ruleFindUrl = str;
    }

    public void setRuleIntroduce(String str) {
        this.ruleIntroduce = str;
    }

    public void setRuleSearchAuthor(String str) {
        this.ruleSearchAuthor = str;
    }

    public void setRuleSearchCoverUrl(String str) {
        this.ruleSearchCoverUrl = str;
    }

    public void setRuleSearchKind(String str) {
        this.ruleSearchKind = str;
    }

    public void setRuleSearchLastChapter(String str) {
        this.ruleSearchLastChapter = str;
    }

    public void setRuleSearchList(String str) {
        this.ruleSearchList = str;
    }

    public void setRuleSearchName(String str) {
        this.ruleSearchName = str;
    }

    public void setRuleSearchNoteUrl(String str) {
        this.ruleSearchNoteUrl = str;
    }

    public void setRuleSearchUrl(String str) {
        this.ruleSearchUrl = str;
    }

    public void setRuleSearchUrlNext(String str) {
        this.ruleSearchUrlNext = str;
    }

    public void setSerialNumber(int i) {
        this.serialNumber = i;
    }

    public void setSourceRemark(String str) {
        this.sourceRemark = str;
    }

    public void setWeight(int i) {
        this.weight = i;
    }

    public void updateModTime() {
        this.lastUpdateTime = Long.valueOf(System.currentTimeMillis());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.bookSourceType);
        parcel.writeString(this.bookSingleThread);
        parcel.writeString(this.bookDelayTime);
        parcel.writeString(this.bookSourceUrl);
        parcel.writeString(this.bookSourceName);
        parcel.writeString(this.bookSourceGroup);
        parcel.writeString(this.checkUrl);
        parcel.writeValue(this.lastUpdateTime);
        parcel.writeInt(this.serialNumber);
        parcel.writeInt(this.weight);
        parcel.writeByte(this.enable ? (byte) 1 : (byte) 0);
        parcel.writeString(this.ruleFindUrl);
        parcel.writeString(this.ruleSearchUrl);
        parcel.writeString(this.ruleSearchList);
        parcel.writeString(this.ruleSearchUrlNext);
        parcel.writeString(this.ruleSearchName);
        parcel.writeString(this.ruleSearchAuthor);
        parcel.writeString(this.ruleSearchKind);
        parcel.writeString(this.ruleSearchLastChapter);
        parcel.writeString(this.ruleSearchCoverUrl);
        parcel.writeString(this.ruleSearchNoteUrl);
        parcel.writeString(this.ruleBookName);
        parcel.writeString(this.ruleBookAuthor);
        parcel.writeString(this.ruleChapterId);
        parcel.writeString(this.ruleChapterUrl);
        parcel.writeString(this.ruleChapterUrlNext);
        parcel.writeString(this.ruleChapterParentId);
        parcel.writeString(this.ruleChapterParentName);
        parcel.writeString(this.ruleCoverUrl);
        parcel.writeString(this.ruleIntroduce);
        parcel.writeString(this.ruleChapterList);
        parcel.writeString(this.ruleChapterName);
        parcel.writeString(this.ruleContentUrl);
        parcel.writeString(this.ruleContentUrlNext);
        parcel.writeString(this.ruleBookContent);
        parcel.writeString(this.ruleBookContentDecoder);
        parcel.writeString(this.httpUserAgent);
        parcel.writeString(this.ruleBookKind);
        parcel.writeString(this.ruleBookLastChapter);
        parcel.writeString(this.ruleBookUrlPattern);
        parcel.writeString(this.loginUrl);
        parcel.writeString(this.loginUrlResult);
        parcel.writeString(this.sourceRemark);
    }

    public ComicSourceBean(Parcel parcel) {
        this.lastUpdateTime = 0L;
        this.weight = 0;
        this.bookSourceType = parcel.readString();
        this.bookSingleThread = parcel.readString();
        this.bookDelayTime = parcel.readString();
        this.bookSourceUrl = parcel.readString();
        this.bookSourceName = parcel.readString();
        this.bookSourceGroup = parcel.readString();
        this.checkUrl = parcel.readString();
        this.lastUpdateTime = (Long) parcel.readValue(Long.class.getClassLoader());
        this.serialNumber = parcel.readInt();
        this.weight = parcel.readInt();
        this.enable = parcel.readByte() != 0;
        this.ruleFindUrl = parcel.readString();
        this.ruleSearchUrl = parcel.readString();
        this.ruleSearchList = parcel.readString();
        this.ruleSearchUrlNext = parcel.readString();
        this.ruleSearchName = parcel.readString();
        this.ruleSearchAuthor = parcel.readString();
        this.ruleSearchKind = parcel.readString();
        this.ruleSearchLastChapter = parcel.readString();
        this.ruleSearchCoverUrl = parcel.readString();
        this.ruleSearchNoteUrl = parcel.readString();
        this.ruleBookName = parcel.readString();
        this.ruleBookAuthor = parcel.readString();
        this.ruleChapterId = parcel.readString();
        this.ruleChapterUrl = parcel.readString();
        this.ruleChapterUrlNext = parcel.readString();
        this.ruleChapterParentId = parcel.readString();
        this.ruleChapterParentName = parcel.readString();
        this.ruleCoverUrl = parcel.readString();
        this.ruleIntroduce = parcel.readString();
        this.ruleChapterList = parcel.readString();
        this.ruleChapterName = parcel.readString();
        this.ruleContentUrl = parcel.readString();
        this.ruleContentUrlNext = parcel.readString();
        this.ruleBookContent = parcel.readString();
        this.ruleBookContentDecoder = parcel.readString();
        this.httpUserAgent = parcel.readString();
        this.ruleBookKind = parcel.readString();
        this.ruleBookLastChapter = parcel.readString();
        this.ruleBookUrlPattern = parcel.readString();
        this.loginUrl = parcel.readString();
        this.loginUrlResult = parcel.readString();
        this.sourceRemark = parcel.readString();
    }

    public ComicSourceBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, Long l, int i, int i2, boolean z, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23, String str24, String str25, String str26, String str27, String str28, String str29, String str30, String str31, String str32, String str33, String str34, String str35, String str36, String str37, String str38, String str39) {
        this.lastUpdateTime = 0L;
        this.weight = 0;
        this.bookSourceType = str;
        this.bookSingleThread = str2;
        this.bookDelayTime = str3;
        this.bookSourceUrl = str4;
        this.bookSourceName = str5;
        this.bookSourceGroup = str6;
        this.checkUrl = str7;
        this.lastUpdateTime = l;
        this.serialNumber = i;
        this.weight = i2;
        this.enable = z;
        this.ruleFindUrl = str8;
        this.ruleSearchUrl = str9;
        this.ruleSearchList = str10;
        this.ruleSearchUrlNext = str11;
        this.ruleSearchName = str12;
        this.ruleSearchAuthor = str13;
        this.ruleSearchKind = str14;
        this.ruleSearchLastChapter = str15;
        this.ruleSearchCoverUrl = str16;
        this.ruleSearchNoteUrl = str17;
        this.ruleBookName = str18;
        this.ruleBookAuthor = str19;
        this.ruleChapterId = str20;
        this.ruleChapterUrl = str21;
        this.ruleChapterUrlNext = str22;
        this.ruleChapterParentId = str23;
        this.ruleChapterParentName = str24;
        this.ruleCoverUrl = str25;
        this.ruleIntroduce = str26;
        this.ruleChapterList = str27;
        this.ruleChapterName = str28;
        this.ruleContentUrl = str29;
        this.ruleContentUrlNext = str30;
        this.ruleBookContent = str31;
        this.ruleBookContentDecoder = str32;
        this.httpUserAgent = str33;
        this.ruleBookKind = str34;
        this.ruleBookLastChapter = str35;
        this.ruleBookUrlPattern = str36;
        this.loginUrl = str37;
        this.loginUrlResult = str38;
        this.sourceRemark = str39;
    }
}
