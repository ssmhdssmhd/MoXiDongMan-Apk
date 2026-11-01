package com.wsw.cospa.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public class Task implements Parcelable {
    public static final Parcelable.Creator<Task> CREATOR = new Parcelable.Creator<Task>() { // from class: com.wsw.cospa.bean.Task.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Task createFromParcel(Parcel parcel) {
            return new Task(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Task[] newArray(int i) {
            return new Task[i];
        }
    };
    public static final int STATE_DOING = 3;
    public static final int STATE_ERROR = 5;
    public static final int STATE_FINISH = 0;
    public static final int STATE_PARSE = 2;
    public static final int STATE_PAUSE = 1;
    public static final int STATE_WAIT = 4;
    private String chapterId;
    private String comicInfoUrl;
    private int durChapterIndex;
    private String durChapterName;
    private String durChapterUrl;
    private Long end;
    private String errorMessage;
    private Long id;
    private boolean isChecked;
    private String key;
    private int max;
    private String name;
    private String nextChapterUrl;
    private String noteUrl;
    private String parentIdString;
    private String parentNameString;
    private String path;
    private int progress;
    private String source;
    private Long start;
    private int state;
    private String tag;
    private String title;
    private String variable;

    public Task(Parcel parcel) {
        this.nextChapterUrl = null;
        this.start = 0L;
        this.end = 0L;
        this.errorMessage = "";
        this.id = Long.valueOf(parcel.readLong());
        this.key = parcel.readString();
        this.path = parcel.readString();
        this.title = parcel.readString();
        this.progress = parcel.readInt();
        this.max = parcel.readInt();
        this.source = parcel.readString();
        this.noteUrl = parcel.readString();
        this.state = parcel.readInt();
        this.name = parcel.readString();
        this.durChapterIndex = parcel.readInt();
        this.parentIdString = parcel.readString();
        this.parentNameString = parcel.readString();
        this.chapterId = parcel.readString();
        this.durChapterUrl = parcel.readString();
        this.durChapterName = parcel.readString();
        this.nextChapterUrl = parcel.readString();
        this.variable = parcel.readString();
        this.tag = parcel.readString();
        this.start = Long.valueOf(parcel.readLong());
        this.end = Long.valueOf(parcel.readLong());
        this.comicInfoUrl = parcel.readString();
        this.errorMessage = parcel.readString() != null ? parcel.readString() : "";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Task) && ((Task) obj).id.equals(this.id);
    }

    public String getChapterId() {
        return this.chapterId;
    }

    public String getComicInfoUrl() {
        return this.comicInfoUrl;
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

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public Long getId() {
        return this.id;
    }

    public String getKey() {
        return this.key;
    }

    public int getMax() {
        return this.max;
    }

    public String getName() {
        return this.name;
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

    public String getPath() {
        return this.path;
    }

    public int getProgress() {
        return this.progress;
    }

    public String getSource() {
        return this.source;
    }

    public Long getStart() {
        return this.start;
    }

    public int getState() {
        return this.state;
    }

    public String getTag() {
        return this.tag;
    }

    public String getTitle() {
        return this.title;
    }

    public String getVariable() {
        return this.variable;
    }

    public int hashCode() {
        Long l = this.id;
        return l == null ? super.hashCode() : l.hashCode();
    }

    public boolean isChecked() {
        return this.isChecked;
    }

    public boolean isFinish() {
        int i = this.max;
        return i != 0 && this.progress == i;
    }

    public void setChapterId(String str) {
        this.chapterId = str;
    }

    public void setChecked(boolean z) {
        this.isChecked = z;
    }

    public void setComicInfoUrl(String str) {
        this.comicInfoUrl = str;
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

    public void setErrorMessage(String str) {
        this.errorMessage = str;
    }

    public void setId(Long l) {
        this.id = l;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setMax(int i) {
        this.max = i;
    }

    public void setName(String str) {
        this.name = str;
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

    public void setPath(String str) {
        this.path = str;
    }

    public void setProgress(int i) {
        this.progress = i;
    }

    public void setSource(String str) {
        this.source = str;
    }

    public void setStart(Long l) {
        this.start = l;
    }

    public void setState(int i) {
        this.state = i;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setVariable(String str) {
        this.variable = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.id.longValue());
        parcel.writeString(this.key);
        parcel.writeString(this.path);
        parcel.writeString(this.title);
        parcel.writeInt(this.progress);
        parcel.writeInt(this.max);
        parcel.writeString(this.source);
        parcel.writeString(this.noteUrl);
        parcel.writeInt(this.state);
        parcel.writeString(this.name);
        parcel.writeInt(this.durChapterIndex);
        parcel.writeString(this.parentIdString);
        parcel.writeString(this.parentNameString);
        parcel.writeString(this.chapterId);
        parcel.writeString(this.durChapterUrl);
        parcel.writeString(this.durChapterName);
        parcel.writeString(this.nextChapterUrl);
        parcel.writeString(this.variable);
        parcel.writeString(this.tag);
        parcel.writeLong(this.start.longValue());
        parcel.writeLong(this.end.longValue());
        parcel.writeString(this.comicInfoUrl);
        parcel.writeString(this.errorMessage);
    }

    public Task(Long l, String str, String str2, String str3, int i, int i2) {
        this.nextChapterUrl = null;
        this.start = 0L;
        this.end = 0L;
        this.errorMessage = "";
        this.id = l;
        this.key = str;
        this.path = str2;
        this.title = str3;
        this.progress = i;
        this.max = i2;
    }

    public Task() {
        this.nextChapterUrl = null;
        this.start = 0L;
        this.end = 0L;
        this.errorMessage = "";
    }

    public Task(Long l, String str, String str2, String str3, int i, int i2, String str4, String str5, int i3, String str6, int i4, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, Long l2, Long l3, String str15, String str16) {
        this.nextChapterUrl = null;
        this.start = 0L;
        this.end = 0L;
        this.errorMessage = "";
        this.id = l;
        this.key = str;
        this.path = str2;
        this.title = str3;
        this.progress = i;
        this.max = i2;
        this.source = str4;
        this.noteUrl = str5;
        this.state = i3;
        this.name = str6;
        this.durChapterIndex = i4;
        this.parentIdString = str7;
        this.parentNameString = str8;
        this.chapterId = str9;
        this.durChapterUrl = str10;
        this.durChapterName = str11;
        this.nextChapterUrl = str12;
        this.variable = str13;
        this.tag = str14;
        this.start = l2;
        this.end = l3;
        this.comicInfoUrl = str15;
        this.errorMessage = str16;
    }
}
