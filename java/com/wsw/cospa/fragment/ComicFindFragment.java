package com.wsw.cospa.fragment;

import android.content.res.Resources;
import android.support.v4.cq;
import android.support.v4.j10;
import android.support.v4.jm1;
import android.support.v4.m7;
import android.support.v4.v02;
import android.support.v4.wq;
import android.text.TextUtils;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.gaoneng.library.AutoScrollBackLayout;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.R;
import com.wsw.cospa.adapter.FindComicAdaprter;
import com.wsw.cospa.base.BaseFragment;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.dao.Cnew;
import com.wsw.cospa.dao.ComicSourceBeanDao;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.event.RefreshBookGroupMessageObserver;
import com.wsw.cospa.utils.Ctry;
import com.wsw.cospa.vo.FindParentVo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.query.QueryBuilder;
import org.greenrobot.greendao.query.WhereCondition;

/* loaded from: classes2.dex */
public class ComicFindFragment extends BaseFragment implements RefreshBookGroupMessageObserver {

    /* renamed from: break, reason: not valid java name */
    private FindComicAdaprter f22211break;

    /* renamed from: catch, reason: not valid java name */
    public cq f22212catch = new cq();

    @BindView(R.id.arg_res_0x7f09016a)
    public RelativeLayout error_view;

    /* renamed from: goto, reason: not valid java name */
    private SearchView.SearchAutoComplete f22213goto;

    @BindView(R.id.arg_res_0x7f0902a4)
    public RecyclerView mRecyclerView;

    @BindView(R.id.arg_res_0x7f09035e)
    public SmartRefreshLayout refreshLayout;

    @BindView(R.id.arg_res_0x7f090384)
    public AutoScrollBackLayout scrollLayout;

    @BindView(R.id.arg_res_0x7f090389)
    public SearchView searchView;

    /* renamed from: this, reason: not valid java name */
    private boolean f22214this;

    @BindView(R.id.arg_res_0x7f09016b)
    public TextView tvErrorView;

    @BindView(R.id.arg_res_0x7f0904a7)
    public TextView tvRetry;

    /* renamed from: com.wsw.cospa.fragment.ComicFindFragment$do, reason: invalid class name */
    public class Cdo implements SearchView.OnQueryTextListener {
        public Cdo() {
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextChange(String str) {
            ComicFindFragment.this.f22214this = !TextUtils.isEmpty(str);
            ComicFindFragment.this.m26195super();
            return false;
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextSubmit(String str) {
            return false;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private void m26188catch() throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        this.scrollLayout.m12373this();
        Ctry.m27142const(this.searchView, "搜索图源名");
        SearchView.SearchAutoComplete searchAutoComplete = (SearchView.SearchAutoComplete) this.searchView.findViewById(R.id.arg_res_0x7f090394);
        this.f22213goto = searchAutoComplete;
        searchAutoComplete.setHintTextColor(getResources().getColor(R.color.arg_res_0x7f060384));
        this.f22213goto.setTextSize(14.0f);
        this.searchView.onActionViewExpanded();
        this.searchView.clearFocus();
        j10.m3652do(this.searchView);
        this.searchView.setOnQueryTextListener(new Cdo());
        this.f22211break = new FindComicAdaprter(getActivity());
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.mRecyclerView.setItemViewCacheSize(10);
        this.mRecyclerView.setItemAnimator(null);
        this.mRecyclerView.setAdapter(this.f22211break);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public /* synthetic */ void m26189class(RefreshLayout refreshLayout) {
        m26190const();
    }

    /* renamed from: const, reason: not valid java name */
    private void m26190const() {
        m26194break();
        boolean zM8713do = v02.m8711if(getActivity()).m8713do(wq.G, false);
        boolean zM8713do2 = v02.m8711if(getActivity()).m8713do(wq.H, true);
        ArrayList arrayList = zM8713do ? new ArrayList(DatabaseHelper.m26016switch().m26040super(zM8713do2)) : new ArrayList(DatabaseHelper.m26016switch().m26023const(zM8713do2));
        try {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ComicSourceBean comicSourceBean = (ComicSourceBean) it.next();
                if (!TextUtils.isEmpty(comicSourceBean.getRuleFindUrl())) {
                    FindParentVo findParentVo = new FindParentVo();
                    findParentVo.setParentName(comicSourceBean.getBookSourceName());
                    findParentVo.setParentTag(comicSourceBean.getBookSourceUrl());
                    arrayList2.add(findParentVo);
                }
            }
            this.f22211break.refresh(arrayList2);
            this.refreshLayout.finishRefresh();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static ComicFindFragment m26192final() {
        return new ComicFindFragment();
    }

    /* renamed from: break, reason: not valid java name */
    public void m26194break() {
        this.error_view.setVisibility(8);
        this.scrollLayout.setVisibility(0);
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: case */
    public void mo25879case() throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        m26188catch();
        this.refreshLayout.setEnableRefresh(true);
        this.refreshLayout.setEnableAutoLoadMore(false);
        this.refreshLayout.setEnableOverScrollDrag(true);
        this.refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: android.support.v4.ln
            @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
            public final void onRefresh(RefreshLayout refreshLayout) {
                this.f3718do.m26189class(refreshLayout);
            }
        });
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: if */
    public int mo25882if() {
        return R.layout.arg_res_0x7f0c0086;
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: new */
    public void mo25883new() {
        jm1.m3934case().m9005for(this);
        m26190const();
    }

    @Override // com.wsw.cospa.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        jm1.m3934case().m9006new(this);
        cq cqVar = this.f22212catch;
        if (cqVar != null) {
            cqVar.dispose();
            this.f22212catch = null;
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        this.searchView.clearFocus();
        j10.m3652do(this.searchView);
        super.onPause();
    }

    @Override // com.wsw.cospa.event.RefreshBookGroupMessageObserver
    public void onRefreshBookGroupMessage() {
        m26194break();
        m26190const();
    }

    /* renamed from: super, reason: not valid java name */
    public void m26195super() {
        List<ComicSourceBean> arrayList = new ArrayList<>();
        ArrayList arrayList2 = new ArrayList();
        if (this.f22214this) {
            String str = "%" + ((Object) this.searchView.getQuery()) + "%";
            QueryBuilder<ComicSourceBean> queryBuilder = Cnew.m26132case().m26138try().m3139goto().queryBuilder();
            Property property = ComicSourceBeanDao.Properties.f22037new;
            arrayList = queryBuilder.where(queryBuilder.and(property.isNotNull(), queryBuilder.or(ComicSourceBeanDao.Properties.f22052try.like(str), ComicSourceBeanDao.Properties.f22018case.like(str), property.like(str)), new WhereCondition[0]), new WhereCondition[0]).orderDesc(ComicSourceBeanDao.Properties.f22017break).orderRaw(m26196this()).list();
        } else {
            boolean zM8713do = v02.m8711if(getActivity()).m8713do(wq.G, false);
            boolean zM8713do2 = v02.m8711if(getActivity()).m8713do(wq.H, true);
            try {
                for (ComicSourceBean comicSourceBean : zM8713do ? new ArrayList(DatabaseHelper.m26016switch().m26040super(zM8713do2)) : new ArrayList(DatabaseHelper.m26016switch().m26023const(zM8713do2))) {
                    if (!TextUtils.isEmpty(comicSourceBean.getRuleFindUrl())) {
                        arrayList.add(comicSourceBean);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (arrayList != null && arrayList.size() > 0) {
            for (ComicSourceBean comicSourceBean2 : arrayList) {
                if (!TextUtils.isEmpty(comicSourceBean2.getRuleFindUrl())) {
                    FindParentVo findParentVo = new FindParentVo();
                    findParentVo.setParentName(comicSourceBean2.getBookSourceName());
                    findParentVo.setParentTag(comicSourceBean2.getBookSourceUrl());
                    arrayList2.add(findParentVo);
                }
            }
        }
        this.f22211break.refresh(arrayList2);
    }

    /* renamed from: this, reason: not valid java name */
    public String m26196this() {
        int iM8715for = v02.m8711if(CartoonApplication.m24690do()).m8715for("SourceSort", 0);
        if (iM8715for == 1) {
            return ComicSourceBeanDao.Properties.f22017break.columnName + " DESC";
        }
        if (iM8715for != 2) {
            return ComicSourceBeanDao.Properties.f22048this.columnName + " ASC";
        }
        return ComicSourceBeanDao.Properties.f22052try.columnName + " COLLATE LOCALIZED ASC";
    }

    /* renamed from: throw, reason: not valid java name */
    public void m26197throw(String str) {
        this.error_view.setVisibility(0);
        this.scrollLayout.setVisibility(8);
        this.tvErrorView.setText(str);
        this.tvRetry.setText("点击刷新");
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: try */
    public m7 mo25884try() {
        return null;
    }
}
