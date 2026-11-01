package com.wsw.cospa.contract;

import android.content.Intent;
import android.support.v4.m7;
import androidx.appcompat.app.AppCompatActivity;
import com.wsw.cospa.base.BaseView;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicContentImgBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicSourceBean;
import java.util.List;

/* loaded from: classes2.dex */
public interface ChapterBrowseContract {

    public interface View extends BaseView {
        void hideProgress();

        void initComicBook(ChapterListBean chapterListBean, ComicShelfBean comicShelfBean);

        void initComicName(String str);

        void loadChapter(List<ComicContentImgBean> list);

        void loadNextChapter(List<ComicContentImgBean> list);

        void loadPreChapter(List<ComicContentImgBean> list);

        void moveToPosition(int i);

        void onPicturePaging(ComicContentImgBean comicContentImgBean);

        void showProgress();

        void showToast(String str);

        void skipNextChapter(List<ComicContentImgBean> list);

        void skipPreChapter(List<ComicContentImgBean> list);

        void updateButtomRight(int i, int i2);

        void updateCatalog(ComicShelfBean comicShelfBean, int i);

        void updateChapterName(String str);

        void updateComicBook(ChapterListBean chapterListBean);

        void updatePageSeekBar(int i, int i2);

        void updateTitle(String str);
    }

    /* renamed from: com.wsw.cospa.contract.ChapterBrowseContract$do, reason: invalid class name */
    public static abstract class Cdo extends m7<View> {
        /* renamed from: break, reason: not valid java name */
        public abstract void mo25911break();

        /* renamed from: catch, reason: not valid java name */
        public abstract void mo25912catch(ChapterListBean chapterListBean);

        /* renamed from: class, reason: not valid java name */
        public abstract void mo25913class(ChapterListBean chapterListBean);

        /* renamed from: const, reason: not valid java name */
        public abstract void mo25914const(ComicShelfBean comicShelfBean, ChapterListBean chapterListBean);

        /* renamed from: else, reason: not valid java name */
        public abstract void mo25915else();

        /* renamed from: final, reason: not valid java name */
        public abstract void mo25916final(ChapterListBean chapterListBean);

        /* renamed from: goto, reason: not valid java name */
        public abstract ComicSourceBean mo25917goto();

        /* renamed from: super, reason: not valid java name */
        public abstract void mo25918super(ChapterListBean chapterListBean);

        /* renamed from: this, reason: not valid java name */
        public abstract void mo25919this(AppCompatActivity appCompatActivity, Intent intent);

        /* renamed from: throw, reason: not valid java name */
        public abstract void mo25920throw(ChapterListBean chapterListBean);
    }
}
