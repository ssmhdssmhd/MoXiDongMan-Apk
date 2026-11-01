package com.wsw.cospa.fragment;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.b0;
import android.support.v4.bz1;
import android.support.v4.cq;
import android.support.v4.g31;
import android.support.v4.hm1;
import android.support.v4.j10;
import android.support.v4.m7;
import android.support.v4.mh0;
import android.support.v4.mp1;
import android.support.v4.v02;
import android.support.v4.v72;
import android.support.v4.vv0;
import android.support.v4.wq;
import android.support.v4.y8;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import butterknife.BindView;
import com.google.gson.Gson;
import com.jcodecraeer.xrecyclerview.XRecyclerView;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.ChapterBrowseActivity;
import com.wsw.cospa.activity.ComicDetailActivity;
import com.wsw.cospa.activity.WebViewActivity;
import com.wsw.cospa.adapter.ComicShelfGridAdapter;
import com.wsw.cospa.adapter.ComicShelfListAdapter;
import com.wsw.cospa.base.LazyFragment;
import com.wsw.cospa.bean.BannerInfo;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicShelfGroupBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.event.RefreshAllBookMessageObserver;
import com.wsw.cospa.fragment.BookShelfFragment;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.listener.OnLongItemClickListener;
import com.wsw.cospa.model.Cwhile;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders;
import com.wsw.cospa.utils.analyzeUrl.impl.IHttpGetApi;
import com.wsw.cospa.widget.view.GridSpacingItemDecoration;
import com.wsw.cospa.widget.view.OptionsMenuDialog;
import com.youth.banner.Banner;
import com.youth.banner.Transformer;
import com.youth.banner.listener.OnBannerListener;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.List;
import java.util.Objects;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import retrofit2.Response;

/* loaded from: classes2.dex */
public class BookShelfFragment extends LazyFragment implements RefreshAllBookMessageObserver {

    /* renamed from: abstract, reason: not valid java name */
    private boolean f22167abstract;

    /* renamed from: break, reason: not valid java name */
    private View f22168break;

    /* renamed from: catch, reason: not valid java name */
    private Banner f22169catch;

    /* renamed from: class, reason: not valid java name */
    private ComicShelfGridAdapter f22170class;

    /* renamed from: const, reason: not valid java name */
    private ComicShelfListAdapter f22171const;

    /* renamed from: default, reason: not valid java name */
    private ComicShelfGroupBean f22172default;

    @BindView(R.id.arg_res_0x7f09016a)
    public RelativeLayout error_view;

    /* renamed from: extends, reason: not valid java name */
    private long f22173extends;

    /* renamed from: final, reason: not valid java name */
    private LinearLayoutManager f22174final;

    /* renamed from: finally, reason: not valid java name */
    private boolean f22175finally;

    /* renamed from: goto, reason: not valid java name */
    private LayoutInflater f22176goto;

    /* renamed from: import, reason: not valid java name */
    private int f22177import;

    @BindView(R.id.arg_res_0x7f0902a4)
    public XRecyclerView mRecyclerView;

    /* renamed from: package, reason: not valid java name */
    private int f22179package;

    /* renamed from: private, reason: not valid java name */
    private List<BannerInfo.BannerBean> f22180private;

    @BindView(R.id.arg_res_0x7f09035c)
    public SmartRefreshLayout refreshLayout;

    /* renamed from: static, reason: not valid java name */
    private int f22183static;

    /* renamed from: super, reason: not valid java name */
    private GridLayoutManager f22184super;

    /* renamed from: switch, reason: not valid java name */
    private ExecutorService f22185switch;

    /* renamed from: this, reason: not valid java name */
    private View f22186this;

    /* renamed from: throw, reason: not valid java name */
    private GridSpacingItemDecoration f22187throw;

    /* renamed from: throws, reason: not valid java name */
    private io.reactivex.Ctry f22188throws;

    @BindView(R.id.arg_res_0x7f09016b)
    public TextView tvErrorView;

    @BindView(R.id.arg_res_0x7f0904a7)
    public TextView tvRetry;

    /* renamed from: while, reason: not valid java name */
    private List<ComicShelfBean> f22189while;

    /* renamed from: native, reason: not valid java name */
    private boolean f22178native = false;

    /* renamed from: public, reason: not valid java name */
    private boolean f22181public = false;

    /* renamed from: return, reason: not valid java name */
    public cq f22182return = new cq();

    /* renamed from: com.wsw.cospa.fragment.BookShelfFragment$case, reason: invalid class name */
    public class Ccase extends bz1<List<ComicShelfBean>> {

        /* renamed from: do, reason: not valid java name */
        private boolean f22190do;

        public Ccase(boolean z) {
            this.f22190do = z;
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            BookShelfFragment.this.f22182return.add(disposable);
        }

        @Override // io.reactivex.Observer
        public void onNext(List<ComicShelfBean> list) {
            BookShelfFragment.this.refreshLayout.finishRefresh();
            BookShelfFragment.this.f22189while = list;
            List<ComicSourceBean> listM26022class = DatabaseHelper.m26016switch().m26022class();
            if (BookShelfFragment.this.f22172default != null) {
                BookShelfFragment bookShelfFragment = BookShelfFragment.this;
                bookShelfFragment.f22177import = bookShelfFragment.f22172default.getViewId();
            } else {
                BookShelfFragment bookShelfFragment2 = BookShelfFragment.this;
                bookShelfFragment2.f22177import = v02.m8711if(bookShelfFragment2.getActivity()).m8715for(CartoonApplication.f20823this, 1);
            }
            if (BookShelfFragment.this.f22177import == 1) {
                if (BookShelfFragment.this.f22171const != null) {
                    BookShelfFragment.this.f22171const.refresh(list);
                }
            } else if (BookShelfFragment.this.f22177import == 2 && BookShelfFragment.this.f22170class != null) {
                BookShelfFragment.this.f22170class.refresh(list);
            }
            if (list != null && list.size() > 0) {
                BookShelfFragment.this.m26178implements();
                if (this.f22190do && g31.m2570try(BookShelfFragment.this.f21936case)) {
                    if (BookShelfFragment.this.f22177import == 1) {
                        BookShelfFragment.this.f22178native = true;
                    } else {
                        BookShelfFragment.this.f22181public = true;
                    }
                    BookShelfFragment.this.v(list);
                    return;
                }
                return;
            }
            if (listM26022class == null || listM26022class.size() <= 0) {
                if (BookShelfFragment.this.f22180private == null || BookShelfFragment.this.f22180private.size() <= 0) {
                    BookShelfFragment.this.u("暂无图源，请关注异次元微信公众号：搜索【异次元APP软件】或者扫描关于界面中的二维码获取图源");
                    return;
                }
                return;
            }
            if (BookShelfFragment.this.f22180private == null || BookShelfFragment.this.f22180private.size() <= 0) {
                BookShelfFragment.this.u("您还未添加漫画到书架！");
            }
        }
    }

    /* renamed from: com.wsw.cospa.fragment.BookShelfFragment$do, reason: invalid class name */
    public class Cdo extends bz1<ComicShelfBean> {
        public Cdo() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicShelfBean comicShelfBean) {
            if (comicShelfBean != null) {
                if (comicShelfBean.getChapterList(comicShelfBean.getDurChapter()) == null) {
                    v72.m8769if("当前漫画无法获取章节，请下拉刷新重试！");
                    return;
                }
                String str = System.currentTimeMillis() + "_chapter";
                String str2 = System.currentTimeMillis() + "_shelf";
                y8.m9768for().m9771new(str2, comicShelfBean);
                y8.m9768for().m9771new(str, comicShelfBean.getChapterList(comicShelfBean.getDurChapter()));
                ChapterBrowseActivity.w1(BookShelfFragment.this.getActivity(), str, str2);
            }
        }
    }

    /* renamed from: com.wsw.cospa.fragment.BookShelfFragment$for, reason: invalid class name */
    public class Cfor implements Observer<ComicShelfBean> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ComicShelfBean f22193do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f22195if;

        public Cfor(ComicShelfBean comicShelfBean, int i) {
            this.f22193do = comicShelfBean;
            this.f22195if = i;
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicShelfBean comicShelfBean) {
            StringBuilder sb = new StringBuilder();
            sb.append(" ComicShelfBean name : ");
            sb.append(comicShelfBean.getComicInfoBean().getName());
            this.f22193do.setLoading(false);
            if (this.f22195if < comicShelfBean.getChapterListSize().intValue()) {
                this.f22193do.setHasUpdate(Boolean.TRUE);
            }
            BookShelfFragment.this.x(this.f22193do);
            BookShelfFragment.this.p();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f22193do.setLoading(false);
            this.f22193do.setHasUpdate(Boolean.FALSE);
            BookShelfFragment.this.x(this.f22193do);
            BookShelfFragment.this.p();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            BookShelfFragment.this.f22182return.add(disposable);
        }
    }

    /* renamed from: com.wsw.cospa.fragment.BookShelfFragment$if, reason: invalid class name */
    public class Cif extends bz1<ComicShelfBean> {
        public Cif() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicShelfBean comicShelfBean) {
            if (comicShelfBean != null) {
                if (comicShelfBean.getChapterList(comicShelfBean.getDurChapter()) == null) {
                    v72.m8769if("当前漫画无法获取章节，请下拉刷新重试！");
                    return;
                }
                String str = System.currentTimeMillis() + "_chapter";
                String str2 = System.currentTimeMillis() + "_shelf";
                y8.m9768for().m9771new(str2, comicShelfBean);
                y8.m9768for().m9771new(str, comicShelfBean.getChapterList(comicShelfBean.getDurChapter()));
                ChapterBrowseActivity.w1(BookShelfFragment.this.getActivity(), str, str2);
            }
        }
    }

    /* renamed from: com.wsw.cospa.fragment.BookShelfFragment$new, reason: invalid class name */
    public class Cnew extends TimerTask {
        public Cnew() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            cancel();
        }
    }

    /* renamed from: com.wsw.cospa.fragment.BookShelfFragment$try, reason: invalid class name */
    public class Ctry implements Observer<ComicShelfBean> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ComicShelfBean f22198do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f22200if;

        public Ctry(ComicShelfBean comicShelfBean, int i) {
            this.f22198do = comicShelfBean;
            this.f22200if = i;
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicShelfBean comicShelfBean) {
            vv0.m8965if("refreshBookshelf", " ComicShelfBean name : " + comicShelfBean.getComicInfoBean().getName());
            this.f22198do.setLoading(false);
            if (this.f22200if < comicShelfBean.getChapterListSize().intValue()) {
                this.f22198do.setHasUpdate(Boolean.TRUE);
            }
            BookShelfFragment.this.x(this.f22198do);
            BookShelfFragment.this.p();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f22198do.setLoading(false);
            this.f22198do.setHasUpdate(Boolean.FALSE);
            BookShelfFragment.this.x(this.f22198do);
            BookShelfFragment.this.p();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            BookShelfFragment.this.f22182return.add(disposable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        m26178implements();
        m26165protected(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(RefreshLayout refreshLayout) {
        this.f22167abstract = true;
        m26165protected(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(String str, ObservableEmitter observableEmitter) throws Exception {
        try {
            observableEmitter.onNext((BannerInfo) new Gson().fromJson(str, BannerInfo.class));
            observableEmitter.onComplete();
        } catch (Exception e) {
            observableEmitter.onError(e);
            observableEmitter.onComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ObservableSource d(ComicShelfBean comicShelfBean, ComicShelfBean comicShelfBean2) throws Exception {
        return r(comicShelfBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ObservableSource e(ComicShelfBean comicShelfBean, ComicShelfBean comicShelfBean2) throws Exception {
        return r(comicShelfBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ObservableSource f(Response response) throws Exception {
        return o((String) response.body());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(BannerInfo bannerInfo) throws Exception {
        if (bannerInfo == null || !bannerInfo.showBanner) {
            m26181transient();
            return;
        }
        List<BannerInfo.BannerBean> banner = bannerInfo.getBanner();
        if (banner == null || banner.size() <= 0) {
            m26181transient();
            return;
        }
        this.f22168break.setVisibility(0);
        this.f22180private = banner;
        this.f22169catch.startAutoPlay();
        this.f22169catch.setImages(banner);
        this.f22169catch.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(ComicShelfBean comicShelfBean, ObservableEmitter observableEmitter) throws Exception {
        com.wsw.cospa.dao.Cdo.n(comicShelfBean);
        observableEmitter.onNext(comicShelfBean);
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(int i) {
        if (!v02.m8711if(getActivity()).m8713do(wq.e, false)) {
            ((ObservableSubscribeProxy) com.wsw.cospa.dao.Cdo.m26098extends(this.f22170class.m25574case(i).getNoteUrl()).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cdo());
        } else {
            ComicDetailActivity.S(getActivity(), true, this.f22170class.m25574case(i).getNoteUrl());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(View view, int i) {
        new OptionsMenuDialog(this, this.f22170class.m25574case(i)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(int i) {
        if (!v02.m8711if(getActivity()).m8713do(wq.e, false)) {
            ((ObservableSubscribeProxy) com.wsw.cospa.dao.Cdo.m26098extends(this.f22171const.m25588case(i).getNoteUrl()).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cif());
        } else {
            ComicDetailActivity.S(getActivity(), true, this.f22171const.m25588case(i).getNoteUrl());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(View view, int i) {
        new OptionsMenuDialog(this, this.f22171const.m25588case(i)).show();
    }

    public static BookShelfFragment m() {
        return new BookShelfFragment();
    }

    public static BookShelfFragment n(long j) {
        BookShelfFragment bookShelfFragment = new BookShelfFragment();
        Bundle bundle = new Bundle();
        bundle.putLong("groupId", j);
        bookShelfFragment.setArguments(bundle);
        return bookShelfFragment;
    }

    private ObservableSource<BannerInfo> o(final String str) {
        return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.hb
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                BookShelfFragment.c(str, observableEmitter);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void p() {
        int i = this.f22183static + 1;
        this.f22183static = i;
        if (i < this.f22189while.size()) {
            final ComicShelfBean comicShelfBean = this.f22189while.get(this.f22183static);
            if (!comicShelfBean.getAllowUpdate().booleanValue() || comicShelfBean.getGroup() == 3) {
                p();
            } else {
                int iIntValue = comicShelfBean.getChapterListSize().intValue();
                comicShelfBean.setLoading(true);
                x(comicShelfBean);
                ComicSourceBean comicSourceBeanM26088abstract = com.wsw.cospa.dao.Cdo.m26088abstract(comicShelfBean.getTag());
                if (comicSourceBeanM26088abstract.getSingleThreadType()) {
                    if (comicSourceBeanM26088abstract.getDelayTime() > 0) {
                        new Timer().schedule(new Cnew(), comicSourceBeanM26088abstract.getDelayTime());
                    }
                    ((ObservableSubscribeProxy) Cwhile.m26502catch().m26515goto(comicShelfBean).flatMap(new Function() { // from class: android.support.v4.ya
                        @Override // io.reactivex.functions.Function
                        public final Object apply(Object obj) {
                            return this.f8171do.e(comicShelfBean, (ComicShelfBean) obj);
                        }
                    }).subscribeOn(io.reactivex.schedulers.Cdo.m29768else()).observeOn(io.reactivex.android.schedulers.Cdo.m29358for()).as(mp1.m4975do(this))).subscribe(new Ctry(comicShelfBean, iIntValue));
                } else {
                    ((ObservableSubscribeProxy) Cwhile.m26502catch().m26515goto(comicShelfBean).flatMap(new Function() { // from class: android.support.v4.za
                        @Override // io.reactivex.functions.Function
                        public final Object apply(Object obj) {
                            return this.f8494do.d(comicShelfBean, (ComicShelfBean) obj);
                        }
                    }).subscribeOn(this.f22188throws).observeOn(io.reactivex.android.schedulers.Cdo.m29358for()).as(mp1.m4975do(this))).subscribe(new Cfor(comicShelfBean, iIntValue));
                }
            }
        }
    }

    /* renamed from: protected, reason: not valid java name */
    private void m26165protected(boolean z) {
        ((ObservableSubscribeProxy) com.wsw.cospa.dao.Cdo.m26095default(this.f22173extends, this.f22173extends > 0 ? this.f22172default.getSortId() : 0).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Ccase(z));
    }

    private io.reactivex.Cnew<ComicShelfBean> r(final ComicShelfBean comicShelfBean) {
        return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.gb
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                BookShelfFragment.h(comicShelfBean, observableEmitter);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: synchronized, reason: not valid java name */
    public /* synthetic */ void m26172synchronized(int i) {
        List<BannerInfo.BannerBean> list = this.f22180private;
        if (list == null || list.size() <= 0) {
            return;
        }
        BannerInfo.BannerBean bannerBean = this.f22180private.get(i);
        WebViewActivity.a(getActivity(), bannerBean.title, bannerBean.goUrl, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(List<ComicShelfBean> list) {
        if (this.f22167abstract) {
            int iM8715for = v02.m8711if(getActivity()).m8715for(wq.f7629synchronized, 2);
            if (list == null || list.size() <= 0) {
                return;
            }
            this.f22183static = -1;
            for (int i = 1; i <= iM8715for; i++) {
                p();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void x(ComicShelfBean comicShelfBean) {
        if (!this.mRecyclerView.isComputingLayout() && this.f22189while != null) {
            for (int i = 0; i < this.f22189while.size(); i++) {
                if (Objects.equals(this.f22189while.get(i).getNoteUrl(), comicShelfBean.getNoteUrl())) {
                    this.f22189while.set(i, comicShelfBean);
                    this.mRecyclerView.m22814return(i);
                }
            }
        }
    }

    @Override // com.wsw.cospa.base.LazyFragment
    /* renamed from: for */
    public void mo25906for() {
        hm1.m3062case().m9005for(this);
        if (this.f22167abstract) {
            this.refreshLayout.autoRefresh();
        } else {
            m26165protected(false);
        }
    }

    @Override // com.wsw.cospa.base.LazyFragment
    /* renamed from: if */
    public int mo25908if() {
        return R.layout.arg_res_0x7f0c0081;
    }

    /* renamed from: implements, reason: not valid java name */
    public void m26178implements() {
        this.error_view.setVisibility(8);
        this.refreshLayout.setVisibility(0);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m26179instanceof() {
        if (this.f22172default == null) {
            LayoutInflater layoutInflater = (LayoutInflater) this.f21936case.getSystemService("layout_inflater");
            this.f22176goto = layoutInflater;
            View viewInflate = layoutInflater.inflate(R.layout.arg_res_0x7f0c004b, (ViewGroup) null, false);
            this.f22186this = viewInflate;
            this.f22168break = viewInflate.findViewById(R.id.arg_res_0x7f0900aa);
            this.f22169catch = (Banner) this.f22186this.findViewById(R.id.arg_res_0x7f0900a6);
            this.mRecyclerView.m22805class(this.f22186this);
            if (this.f22177import == 1) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f22168break.getLayoutParams();
                int iM3660new = (int) j10.m3660new(getActivity(), 7.0f);
                marginLayoutParams.setMargins(iM3660new, iM3660new, iM3660new, iM3660new);
                this.f22168break.setLayoutParams(marginLayoutParams);
            } else {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.f22168break.getLayoutParams();
                int iM3660new2 = (int) j10.m3660new(getActivity(), 0.0f);
                marginLayoutParams2.setMargins(iM3660new2, iM3660new2, iM3660new2, iM3660new2);
                this.f22168break.setLayoutParams(marginLayoutParams2);
            }
            this.f22169catch.setBannerStyle(1);
            this.f22169catch.setImageLoader(new mh0());
            this.f22169catch.setBannerAnimation(Transformer.Stack);
            this.f22169catch.isAutoPlay(true);
            this.f22169catch.setDelayTime(PathInterpolatorCompat.MAX_NUM_POINTS);
            this.f22169catch.setIndicatorGravity(7);
            this.f22169catch.setOnBannerListener(new OnBannerListener() { // from class: android.support.v4.fb
                @Override // com.youth.banner.listener.OnBannerListener
                public final void OnBannerClick(int i) {
                    this.f1751do.m26172synchronized(i);
                }
            });
            q();
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public long m26180interface() {
        return this.f22173extends;
    }

    @Override // com.wsw.cospa.base.LazyFragment
    /* renamed from: new */
    public m7 mo25909new() {
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1) {
            if (i == 10102) {
                v72.m8769if("编辑书架");
                return;
            }
            if (i == 10103) {
                long longExtra = intent.getLongExtra("groupId", 0L);
                this.f22173extends = longExtra;
                ComicShelfGroupBean comicShelfGroupBeanM26113public = com.wsw.cospa.dao.Cdo.m26113public(Long.valueOf(longExtra));
                this.f22172default = comicShelfGroupBeanM26113public;
                if (comicShelfGroupBeanM26113public != null) {
                    this.f22177import = comicShelfGroupBeanM26113public.getViewId();
                } else {
                    this.f22177import = v02.m8711if(getActivity()).m8715for(CartoonApplication.f20823this, 1);
                }
                m26165protected(false);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        hm1.m3062case().m9006new(this);
        cq cqVar = this.f22182return;
        if (cqVar != null) {
            cqVar.dispose();
        }
        super.onDestroy();
    }

    @Override // com.wsw.cospa.event.RefreshAllBookMessageObserver
    public void onRefreshAllBookMessage() {
        boolean zM8713do = v02.m8711if(getActivity()).m8713do(wq.x, true);
        this.f22167abstract = zM8713do;
        m26165protected(zM8713do);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        Banner banner = this.f22169catch;
        if (banner != null) {
            banner.stopAutoPlay();
        }
    }

    @SuppressLint({"CheckResult"})
    public void q() {
        ((ObservableSubscribeProxy) ((IHttpGetApi) com.wsw.cospa.model.impl.Cif.m26424break().m26440class("https://yiciyuan.coding.net/p/ycy/d/ycy/").create(IHttpGetApi.class)).getWebContent("git/raw/master/banner.json", AnalyzeHeaders.getMap(null)).flatMap(new Function() { // from class: android.support.v4.xa
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f7848do.f((Response) obj);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.ib
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f2656do.g((BannerInfo) obj);
            }
        });
    }

    public void s() {
        this.f22170class.setOnItemClickListener(new OnItemClickListener() { // from class: android.support.v4.cb
            @Override // com.wsw.cospa.listener.OnItemClickListener
            public final void onItemClick(int i) {
                this.f724do.i(i);
            }
        });
        this.f22170class.setOnLongItemClickListener(new OnLongItemClickListener() { // from class: android.support.v4.db
            @Override // com.wsw.cospa.listener.OnLongItemClickListener
            public final void onLongClick(View view, int i) {
                this.f975do.j(view, i);
            }
        });
    }

    public void t() {
        this.f22171const.setOnItemClickListener(new OnItemClickListener() { // from class: android.support.v4.bb
            @Override // com.wsw.cospa.listener.OnItemClickListener
            public final void onItemClick(int i) {
                this.f399do.k(i);
            }
        });
        this.f22171const.setOnLongItemClickListener(new OnLongItemClickListener() { // from class: android.support.v4.eb
            @Override // com.wsw.cospa.listener.OnLongItemClickListener
            public final void onLongClick(View view, int i) {
                this.f1341do.l(view, i);
            }
        });
    }

    /* renamed from: transient, reason: not valid java name */
    public void m26181transient() {
        if (this.f22177import == 2) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mRecyclerView.getLayoutParams();
            marginLayoutParams.topMargin = (int) j10.m3660new(getActivity(), -12.0f);
            int iM3660new = (int) j10.m3660new(getActivity(), -10.0f);
            int iM3660new2 = (int) j10.m3660new(getActivity(), 5.0f);
            this.mRecyclerView.setPadding(iM3660new2, iM3660new, iM3660new2, iM3660new2);
            this.mRecyclerView.setLayoutParams(marginLayoutParams);
        }
        this.f22168break.setVisibility(8);
    }

    @Override // com.wsw.cospa.base.LazyFragment
    /* renamed from: try */
    public void mo25910try() {
        long j = getArguments().getLong("groupId");
        this.f22173extends = j;
        ComicShelfGroupBean comicShelfGroupBeanM26113public = com.wsw.cospa.dao.Cdo.m26113public(Long.valueOf(j));
        this.f22172default = comicShelfGroupBeanM26113public;
        if (comicShelfGroupBeanM26113public != null) {
            this.f22173extends = comicShelfGroupBeanM26113public.getId().longValue();
        } else {
            this.f22173extends = getArguments().getLong("groupId");
        }
        this.f22167abstract = v02.m8711if(getActivity()).m8713do(wq.x, true);
        ComicShelfGroupBean comicShelfGroupBean = this.f22172default;
        if (comicShelfGroupBean != null) {
            this.f22177import = comicShelfGroupBean.getViewId();
        } else {
            this.f22177import = v02.m8711if(getActivity()).m8715for(CartoonApplication.f20823this, 1);
        }
        m26179instanceof();
        this.mRecyclerView.setPullRefreshEnabled(false);
        this.mRecyclerView.setLoadingMoreEnabled(false);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        this.f22174final = linearLayoutManager;
        linearLayoutManager.setOrientation(1);
        boolean zM3662super = j10.m3662super(getActivity());
        this.f22175finally = zM3662super;
        if (zM3662super) {
            this.f22179package = 5;
        } else {
            this.f22179package = 3;
        }
        this.f22184super = new GridLayoutManager(getActivity(), this.f22179package);
        this.f22187throw = new GridSpacingItemDecoration(20);
        RecyclerView.RecycledViewPool recycledViewPool = new RecyclerView.RecycledViewPool();
        recycledViewPool.setMaxRecycledViews(0, 10);
        this.mRecyclerView.setRecycledViewPool(recycledViewPool);
        ((SimpleItemAnimator) this.mRecyclerView.getItemAnimator()).setSupportsChangeAnimations(false);
        if (this.f22177import == 1) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mRecyclerView.getLayoutParams();
            marginLayoutParams.topMargin = (int) j10.m3660new(getActivity(), 0.0f);
            int iM3660new = (int) j10.m3660new(getActivity(), 7.0f);
            this.mRecyclerView.setPadding(iM3660new, iM3660new, iM3660new, iM3660new);
            this.mRecyclerView.setLayoutParams(marginLayoutParams);
            this.f22171const = new ComicShelfListAdapter(getActivity());
            LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(getActivity());
            this.f22174final = linearLayoutManager2;
            this.mRecyclerView.setLayoutManager(linearLayoutManager2);
            this.mRecyclerView.setItemViewCacheSize(10);
            this.mRecyclerView.setItemAnimator(null);
            this.mRecyclerView.setHasFixedSize(true);
            this.f22171const.setHasStableIds(true);
            this.mRecyclerView.setAdapter(this.f22171const);
            t();
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.mRecyclerView.getLayoutParams();
            marginLayoutParams2.topMargin = (int) j10.m3660new(getActivity(), -16.0f);
            int iM3660new2 = (int) j10.m3660new(getActivity(), 7.0f);
            this.mRecyclerView.setPadding(iM3660new2, iM3660new2, iM3660new2, iM3660new2);
            this.mRecyclerView.setLayoutParams(marginLayoutParams2);
            this.f22170class = new ComicShelfGridAdapter(getActivity());
            this.mRecyclerView.addItemDecoration(this.f22187throw);
            this.mRecyclerView.setLayoutManager(this.f22184super);
            this.mRecyclerView.setItemViewCacheSize(10);
            this.mRecyclerView.setItemAnimator(null);
            this.mRecyclerView.setHasFixedSize(true);
            this.f22170class.setHasStableIds(true);
            this.mRecyclerView.setAdapter(this.f22170class);
            s();
        }
        this.tvRetry.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.wa
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7428do.a(view);
            }
        });
        this.refreshLayout.setEnableAutoLoadMore(false);
        this.refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: android.support.v4.ab
            @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
            public final void onRefresh(RefreshLayout refreshLayout) {
                this.f75do.b(refreshLayout);
            }
        });
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(v02.m8711if(CartoonApplication.m24690do()).m8715for(wq.f7629synchronized, 2));
        this.f22185switch = executorServiceNewFixedThreadPool;
        this.f22188throws = io.reactivex.schedulers.Cdo.m29771if(executorServiceNewFixedThreadPool);
    }

    public void u(String str) {
        this.error_view.setVisibility(0);
        this.refreshLayout.setVisibility(8);
        this.tvErrorView.setText(str);
        this.tvRetry.setText("点击刷新");
    }

    public void w() {
        ComicShelfGroupBean comicShelfGroupBean = this.f22172default;
        if (comicShelfGroupBean != null) {
            this.f22177import = comicShelfGroupBean.getViewId();
        } else {
            this.f22177import = v02.m8711if(getActivity()).m8715for(CartoonApplication.f20823this, 1);
        }
        if (this.f22177import != 1) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mRecyclerView.getLayoutParams();
            marginLayoutParams.topMargin = (int) j10.m3660new(getActivity(), 0.0f);
            int iM3660new = (int) j10.m3660new(getActivity(), 7.0f);
            this.mRecyclerView.setPadding(iM3660new, iM3660new, iM3660new, iM3660new);
            this.mRecyclerView.setLayoutParams(marginLayoutParams);
            if (this.f22172default == null) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.f22168break.getLayoutParams();
                int iM3660new2 = (int) j10.m3660new(getActivity(), 7.0f);
                marginLayoutParams2.setMargins(iM3660new2, iM3660new2, iM3660new2, iM3660new2);
                this.f22168break.setLayoutParams(marginLayoutParams2);
            }
            this.f22171const = new ComicShelfListAdapter(getActivity());
            if (this.mRecyclerView.getItemDecorationCount() > 0) {
                this.mRecyclerView.removeItemDecoration(this.f22187throw);
            }
            this.mRecyclerView.setItemViewCacheSize(10);
            this.mRecyclerView.setItemAnimator(null);
            this.mRecyclerView.setHasFixedSize(true);
            this.f22171const.setHasStableIds(true);
            this.mRecyclerView.setLayoutManager(this.f22174final);
            this.mRecyclerView.setAdapter(this.f22171const);
            ComicShelfGroupBean comicShelfGroupBean2 = this.f22172default;
            if (comicShelfGroupBean2 != null) {
                comicShelfGroupBean2.setViewId(1);
                this.f22177import = this.f22172default.getViewId();
                com.wsw.cospa.dao.Cdo.r(this.f22172default);
            } else {
                v02.m8711if(this.f21936case).m8714else(CartoonApplication.f20823this, 1);
                this.f22177import = v02.m8711if(this.f21936case).m8715for(CartoonApplication.f20823this, 1);
            }
            t();
            m26165protected(!this.f22178native);
            return;
        }
        List<BannerInfo.BannerBean> list = this.f22180private;
        if (list != null && list.size() > 0) {
            ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) this.mRecyclerView.getLayoutParams();
            marginLayoutParams3.topMargin = (int) j10.m3660new(getActivity(), -14.0f);
            int iM3660new3 = (int) j10.m3660new(getActivity(), 7.0f);
            this.mRecyclerView.setPadding(iM3660new3, iM3660new3, iM3660new3, iM3660new3);
            this.mRecyclerView.setLayoutParams(marginLayoutParams3);
        } else if (this.f22173extends > 0) {
            ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) this.mRecyclerView.getLayoutParams();
            marginLayoutParams4.topMargin = (int) j10.m3660new(getActivity(), -14.0f);
            int iM3660new4 = (int) j10.m3660new(getActivity(), 7.0f);
            this.mRecyclerView.setPadding(iM3660new4, iM3660new4, iM3660new4, iM3660new4);
            this.mRecyclerView.setLayoutParams(marginLayoutParams4);
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams5 = (ViewGroup.MarginLayoutParams) this.mRecyclerView.getLayoutParams();
            marginLayoutParams5.topMargin = (int) j10.m3660new(getActivity(), -30.0f);
            int iM3660new5 = (int) j10.m3660new(getActivity(), 7.0f);
            this.mRecyclerView.setPadding(iM3660new5, iM3660new5, iM3660new5, iM3660new5);
            this.mRecyclerView.setLayoutParams(marginLayoutParams5);
        }
        if (this.f22172default == null) {
            ViewGroup.MarginLayoutParams marginLayoutParams6 = (ViewGroup.MarginLayoutParams) this.f22168break.getLayoutParams();
            int iM3660new6 = (int) j10.m3660new(getActivity(), -0.0f);
            marginLayoutParams6.setMargins(iM3660new6, iM3660new6, iM3660new6, iM3660new6);
            this.f22168break.setLayoutParams(marginLayoutParams6);
        }
        this.f22170class = new ComicShelfGridAdapter(getActivity());
        if (this.mRecyclerView.getItemDecorationCount() <= 0) {
            this.mRecyclerView.addItemDecoration(this.f22187throw);
        }
        this.mRecyclerView.setItemViewCacheSize(10);
        this.mRecyclerView.setLayoutManager(this.f22184super);
        this.mRecyclerView.setItemAnimator(null);
        this.mRecyclerView.setHasFixedSize(true);
        this.f22170class.setHasStableIds(true);
        this.mRecyclerView.setAdapter(this.f22170class);
        ComicShelfGroupBean comicShelfGroupBean3 = this.f22172default;
        if (comicShelfGroupBean3 != null) {
            comicShelfGroupBean3.setViewId(2);
            this.f22177import = this.f22172default.getViewId();
            com.wsw.cospa.dao.Cdo.r(this.f22172default);
        } else {
            v02.m8711if(this.f21936case).m8714else(CartoonApplication.f20823this, 2);
            this.f22177import = v02.m8711if(this.f21936case).m8715for(CartoonApplication.f20823this, 1);
        }
        s();
        m26165protected(!this.f22181public);
    }
}
