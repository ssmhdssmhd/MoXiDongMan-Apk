package com.wsw.cospa.activity;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.StateListDrawable;
import android.support.v4.b0;
import android.support.v4.bz1;
import android.support.v4.ds1;
import android.support.v4.g31;
import android.support.v4.h30;
import android.support.v4.hm1;
import android.support.v4.im1;
import android.support.v4.j10;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.p12;
import android.support.v4.v02;
import android.support.v4.v72;
import android.support.v4.vv0;
import android.support.v4.wq;
import android.support.v4.y8;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.google.android.material.appbar.AppBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.ComicDetailActivity;
import com.wsw.cospa.adapter.ChapterGridAdapter;
import com.wsw.cospa.adapter.ChapterListTreeAdapter;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicShelfGroupBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.dao.ComicInfoBeanDao;
import com.wsw.cospa.dao.ComicSourceBeanDao;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.event.RefreshBookDetailMessageObserver;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.model.Cwhile;
import com.wsw.cospa.utils.Cfinally;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.utils.DialogTool;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders;
import com.wsw.cospa.widget.ChangeSourceDialog;
import com.wsw.cospa.widget.ListTree;
import com.wsw.cospa.widget.OriginChooseDialog;
import fi.iki.elonen.NanoHTTPD;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.greendao.query.WhereCondition;
import rx.functions.Action1;

/* loaded from: classes2.dex */
public class ComicDetailActivity extends BaseActivity implements View.OnClickListener, RefreshBookDetailMessageObserver {

    /* renamed from: abstract, reason: not valid java name */
    private static final String f20977abstract = ComicDetailActivity.class.getSimpleName();

    /* renamed from: continue, reason: not valid java name */
    private static final int f20978continue = 2;

    /* renamed from: strictfp, reason: not valid java name */
    private static final int f20979strictfp = 1;

    /* renamed from: volatile, reason: not valid java name */
    private static final int f20980volatile = 0;

    @BindView(R.id.arg_res_0x7f09003b)
    public AppBarLayout ablDetails;

    /* renamed from: break, reason: not valid java name */
    private ChapterGridAdapter f20981break;

    /* renamed from: catch, reason: not valid java name */
    private ChapterListTreeAdapter f20982catch;

    /* renamed from: class, reason: not valid java name */
    private ChapterListTreeAdapter.onClickCallBack f20983class;

    @BindView(R.id.arg_res_0x7f090115)
    public RelativeLayout contentView;

    /* renamed from: default, reason: not valid java name */
    private String f20985default;

    @BindView(R.id.arg_res_0x7f09016a)
    public RelativeLayout error_view;

    /* renamed from: extends, reason: not valid java name */
    private String f20986extends;

    /* renamed from: finally, reason: not valid java name */
    private String f20988finally;

    /* renamed from: goto, reason: not valid java name */
    private SearchComicBean f20989goto;

    @BindView(R.id.arg_res_0x7f09023a)
    public ImageView ivCover;

    @BindView(R.id.arg_res_0x7f0902a2)
    public AVLoadingIndicatorView mIndicatorView;

    @BindView(R.id.arg_res_0x7f0902a4)
    public RecyclerView mRecyclerView;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    /* renamed from: native, reason: not valid java name */
    private ChangeSourceDialog f20991native;

    /* renamed from: private, reason: not valid java name */
    private Integer f20993private;

    /* renamed from: public, reason: not valid java name */
    private GridLayoutManager f20994public;

    /* renamed from: return, reason: not valid java name */
    private List<ChapterListBean> f20995return;

    /* renamed from: static, reason: not valid java name */
    private boolean f20996static;

    /* renamed from: super, reason: not valid java name */
    private boolean f20997super;

    /* renamed from: this, reason: not valid java name */
    private ComicShelfBean f20999this;

    /* renamed from: throw, reason: not valid java name */
    private ComicInfoBean f21000throw;

    /* renamed from: throws, reason: not valid java name */
    private Intent f21001throws;

    @BindView(R.id.arg_res_0x7f09045d)
    public AppCompatTextView tvAddBookshelf;

    @BindView(R.id.arg_res_0x7f09045f)
    public TextView tvAsc;

    @BindView(R.id.arg_res_0x7f090460)
    public TextView tvAuthor;

    @BindView(R.id.arg_res_0x7f09046f)
    public AppCompatTextView tvComicName;

    @BindView(R.id.arg_res_0x7f090472)
    public TextView tvCount;

    @BindView(R.id.arg_res_0x7f09047a)
    public TextView tvDescription;

    @BindView(R.id.arg_res_0x7f09016b)
    public TextView tvErrorView;

    @BindView(R.id.arg_res_0x7f090493)
    public TextView tvLabel;

    @BindView(R.id.arg_res_0x7f0904a3)
    public ImageView tvRange;

    @BindView(R.id.arg_res_0x7f0904a4)
    public AppCompatTextView tvRead;

    @BindView(R.id.arg_res_0x7f0904a7)
    public TextView tvRetry;

    @BindView(R.id.arg_res_0x7f0904b6)
    public TextView tvState;

    /* renamed from: const, reason: not valid java name */
    private boolean f20984const = false;

    /* renamed from: final, reason: not valid java name */
    private ComicShelfBean f20987final = null;

    /* renamed from: while, reason: not valid java name */
    private int f21002while = 0;

    /* renamed from: import, reason: not valid java name */
    private boolean f20990import = false;

    /* renamed from: switch, reason: not valid java name */
    private int f20998switch = wq.f7598abstract;

    /* renamed from: package, reason: not valid java name */
    private Integer f20992package = 0;

    /* renamed from: com.wsw.cospa.activity.ComicDetailActivity$break, reason: invalid class name */
    public class Cbreak implements View.OnClickListener {
        public Cbreak() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ComicDetailActivity.this.f20999this != null) {
                ComicInfoBean comicInfoBean = ComicDetailActivity.this.f20999this.getComicInfoBean();
                WebViewActivity.a(ComicDetailActivity.this, comicInfoBean != null ? comicInfoBean.getName() : "", comicInfoBean.getNoteUrl(), true);
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicDetailActivity$case, reason: invalid class name */
    public class Ccase extends bz1<ComicShelfBean> {
        public Ccase() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicShelfBean comicShelfBean) {
            ComicDetailActivity.this.f20999this = comicShelfBean;
            if (ComicDetailActivity.this.f20999this == null) {
                if (g31.m2570try(ComicDetailActivity.this)) {
                    ComicDetailActivity.this.m24903private();
                    return;
                }
                return;
            }
            if (org.apache.commons.lang3.Cclass.E(ComicDetailActivity.this.f20986extends) && org.apache.commons.lang3.Cclass.E(ComicDetailActivity.this.f20988finally) && ComicDetailActivity.this.f20999this.getTag().equals(ComicDetailActivity.this.f20985default)) {
                ComicDetailActivity.this.f20999this.setDurChapterName(ComicDetailActivity.this.f20986extends);
                ComicDetailActivity.this.f20999this.setLastChapterName(ComicDetailActivity.this.f20988finally);
                ComicDetailActivity.this.f20999this.setDurChapter(ComicDetailActivity.this.f20992package);
                ComicDetailActivity.this.f20999this.setDurChapterPage(ComicDetailActivity.this.f20993private);
            }
            im1.m3512case().mo970if(ComicDetailActivity.this.f20999this);
            hm1.m3062case().mo970if(new Object[0]);
            ComicDetailActivity comicDetailActivity = ComicDetailActivity.this;
            comicDetailActivity.f21000throw = comicDetailActivity.f20999this.getComicInfoBean();
            ComicDetailActivity comicDetailActivity2 = ComicDetailActivity.this;
            comicDetailActivity2.f20995return = comicDetailActivity2.f20999this.getChapterList();
            ComicSourceBean comicSourceBeanM26358abstract = com.wsw.cospa.model.Cdo.m26358abstract(ComicDetailActivity.this.f20999this.getTag());
            if (comicSourceBeanM26358abstract != null) {
                ComicDetailActivity.this.f20990import = (comicSourceBeanM26358abstract.getRuleChapterParentId() == null || comicSourceBeanM26358abstract.getRuleChapterParentId().isEmpty()) ? false : true;
            }
            ComicDetailActivity comicDetailActivity3 = ComicDetailActivity.this;
            comicDetailActivity3.f21002while = v02.m8711if(comicDetailActivity3).m8715for(wq.E0, 0);
            String unused = ComicDetailActivity.f20977abstract;
            StringBuilder sb = new StringBuilder();
            sb.append("initData: chapterList size  : ");
            sb.append(ComicDetailActivity.this.f20999this.getChapterListSize());
            sb.append(" info size : ");
            sb.append(ComicDetailActivity.this.f20995return.size());
            if (ComicDetailActivity.this.f20995return == null || ComicDetailActivity.this.f20995return.size() <= 0) {
                ComicDetailActivity.this.m24903private();
                return;
            }
            if (ComicDetailActivity.this.f21000throw == null || TextUtils.isEmpty(ComicDetailActivity.this.f21000throw.getCoverUrl()) || TextUtils.isEmpty(ComicDetailActivity.this.f21000throw.getName())) {
                ComicDetailActivity.this.m24903private();
                return;
            }
            if (ComicDetailActivity.this.f20989goto == null) {
                ComicDetailActivity.this.f20989goto = new SearchComicBean();
                ComicDetailActivity.this.f20989goto.setAuthor(ComicDetailActivity.this.f21000throw.getAuthor());
                ComicDetailActivity.this.f20989goto.setCoverUrl(ComicDetailActivity.this.f21000throw.getCoverUrl());
                ComicDetailActivity.this.f20989goto.setIntroduce(ComicDetailActivity.this.f21000throw.getIntroduce());
                ComicDetailActivity.this.f20989goto.setName(ComicDetailActivity.this.f21000throw.getName());
                ComicDetailActivity.this.f20989goto.setKind(ComicDetailActivity.this.f21000throw.getKind());
                ComicDetailActivity.this.f20989goto.setNoteUrl(ComicDetailActivity.this.f21000throw.getNoteUrl());
                ComicDetailActivity.this.f20989goto.setOrigin(ComicDetailActivity.this.f21000throw.getOrigin());
                ComicDetailActivity.this.f20989goto.setTag(ComicDetailActivity.this.f21000throw.getTag());
            }
            ComicDetailActivity comicDetailActivity4 = ComicDetailActivity.this;
            comicDetailActivity4.T(comicDetailActivity4.f21000throw);
            ComicDetailActivity.this.D();
            ComicDetailActivity.this.C();
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            super.onError(str);
            if (g31.m2570try(ComicDetailActivity.this)) {
                ComicDetailActivity.this.m24903private();
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicDetailActivity$catch, reason: invalid class name */
    public class Ccatch implements View.OnClickListener {
        public Ccatch() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ComicInfoBean comicInfoBean;
            if (ComicDetailActivity.this.f20999this == null || (comicInfoBean = ComicDetailActivity.this.f20999this.getComicInfoBean()) == null || TextUtils.isEmpty(comicInfoBean.getAuthor())) {
                return;
            }
            SearchComicActivity.g(ComicDetailActivity.this, comicInfoBean.getAuthor());
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicDetailActivity$class, reason: invalid class name */
    public class Cclass implements DialogTool.DialogOptCb {
        public Cclass() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onBack() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onCancel() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onConfirm() {
            com.wsw.cospa.dao.Cdo.k(ComicDetailActivity.this.f20999this);
            ComicDetailActivity.this.f20984const = false;
            ComicDetailActivity.this.tvAddBookshelf.setText("加入书架");
            ComicDetailActivity.this.tvRead.setText("开始阅读");
            im1.m3512case().mo970if(ComicDetailActivity.this.f20999this);
            hm1.m3062case().mo970if(new Object[0]);
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicDetailActivity$const, reason: invalid class name */
    public class Cconst implements DialogTool.DialogOptCb {
        public Cconst() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onBack() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onCancel() {
            ComicDetailActivity.this.x();
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onConfirm() {
            ComicDetailActivity.this.A(DatabaseHelper.m26016switch().m26024default(ComicDetailActivity.this.f20999this.getNoteUrl()));
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicDetailActivity$do, reason: invalid class name */
    public class Cdo extends bz1<ComicShelfBean> {
        public Cdo() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public /* synthetic */ void m24906if(ChapterListBean chapterListBean, View view, int i) {
            ComicDetailActivity.this.w(chapterListBean, i);
        }

        @Override // io.reactivex.Observer
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicShelfBean comicShelfBean) {
            ComicDetailActivity.this.f20999this = comicShelfBean;
            if (ComicDetailActivity.this.f20999this != null) {
                ComicDetailActivity comicDetailActivity = ComicDetailActivity.this;
                comicDetailActivity.tvRange.setImageDrawable(comicDetailActivity.getResources().getDrawable(R.drawable.arg_res_0x7f0800e8));
                ComicDetailActivity comicDetailActivity2 = ComicDetailActivity.this;
                comicDetailActivity2.mRecyclerView.setLayoutManager(new LinearLayoutManager(comicDetailActivity2));
                if (ComicDetailActivity.this.f20982catch == null) {
                    ListTree listTree = new ListTree();
                    ComicDetailActivity comicDetailActivity3 = ComicDetailActivity.this;
                    comicDetailActivity3.f20982catch = new ChapterListTreeAdapter(comicDetailActivity3, listTree);
                    ComicDetailActivity comicDetailActivity4 = ComicDetailActivity.this;
                    comicDetailActivity4.f21000throw = comicDetailActivity4.f20999this.getComicInfoBean();
                    if (ComicDetailActivity.this.f21000throw != null) {
                        ComicDetailActivity comicDetailActivity5 = ComicDetailActivity.this;
                        comicDetailActivity5.tvCount.setText(String.format("（共%s个章节）｜（第%s章节）", Integer.valueOf(comicDetailActivity5.f21000throw.getChapterList().size()), Integer.valueOf(ComicDetailActivity.this.f20999this.getDurChapter() + 1)));
                        ComicDetailActivity.this.f20982catch.m25552break(ComicDetailActivity.this.f20999this.getChapter(ComicDetailActivity.this.f20999this.getDurChapter()));
                    }
                    ComicDetailActivity.this.U();
                    ComicDetailActivity.this.f20983class = new ChapterListTreeAdapter.onClickCallBack() { // from class: com.wsw.cospa.activity.while
                        @Override // com.wsw.cospa.adapter.ChapterListTreeAdapter.onClickCallBack
                        public final void tvChapterOnClick(ChapterListBean chapterListBean, View view, int i) {
                            this.f21518do.m24906if(chapterListBean, view, i);
                        }
                    };
                    ComicDetailActivity.this.f20982catch.m25556this(ComicDetailActivity.this.f20983class);
                }
                ComicDetailActivity.this.f20982catch.refresh(ComicDetailActivity.this.f20999this.getChapterList());
                ComicDetailActivity.this.f20982catch.m25552break(ComicDetailActivity.this.f20999this.getChapter(ComicDetailActivity.this.f20999this.getDurChapter()));
                ComicDetailActivity comicDetailActivity6 = ComicDetailActivity.this;
                comicDetailActivity6.mRecyclerView.setAdapter(comicDetailActivity6.f20982catch);
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicDetailActivity$else, reason: invalid class name */
    public class Celse extends bz1<ComicShelfBean> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ChapterListBean f21009do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f21011if;

        public Celse(ChapterListBean chapterListBean, int i) {
            this.f21009do = chapterListBean;
            this.f21011if = i;
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicShelfBean comicShelfBean) {
            ComicDetailActivity.this.f20999this = comicShelfBean;
            if (ComicDetailActivity.this.f20999this == null) {
                v72.m8769if("当前漫画无法获取章节，请换源！");
                return;
            }
            ComicDetailActivity.this.f20999this.setDurChapterPage(0);
            ComicDetailActivity.this.f20999this.setDurChapter(Integer.valueOf(this.f21009do.getDurChapterIndex()));
            ComicDetailActivity.this.f20999this.setDurChapterName(this.f21009do.getDurChapterName());
            im1.m3512case().mo970if(ComicDetailActivity.this.f20999this);
            String str = System.currentTimeMillis() + "_chapter";
            String str2 = System.currentTimeMillis() + "_shelf";
            y8.m9768for().m9771new(str2, ComicDetailActivity.this.f20999this);
            y8.m9768for().m9771new(str, this.f21009do);
            ChapterBrowseActivity.x1(ComicDetailActivity.this, str, str2, this.f21011if);
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicDetailActivity$final, reason: invalid class name */
    public class Cfinal implements DialogTool.DialogOptCb {
        public Cfinal() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onBack() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onCancel() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onConfirm() {
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicDetailActivity$for, reason: invalid class name */
    public class Cfor extends bz1<Boolean> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ComicShelfBean f21013do;

        public Cfor(ComicShelfBean comicShelfBean) {
            this.f21013do = comicShelfBean;
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            ComicDetailActivity.this.f21908do.add(disposable);
        }

        @Override // io.reactivex.Observer
        public void onNext(Boolean bool) {
            ComicDetailActivity.this.f20984const = true;
            ComicDetailActivity.this.tvAddBookshelf.setText("移除书架");
            ComicDetailActivity.this.tvRead.setText("开始阅读");
            ComicDetailActivity.this.f20999this = this.f21013do;
            im1.m3512case().mo970if(ComicDetailActivity.this.f20999this);
            hm1.m3062case().mo970if(new Object[0]);
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicDetailActivity$goto, reason: invalid class name */
    public class Cgoto extends bz1<ComicShelfBean> {
        public Cgoto() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicShelfBean comicShelfBean) {
            ComicDetailActivity.this.C();
            ComicDetailActivity.this.f20999this = comicShelfBean;
            if (org.apache.commons.lang3.Cclass.E(ComicDetailActivity.this.f20986extends) && org.apache.commons.lang3.Cclass.E(ComicDetailActivity.this.f20988finally) && ComicDetailActivity.this.f20999this.getTag().equals(ComicDetailActivity.this.f20985default)) {
                ComicDetailActivity.this.f20999this.setDurChapterName(ComicDetailActivity.this.f20986extends);
                ComicDetailActivity.this.f20999this.setLastChapterName(ComicDetailActivity.this.f20988finally);
                ComicDetailActivity.this.f20999this.setDurChapter(ComicDetailActivity.this.f20992package);
                ComicDetailActivity.this.f20999this.setDurChapterPage(ComicDetailActivity.this.f20993private);
            }
            ComicDetailActivity comicDetailActivity = ComicDetailActivity.this;
            comicDetailActivity.f21000throw = comicDetailActivity.f20999this.getComicInfoBean();
            ComicDetailActivity comicDetailActivity2 = ComicDetailActivity.this;
            comicDetailActivity2.T(comicDetailActivity2.f21000throw);
            ComicDetailActivity.this.v();
            ComicDetailActivity comicDetailActivity3 = ComicDetailActivity.this;
            comicDetailActivity3.f20995return = comicDetailActivity3.f20999this.getChapterList();
            ComicDetailActivity.this.D();
            if (ComicDetailActivity.this.f20997super) {
                com.wsw.cospa.dao.Cdo.n(ComicDetailActivity.this.f20999this);
                im1.m3512case().mo970if(ComicDetailActivity.this.f20999this);
                hm1.m3062case().mo970if(new Object[0]);
            }
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            ComicDetailActivity.this.P(str);
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            ComicDetailActivity.this.f21908do.add(disposable);
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicDetailActivity$if, reason: invalid class name */
    public class Cif extends bz1<ComicShelfBean> {
        public Cif() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public /* synthetic */ void m24911if(int i) {
            ComicDetailActivity.this.w(ComicDetailActivity.this.f20981break.getList().get(i), i);
        }

        @Override // io.reactivex.Observer
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicShelfBean comicShelfBean) {
            ComicDetailActivity.this.f20999this = comicShelfBean;
            if (ComicDetailActivity.this.f20999this != null) {
                ComicDetailActivity comicDetailActivity = ComicDetailActivity.this;
                comicDetailActivity.tvRange.setImageDrawable(comicDetailActivity.getResources().getDrawable(R.drawable.arg_res_0x7f0800e6));
                if (ComicDetailActivity.this.f20981break == null) {
                    ComicDetailActivity comicDetailActivity2 = ComicDetailActivity.this;
                    comicDetailActivity2.f20981break = new ChapterGridAdapter(comicDetailActivity2);
                    ComicDetailActivity.this.f20981break.m25531goto(ComicDetailActivity.this.f21002while);
                    ComicDetailActivity comicDetailActivity3 = ComicDetailActivity.this;
                    comicDetailActivity3.f21000throw = comicDetailActivity3.f20999this.getComicInfoBean();
                    if (ComicDetailActivity.this.f21000throw != null) {
                        ComicDetailActivity comicDetailActivity4 = ComicDetailActivity.this;
                        comicDetailActivity4.tvCount.setText(String.format("（共%s个章节）｜（第%s章节）", Integer.valueOf(comicDetailActivity4.f21000throw.getChapterList().size()), Integer.valueOf(ComicDetailActivity.this.f20999this.getDurChapter() + 1)));
                        ComicDetailActivity.this.f20981break.m25532this(ComicDetailActivity.this.f20999this.getChapter(ComicDetailActivity.this.f20999this.getDurChapter()));
                    }
                    ComicDetailActivity.this.U();
                    ComicDetailActivity.this.f20981break.setOnItemClickListener(new OnItemClickListener() { // from class: com.wsw.cospa.activity.import
                        @Override // com.wsw.cospa.listener.OnItemClickListener
                        public final void onItemClick(int i) {
                            this.f21491do.m24911if(i);
                        }
                    });
                }
                ComicDetailActivity.this.f20981break.refresh(ComicDetailActivity.this.f20999this.getChapterList());
                ComicDetailActivity.this.f20981break.m25532this(ComicDetailActivity.this.f20999this.getChapter(ComicDetailActivity.this.f20999this.getDurChapter()));
                if (ComicDetailActivity.this.f20994public == null) {
                    ComicDetailActivity comicDetailActivity5 = ComicDetailActivity.this;
                    comicDetailActivity5.f20994public = new GridLayoutManager((Context) comicDetailActivity5, 4, 1, false);
                }
                ComicDetailActivity.this.f20981break.m25531goto(ComicDetailActivity.this.f21002while);
                ComicDetailActivity.this.f20994public.setSpanCount(4);
                ComicDetailActivity comicDetailActivity6 = ComicDetailActivity.this;
                comicDetailActivity6.mRecyclerView.setLayoutManager(comicDetailActivity6.f20994public);
                ComicDetailActivity comicDetailActivity7 = ComicDetailActivity.this;
                comicDetailActivity7.mRecyclerView.setAdapter(comicDetailActivity7.f20981break);
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicDetailActivity$new, reason: invalid class name */
    public class Cnew extends bz1<ComicShelfBean> {
        public Cnew() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicShelfBean comicShelfBean) {
            List<ChapterListBean> chapterList = comicShelfBean.getChapterList();
            if (chapterList == null || chapterList.size() <= 0) {
                v72.m8769if("当前漫画无法获取章节，请选择其他源！");
            } else {
                ComicDetailActivity.this.z(comicShelfBean);
            }
            ComicDetailActivity.this.C();
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            ComicDetailActivity.this.P(str);
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            ComicDetailActivity.this.f21908do.add(disposable);
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicDetailActivity$this, reason: invalid class name */
    public class Cthis implements Runnable {
        public Cthis() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ComicDetailActivity.this.f20999this == null || ComicDetailActivity.this.f20999this.getComicInfoBean() == null) {
                return;
            }
            String noteUrl = ComicDetailActivity.this.f20999this.getComicInfoBean().getNoteUrl();
            if (TextUtils.isEmpty(noteUrl)) {
                return;
            }
            com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3143try().deleteByKey(noteUrl);
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicDetailActivity$try, reason: invalid class name */
    public class Ctry implements Action1<ComicSourceBean> {

        /* renamed from: com.wsw.cospa.activity.ComicDetailActivity$try$do, reason: invalid class name */
        public class Cdo implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ ComicSourceBean f21020do;

            public Cdo(ComicSourceBean comicSourceBean) {
                this.f21020do = comicSourceBean;
            }

            @Override // java.lang.Runnable
            public void run() {
                ComicSourceBean comicSourceBean = this.f21020do;
                if (comicSourceBean != null) {
                    ComicDetailActivity.this.f20990import = (comicSourceBean.getRuleChapterParentId() == null || this.f21020do.getRuleChapterParentId().isEmpty()) ? false : true;
                }
                ComicDetailActivity comicDetailActivity = ComicDetailActivity.this;
                comicDetailActivity.f21002while = v02.m8711if(comicDetailActivity).m8715for(wq.E0, 0);
                if (ComicDetailActivity.this.f21002while == 2 && !ComicDetailActivity.this.f20990import) {
                    ComicDetailActivity.this.f21002while = 0;
                }
                int i = ComicDetailActivity.this.f21002while;
                if (i == 0 || i == 1) {
                    if (ComicDetailActivity.this.f20981break == null) {
                        ComicDetailActivity comicDetailActivity2 = ComicDetailActivity.this;
                        comicDetailActivity2.f20981break = new ChapterGridAdapter(comicDetailActivity2);
                    }
                    ComicDetailActivity.this.f20981break.m25532this(ComicDetailActivity.this.f20999this.getChapter(ComicDetailActivity.this.f20999this.getDurChapter()));
                    return;
                }
                if (i != 2) {
                    return;
                }
                if (ComicDetailActivity.this.f20982catch == null) {
                    ListTree listTree = new ListTree();
                    ComicDetailActivity comicDetailActivity3 = ComicDetailActivity.this;
                    comicDetailActivity3.f20982catch = new ChapterListTreeAdapter(comicDetailActivity3, listTree);
                }
                ComicDetailActivity.this.f20982catch.m25552break(ComicDetailActivity.this.f20999this.getChapter(ComicDetailActivity.this.f20999this.getDurChapter()));
            }
        }

        public Ctry() {
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(ComicSourceBean comicSourceBean) {
            com.wsw.cospa.utils.Ccase.m26722this().m26728throw().execute(new Cdo(comicSourceBean));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        if (this.f21002while == 2 && !this.f20990import) {
            this.f21002while = 0;
        }
        int i = this.f21002while;
        if (i == 0) {
            ChapterGridAdapter chapterGridAdapter = new ChapterGridAdapter(this);
            this.f20981break = chapterGridAdapter;
            chapterGridAdapter.m25531goto(this.f21002while);
            this.tvRange.setImageDrawable(getResources().getDrawable(R.drawable.arg_res_0x7f0800e6));
            GridLayoutManager gridLayoutManager = new GridLayoutManager((Context) this, 4, 1, false);
            this.f20994public = gridLayoutManager;
            this.mRecyclerView.setLayoutManager(gridLayoutManager);
            this.mRecyclerView.setAdapter(this.f20981break);
            ComicShelfBean comicShelfBean = this.f20999this;
            if (comicShelfBean != null) {
                this.f20981break.refresh(comicShelfBean.getChapterList());
                ComicInfoBean comicInfoBean = this.f20999this.getComicInfoBean();
                this.f21000throw = comicInfoBean;
                if (comicInfoBean != null) {
                    this.tvCount.setText(String.format("（共%s个章节）｜（第%s章节）", Integer.valueOf(comicInfoBean.getChapterList().size()), Integer.valueOf(this.f20999this.getDurChapter() + 1)));
                    ChapterGridAdapter chapterGridAdapter2 = this.f20981break;
                    ComicShelfBean comicShelfBean2 = this.f20999this;
                    chapterGridAdapter2.m25532this(comicShelfBean2.getChapter(comicShelfBean2.getDurChapter()));
                }
                U();
                this.f20981break.setOnItemClickListener(new OnItemClickListener() { // from class: android.support.v4.fn
                    @Override // com.wsw.cospa.listener.OnItemClickListener
                    public final void onItemClick(int i2) {
                        this.f1907do.I(i2);
                    }
                });
                return;
            }
            return;
        }
        if (i != 1) {
            if (i != 2) {
                return;
            }
            this.f20982catch = new ChapterListTreeAdapter(this, new ListTree());
            this.tvRange.setImageDrawable(getResources().getDrawable(R.drawable.arg_res_0x7f0800e8));
            this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this));
            this.mRecyclerView.setAdapter(this.f20982catch);
            ComicShelfBean comicShelfBean3 = this.f20999this;
            if (comicShelfBean3 != null) {
                this.f20982catch.refresh(comicShelfBean3.getChapterList());
                ComicInfoBean comicInfoBean2 = this.f20999this.getComicInfoBean();
                this.f21000throw = comicInfoBean2;
                if (comicInfoBean2 != null) {
                    this.tvCount.setText(String.format("（共%s个章节）｜（第%s章节）", Integer.valueOf(comicInfoBean2.getChapterList().size()), Integer.valueOf(this.f20999this.getDurChapter() + 1)));
                    ChapterListTreeAdapter chapterListTreeAdapter = this.f20982catch;
                    ComicShelfBean comicShelfBean4 = this.f20999this;
                    chapterListTreeAdapter.m25552break(comicShelfBean4.getChapter(comicShelfBean4.getDurChapter()));
                }
                U();
                ChapterListTreeAdapter.onClickCallBack onclickcallback = new ChapterListTreeAdapter.onClickCallBack() { // from class: android.support.v4.dn
                    @Override // com.wsw.cospa.adapter.ChapterListTreeAdapter.onClickCallBack
                    public final void tvChapterOnClick(ChapterListBean chapterListBean, View view, int i2) {
                        this.f1084do.K(chapterListBean, view, i2);
                    }
                };
                this.f20983class = onclickcallback;
                this.f20982catch.m25556this(onclickcallback);
                return;
            }
            return;
        }
        ChapterGridAdapter chapterGridAdapter3 = new ChapterGridAdapter(this);
        this.f20981break = chapterGridAdapter3;
        chapterGridAdapter3.m25531goto(this.f21002while);
        this.tvRange.setImageDrawable(getResources().getDrawable(R.drawable.arg_res_0x7f0800e7));
        GridLayoutManager gridLayoutManager2 = new GridLayoutManager((Context) this, 1, 1, false);
        this.f20994public = gridLayoutManager2;
        this.mRecyclerView.setLayoutManager(gridLayoutManager2);
        this.mRecyclerView.setAdapter(this.f20981break);
        ComicShelfBean comicShelfBean5 = this.f20999this;
        if (comicShelfBean5 != null) {
            this.f20981break.refresh(comicShelfBean5.getChapterList());
            ComicInfoBean comicInfoBean3 = this.f20999this.getComicInfoBean();
            this.f21000throw = comicInfoBean3;
            if (comicInfoBean3 != null) {
                this.tvCount.setText(String.format("（共%s个章节）｜（第%s章节）", Integer.valueOf(comicInfoBean3.getChapterList().size()), Integer.valueOf(this.f20999this.getDurChapter() + 1)));
                ChapterGridAdapter chapterGridAdapter4 = this.f20981break;
                ComicShelfBean comicShelfBean6 = this.f20999this;
                chapterGridAdapter4.m25532this(comicShelfBean6.getChapter(comicShelfBean6.getDurChapter()));
            }
            U();
            this.f20981break.setOnItemClickListener(new OnItemClickListener() { // from class: android.support.v4.hn
                @Override // com.wsw.cospa.listener.OnItemClickListener
                public final void onItemClick(int i2) {
                    this.f2442do.J(i2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ObservableSource E(ComicShelfBean comicShelfBean) throws Exception {
        return Cwhile.m26502catch().m26515goto(comicShelfBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F(QMUIDialog.Cfor cfor, List list, DialogInterface dialogInterface, int i) {
        int iA = cfor.a();
        if (iA == 0) {
            List<ChapterListBean> chapterList = this.f20999this.getChapterList();
            if (chapterList == null || chapterList.size() <= 0) {
                v72.m8769if("当前漫画无法获取章节，请换源！");
            } else {
                this.f20999this.setFinalDate(Long.valueOf(System.currentTimeMillis()));
                com.wsw.cospa.dao.Cdo.n(this.f20999this);
                this.f20984const = true;
                this.tvAddBookshelf.setText("移除书架");
                this.tvRead.setText("开始阅读");
                im1.m3512case().mo970if(this.f20999this);
                hm1.m3062case().mo970if(new Object[0]);
            }
        } else {
            u((ComicShelfGroupBean) list.get(iA - 1));
        }
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void G(ComicShelfBean comicShelfBean, ObservableEmitter observableEmitter) throws Exception {
        Iterator<ComicInfoBean> it = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3143try().queryBuilder().where(ComicInfoBeanDao.Properties.f21978do.eq(comicShelfBean.getComicInfoBean().getName()), new WhereCondition[0]).orderDesc(ComicInfoBeanDao.Properties.f21985try).list().iterator();
        while (it.hasNext()) {
            ComicShelfBean comicShelfBeanM26100finally = com.wsw.cospa.dao.Cdo.m26100finally(it.next().getNoteUrl());
            ComicShelfGroupBean groupBean = comicShelfBeanM26100finally.getGroupBean();
            if (groupBean != null) {
                comicShelfBean.setGroupId(groupBean.getId().longValue());
                comicShelfBean.setGroupBean(groupBean);
            }
            com.wsw.cospa.dao.Cdo.k(comicShelfBeanM26100finally);
            com.wsw.cospa.dao.Cdo.n(comicShelfBean);
            observableEmitter.onNext(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ObservableSource H(ComicShelfBean comicShelfBean) throws Exception {
        return Cwhile.m26502catch().m26515goto(comicShelfBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(int i) {
        w(this.f20981break.getList().get(i), i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J(int i) {
        w(this.f20981break.getList().get(i), i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K(ChapterListBean chapterListBean, View view, int i) {
        w(chapterListBean, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L(SearchComicBean searchComicBean) {
        this.f20991native.dismiss();
        finish();
        Intent intent = new Intent(this, (Class<?>) ComicDetailActivity.class);
        intent.putExtra(wq.Cdo.f7656new, false);
        intent.putExtra(wq.Cdo.f7650for, searchComicBean);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void M(ChapterListBean chapterListBean, View view, int i) {
        w(chapterListBean, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N(int i) {
        w(this.f20981break.getList().get(i), i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void O(ComicSourceBean comicSourceBean, View view) {
        try {
            AddComicSourceActivity.i(this, AddComicSourceActivity.f20858static, comicSourceBean);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void R(Context context, boolean z, SearchComicBean searchComicBean) {
        Intent intent = new Intent(context, (Class<?>) ComicDetailActivity.class);
        intent.putExtra(wq.Cdo.f7656new, z);
        intent.putExtra(wq.Cdo.f7650for, searchComicBean);
        context.startActivity(intent);
    }

    public static void S(Context context, boolean z, String str) {
        Intent intent = new Intent(context, (Class<?>) ComicDetailActivity.class);
        intent.putExtra(wq.Cdo.f7656new, z);
        intent.putExtra(wq.Cdo.f7669try, str);
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(ChapterListBean chapterListBean, int i) {
        ComicShelfBean comicShelfBean = this.f20999this;
        if (comicShelfBean != null) {
            comicShelfBean.setDurChapterPage(0);
            this.f20999this.setDurChapter(Integer.valueOf(chapterListBean.getDurChapterIndex()));
            this.f20999this.setDurChapterName(chapterListBean.getDurChapterName());
            im1.m3512case().mo970if(this.f20999this);
            String str = System.currentTimeMillis() + "_chapter";
            String str2 = System.currentTimeMillis() + "_shelf";
            y8.m9768for().m9771new(str2, this.f20999this);
            y8.m9768for().m9771new(str, chapterListBean);
            ChapterBrowseActivity.x1(this, str, str2, i);
            return;
        }
        vv0.m8965if(f20977abstract, "bookShelfBean 为空2");
        this.f20999this = (ComicShelfBean) y8.m9768for().m9770if(wq.Cdo.f7652if);
        String stringExtra = this.f21001throws.getStringExtra(wq.Cdo.f7669try);
        ComicShelfBean comicShelfBean2 = this.f20999this;
        if (comicShelfBean2 == null) {
            if (org.apache.commons.lang3.Cclass.E(stringExtra)) {
                ((ObservableSubscribeProxy) com.wsw.cospa.dao.Cdo.m26098extends(stringExtra).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Celse(chapterListBean, i));
                return;
            }
            return;
        }
        comicShelfBean2.setDurChapterPage(0);
        this.f20999this.setDurChapter(Integer.valueOf(chapterListBean.getDurChapterIndex()));
        this.f20999this.setDurChapterName(chapterListBean.getDurChapterName());
        im1.m3512case().mo970if(this.f20999this);
        String str3 = System.currentTimeMillis() + "_chapter";
        String str4 = System.currentTimeMillis() + "_shelf";
        y8.m9768for().m9771new(str4, this.f20999this);
        y8.m9768for().m9771new(str3, chapterListBean);
        ChapterBrowseActivity.x1(this, str3, str4, i);
    }

    public void A(SearchComicBean searchComicBean) {
        Q();
        if (searchComicBean == null) {
            return;
        }
        ((ObservableSubscribeProxy) Cwhile.m26502catch().m26514else(com.wsw.cospa.utils.Cwhile.m27170case(searchComicBean)).flatMap(new Function() { // from class: android.support.v4.bn
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return ComicDetailActivity.H((ComicShelfBean) obj);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cnew());
    }

    public int B() {
        int i = this.f21002while;
        if (i == 0 || i == 1) {
            return this.f20981break.getItemCount();
        }
        if (i != 2) {
            return 0;
        }
        return this.f20982catch.getItemCount();
    }

    public void C() {
        this.error_view.setVisibility(8);
        this.mIndicatorView.setVisibility(8);
        this.contentView.setVisibility(0);
    }

    public void P(String str) {
        this.error_view.setVisibility(0);
        this.mIndicatorView.setVisibility(8);
        this.contentView.setVisibility(8);
        this.tvErrorView.setText(str);
    }

    public void Q() {
        this.error_view.setVisibility(8);
        this.mIndicatorView.setVisibility(0);
        this.contentView.setVisibility(8);
    }

    public void T(ComicInfoBean comicInfoBean) {
        try {
            int iM3660new = (int) j10.m3660new(this, 220.0f);
            StringBuilder sb = new StringBuilder();
            sb.append("updateDetails path : ");
            sb.append(comicInfoBean.getCoverUrl());
            final ComicSourceBean comicSourceBeanM26358abstract = com.wsw.cospa.model.Cdo.m26358abstract(this.f20999this.getTag());
            if (this.f20999this != null) {
                Cfinally.m26895new(this, comicInfoBean.getCoverUrl(), this.ivCover, j10.m3649catch(), iM3660new, this.f20999this.getCoverHeader(), AnalyzeHeaders.getDefaultUserAgent(comicSourceBeanM26358abstract));
            } else {
                Cfinally.m26895new(this, comicInfoBean.getCoverUrl(), this.ivCover, j10.m3649catch(), iM3660new, this.f20989goto.getCoverHeader(), AnalyzeHeaders.getDefaultUserAgent(comicSourceBeanM26358abstract));
            }
            Csynchronized.m27097else(this, this.mToolbar, this.f20999this.getComicInfoBean().getName());
            this.mToolbar.setOnClickListener(new Cbreak());
            this.tvCount.setText("全部章节（共" + comicInfoBean.getChapterList().size() + "个章节）");
            this.tvDescription.setText(this.f20999this.getComicInfoBean().getIntroduce());
            this.tvAuthor.setText("作者：" + this.f20999this.getComicInfoBean().getAuthor());
            this.tvAuthor.setOnClickListener(new Ccatch());
            if (TextUtils.isEmpty(comicInfoBean.getOrigin())) {
                this.tvLabel.setVisibility(8);
            } else {
                this.tvLabel.setVisibility(0);
                this.tvLabel.setText(comicInfoBean.getOrigin());
            }
            if (TextUtils.isEmpty(comicInfoBean.getKind())) {
                this.tvState.setVisibility(8);
            } else {
                this.tvState.setText(comicInfoBean.getKind());
                this.tvState.setVisibility(0);
            }
            StateListDrawable stateListDrawableM2922case = h30.m2922case(5);
            StateListDrawable stateListDrawableM2922case2 = h30.m2922case(5);
            this.tvLabel.setBackground(stateListDrawableM2922case);
            this.tvState.setBackground(stateListDrawableM2922case2);
            this.tvLabel.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.cn
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f824do.O(comicSourceBeanM26358abstract, view);
                }
            });
            this.tvComicName.setText("换源");
            ComicShelfBean comicShelfBeanM26100finally = com.wsw.cospa.dao.Cdo.m26100finally(comicInfoBean.getNoteUrl());
            this.f20987final = comicShelfBeanM26100finally;
            if (comicShelfBeanM26100finally == null || !this.f20999this.equals(comicShelfBeanM26100finally)) {
                this.f20984const = false;
                this.tvAddBookshelf.setText("加入书架");
                this.tvRead.setText("开始阅读");
                return;
            }
            this.f20984const = true;
            this.tvAddBookshelf.setText("移除书架");
            if (this.f20987final.getDurChapter() <= 0 && this.f20987final.getDurChapterPage() <= 0) {
                this.tvRead.setText("开始阅读");
                return;
            }
            this.tvRead.setText("继续阅读");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void U() {
        TextView textView = this.tvAsc;
        if (textView == null) {
            return;
        }
        if (this.f20998switch == 100001) {
            textView.setText("正序⬇");
            this.tvAsc.setTextColor(getResources().getColor(R.color.arg_res_0x7f06008d));
        } else {
            textView.setText("倒序⬆");
            this.tvAsc.setTextColor(getResources().getColor(R.color.arg_res_0x7f06008d));
        }
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        if (this.f20997super) {
            Q();
            ((ObservableSubscribeProxy) com.wsw.cospa.dao.Cdo.m26098extends(this.f21001throws.getStringExtra(wq.Cdo.f7669try)).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Ccase());
            return;
        }
        Q();
        ComicShelfBean comicShelfBean = (ComicShelfBean) y8.m9768for().m9770if(wq.Cdo.f7652if);
        this.f20999this = comicShelfBean;
        if (comicShelfBean == null) {
            SearchComicBean searchComicBean = (SearchComicBean) this.f21001throws.getParcelableExtra(wq.Cdo.f7650for);
            this.f20989goto = searchComicBean;
            this.f20999this = com.wsw.cospa.utils.Cwhile.m27170case(searchComicBean);
        }
        ComicShelfBean comicShelfBean2 = this.f20999this;
        if (comicShelfBean2 != null) {
            ComicSourceBean comicSourceBeanM26358abstract = com.wsw.cospa.model.Cdo.m26358abstract(comicShelfBean2.getTag());
            if (comicSourceBeanM26358abstract != null) {
                this.f20990import = (comicSourceBeanM26358abstract.getRuleChapterParentId() == null || comicSourceBeanM26358abstract.getRuleChapterParentId().isEmpty()) ? false : true;
            }
            this.f21002while = v02.m8711if(this).m8715for(wq.E0, 0);
        }
        m24903private();
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c0029;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String stringExtra;
        String stringExtra2;
        int i = 0;
        switch (view.getId()) {
            case R.id.arg_res_0x7f09045d /* 2131297373 */:
                if (!this.f20984const) {
                    if (!com.wsw.cospa.dao.Cdo.m26099final(this.f20999this.getComicInfoBean().getName())) {
                        x();
                        break;
                    } else {
                        DialogTool.o(this, new DialogTool.Cnew("温馨提示", null, "是否覆盖书架中同名漫画？覆盖将不会记忆阅读进度"), new DialogTool.Ctry("覆盖", "取消"), new Cconst());
                        break;
                    }
                } else {
                    DialogTool.o(this, new DialogTool.Cnew("温馨提示", null, "是否将" + this.f20999this.getComicInfoBean().getName() + "移除书架？"), new DialogTool.Ctry("确认", "取消"), new Cclass());
                    break;
                }
            case R.id.arg_res_0x7f09045f /* 2131297375 */:
                if (this.f20998switch != 100001) {
                    this.f20998switch = wq.f7598abstract;
                    ChapterGridAdapter chapterGridAdapter = this.f20981break;
                    if (chapterGridAdapter != null) {
                        chapterGridAdapter.m25530else(wq.f7598abstract);
                    }
                    U();
                    break;
                } else {
                    this.f20998switch = wq.f7604continue;
                    ChapterGridAdapter chapterGridAdapter2 = this.f20981break;
                    if (chapterGridAdapter2 != null) {
                        chapterGridAdapter2.m25530else(wq.f7604continue);
                    }
                    U();
                    break;
                }
            case R.id.arg_res_0x7f09046f /* 2131297391 */:
                SearchComicBean searchComicBean = this.f20989goto;
                if (searchComicBean != null && !TextUtils.isEmpty(searchComicBean.getName())) {
                    if (!v02.m8711if(this).m8713do("systemMode", false) ? m25871catch() : BaseActivity.m25869class()) {
                        i = 1;
                    }
                    ChangeSourceDialog changeSourceDialog = new ChangeSourceDialog(this, i, this.f20989goto);
                    this.f20991native = changeSourceDialog;
                    changeSourceDialog.setOnChooseOriginListener(new OriginChooseDialog.ChooseOriginListener() { // from class: android.support.v4.in
                        @Override // com.wsw.cospa.widget.OriginChooseDialog.ChooseOriginListener
                        public final void onChooseOrigin(SearchComicBean searchComicBean2) {
                            this.f2813do.L(searchComicBean2);
                        }
                    });
                    this.f20991native.show();
                    break;
                }
                break;
            case R.id.arg_res_0x7f09047a /* 2131297402 */:
                ComicShelfBean comicShelfBean = this.f20999this;
                if (comicShelfBean != null && !TextUtils.isEmpty(comicShelfBean.getComicInfoBean().getIntroduce())) {
                    DialogTool.Cnew cnew = new DialogTool.Cnew(null, null, this.f20999this.getComicInfoBean().getIntroduce());
                    DialogTool.Ctry ctry = new DialogTool.Ctry(null, null);
                    ctry.m26646if(true);
                    DialogTool.o(this, cnew, ctry, new Cfinal());
                    break;
                }
                break;
            case R.id.arg_res_0x7f0904a3 /* 2131297443 */:
                int i2 = this.f21002while;
                if (i2 == 0) {
                    this.f21002while = 1;
                    v02.m8711if(this).m8714else(wq.E0, this.f21002while);
                    this.tvRange.setImageDrawable(getResources().getDrawable(R.drawable.arg_res_0x7f0800e7));
                    this.f20981break.m25531goto(this.f21002while);
                    this.f20994public.setSpanCount(1);
                    this.f20981break.notifyDataSetChanged();
                    break;
                } else if (i2 == 1) {
                    if (!this.f20990import) {
                        this.f21002while = 0;
                        v02.m8711if(this).m8714else(wq.E0, this.f21002while);
                        this.tvRange.setImageDrawable(getResources().getDrawable(R.drawable.arg_res_0x7f0800e6));
                        this.f20981break.m25531goto(this.f21002while);
                        this.f20994public.setSpanCount(4);
                        this.f20981break.notifyDataSetChanged();
                        break;
                    } else {
                        this.f21002while = 2;
                        v02.m8711if(this).m8714else(wq.E0, this.f21002while);
                        if (this.f20999this != null) {
                            this.tvRange.setImageDrawable(getResources().getDrawable(R.drawable.arg_res_0x7f0800e8));
                            this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this));
                            if (this.f20982catch == null) {
                                this.f20982catch = new ChapterListTreeAdapter(this, new ListTree());
                                ComicInfoBean comicInfoBean = this.f20999this.getComicInfoBean();
                                this.f21000throw = comicInfoBean;
                                if (comicInfoBean != null) {
                                    this.tvCount.setText(String.format("（共%s个章节）｜（第%s章节）", Integer.valueOf(comicInfoBean.getChapterList().size()), Integer.valueOf(this.f20999this.getDurChapter() + 1)));
                                    ChapterListTreeAdapter chapterListTreeAdapter = this.f20982catch;
                                    ComicShelfBean comicShelfBean2 = this.f20999this;
                                    chapterListTreeAdapter.m25552break(comicShelfBean2.getChapter(comicShelfBean2.getDurChapter()));
                                }
                                U();
                                ChapterListTreeAdapter.onClickCallBack onclickcallback = new ChapterListTreeAdapter.onClickCallBack() { // from class: android.support.v4.en
                                    @Override // com.wsw.cospa.adapter.ChapterListTreeAdapter.onClickCallBack
                                    public final void tvChapterOnClick(ChapterListBean chapterListBean, View view2, int i3) {
                                        this.f1542do.M(chapterListBean, view2, i3);
                                    }
                                };
                                this.f20983class = onclickcallback;
                                this.f20982catch.m25556this(onclickcallback);
                            }
                            this.f20982catch.refresh(this.f20999this.getChapterList());
                            ChapterListTreeAdapter chapterListTreeAdapter2 = this.f20982catch;
                            ComicShelfBean comicShelfBean3 = this.f20999this;
                            chapterListTreeAdapter2.m25552break(comicShelfBean3.getChapter(comicShelfBean3.getDurChapter()));
                            this.mRecyclerView.setAdapter(this.f20982catch);
                            break;
                        } else {
                            ComicShelfBean comicShelfBean4 = (ComicShelfBean) y8.m9768for().m9770if(wq.Cdo.f7652if);
                            this.f20999this = comicShelfBean4;
                            if (comicShelfBean4 == null && (stringExtra = this.f21001throws.getStringExtra(wq.Cdo.f7669try)) != null && !stringExtra.isEmpty()) {
                                ((ObservableSubscribeProxy) com.wsw.cospa.dao.Cdo.m26098extends(stringExtra).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cdo());
                                break;
                            }
                        }
                    }
                } else if (i2 == 2) {
                    this.f21002while = 0;
                    v02.m8711if(this).m8714else(wq.E0, this.f21002while);
                    if (this.f20999this != null) {
                        this.tvRange.setImageDrawable(getResources().getDrawable(R.drawable.arg_res_0x7f0800e6));
                        if (this.f20981break == null) {
                            ChapterGridAdapter chapterGridAdapter3 = new ChapterGridAdapter(this);
                            this.f20981break = chapterGridAdapter3;
                            chapterGridAdapter3.m25531goto(this.f21002while);
                            ComicInfoBean comicInfoBean2 = this.f20999this.getComicInfoBean();
                            this.f21000throw = comicInfoBean2;
                            if (comicInfoBean2 != null) {
                                this.tvCount.setText(String.format("（共%s个章节）｜（第%s章节）", Integer.valueOf(comicInfoBean2.getChapterList().size()), Integer.valueOf(this.f20999this.getDurChapter() + 1)));
                                ChapterGridAdapter chapterGridAdapter4 = this.f20981break;
                                ComicShelfBean comicShelfBean5 = this.f20999this;
                                chapterGridAdapter4.m25532this(comicShelfBean5.getChapter(comicShelfBean5.getDurChapter()));
                            }
                            U();
                            this.f20981break.setOnItemClickListener(new OnItemClickListener() { // from class: android.support.v4.gn
                                @Override // com.wsw.cospa.listener.OnItemClickListener
                                public final void onItemClick(int i3) {
                                    this.f2171do.N(i3);
                                }
                            });
                        }
                        this.f20981break.refresh(this.f20999this.getChapterList());
                        ChapterGridAdapter chapterGridAdapter5 = this.f20981break;
                        ComicShelfBean comicShelfBean6 = this.f20999this;
                        chapterGridAdapter5.m25532this(comicShelfBean6.getChapter(comicShelfBean6.getDurChapter()));
                        if (this.f20994public == null) {
                            this.f20994public = new GridLayoutManager((Context) this, 4, 1, false);
                        }
                        this.f20981break.m25531goto(this.f21002while);
                        this.f20994public.setSpanCount(4);
                        this.mRecyclerView.setLayoutManager(this.f20994public);
                        this.mRecyclerView.setAdapter(this.f20981break);
                        break;
                    } else {
                        ComicShelfBean comicShelfBean7 = (ComicShelfBean) y8.m9768for().m9770if(wq.Cdo.f7652if);
                        this.f20999this = comicShelfBean7;
                        if (comicShelfBean7 == null && (stringExtra2 = this.f21001throws.getStringExtra(wq.Cdo.f7669try)) != null && !stringExtra2.isEmpty()) {
                            ((ObservableSubscribeProxy) com.wsw.cospa.dao.Cdo.m26098extends(this.f21000throw.getNoteUrl()).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cif());
                            break;
                        }
                    }
                }
                break;
            case R.id.arg_res_0x7f0904a4 /* 2131297444 */:
                if (!this.tvRead.getText().equals("开始阅读")) {
                    if (this.f20987final.getChapterList() != null && this.f20987final.getChapterList().size() > 0) {
                        String str = System.currentTimeMillis() + "_chapter";
                        String str2 = System.currentTimeMillis() + "_shelf";
                        y8.m9768for().m9771new(str2, this.f20987final);
                        StringBuilder sb = new StringBuilder();
                        sb.append("继续阅读 : ");
                        ComicShelfBean comicShelfBean8 = this.f20987final;
                        sb.append(comicShelfBean8.getChapterList(comicShelfBean8.getDurChapter()));
                        ComicShelfBean comicShelfBean9 = this.f20987final;
                        y8.m9768for().m9771new(str, comicShelfBean9.getChapterList(comicShelfBean9.getDurChapter()));
                        ChapterBrowseActivity.w1(this, str, str2);
                        break;
                    } else {
                        v72.m8769if("当前漫画无法获取章节，请换源！");
                        break;
                    }
                } else {
                    List<ChapterListBean> chapterList = this.f20999this.getChapterList();
                    if (chapterList != null && chapterList.size() > 0) {
                        String str3 = System.currentTimeMillis() + "_chapter";
                        String str4 = System.currentTimeMillis() + "_shelf";
                        y8.m9768for().m9771new(str4, this.f20999this);
                        y8.m9768for().m9771new(str3, chapterList.get(0));
                        ChapterBrowseActivity.x1(this, str3, str4, 0);
                        break;
                    } else {
                        v72.m8769if("当前漫画无法获取章节，请换源！");
                        break;
                    }
                }
                break;
            case R.id.arg_res_0x7f0904a7 /* 2131297447 */:
                mo24703case();
                break;
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.arg_res_0x7f0d0004, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.wsw.cospa.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        ChangeSourceDialog changeSourceDialog = this.f20991native;
        if (changeSourceDialog != null && changeSourceDialog.isShowing()) {
            this.f20991native.onStop();
            this.f20991native.dismiss();
        }
        List<ChapterListBean> list = this.f20995return;
        if (list != null) {
            list.clear();
            this.f20995return = null;
        }
        if (this.f21000throw != null) {
            this.f21000throw = null;
        }
        if (this.f20999this != null) {
            this.f20999this = null;
        }
        if (this.f20987final != null) {
            this.f20987final = null;
        }
        if (this.f20989goto != null) {
            this.f20989goto = null;
        }
        y8.m9768for().m9769do(wq.Cdo.f7645do);
        im1.m3512case().m9006new(this);
        y8.m9768for().m9769do(wq.Cdo.f7652if);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        this.f21001throws = intent;
        this.f20989goto = (SearchComicBean) intent.getParcelableExtra(wq.Cdo.f7650for);
        this.f20997super = intent.getBooleanExtra(wq.Cdo.f7656new, false);
        mo24703case();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        ComicInfoBean comicInfoBean;
        if (menuItem.getItemId() == 16908332) {
            finish();
        } else {
            if (menuItem.getItemId() == R.id.arg_res_0x7f09014a) {
                y8.m9768for().m9771new(wq.Cdo.f7652if, this.f20999this);
                ChapterActivity.m24819interface(this);
                return true;
            }
            if (menuItem.getItemId() == R.id.arg_res_0x7f0900fe) {
                DatabaseHelper.m26016switch().m26042this(this.f20999this);
            } else if (menuItem.getItemId() == R.id.arg_res_0x7f090079) {
                this.f20985default = this.f20999this.getTag();
                this.f20986extends = this.f20999this.getDurChapterName();
                this.f20988finally = this.f20999this.getLastChapterName();
                this.f20992package = Integer.valueOf(this.f20999this.getDurChapter());
                this.f20993private = Integer.valueOf(this.f20999this.getDurChapterPage());
                com.wsw.cospa.dao.Cnew.m26132case().m26138try().runInTx(new Cthis());
                mo24703case();
            } else {
                if (menuItem.getItemId() == R.id.arg_res_0x7f09038a) {
                    ComicShelfBean comicShelfBean = this.f20999this;
                    if (comicShelfBean != null && (comicInfoBean = comicShelfBean.getComicInfoBean()) != null && !TextUtils.isEmpty(comicInfoBean.getAuthor())) {
                        SearchComicActivity.g(this, comicInfoBean.getAuthor());
                    }
                    return true;
                }
                if (menuItem.getItemId() == R.id.arg_res_0x7f09039d) {
                    ComicShelfBean comicShelfBean2 = this.f20999this;
                    if (comicShelfBean2 != null) {
                        ComicInfoBean comicInfoBean2 = comicShelfBean2.getComicInfoBean();
                        Intent intent = new Intent("android.intent.action.SEND");
                        intent.setType(NanoHTTPD.MIME_PLAINTEXT);
                        intent.putExtra("android.intent.extra.SUBJECT", comicInfoBean2.getName());
                        intent.putExtra("android.intent.extra.TEXT", comicInfoBean2.getName() + "\n" + comicInfoBean2.getIntroduce() + "\n" + comicInfoBean2.getNoteUrl());
                        intent.setFlags(268435456);
                        startActivity(Intent.createChooser(intent, "分享"));
                    }
                } else if (menuItem.getItemId() == R.id.arg_res_0x7f090446) {
                    ComicInfoBean comicInfoBean3 = this.f20999this.getComicInfoBean();
                    WebViewActivity.a(this, comicInfoBean3 != null ? comicInfoBean3.getName() : "", comicInfoBean3.getNoteUrl(), true);
                } else if (menuItem.getItemId() == R.id.arg_res_0x7f090312) {
                    try {
                        AddComicSourceActivity.i(this, AddComicSourceActivity.f20858static, com.wsw.cospa.utils.Cwhile.m27177goto(this.f20999this.getTag()));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.wsw.cospa.event.RefreshBookDetailMessageObserver
    public void onRefreshBookDetailMessage(ComicShelfBean comicShelfBean) {
        this.f20999this = comicShelfBean;
        if (comicShelfBean != null) {
            ComicShelfBean comicShelfBeanM26100finally = com.wsw.cospa.dao.Cdo.m26100finally(this.f21000throw.getNoteUrl());
            this.f20987final = comicShelfBeanM26100finally;
            if (comicShelfBeanM26100finally == null || !this.f20999this.equals(comicShelfBeanM26100finally)) {
                this.f20984const = false;
                this.tvAddBookshelf.setText("加入书架");
                this.tvRead.setText("开始阅读");
            } else {
                this.f20984const = true;
                this.tvAddBookshelf.setText("移除书架");
                if (this.f20987final.getDurChapter() > 0 || this.f20987final.getDurChapterPage() > 0) {
                    this.tvRead.setText("继续阅读");
                } else {
                    this.tvRead.setText("开始阅读");
                }
            }
            com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().queryBuilder().where(ComicSourceBeanDao.Properties.f22037new.eq(this.f20999this.getTag()), new WhereCondition[0]).rx().unique().e4(ds1.m1523try()).b4(new Ctry());
        }
    }

    /* renamed from: private, reason: not valid java name */
    public void m24903private() {
        ((ObservableSubscribeProxy) Cwhile.m26502catch().m26514else(this.f20999this).flatMap(new Function() { // from class: android.support.v4.kn
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return ComicDetailActivity.E((ComicShelfBean) obj);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cgoto());
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() {
        p12.m5832case(this);
        Csynchronized.m27100new(this, this.mToolbar, "漫画详情");
        im1.m3512case().m9005for(this);
        this.tvAddBookshelf.setOnClickListener(this);
        this.tvRead.setOnClickListener(this);
        this.tvComicName.setOnClickListener(this);
        this.tvRetry.setOnClickListener(this);
        this.tvDescription.setOnClickListener(this);
        this.tvRange.setOnClickListener(this);
        this.tvAsc.setOnClickListener(this);
        U();
        Intent intent = getIntent();
        this.f21001throws = intent;
        this.f20997super = intent.getBooleanExtra(wq.Cdo.f7656new, false);
    }

    public void u(ComicShelfGroupBean comicShelfGroupBean) {
        List<ChapterListBean> chapterList = this.f20999this.getChapterList();
        if (chapterList == null || chapterList.size() <= 0) {
            v72.m8769if("当前漫画无法获取章节，请换源！");
            return;
        }
        this.f20999this.setGroupId(comicShelfGroupBean.getId().longValue());
        this.f20999this.setGroupBean(comicShelfGroupBean);
        this.f20999this.setFinalDate(Long.valueOf(System.currentTimeMillis()));
        com.wsw.cospa.dao.Cdo.n(this.f20999this);
        this.f20984const = true;
        this.tvAddBookshelf.setText("移除书架");
        this.tvRead.setText("开始阅读");
        im1.m3512case().mo970if(this.f20999this);
        hm1.m3062case().mo970if(new Object[0]);
    }

    public void v() {
        if (this.f20989goto != null || this.f21000throw == null) {
            return;
        }
        SearchComicBean searchComicBean = new SearchComicBean();
        this.f20989goto = searchComicBean;
        searchComicBean.setAuthor(this.f21000throw.getAuthor());
        this.f20989goto.setCoverUrl(this.f21000throw.getCoverUrl());
        this.f20989goto.setIntroduce(this.f21000throw.getIntroduce());
        this.f20989goto.setName(this.f21000throw.getName());
        this.f20989goto.setKind(this.f21000throw.getKind());
        this.f20989goto.setNoteUrl(this.f21000throw.getNoteUrl());
        this.f20989goto.setOrigin(this.f21000throw.getOrigin());
        this.f20989goto.setTag(this.f21000throw.getTag());
    }

    public void x() {
        final List<ComicShelfGroupBean> listH = com.wsw.cospa.dao.Cdo.h();
        ArrayList arrayList = new ArrayList();
        long groupId = this.f20999this.getGroupId();
        arrayList.add(wq.w0);
        if (listH != null && listH.size() > 0) {
            for (int i = 0; i < listH.size(); i++) {
                arrayList.add(listH.get(i).getGroupName());
            }
            String[] strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
            final QMUIDialog.Cfor cfor = new QMUIDialog.Cfor(this);
            cfor.m24055volatile("选择书架");
            cfor.m24007synchronized(strArr, new DialogInterface.OnClickListener() { // from class: android.support.v4.an
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    this.f215do.F(cfor, listH, dialogInterface, i2);
                }
            });
            if (groupId > 0) {
                cfor.b((int) groupId);
            }
            cfor.m24043interface();
            return;
        }
        List<ChapterListBean> chapterList = this.f20999this.getChapterList();
        if (chapterList == null || chapterList.size() <= 0) {
            v72.m8769if("当前漫画无法获取章节，请换源！");
            return;
        }
        this.f20999this.setFinalDate(Long.valueOf(System.currentTimeMillis()));
        com.wsw.cospa.dao.Cdo.n(this.f20999this);
        this.f20984const = true;
        this.tvAddBookshelf.setText("移除书架");
        this.tvRead.setText("开始阅读");
        im1.m3512case().mo970if(this.f20999this);
        hm1.m3062case().mo970if(new Object[0]);
    }

    public boolean y(SearchComicBean searchComicBean) {
        if (searchComicBean != null) {
            try {
                return com.wsw.cospa.dao.Cdo.m26117super(searchComicBean.getName());
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public void z(final ComicShelfBean comicShelfBean) {
        if (comicShelfBean != null) {
            ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.jn
                @Override // io.reactivex.ObservableOnSubscribe
                public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                    ComicDetailActivity.G(comicShelfBean, observableEmitter);
                }
            }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cfor(comicShelfBean));
        }
    }
}
