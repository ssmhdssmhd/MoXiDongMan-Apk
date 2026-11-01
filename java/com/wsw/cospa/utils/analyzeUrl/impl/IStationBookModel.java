package com.wsw.cospa.utils.analyzeUrl.impl;

import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicContentBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.SearchComicBean;
import io.reactivex.Cnew;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public interface IStationBookModel {
    Cnew AppSourcelogin(ComicSourceBean comicSourceBean);

    Cnew<List<SearchComicBean>> findBook(String str, int i, Map<String, String> map, String str2);

    Cnew<ComicContentBean> getBookContent(ChapterListBean chapterListBean);

    Cnew<ComicShelfBean> getBookInfo(ComicShelfBean comicShelfBean);

    Cnew<List<ChapterListBean>> getChapterList(ComicShelfBean comicShelfBean);

    Cnew<List<SearchComicBean>> searchBook(String str, int i, Map<String, String> map, String str2);
}
