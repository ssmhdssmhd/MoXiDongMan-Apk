package com.wsw.cospa.fragment;

import android.app.Activity;
import android.content.Context;
import android.support.v4.b0;
import android.support.v4.bz1;
import android.support.v4.j10;
import android.support.v4.m7;
import android.support.v4.v02;
import android.support.v4.v72;
import android.support.v4.vv0;
import android.support.v4.wq;
import android.util.ArrayMap;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.listener.OnLoadMoreListener;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.ComicDetailActivity;
import com.wsw.cospa.activity.SearchComicActivity;
import com.wsw.cospa.adapter.FindComicDetailAdapter;
import com.wsw.cospa.adapter.FindComicGridAdapter;
import com.wsw.cospa.base.BaseFragment;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.model.Cwhile;
import com.wsw.cospa.vo.FindChildVo;
import com.wsw.cospa.vo.FindParentVo;
import com.wsw.cospa.widget.view.GridSpacingItemDecoration;
import com.wsw.cospa.widget.view.WrapContentGridLayoutManager;
import com.wsw.cospa.widget.view.WrapContentLinearLayoutManager;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class FindColumnFragment extends BaseFragment {

    /* renamed from: break, reason: not valid java name */
    private GridLayoutManager f22217break;

    /* renamed from: catch, reason: not valid java name */
    private GridSpacingItemDecoration f22218catch;

    /* renamed from: class, reason: not valid java name */
    private FindParentVo f22219class;

    /* renamed from: const, reason: not valid java name */
    private FindChildVo f22220const;

    @BindView(R.id.arg_res_0x7f09016a)
    public RelativeLayout error_view;

    /* renamed from: goto, reason: not valid java name */
    private FindComicDetailAdapter f22222goto;

    /* renamed from: import, reason: not valid java name */
    private String f22223import;

    @BindView(R.id.arg_res_0x7f0902a2)
    public AVLoadingIndicatorView mIndicatorView;

    @BindView(R.id.arg_res_0x7f0902a1)
    public RelativeLayout mLoadingRootView;

    @BindView(R.id.arg_res_0x7f09035a)
    public RecyclerView mRecyclerView;

    /* renamed from: native, reason: not valid java name */
    private boolean f22224native;

    /* renamed from: public, reason: not valid java name */
    private int f22225public;

    @BindView(R.id.arg_res_0x7f09035c)
    public SmartRefreshLayout refreshLayout;

    /* renamed from: this, reason: not valid java name */
    private FindComicGridAdapter f22228this;

    /* renamed from: throw, reason: not valid java name */
    private String f22229throw;

    @BindView(R.id.arg_res_0x7f09016b)
    public TextView tvErrorView;

    @BindView(R.id.arg_res_0x7f0904a7)
    public TextView tvRetry;

    /* renamed from: while, reason: not valid java name */
    private String f22230while;

    /* renamed from: final, reason: not valid java name */
    private boolean f22221final = true;

    /* renamed from: super, reason: not valid java name */
    private int f22227super = 1;

    /* renamed from: return, reason: not valid java name */
    private Map<String, String> f22226return = new ArrayMap();

    /* renamed from: com.wsw.cospa.fragment.FindColumnFragment$do, reason: invalid class name */
    public class Cdo extends bz1<List<SearchComicBean>> {
        public Cdo() {
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            super.onError(str);
            FindColumnFragment.this.m26223return();
            String strReplace = FindColumnFragment.this.f22230while;
            if (FindColumnFragment.this.f22230while.contains("searchPage")) {
                strReplace = strReplace.replace("searchPage", FindColumnFragment.this.f22227super + "");
            }
            if (FindColumnFragment.this.f22227super != 1) {
                FindColumnFragment.this.refreshLayout.finishLoadMore();
                v72.m8769if(str + "\n" + strReplace);
                return;
            }
            FindColumnFragment.this.refreshLayout.finishRefresh();
            FindColumnFragment.this.m26222continue(str + "\n" + strReplace);
        }

        @Override // io.reactivex.Observer
        public void onNext(List<SearchComicBean> list) {
            FindColumnFragment.this.m26223return();
            if (FindColumnFragment.this.f22227super == 1) {
                if (v02.m8711if(FindColumnFragment.this.getActivity()).m8713do(wq.w, false)) {
                    FindColumnFragment.this.f22228this.refresh(list);
                } else {
                    FindColumnFragment.this.f22222goto.refresh(list);
                }
                FindColumnFragment.this.refreshLayout.finishRefresh();
                if (list.size() <= 0) {
                    FindColumnFragment.this.refreshLayout.setEnableAutoLoadMore(false);
                }
            } else {
                if (v02.m8711if(FindColumnFragment.this.getActivity()).m8713do(wq.w, false)) {
                    FindColumnFragment.this.f22228this.m25710if(list);
                } else {
                    FindColumnFragment.this.f22222goto.m25705new(list);
                }
                FindColumnFragment.this.refreshLayout.finishLoadMore();
            }
            for (SearchComicBean searchComicBean : list) {
                vv0.m8965if("FindColumnFragment", "漫画名：" + searchComicBean.getName() + "-----" + searchComicBean.getUrlNext());
            }
            if (list.size() > 0 && list.get(0) != null) {
                FindColumnFragment.this.m26213public(list.get(0).getVariable());
                FindColumnFragment.this.f22229throw = list.get(0).getUrlNext();
            }
            FindColumnFragment.m26205final(FindColumnFragment.this);
        }
    }

    /* renamed from: com.wsw.cospa.fragment.FindColumnFragment$if, reason: invalid class name */
    public class Cif extends TypeToken<Map<String, String>> {
        public Cif() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: default, reason: not valid java name */
    public /* synthetic */ void m26202default(RefreshLayout refreshLayout) {
        this.f22227super = 1;
        m26209interface(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: extends, reason: not valid java name */
    public /* synthetic */ void m26204extends(RefreshLayout refreshLayout) {
        m26209interface(false);
    }

    /* renamed from: final, reason: not valid java name */
    public static /* synthetic */ int m26205final(FindColumnFragment findColumnFragment) {
        int i = findColumnFragment.f22227super;
        findColumnFragment.f22227super = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: finally, reason: not valid java name */
    public /* synthetic */ void m26206finally(View view) {
        m26209interface(true);
    }

    /* renamed from: interface, reason: not valid java name */
    private void m26209interface(boolean z) {
        if (z) {
            m26224strictfp();
        }
        Cwhile.m26502catch().m26513case(this.f22230while, this.f22227super, this.f22223import, this.f22226return, this.f22229throw).compose(b0.f302do).subscribe(new Cdo());
    }

    /* renamed from: package, reason: not valid java name */
    public static FindColumnFragment m26211package(FindParentVo findParentVo, FindChildVo findChildVo) {
        FindColumnFragment findColumnFragment = new FindColumnFragment();
        findColumnFragment.f22219class = findParentVo;
        findColumnFragment.f22220const = findChildVo;
        return findColumnFragment;
    }

    /* renamed from: private, reason: not valid java name */
    public static FindColumnFragment m26212private(FindParentVo findParentVo, FindChildVo findChildVo, boolean z) {
        FindColumnFragment findColumnFragment = new FindColumnFragment();
        findColumnFragment.f22219class = findParentVo;
        findColumnFragment.f22220const = findChildVo;
        findColumnFragment.f22221final = z;
        return findColumnFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: public, reason: not valid java name */
    public void m26213public(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        this.f22226return.putAll((Map) new Gson().fromJson(str, new Cif().getType()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: static, reason: not valid java name */
    public /* synthetic */ void m26214static(int i) {
        ComicDetailActivity.R(getActivity(), false, this.f22228this.getList().get(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: switch, reason: not valid java name */
    public /* synthetic */ void m26216switch(int i) {
        ComicDetailActivity.R(getActivity(), false, this.f22222goto.getList().get(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throws, reason: not valid java name */
    public /* synthetic */ void m26219throws(int i) {
        SearchComicActivity.g(getActivity(), this.f22222goto.getList().get(i).getName());
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m26221abstract() {
        this.error_view.setVisibility(0);
        this.mIndicatorView.setVisibility(8);
        this.refreshLayout.setVisibility(8);
        this.tvErrorView.setText("漫画已下架或是付费章节！");
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: case */
    public void mo25879case() {
    }

    /* renamed from: continue, reason: not valid java name */
    public void m26222continue(String str) {
        this.error_view.setVisibility(0);
        this.mIndicatorView.setVisibility(8);
        this.refreshLayout.setVisibility(8);
        this.tvErrorView.setText(str);
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: if */
    public int mo25882if() {
        return R.layout.arg_res_0x7f0c0089;
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: new */
    public void mo25883new() {
        FindChildVo findChildVo = this.f22220const;
        if (findChildVo != null) {
            this.f22230while = findChildVo.getKindUrl();
            this.f22223import = this.f22220const.getParentTag();
        }
        if (v02.m8711if(getActivity()).m8713do(wq.w, false)) {
            boolean zM3662super = j10.m3662super(getActivity());
            this.f22224native = zM3662super;
            if (zM3662super) {
                this.f22225public = 5;
            } else {
                this.f22225public = 3;
            }
            FindComicGridAdapter findComicGridAdapter = this.f22228this;
            if (findComicGridAdapter == null) {
                this.f22228this = new FindComicGridAdapter(getActivity());
                WrapContentGridLayoutManager wrapContentGridLayoutManager = new WrapContentGridLayoutManager(getActivity(), this.f22225public);
                this.f22217break = wrapContentGridLayoutManager;
                this.mRecyclerView.setLayoutManager(wrapContentGridLayoutManager);
                GridSpacingItemDecoration gridSpacingItemDecoration = new GridSpacingItemDecoration(20);
                this.f22218catch = gridSpacingItemDecoration;
                this.mRecyclerView.removeItemDecoration(gridSpacingItemDecoration);
                this.mRecyclerView.addItemDecoration(this.f22218catch);
                this.mRecyclerView.setAdapter(this.f22228this);
            } else {
                findComicGridAdapter.notifyDataSetChanged();
            }
            this.f22228this.setOnItemClickListener(new OnItemClickListener() { // from class: android.support.v4.pb0
                @Override // com.wsw.cospa.listener.OnItemClickListener
                public final void onItemClick(int i) {
                    this.f4888do.m26214static(i);
                }
            });
        } else {
            FindComicDetailAdapter findComicDetailAdapter = this.f22222goto;
            if (findComicDetailAdapter == null) {
                this.f22222goto = new FindComicDetailAdapter(getActivity(), true);
                WrapContentLinearLayoutManager wrapContentLinearLayoutManager = new WrapContentLinearLayoutManager(getActivity());
                wrapContentLinearLayoutManager.setOrientation(1);
                if (this.mRecyclerView.getItemDecorationCount() > 0) {
                    this.mRecyclerView.removeItemDecoration(this.f22218catch);
                }
                this.mRecyclerView.setLayoutManager(wrapContentLinearLayoutManager);
                this.mRecyclerView.setAdapter(this.f22222goto);
            } else {
                findComicDetailAdapter.notifyDataSetChanged();
            }
            this.f22222goto.setOnItemClickListener(new OnItemClickListener() { // from class: android.support.v4.qb0
                @Override // com.wsw.cospa.listener.OnItemClickListener
                public final void onItemClick(int i) {
                    this.f5322do.m26216switch(i);
                }
            });
            this.f22222goto.setItemSearchListener(new FindComicDetailAdapter.OnItemSearchClickListener() { // from class: android.support.v4.ob0
                @Override // com.wsw.cospa.adapter.FindComicDetailAdapter.OnItemSearchClickListener
                public final void onItemSearchClick(int i) {
                    this.f4535do.m26219throws(i);
                }
            });
        }
        this.refreshLayout.setEnableLoadMore(true);
        this.refreshLayout.setEnableAutoLoadMore(true);
        this.refreshLayout.setEnableRefresh(true);
        this.refreshLayout.setEnableOverScrollDrag(true);
        this.refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: android.support.v4.nb0
            @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
            public final void onRefresh(RefreshLayout refreshLayout) {
                this.f4162do.m26202default(refreshLayout);
            }
        });
        this.refreshLayout.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: android.support.v4.mb0
            @Override // com.scwang.smartrefresh.layout.listener.OnLoadMoreListener
            public final void onLoadMore(RefreshLayout refreshLayout) {
                this.f3871do.m26204extends(refreshLayout);
            }
        });
        this.tvRetry.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.lb0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f3615do.m26206finally(view);
            }
        });
        if (this.f22221final) {
            m26209interface(true);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f21919new = activity;
    }

    /* renamed from: return, reason: not valid java name */
    public void m26223return() {
        this.error_view.setVisibility(8);
        this.mIndicatorView.setVisibility(8);
        this.refreshLayout.setVisibility(0);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m26224strictfp() {
        this.mIndicatorView.setVisibility(0);
        this.refreshLayout.setVisibility(8);
        this.error_view.setVisibility(8);
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: try */
    public m7 mo25884try() {
        return null;
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m26225volatile() {
        if (this.f22221final) {
            return;
        }
        m26209interface(true);
        this.f22221final = true;
    }

    @Override // com.wsw.cospa.base.BaseFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f21919new = context;
    }
}
