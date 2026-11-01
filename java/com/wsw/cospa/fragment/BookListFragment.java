package com.wsw.cospa.fragment;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.support.v4.jm1;
import android.support.v4.m7;
import android.support.v4.v02;
import android.support.v4.wq;
import android.support.v4.y8;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.flyco.tablayout.SlidingTabLayout;
import com.flyco.tablayout.listener.OnTabSelectListener;
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.AddBookShelfActivity;
import com.wsw.cospa.activity.HomeActivity;
import com.wsw.cospa.adapter.CustomPagerAdapter;
import com.wsw.cospa.base.BaseFragment;
import com.wsw.cospa.bean.ComicShelfGroupBean;
import com.wsw.cospa.event.RefreshBookGroupMessageObserver;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class BookListFragment extends BaseFragment implements RefreshBookGroupMessageObserver {

    /* renamed from: catch, reason: not valid java name */
    private List<ComicShelfGroupBean> f22160catch;

    @BindView(R.id.arg_res_0x7f09016a)
    public RelativeLayout error_view;

    /* renamed from: goto, reason: not valid java name */
    private CustomPagerAdapter f22162goto;

    @BindView(R.id.arg_res_0x7f090244)
    public RelativeLayout ivMoreChannel;

    @BindView(R.id.arg_res_0x7f0902a2)
    public AVLoadingIndicatorView mIndicatorView;

    @BindView(R.id.arg_res_0x7f0902a1)
    public RelativeLayout mLoadingRootView;

    @BindView(R.id.arg_res_0x7f0902ac)
    public ViewPager mViewPager;

    @BindView(R.id.arg_res_0x7f09040f)
    public SlidingTabLayout tabLayout;

    /* renamed from: this, reason: not valid java name */
    private HomeActivity f22163this;

    @BindView(R.id.arg_res_0x7f09016b)
    public TextView tvErrorView;

    @BindView(R.id.arg_res_0x7f0904a7)
    public TextView tvRetry;

    /* renamed from: break, reason: not valid java name */
    private ArrayList<Fragment> f22159break = new ArrayList<>();

    /* renamed from: class, reason: not valid java name */
    private List<String> f22161class = new ArrayList();

    /* renamed from: com.wsw.cospa.fragment.BookListFragment$do, reason: invalid class name */
    public class Cdo implements ViewPager.OnPageChangeListener {
        public Cdo() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            v02.m8711if(BookListFragment.this.getActivity()).m8714else(wq.b, i);
        }
    }

    /* renamed from: com.wsw.cospa.fragment.BookListFragment$if, reason: invalid class name */
    public class Cif implements OnTabSelectListener {
        public Cif() {
        }

        @Override // com.flyco.tablayout.listener.OnTabSelectListener
        public void onTabReselect(int i) {
            BookShelfFragment bookShelfFragment;
            if (BookListFragment.this.f22159break != null) {
                if (v02.m8711if(BookListFragment.this.f21919new).m8713do(wq.f7617interface, true)) {
                    if (i <= 0 || (bookShelfFragment = (BookShelfFragment) BookListFragment.this.f22159break.get(i)) == null) {
                        return;
                    }
                    AddBookShelfActivity.m24729transient(BookListFragment.this, false, bookShelfFragment.m26180interface());
                    return;
                }
                BookShelfFragment bookShelfFragment2 = (BookShelfFragment) BookListFragment.this.f22159break.get(i);
                if (bookShelfFragment2 != null) {
                    AddBookShelfActivity.m24729transient(BookListFragment.this, false, bookShelfFragment2.m26180interface());
                }
            }
        }

        @Override // com.flyco.tablayout.listener.OnTabSelectListener
        public void onTabSelect(int i) {
            v02.m8711if(BookListFragment.this.getActivity()).m8714else(wq.b, i);
        }

        @Override // com.flyco.tablayout.listener.OnTabSelectListener
        public void onTabSelected(int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public /* synthetic */ void m26144catch(View view) {
        String str = System.currentTimeMillis() + "_shelfGroup";
        y8.m9768for().m9771new(str, this.f22160catch);
        AddBookShelfActivity.m24717implements(this, true, str);
    }

    /* renamed from: class, reason: not valid java name */
    public static BookListFragment m26145class() {
        return new BookListFragment();
    }

    /* renamed from: break, reason: not valid java name */
    public void m26148break() throws Resources.NotFoundException {
        m26150this();
        this.f22161class.clear();
        boolean zM8713do = v02.m8711if(this.f21919new).m8713do(wq.f7617interface, true);
        if (this.f22162goto == null) {
            this.f22160catch = com.wsw.cospa.dao.Cdo.h();
            if (zM8713do) {
                this.f22161class.add(wq.w0);
                this.f22159break.add(BookShelfFragment.n(0L));
            }
            for (int i = 0; i < this.f22160catch.size(); i++) {
                ComicShelfGroupBean comicShelfGroupBean = this.f22160catch.get(i);
                if (comicShelfGroupBean.getEnable()) {
                    this.f22161class.add(comicShelfGroupBean.getGroupName());
                    this.f22159break.add(BookShelfFragment.n(comicShelfGroupBean.getId().longValue()));
                }
            }
            this.f22162goto = new CustomPagerAdapter(getChildFragmentManager(), this.f22159break);
            if (this.f22159break.size() > 0) {
                this.mViewPager.setOffscreenPageLimit(this.f22159break.size() - 1);
            }
            this.mViewPager.setAdapter(this.f22162goto);
            this.f22162goto.m25625if(this.f22161class);
            this.tabLayout.setViewPager(this.mViewPager);
            this.tabLayout.setCurrentTab(v02.m8711if(getActivity()).m8715for(wq.b, 0));
        } else {
            this.f22159break.clear();
            if (zM8713do) {
                this.f22161class.add(wq.w0);
                this.f22159break.add(BookShelfFragment.n(0L));
            }
            List<ComicShelfGroupBean> listH = com.wsw.cospa.dao.Cdo.h();
            this.f22160catch = listH;
            if (listH != null && listH.size() > 0) {
                for (int i2 = 0; i2 < this.f22160catch.size(); i2++) {
                    ComicShelfGroupBean comicShelfGroupBean2 = this.f22160catch.get(i2);
                    if (comicShelfGroupBean2.getEnable()) {
                        this.f22161class.add(comicShelfGroupBean2.getGroupName());
                        this.f22159break.add(BookShelfFragment.n(comicShelfGroupBean2.getId().longValue()));
                    }
                }
            }
            this.f22162goto.m25625if(this.f22161class);
            this.tabLayout.m12320while(0, false);
            this.tabLayout.m12309final();
        }
        this.mViewPager.addOnPageChangeListener(new Cdo());
        this.tabLayout.setOnTabSelectListener(new Cif());
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: case */
    public void mo25879case() {
        this.ivMoreChannel.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.va
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7129do.m26144catch(view);
            }
        });
    }

    /* renamed from: const, reason: not valid java name */
    public void m26149const(String str) {
        this.error_view.setVisibility(0);
        this.mIndicatorView.setVisibility(8);
        this.mViewPager.setVisibility(8);
        this.tvErrorView.setText(str);
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: if */
    public int mo25882if() {
        return R.layout.arg_res_0x7f0c0080;
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: new */
    public void mo25883new() throws Resources.NotFoundException {
        jm1.m3934case().m9005for(this);
        m26148break();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) throws Resources.NotFoundException {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1) {
            if (i == 10101) {
                m26148break();
            } else if (i == 10102) {
                m26148break();
            }
        }
    }

    @Override // com.wsw.cospa.base.BaseFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f22163this = (HomeActivity) context;
    }

    @Override // com.wsw.cospa.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        jm1.m3934case().m9006new(this);
        super.onDestroy();
    }

    @Override // com.wsw.cospa.event.RefreshBookGroupMessageObserver
    public void onRefreshBookGroupMessage() throws Resources.NotFoundException {
        m26148break();
    }

    /* renamed from: this, reason: not valid java name */
    public void m26150this() {
        this.mLoadingRootView.setVisibility(8);
        this.mViewPager.setVisibility(0);
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: try */
    public m7 mo25884try() {
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f22163this = (HomeActivity) activity;
    }
}
