package com.wsw.cospa.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.hw;
import android.support.v4.wq;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.wsw.cospa.dao.ComicShelfBeanDao;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.greenrobot.greendao.DaoException;

/* loaded from: classes2.dex */
public class ComicShelfBean implements Parcelable, Cloneable, BaseComicBean {
    public static final Parcelable.Creator<ComicShelfBean> CREATOR = new Parcelable.Creator<ComicShelfBean>() { // from class: com.wsw.cospa.bean.ComicShelfBean.3
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ComicShelfBean createFromParcel(Parcel parcel) {
            return new ComicShelfBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ComicShelfBean[] newArray(int i) {
            return new ComicShelfBean[i];
        }
    };
    public static final String LOCAL_TAG = "loc_book";
    private Boolean allowUpdate;
    private Integer chapterListSize;
    private ComicInfoBean comicInfoBean;
    private String customCoverPath;
    private transient hw daoSession;
    private Integer durChapter;
    private String durChapterName;
    private Integer durChapterPage;
    private String errorMsg;
    private Long finalDate;
    private Long finalRefreshData;
    private Integer group;
    private ComicShelfGroupBean groupBean;
    private transient Long groupBean__resolvedKey;
    private long groupId;
    private Boolean hasUpdate;
    private boolean isChecked;
    private boolean isLoading;
    private String lastChapterName;
    private transient ComicShelfBeanDao myDao;
    private Integer newChapters;
    private String noteUrl;
    private Integer readMode;
    private Integer serialNumber;
    private String tag;
    private String variable;

    public ComicShelfBean() {
        this.durChapter = 0;
        this.durChapterPage = 0;
        this.finalDate = Long.valueOf(System.currentTimeMillis());
        this.hasUpdate = Boolean.FALSE;
        this.newChapters = 0;
        this.serialNumber = 0;
        this.finalRefreshData = Long.valueOf(System.currentTimeMillis());
        this.group = 0;
        this.chapterListSize = 0;
        this.allowUpdate = Boolean.TRUE;
        this.comicInfoBean = new ComicInfoBean();
        this.readMode = 0;
    }

    public void __setDaoSession(hw hwVar) {
        this.daoSession = hwVar;
        this.myDao = hwVar != null ? hwVar.m3132case() : null;
    }

    public Object clone() throws CloneNotSupportedException {
        ComicShelfBean comicShelfBean = (ComicShelfBean) super.clone();
        comicShelfBean.noteUrl = this.noteUrl;
        comicShelfBean.tag = this.tag;
        comicShelfBean.comicInfoBean = (ComicInfoBean) this.comicInfoBean.clone();
        return comicShelfBean;
    }

    public void delete() {
        ComicShelfBeanDao comicShelfBeanDao = this.myDao;
        if (comicShelfBeanDao == null) {
            throw new DaoException("Entity is detached from DAO context");
        }
        comicShelfBeanDao.delete(this);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return this.noteUrl.equals(((ComicShelfBean) obj).getNoteUrl());
    }

    public Boolean getAllowUpdate() {
        Boolean bool = this.allowUpdate;
        return Boolean.valueOf(bool == null ? true : bool.booleanValue());
    }

    public ChapterListBean getChapter(int i) {
        if (realChapterListEmpty() || i < 0) {
            ChapterListBean chapterListBean = new ChapterListBean();
            chapterListBean.setDurChapterName("暂无");
            chapterListBean.setDurChapterUrl("暂无");
            return chapterListBean;
        }
        if (i < getChapterList().size()) {
            return getChapterList().get(i);
        }
        this.durChapter = Integer.valueOf(getChapterList().size() - 1);
        return getChapterList().get(this.durChapter.intValue());
    }

    public ChapterListBean getChapterList(int i) {
        if (getChapterList() == null || getChapterList().size() == 0 || i < 0 || i >= getChapterList().size()) {
            return null;
        }
        return getChapterList().get(i);
    }

    public Integer getChapterListSize() {
        Integer num = this.chapterListSize;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public ComicInfoBean getComicInfoBean() {
        return this.comicInfoBean;
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public String getCoverHeader() {
        Map<String, String> variableMap = getVariableMap();
        if (variableMap == null) {
            return null;
        }
        return variableMap.get(wq.l0);
    }

    public String getCustomCoverPath() {
        return this.customCoverPath;
    }

    public int getDurChapter() {
        if (this.durChapter.intValue() < 0) {
            return 0;
        }
        return this.durChapter.intValue();
    }

    public String getDurChapterName() {
        return this.durChapterName;
    }

    public int getDurChapterPage() {
        if (this.durChapterPage.intValue() < 0) {
            return 0;
        }
        return this.durChapterPage.intValue();
    }

    public String getErrorMsg() {
        return this.errorMsg;
    }

    public long getFinalDate() {
        return this.finalDate.longValue();
    }

    public long getFinalRefreshData() {
        return this.finalRefreshData.longValue();
    }

    public int getGroup() {
        Integer num = this.group;
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public ComicShelfGroupBean getGroupBean() {
        long j = this.groupId;
        Long l = this.groupBean__resolvedKey;
        if (l == null || !l.equals(Long.valueOf(j))) {
            hw hwVar = this.daoSession;
            if (hwVar == null) {
                throw new DaoException("Entity is detached from DAO context");
            }
            ComicShelfGroupBean comicShelfGroupBeanLoad = hwVar.m3137else().load(Long.valueOf(j));
            synchronized (this) {
                this.groupBean = comicShelfGroupBeanLoad;
                this.groupBean__resolvedKey = Long.valueOf(j);
            }
        }
        return this.groupBean;
    }

    public long getGroupId() {
        return this.groupId;
    }

    public boolean getHasUpdate() {
        return this.hasUpdate.booleanValue();
    }

    public String getLastChapterName() {
        return this.lastChapterName;
    }

    public int getNewChapters() {
        return this.newChapters.intValue();
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public String getNoteUrl() {
        return this.noteUrl;
    }

    public Integer getReadMode() {
        return this.readMode;
    }

    public int getSerialNumber() {
        return this.serialNumber.intValue();
    }

    public String getTag() {
        return this.tag;
    }

    public int getUnreadChapterNum() {
        int iIntValue = (getChapterListSize().intValue() - getDurChapter()) - 1;
        if (iIntValue < 0) {
            return 0;
        }
        return iIntValue;
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
        return (Map) new Gson().fromJson(this.variable, new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.bean.ComicShelfBean.2
        }.getType());
    }

    public boolean isChecked() {
        return this.isChecked;
    }

    public boolean isLoading() {
        return this.isLoading;
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public void putVariable(String str, String str2) {
        Map map = (Map) new Gson().fromJson(this.variable, new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.bean.ComicShelfBean.1
        }.getType());
        if (map == null) {
            map = new HashMap();
        }
        map.put(str, str2);
        this.variable = new Gson().toJson(map);
    }

    public boolean realChapterListEmpty() {
        return getChapterList().isEmpty();
    }

    public void refresh() {
        ComicShelfBeanDao comicShelfBeanDao = this.myDao;
        if (comicShelfBeanDao == null) {
            throw new DaoException("Entity is detached from DAO context");
        }
        comicShelfBeanDao.refresh(this);
    }

    public void setAllowUpdate(Boolean bool) {
        this.allowUpdate = bool;
    }

    public void setChapterList(List<ChapterListBean> list) {
        getComicInfoBean().setChapterList(list);
    }

    public void setChapterListSize(Integer num) {
        this.chapterListSize = num;
    }

    public void setChecked(boolean z) {
        this.isChecked = z;
    }

    public void setComicInfoBean(ComicInfoBean comicInfoBean) {
        this.comicInfoBean = comicInfoBean;
    }

    public void setCustomCoverPath(String str) {
        this.customCoverPath = str;
    }

    public void setDurChapter(Integer num) {
        this.durChapter = num;
    }

    public void setDurChapterName(String str) {
        this.durChapterName = str;
    }

    public void setDurChapterPage(Integer num) {
        this.durChapterPage = num;
    }

    public void setErrorMsg(String str) {
        this.errorMsg = str;
    }

    public void setFinalDate(Long l) {
        this.finalDate = l;
    }

    public void setFinalRefreshData(Long l) {
        this.finalRefreshData = l;
    }

    public void setGroup(Integer num) {
        this.group = num;
    }

    public void setGroupBean(ComicShelfGroupBean comicShelfGroupBean) {
        if (comicShelfGroupBean == null) {
            throw new DaoException("To-one property 'groupId' has not-null constraint; cannot set to-one to null");
        }
        synchronized (this) {
            this.groupBean = comicShelfGroupBean;
            long jLongValue = comicShelfGroupBean.getId().longValue();
            this.groupId = jLongValue;
            this.groupBean__resolvedKey = Long.valueOf(jLongValue);
        }
    }

    public void setGroupId(long j) {
        this.groupId = j;
    }

    public void setHasUpdate(Boolean bool) {
        this.hasUpdate = bool;
    }

    public void setLastChapterName(String str) {
        this.lastChapterName = str;
    }

    public void setLoading(boolean z) {
        this.isLoading = z;
    }

    public void setNewChapters(Integer num) {
        this.newChapters = num;
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public void setNoteUrl(String str) {
        this.noteUrl = str;
    }

    public void setReadMode(Integer num) {
        this.readMode = num;
    }

    public void setSerialNumber(Integer num) {
        this.serialNumber = num;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public void setVariable(String str) {
        this.variable = str;
    }

    public void upDurChapterName() {
        if (getChapterListSize().intValue() > 0) {
            if (this.durChapter.intValue() < getChapterListSize().intValue()) {
                this.durChapterName = getChapterList().get(this.durChapter.intValue()).getDurChapterName();
            } else {
                this.durChapterName = getChapterList().get(getChapterListSize().intValue() - 1).getDurChapterName();
            }
        }
    }

    public void upLastChapterName() {
        if (getChapterListSize().intValue() > 0) {
            this.lastChapterName = getChapterList().get(getChapterListSize().intValue() - 1).getDurChapterName();
        }
    }

    public void update() {
        ComicShelfBeanDao comicShelfBeanDao = this.myDao;
        if (comicShelfBeanDao == null) {
            throw new DaoException("Entity is detached from DAO context");
        }
        comicShelfBeanDao.update(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.errorMsg);
        parcel.writeByte(this.isLoading ? (byte) 1 : (byte) 0);
        parcel.writeString(this.noteUrl);
        parcel.writeValue(this.durChapter);
        parcel.writeValue(this.durChapterPage);
        parcel.writeValue(this.finalDate);
        parcel.writeValue(this.hasUpdate);
        parcel.writeValue(this.newChapters);
        parcel.writeString(this.tag);
        parcel.writeValue(this.serialNumber);
        parcel.writeValue(this.finalRefreshData);
        parcel.writeValue(this.group);
        parcel.writeString(this.durChapterName);
        parcel.writeString(this.lastChapterName);
        parcel.writeValue(this.chapterListSize);
        parcel.writeString(this.customCoverPath);
        parcel.writeValue(this.allowUpdate);
        parcel.writeString(this.variable);
        parcel.writeParcelable(this.comicInfoBean, i);
        parcel.writeLong(this.groupId);
        parcel.writeValue(this.readMode);
        parcel.writeParcelable(this.groupBean, i);
    }

    public List<ChapterListBean> getChapterList() {
        return getComicInfoBean().getChapterList();
    }

    public ComicShelfBean(Parcel parcel) {
        this.durChapter = 0;
        this.durChapterPage = 0;
        this.finalDate = Long.valueOf(System.currentTimeMillis());
        this.hasUpdate = Boolean.FALSE;
        this.newChapters = 0;
        this.serialNumber = 0;
        this.finalRefreshData = Long.valueOf(System.currentTimeMillis());
        this.group = 0;
        this.chapterListSize = 0;
        this.allowUpdate = Boolean.TRUE;
        this.comicInfoBean = new ComicInfoBean();
        this.readMode = 0;
        this.errorMsg = parcel.readString();
        this.isLoading = parcel.readByte() != 0;
        this.noteUrl = parcel.readString();
        this.durChapter = (Integer) parcel.readValue(Integer.class.getClassLoader());
        this.durChapterPage = (Integer) parcel.readValue(Integer.class.getClassLoader());
        this.finalDate = (Long) parcel.readValue(Long.class.getClassLoader());
        this.hasUpdate = (Boolean) parcel.readValue(Boolean.class.getClassLoader());
        this.newChapters = (Integer) parcel.readValue(Integer.class.getClassLoader());
        this.tag = parcel.readString();
        this.serialNumber = (Integer) parcel.readValue(Integer.class.getClassLoader());
        this.finalRefreshData = (Long) parcel.readValue(Long.class.getClassLoader());
        this.group = (Integer) parcel.readValue(Integer.class.getClassLoader());
        this.durChapterName = parcel.readString();
        this.lastChapterName = parcel.readString();
        this.chapterListSize = (Integer) parcel.readValue(Integer.class.getClassLoader());
        this.customCoverPath = parcel.readString();
        this.allowUpdate = (Boolean) parcel.readValue(Boolean.class.getClassLoader());
        this.variable = parcel.readString();
        this.comicInfoBean = (ComicInfoBean) parcel.readParcelable(ComicInfoBean.class.getClassLoader());
        this.groupId = parcel.readLong();
        this.readMode = (Integer) parcel.readValue(Integer.class.getClassLoader());
        this.groupBean = (ComicShelfGroupBean) parcel.readParcelable(ComicShelfGroupBean.class.getClassLoader());
    }

    public ComicShelfBean(String str, Integer num, Integer num2, Long l, Boolean bool, Integer num3, String str2, Integer num4, Long l2, Integer num5, String str3, String str4, Integer num6, String str5, Boolean bool2, String str6, long j, Integer num7) {
        this.durChapter = 0;
        this.durChapterPage = 0;
        this.finalDate = Long.valueOf(System.currentTimeMillis());
        this.hasUpdate = Boolean.FALSE;
        this.newChapters = 0;
        this.serialNumber = 0;
        this.finalRefreshData = Long.valueOf(System.currentTimeMillis());
        this.group = 0;
        this.chapterListSize = 0;
        this.allowUpdate = Boolean.TRUE;
        this.comicInfoBean = new ComicInfoBean();
        this.readMode = 0;
        this.noteUrl = str;
        this.durChapter = num;
        this.durChapterPage = num2;
        this.finalDate = l;
        this.hasUpdate = bool;
        this.newChapters = num3;
        this.tag = str2;
        this.serialNumber = num4;
        this.finalRefreshData = l2;
        this.group = num5;
        this.durChapterName = str3;
        this.lastChapterName = str4;
        this.chapterListSize = num6;
        this.customCoverPath = str5;
        this.allowUpdate = bool2;
        this.variable = str6;
        this.groupId = j;
        this.readMode = num7;
    }
}
