package com.wsw.cospa.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.l22;
import com.wsw.cospa.utils.Cwhile;
import java.util.Objects;
import java.util.regex.Matcher;

/* loaded from: classes2.dex */
public class ChapterListBean implements Parcelable, Cloneable {
    public static final Parcelable.Creator<ChapterListBean> CREATOR = new Parcelable.Creator<ChapterListBean>() { // from class: com.wsw.cospa.bean.ChapterListBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChapterListBean createFromParcel(Parcel parcel) {
            return new ChapterListBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChapterListBean[] newArray(int i) {
            return new ChapterListBean[i];
        }
    };
    private static final long serialVersionUID = 536871008;
    private String chapterId;
    private String comicInfoUrl;
    private boolean complete;
    private boolean download;
    private int durChapterIndex;
    private String durChapterName;
    private String durChapterUrl;
    private Long end;
    private String nextChapterUrl;
    private String noteUrl;
    private String parentIdString;
    private String parentNameString;
    private Long start;
    private String tag;
    private long tid;
    private String variable;

    public ChapterListBean() {
        this.nextChapterUrl = null;
        this.start = 0L;
        this.end = 0L;
    }

    public Object clone() throws CloneNotSupportedException {
        ChapterListBean chapterListBean = (ChapterListBean) super.clone();
        chapterListBean.noteUrl = this.noteUrl;
        chapterListBean.parentIdString = this.parentIdString;
        chapterListBean.parentNameString = this.parentNameString;
        chapterListBean.chapterId = this.chapterId;
        chapterListBean.durChapterUrl = this.durChapterUrl;
        chapterListBean.durChapterName = this.durChapterName;
        chapterListBean.variable = this.variable;
        chapterListBean.tag = this.tag;
        chapterListBean.nextChapterUrl = this.nextChapterUrl;
        chapterListBean.comicInfoUrl = this.comicInfoUrl;
        return chapterListBean;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ChapterListBean)) {
            return false;
        }
        ChapterListBean chapterListBean = (ChapterListBean) obj;
        return Objects.equals(chapterListBean.getNoteUrl(), this.noteUrl) && Objects.equals(chapterListBean.getDurChapterName(), this.durChapterName);
    }

    public String getChapterId() {
        return this.chapterId;
    }

    public int getChapterNum() {
        String str = this.durChapterName;
        if (str == null) {
            return -1;
        }
        Matcher matcher = Cwhile.f22768do.matcher(str);
        if (matcher.find()) {
            return l22.m4560extends(matcher.group(2));
        }
        return -1;
    }

    public String getComicInfoUrl() {
        return this.comicInfoUrl;
    }

    public boolean getComplete() {
        return this.complete;
    }

    public boolean getDownload() {
        return this.download;
    }

    public int getDurChapterIndex() {
        return this.durChapterIndex;
    }

    public String getDurChapterName() {
        return this.durChapterName;
    }

    public String getDurChapterUrl() {
        return this.durChapterUrl;
    }

    public Long getEnd() {
        return this.end;
    }

    public String getNextChapterUrl() {
        return this.nextChapterUrl;
    }

    public String getNoteUrl() {
        return this.noteUrl;
    }

    public String getParentIdString() {
        return this.parentIdString;
    }

    public String getParentNameString() {
        return this.parentNameString;
    }

    public String getPureChapterName() {
        String str = this.durChapterName;
        return str == null ? "" : l22.m4559else(str).replaceAll("\\s", "").replaceAll("^第.*?章|[(\\[][^()\\[\\]]{2,}[)\\]]$", "").replaceAll("[^\\w\\u4E00-\\u9FEF〇\\u3400-\\u4DBF\\u20000-\\u2A6DF\\u2A700-\\u2EBEF]", "");
    }

    public Long getStart() {
        return this.start;
    }

    public String getTag() {
        return this.tag;
    }

    public long getTid() {
        return this.tid;
    }

    public String getVariable() {
        return this.variable;
    }

    public boolean isComplete() {
        return this.complete;
    }

    public boolean isDownload() {
        return this.download;
    }

    public void setChapterId(String str) {
        this.chapterId = str;
    }

    public void setComicInfoUrl(String str) {
        this.comicInfoUrl = str;
    }

    public void setComplete(boolean z) {
        this.complete = z;
    }

    public void setDownload(boolean z) {
        this.download = z;
    }

    public void setDurChapterIndex(int i) {
        this.durChapterIndex = i;
    }

    public void setDurChapterName(String str) {
        this.durChapterName = str;
    }

    public void setDurChapterUrl(String str) {
        this.durChapterUrl = str;
    }

    public void setEnd(Long l) {
        this.end = l;
    }

    public void setNextChapterUrl(String str) {
        this.nextChapterUrl = str;
    }

    public void setNoteUrl(String str) {
        this.noteUrl = str;
    }

    public void setParentIdString(String str) {
        this.parentIdString = str;
    }

    public void setParentNameString(String str) {
        this.parentNameString = str;
    }

    public void setStart(Long l) {
        this.start = l;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public void setTid(long j) {
        this.tid = j;
    }

    public void setVariable(String str) {
        this.variable = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.noteUrl);
        parcel.writeInt(this.durChapterIndex);
        parcel.writeString(this.parentIdString);
        parcel.writeString(this.parentNameString);
        parcel.writeString(this.chapterId);
        parcel.writeString(this.durChapterUrl);
        parcel.writeString(this.durChapterName);
        parcel.writeString(this.nextChapterUrl);
        parcel.writeString(this.variable);
        parcel.writeString(this.tag);
        parcel.writeValue(this.start);
        parcel.writeValue(this.end);
        parcel.writeString(this.comicInfoUrl);
        parcel.writeByte(this.complete ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.download ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.tid);
    }

    public ChapterListBean(Parcel parcel) {
        this.nextChapterUrl = null;
        this.start = 0L;
        this.end = 0L;
        this.noteUrl = parcel.readString();
        this.durChapterIndex = parcel.readInt();
        this.parentIdString = parcel.readString();
        this.parentNameString = parcel.readString();
        this.chapterId = parcel.readString();
        this.durChapterUrl = parcel.readString();
        this.durChapterName = parcel.readString();
        this.nextChapterUrl = parcel.readString();
        this.variable = parcel.readString();
        this.tag = parcel.readString();
        this.start = (Long) parcel.readValue(Long.class.getClassLoader());
        this.end = (Long) parcel.readValue(Long.class.getClassLoader());
        this.comicInfoUrl = parcel.readString();
        this.complete = parcel.readByte() != 0;
        this.download = parcel.readByte() != 0;
        this.tid = parcel.readLong();
    }

    public ChapterListBean(String str, int i, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, Long l, Long l2, String str10, boolean z, boolean z2, long j) {
        this.nextChapterUrl = null;
        this.start = 0L;
        this.end = 0L;
        this.noteUrl = str;
        this.durChapterIndex = i;
        this.parentIdString = str2;
        this.parentNameString = str3;
        this.chapterId = str4;
        this.durChapterUrl = str5;
        this.durChapterName = str6;
        this.nextChapterUrl = str7;
        this.variable = str8;
        this.tag = str9;
        this.start = l;
        this.end = l2;
        this.comicInfoUrl = str10;
        this.complete = z;
        this.download = z2;
        this.tid = j;
    }
}
