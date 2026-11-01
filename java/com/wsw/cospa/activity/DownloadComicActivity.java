package com.wsw.cospa.activity;

import android.content.Context;
import android.content.Intent;
import android.support.v4.b0;
import android.support.v4.bz1;
import android.support.v4.cq;
import android.support.v4.ep1;
import android.support.v4.gp1;
import android.support.v4.ix1;
import android.support.v4.j10;
import android.support.v4.lm1;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.p12;
import android.text.Html;
import android.view.MenuItem;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.DownloadComicActivity;
import com.wsw.cospa.adapter.DownloadListAdapter;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.event.RefreshDownloadListObserver;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.listener.OnLongItemClickListener;
import com.wsw.cospa.service.DownloadService;
import com.wsw.cospa.utils.Cdefault;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.widget.view.GridSpacingItemDecoration;
import io.reactivex.Cnew;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class DownloadComicActivity extends BaseActivity implements RefreshDownloadListObserver {

    /* renamed from: break, reason: not valid java name */
    private GridSpacingItemDecoration f21063break;

    /* renamed from: catch, reason: not valid java name */
    private boolean f21064catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f21065class;

    /* renamed from: const, reason: not valid java name */
    private int f21066const;

    @BindView(R.id.arg_res_0x7f09016a)
    public RelativeLayout error_view;

    /* renamed from: goto, reason: not valid java name */
    private DownloadListAdapter f21067goto;

    @BindView(R.id.arg_res_0x7f0902a4)
    public RecyclerView mRecyclerView;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f09035c)
    public SmartRefreshLayout refreshLayout;

    /* renamed from: this, reason: not valid java name */
    private GridLayoutManager f21068this;

    @BindView(R.id.arg_res_0x7f09016b)
    public TextView tvErrorView;

    @BindView(R.id.arg_res_0x7f0904a7)
    public TextView tvRetry;

    @BindView(R.id.arg_res_0x7f0904b7)
    public TextView tvStorageSpace;

    @BindView(R.id.arg_res_0x7f0904be)
    public TextView tvTitle;

    /* renamed from: com.wsw.cospa.activity.DownloadComicActivity$do, reason: invalid class name */
    public class Cdo extends bz1<List<ComicInfoBean>> {
        public Cdo() {
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onError(Throwable th) {
            super.onError(th);
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            DownloadComicActivity.this.f21908do.add(disposable);
        }

        @Override // io.reactivex.Observer
        public void onNext(List<ComicInfoBean> list) {
            DownloadComicActivity.this.refreshLayout.finishRefresh();
            DownloadComicActivity.this.f21067goto.refresh(list);
            if (list == null || list.size() <= 0) {
                DownloadComicActivity.this.m24990strictfp();
            } else {
                DownloadComicActivity.this.m24991throws();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: abstract, reason: not valid java name */
    public static /* synthetic */ void m24976abstract(ObservableEmitter observableEmitter) throws Exception {
        observableEmitter.onNext(DatabaseHelper.m26016switch().m26032interface());
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: extends, reason: not valid java name */
    public /* synthetic */ void m24977extends(int i) {
        ComicInfoBean comicInfoBeanM25645try = this.f21067goto.m25645try(i);
        DownloadTaskActivity.l(this, comicInfoBeanM25645try.getName(), comicInfoBeanM25645try.getNoteUrl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: finally, reason: not valid java name */
    public static /* synthetic */ void m24978finally(View view, int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: package, reason: not valid java name */
    public /* synthetic */ void m24981package(RefreshLayout refreshLayout) {
        m24988continue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: private, reason: not valid java name */
    public /* synthetic */ void m24982private(gp1 gp1Var) throws Exception {
        if (gp1Var.m2766for() == 23) {
            ComicInfoBean comicInfoBean = (ComicInfoBean) gp1Var.m2765do();
            if (this.f21067goto.m25643new(comicInfoBean)) {
                return;
            }
            this.f21067goto.m25641for(0, comicInfoBean);
            return;
        }
        if (gp1Var.m2766for() == 41) {
            this.f21067goto.m25639catch((String) gp1Var.m2765do());
            this.refreshLayout.autoRefresh();
            return;
        }
        if (gp1Var.m2766for() == 44) {
            Iterator it = ((List) gp1Var.m2765do()).iterator();
            while (it.hasNext()) {
                this.f21067goto.m25639catch((String) it.next());
            }
            return;
        }
        if (gp1Var.m2766for() == 42) {
            if (this.f21064catch) {
                return;
            }
            this.f21064catch = true;
        } else if (gp1Var.m2766for() == 43 && this.f21064catch) {
            this.f21064catch = false;
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m24987volatile(Context context) {
        context.startActivity(new Intent(context, (Class<?>) DownloadComicActivity.class));
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        boolean zM3662super = j10.m3662super(this);
        this.f21065class = zM3662super;
        if (zM3662super) {
            this.f21066const = 5;
        } else {
            this.f21066const = 3;
        }
        this.f21067goto = new DownloadListAdapter(this);
        GridLayoutManager gridLayoutManager = new GridLayoutManager((Context) this, this.f21066const, 1, false);
        this.f21068this = gridLayoutManager;
        this.mRecyclerView.setLayoutManager(gridLayoutManager);
        GridSpacingItemDecoration gridSpacingItemDecoration = new GridSpacingItemDecoration(20);
        this.f21063break = gridSpacingItemDecoration;
        this.mRecyclerView.addItemDecoration(gridSpacingItemDecoration);
        this.mRecyclerView.setItemViewCacheSize(10);
        this.mRecyclerView.setItemAnimator(null);
        this.mRecyclerView.setHasFixedSize(true);
        this.f21067goto.setHasStableIds(true);
        this.mRecyclerView.setAdapter(this.f21067goto);
        this.f21067goto.setOnItemClickListener(new OnItemClickListener() { // from class: android.support.v4.n20
            @Override // com.wsw.cospa.listener.OnItemClickListener
            public final void onItemClick(int i) {
                this.f4109do.m24977extends(i);
            }
        });
        this.f21067goto.setOnLongItemClickListener(new OnLongItemClickListener() { // from class: android.support.v4.o20
            @Override // com.wsw.cospa.listener.OnLongItemClickListener
            public final void onLongClick(View view, int i) {
                DownloadComicActivity.m24978finally(view, i);
            }
        });
        this.refreshLayout.autoRefresh();
        this.refreshLayout.setEnableOverScrollDrag(true);
        this.refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: android.support.v4.m20
            @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
            public final void onRefresh(RefreshLayout refreshLayout) {
                this.f3820do.m24981package(refreshLayout);
            }
        });
    }

    /* renamed from: continue, reason: not valid java name */
    public void m24988continue() {
        ((ObservableSubscribeProxy) Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.p20
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                DownloadComicActivity.m24976abstract(observableEmitter);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cdo());
    }

    /* renamed from: default, reason: not valid java name */
    public void m24989default() {
        this.f21908do.add(((ObservableSubscribeProxy) ep1.m1972do().m1976try(gp1.class).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.q20
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f5239do.m24982private((gp1) obj);
            }
        }));
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c002e;
    }

    @Override // com.wsw.cospa.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        cq cqVar = this.f21908do;
        if (cqVar != null && !cqVar.isDisposed()) {
            this.f21908do.dispose();
            this.f21908do.m995if();
            this.f21908do = null;
        }
        ep1.m1972do().m1975new();
        lm1.m4709case().m9006new(this);
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }

    @Override // com.wsw.cospa.event.RefreshDownloadListObserver
    public void onRefreshDownloadListMessage() {
        m24988continue();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        m24988continue();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        m24989default();
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m24990strictfp() {
        this.error_view.setVisibility(0);
        this.refreshLayout.setVisibility(8);
        this.tvRetry.setVisibility(8);
        this.tvErrorView.setText("暂无下载任务！");
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() {
        p12.m5832case(this);
        Csynchronized.m27098for(this, this.mToolbar);
        this.tvStorageSpace.setText(Html.fromHtml(String.format(getResources().getString(R.string.arg_res_0x7f1100f8), Cdefault.m26758else(), Cdefault.m26765native())));
        this.f21064catch = ix1.m3632do(this, DownloadService.class);
        lm1.m4709case().m9005for(this);
    }

    /* renamed from: throws, reason: not valid java name */
    public void m24991throws() {
        this.error_view.setVisibility(8);
        this.refreshLayout.setVisibility(0);
        this.tvRetry.setVisibility(8);
        this.tvErrorView.setText("暂无下载任务！");
    }
}
