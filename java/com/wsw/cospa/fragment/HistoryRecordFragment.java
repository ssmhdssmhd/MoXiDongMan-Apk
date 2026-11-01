package com.wsw.cospa.fragment;

import android.graphics.Color;
import android.support.v4.ds1;
import android.support.v4.j10;
import android.support.v4.m7;
import android.support.v4.mm1;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.ComicDetailActivity;
import com.wsw.cospa.activity.SearchComicActivity;
import com.wsw.cospa.adapter.HistoryComicAdapter;
import com.wsw.cospa.base.BaseFragment;
import com.wsw.cospa.bean.HistoryComicBean;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.event.RefreshHistoryMessageObserver;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.listener.OnLongItemClickListener;
import com.wsw.cospa.widget.itemtouch.ItemTouchHelperCallback;
import com.wsw.cospa.widget.view.ShadowLayout;
import java.util.ArrayList;
import java.util.List;
import rx.Subscription;
import rx.functions.Action1;

/* loaded from: classes2.dex */
public class HistoryRecordFragment extends BaseFragment implements RefreshHistoryMessageObserver {

    /* renamed from: break, reason: not valid java name */
    private Subscription f22234break;

    /* renamed from: catch, reason: not valid java name */
    private ItemTouchHelperCallback f22235catch;

    @BindView(R.id.arg_res_0x7f09016a)
    public RelativeLayout error_view;

    /* renamed from: goto, reason: not valid java name */
    public HistoryComicAdapter f22236goto;

    @BindView(R.id.arg_res_0x7f0902a2)
    public AVLoadingIndicatorView mIndicatorView;

    @BindView(R.id.arg_res_0x7f0902a1)
    public RelativeLayout mLoadingRootView;

    @BindView(R.id.arg_res_0x7f0902a4)
    public RecyclerView mRecyclerView;

    @BindView(R.id.arg_res_0x7f0902a9)
    public ShadowLayout mShadowLayout;

    @BindView(R.id.arg_res_0x7f09035c)
    public SmartRefreshLayout refreshLayout;

    /* renamed from: this, reason: not valid java name */
    private ItemTouchHelper f22237this;

    @BindView(R.id.arg_res_0x7f09016b)
    public TextView tvErrorView;

    @BindView(R.id.arg_res_0x7f0904a7)
    public TextView tvRetry;

    @BindView(R.id.arg_res_0x7f090465)
    public TextView tv_cancel;

    @BindView(R.id.arg_res_0x7f090476)
    public TextView tv_delete;

    @BindView(R.id.arg_res_0x7f0904ad)
    public TextView tv_select_all;

    /* renamed from: com.wsw.cospa.fragment.HistoryRecordFragment$case, reason: invalid class name */
    public class Ccase implements Action1<List<HistoryComicBean>> {

        /* renamed from: com.wsw.cospa.fragment.HistoryRecordFragment$case$do, reason: invalid class name */
        public class Cdo implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ List f22239do;

            public Cdo(List list) {
                this.f22239do = list;
            }

            @Override // java.lang.Runnable
            public void run() {
                List list = this.f22239do;
                if (list == null || list.size() <= 0) {
                    HistoryRecordFragment.this.m26237native();
                } else {
                    HistoryRecordFragment.this.m26236import();
                    HistoryRecordFragment.this.f22236goto.refresh(this.f22239do);
                }
            }
        }

        public Ccase() {
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(List<HistoryComicBean> list) {
            com.wsw.cospa.utils.Ccase.m26722this().m26728throw().execute(new Cdo(list));
        }
    }

    /* renamed from: com.wsw.cospa.fragment.HistoryRecordFragment$do, reason: invalid class name */
    public class Cdo implements OnLongItemClickListener {
        public Cdo() {
        }

        @Override // com.wsw.cospa.listener.OnLongItemClickListener
        public void onLongClick(View view, int i) {
            try {
                ArrayList arrayList = new ArrayList();
                for (HistoryComicBean historyComicBean : HistoryRecordFragment.this.f22236goto.m25744else()) {
                    historyComicBean.setChecked(false);
                    arrayList.add(historyComicBean);
                }
                HistoryRecordFragment.this.f22236goto.refresh(arrayList);
                HistoryRecordFragment.this.f22236goto.m25748throw(true);
                HistoryRecordFragment.this.f22235catch.setSwipeEnable(false);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) HistoryRecordFragment.this.refreshLayout.getLayoutParams();
                marginLayoutParams.bottomMargin = (int) j10.m3660new(HistoryRecordFragment.this.f21919new, 45.0f);
                HistoryRecordFragment.this.refreshLayout.setLayoutParams(marginLayoutParams);
                HistoryRecordFragment.this.mShadowLayout.setVisibility(0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.wsw.cospa.fragment.HistoryRecordFragment$for, reason: invalid class name */
    public class Cfor implements View.OnClickListener {
        public Cfor() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HistoryRecordFragment.this.f22236goto.m25748throw(false);
            HistoryRecordFragment.this.f22235catch.setSwipeEnable(true);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) HistoryRecordFragment.this.refreshLayout.getLayoutParams();
            marginLayoutParams.bottomMargin = (int) j10.m3660new(HistoryRecordFragment.this.f21919new, 0.0f);
            HistoryRecordFragment.this.refreshLayout.setLayoutParams(marginLayoutParams);
            HistoryRecordFragment.this.mShadowLayout.setVisibility(8);
        }
    }

    /* renamed from: com.wsw.cospa.fragment.HistoryRecordFragment$if, reason: invalid class name */
    public class Cif implements HistoryComicAdapter.OnCheckedChangeListener {

        /* renamed from: com.wsw.cospa.fragment.HistoryRecordFragment$if$do, reason: invalid class name */
        public class Cdo implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ int f22244do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ boolean f22246if;

            public Cdo(int i, boolean z) {
                this.f22244do = i;
                this.f22246if = z;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    HistoryRecordFragment.this.f22236goto.m25745goto(this.f22244do).setChecked(this.f22246if);
                    HistoryRecordFragment.this.f22236goto.notifyItemChanged(this.f22244do);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        public Cif() {
        }

        @Override // com.wsw.cospa.adapter.HistoryComicAdapter.OnCheckedChangeListener
        public void onCheckedChanged(int i, boolean z) {
            if (HistoryRecordFragment.this.mRecyclerView.isComputingLayout()) {
                HistoryRecordFragment.this.mRecyclerView.post(new Cdo(i, z));
            } else {
                try {
                    HistoryRecordFragment.this.f22236goto.m25745goto(i).setChecked(z);
                    HistoryRecordFragment.this.f22236goto.notifyItemChanged(i);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            ArrayList arrayList = new ArrayList();
            List<HistoryComicBean> listM25744else = HistoryRecordFragment.this.f22236goto.m25744else();
            for (HistoryComicBean historyComicBean : listM25744else) {
                if (historyComicBean.isChecked()) {
                    arrayList.add(historyComicBean);
                }
            }
            if (arrayList.size() >= listM25744else.size()) {
                HistoryRecordFragment.this.tv_select_all.setText("取消全选");
            } else {
                HistoryRecordFragment.this.tv_select_all.setText("全选");
            }
        }
    }

    /* renamed from: com.wsw.cospa.fragment.HistoryRecordFragment$new, reason: invalid class name */
    public class Cnew implements View.OnClickListener {
        public Cnew() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                ArrayList arrayList = new ArrayList();
                List<HistoryComicBean> listM25744else = HistoryRecordFragment.this.f22236goto.m25744else();
                for (HistoryComicBean historyComicBean : listM25744else) {
                    if (historyComicBean.isChecked()) {
                        arrayList.add(historyComicBean);
                    }
                }
                if (arrayList.size() >= listM25744else.size()) {
                    ArrayList arrayList2 = new ArrayList();
                    for (HistoryComicBean historyComicBean2 : HistoryRecordFragment.this.f22236goto.m25744else()) {
                        if (historyComicBean2.isChecked()) {
                            historyComicBean2.setChecked(false);
                        }
                        arrayList2.add(historyComicBean2);
                    }
                    HistoryRecordFragment.this.f22236goto.refresh(arrayList2);
                    HistoryRecordFragment.this.tv_select_all.setText("全选");
                    return;
                }
                ArrayList arrayList3 = new ArrayList();
                for (HistoryComicBean historyComicBean3 : HistoryRecordFragment.this.f22236goto.m25744else()) {
                    if (!historyComicBean3.isChecked()) {
                        historyComicBean3.setChecked(true);
                    }
                    arrayList3.add(historyComicBean3);
                }
                HistoryRecordFragment.this.f22236goto.refresh(arrayList3);
                HistoryRecordFragment.this.tv_select_all.setText("取消全选");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.wsw.cospa.fragment.HistoryRecordFragment$try, reason: invalid class name */
    public class Ctry implements View.OnClickListener {
        public Ctry() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (HistoryComicBean historyComicBean : HistoryRecordFragment.this.f22236goto.m25744else()) {
                    if (historyComicBean.isChecked()) {
                        arrayList.add(historyComicBean);
                    } else {
                        arrayList2.add(historyComicBean);
                    }
                }
                DatabaseHelper.m26016switch().m26029implements(arrayList);
                HistoryRecordFragment.this.f22236goto.refresh(arrayList2);
                HistoryRecordFragment.this.f22236goto.m25748throw(false);
                HistoryRecordFragment.this.f22235catch.setSwipeEnable(true);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) HistoryRecordFragment.this.refreshLayout.getLayoutParams();
                marginLayoutParams.bottomMargin = (int) j10.m3660new(HistoryRecordFragment.this.f21919new, 0.0f);
                HistoryRecordFragment.this.refreshLayout.setLayoutParams(marginLayoutParams);
                HistoryRecordFragment.this.mShadowLayout.setVisibility(8);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public /* synthetic */ void m26228class(RefreshLayout refreshLayout) {
        m26233super();
        refreshLayout.finishRefresh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: const, reason: not valid java name */
    public /* synthetic */ void m26229const(int i) {
        try {
            HistoryComicBean historyComicBean = this.f22236goto.m25744else().get(i);
            SearchComicBean searchComicBeanM26038return = DatabaseHelper.m26016switch().m26038return(historyComicBean.getNoteUrl());
            if (searchComicBeanM26038return != null) {
                ComicDetailActivity.R(getActivity(), false, searchComicBeanM26038return);
            } else {
                ComicDetailActivity.S(getActivity(), true, historyComicBean.getNoteUrl());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: final, reason: not valid java name */
    public /* synthetic */ void m26231final(int i) {
        try {
            SearchComicActivity.g(getActivity(), this.f22236goto.m25744else().get(i).getName());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static HistoryRecordFragment m26235throw() {
        return new HistoryRecordFragment();
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: case */
    public void mo25879case() {
        mm1.m4950case().m9005for(this);
        this.refreshLayout.setEnableLoadMore(false);
        this.refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: android.support.v4.mj0
            @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
            public final void onRefresh(RefreshLayout refreshLayout) {
                this.f3925do.m26228class(refreshLayout);
            }
        });
        this.f22236goto = new HistoryComicAdapter(getActivity());
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.mRecyclerView.setAdapter(this.f22236goto);
        int iM3660new = (int) j10.m3660new(this.f21919new, 10.0f);
        this.mShadowLayout.setShadowColor(Color.parseColor("#333C3C5A"));
        this.mShadowLayout.setShadowRadius(iM3660new);
        this.mShadowLayout.setShadowMargin(0, iM3660new, 0, 0);
        this.f22236goto.setOnItemClickListener(new OnItemClickListener() { // from class: android.support.v4.pj0
            @Override // com.wsw.cospa.listener.OnItemClickListener
            public final void onItemClick(int i) {
                this.f4991do.m26229const(i);
            }
        });
        this.f22236goto.setOnLongItemClickListener(new Cdo());
        this.f22236goto.setItemSearchListener(new HistoryComicAdapter.OnItemSearchClickListener() { // from class: android.support.v4.nj0
            @Override // com.wsw.cospa.adapter.HistoryComicAdapter.OnItemSearchClickListener
            public final void onItemSearchClick(int i) {
                this.f4242do.m26231final(i);
            }
        });
        this.f22236goto.setOnCheckedChangeListener(new Cif());
        this.f22236goto.setOnSlideRemoveListener(new HistoryComicAdapter.OnSlideRemoveListener() { // from class: android.support.v4.oj0
            @Override // com.wsw.cospa.adapter.HistoryComicAdapter.OnSlideRemoveListener
            public final void onSlideRemove() {
                this.f4646do.m26233super();
            }
        });
        this.tv_cancel.setOnClickListener(new Cfor());
        this.tv_select_all.setOnClickListener(new Cnew());
        this.tv_delete.setOnClickListener(new Ctry());
        ItemTouchHelperCallback itemTouchHelperCallback = new ItemTouchHelperCallback(this.f22236goto);
        this.f22235catch = itemTouchHelperCallback;
        itemTouchHelperCallback.setDragEnable(false);
        this.f22235catch.setSwipeEnable(true);
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(this.f22235catch);
        this.f22237this = itemTouchHelper;
        itemTouchHelper.attachToRecyclerView(this.mRecyclerView);
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: if */
    public int mo25882if() {
        return R.layout.arg_res_0x7f0c008a;
    }

    /* renamed from: import, reason: not valid java name */
    public void m26236import() {
        this.mLoadingRootView.setVisibility(8);
        this.refreshLayout.setVisibility(0);
    }

    /* renamed from: native, reason: not valid java name */
    public void m26237native() {
        this.tvRetry.setVisibility(8);
        this.error_view.setVisibility(0);
        this.mIndicatorView.setVisibility(8);
        this.refreshLayout.setVisibility(8);
        this.mLoadingRootView.setVisibility(0);
        this.tvErrorView.setText("暂无阅读记录，赶紧去搜索吧");
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: new */
    public void mo25883new() {
        m26233super();
    }

    @Override // com.wsw.cospa.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        mm1.m4950case().m9006new(this);
        Subscription subscription = this.f22234break;
        if (subscription != null) {
            subscription.unsubscribe();
            this.f22234break = null;
        }
        super.onDestroy();
    }

    @Override // com.wsw.cospa.event.RefreshHistoryMessageObserver
    public void onRefreshHistoryMessage() {
        m26233super();
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: try */
    public m7 mo25884try() {
        return null;
    }

    /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
    public void m26233super() {
        this.f22234break = DatabaseHelper.m26016switch().m26039static().e4(ds1.m1523try()).b4(new Ccase());
    }
}
