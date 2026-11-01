package com.wsw.cospa.activity;

import android.support.v4.b0;
import android.support.v4.bz1;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.p12;
import android.support.v4.p42;
import android.support.v4.sz0;
import android.support.v4.v72;
import android.util.ArrayMap;
import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.gaoneng.library.AutoScrollBackLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.listener.OnLoadMoreListener;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wsw.cospa.R;
import com.wsw.cospa.adapter.FindComicDetailAdapter;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.model.Cwhile;
import com.wsw.cospa.utils.Csynchronized;
import io.reactivex.disposables.Disposable;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class FindComicDetailActivity extends BaseActivity {

    /* renamed from: break, reason: not valid java name */
    private String f21139break;

    /* renamed from: catch, reason: not valid java name */
    private String f21140catch;

    /* renamed from: class, reason: not valid java name */
    private String f21141class;

    /* renamed from: const, reason: not valid java name */
    private String f21142const;

    /* renamed from: goto, reason: not valid java name */
    private FindComicDetailAdapter f21144goto;

    @BindView(R.id.arg_res_0x7f090299)
    public AppBarLayout mAppBarLayout;

    @BindView(R.id.arg_res_0x7f0902a4)
    public RecyclerView mRecyclerView;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f09035c)
    public SmartRefreshLayout refreshLayout;

    @BindView(R.id.arg_res_0x7f090384)
    public AutoScrollBackLayout scrollLayout;

    /* renamed from: this, reason: not valid java name */
    private int f21145this = 1;

    /* renamed from: final, reason: not valid java name */
    private Map<String, String> f21143final = new ArrayMap();

    /* renamed from: com.wsw.cospa.activity.FindComicDetailActivity$do, reason: invalid class name */
    public class Cdo extends bz1<List<SearchComicBean>> {
        public Cdo() {
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            super.onError(str);
            v72.m8769if(str);
            if (FindComicDetailActivity.this.f21145this == 1) {
                FindComicDetailActivity.this.refreshLayout.finishRefresh();
            } else {
                FindComicDetailActivity.this.refreshLayout.finishLoadMore();
            }
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            FindComicDetailActivity.this.f21908do.add(disposable);
        }

        @Override // io.reactivex.Observer
        public void onNext(List<SearchComicBean> list) {
            if (FindComicDetailActivity.this.f21145this == 1) {
                FindComicDetailActivity.this.f21144goto.refresh(list);
                FindComicDetailActivity.this.refreshLayout.finishRefresh();
                if (list.size() <= 0) {
                    FindComicDetailActivity.this.refreshLayout.setEnableAutoLoadMore(false);
                }
            } else {
                FindComicDetailActivity.this.f21144goto.m25705new(list);
                FindComicDetailActivity.this.refreshLayout.finishLoadMore();
            }
            if (list.size() > 0 && list.get(0) != null) {
                FindComicDetailActivity.this.m25075finally(list.get(0).getVariable());
                FindComicDetailActivity.this.f21139break = list.get(0).getUrlNext();
            }
            FindComicDetailActivity.m25084switch(FindComicDetailActivity.this);
        }
    }

    /* renamed from: com.wsw.cospa.activity.FindComicDetailActivity$if, reason: invalid class name */
    public class Cif extends TypeToken<Map<String, String>> {
        public Cif() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: abstract, reason: not valid java name */
    public /* synthetic */ void m25071abstract(int i) {
        ComicDetailActivity.R(this, false, this.f21144goto.getList().get(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: continue, reason: not valid java name */
    public /* synthetic */ void m25072continue(int i) {
        SearchComicActivity.g(this, this.f21144goto.getList().get(i).getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: finally, reason: not valid java name */
    public void m25075finally(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        this.f21143final.putAll((Map) new Gson().fromJson(str, new Cif().getType()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: package, reason: not valid java name */
    public /* synthetic */ void m25078package(RefreshLayout refreshLayout) {
        this.f21145this = 1;
        m25083strictfp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: private, reason: not valid java name */
    public /* synthetic */ void m25079private(RefreshLayout refreshLayout) {
        m25083strictfp();
    }

    /* renamed from: strictfp, reason: not valid java name */
    private void m25083strictfp() {
        ((ObservableSubscribeProxy) Cwhile.m26502catch().m26513case(this.f21140catch, this.f21145this, this.f21141class, this.f21143final, this.f21139break).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cdo());
    }

    /* renamed from: switch, reason: not valid java name */
    public static /* synthetic */ int m25084switch(FindComicDetailActivity findComicDetailActivity) {
        int i = findComicDetailActivity.f21145this;
        findComicDetailActivity.f21145this = i + 1;
        return i;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        this.refreshLayout.autoRefresh();
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c0034;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        this.scrollLayout.m12373this();
        this.f21140catch = getIntent().getStringExtra("url");
        this.f21142const = getIntent().getStringExtra(sz0.f6342break);
        this.f21141class = getIntent().getStringExtra(p42.f4845if);
        p12.m5832case(this);
        Csynchronized.m27100new(this, this.mToolbar, this.f21142const);
        this.f21144goto = new FindComicDetailAdapter(this, true);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(1);
        this.mRecyclerView.setLayoutManager(linearLayoutManager);
        this.mRecyclerView.setAdapter(this.f21144goto);
        this.refreshLayout.setEnableLoadMore(true);
        this.refreshLayout.setEnableAutoLoadMore(true);
        this.refreshLayout.setEnableRefresh(true);
        this.refreshLayout.setEnableOverScrollDrag(true);
        this.refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: android.support.v4.sb0
            @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
            public final void onRefresh(RefreshLayout refreshLayout) {
                this.f6105do.m25078package(refreshLayout);
            }
        });
        this.refreshLayout.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: android.support.v4.rb0
            @Override // com.scwang.smartrefresh.layout.listener.OnLoadMoreListener
            public final void onLoadMore(RefreshLayout refreshLayout) {
                this.f5739do.m25079private(refreshLayout);
            }
        });
        this.f21144goto.setOnItemClickListener(new OnItemClickListener() { // from class: android.support.v4.ub0
            @Override // com.wsw.cospa.listener.OnItemClickListener
            public final void onItemClick(int i) {
                this.f6819do.m25071abstract(i);
            }
        });
        this.f21144goto.setItemSearchListener(new FindComicDetailAdapter.OnItemSearchClickListener() { // from class: android.support.v4.tb0
            @Override // com.wsw.cospa.adapter.FindComicDetailAdapter.OnItemSearchClickListener
            public final void onItemSearchClick(int i) {
                this.f6461do.m25072continue(i);
            }
        });
    }
}
