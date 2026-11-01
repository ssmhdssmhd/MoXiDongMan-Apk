package com.wsw.cospa.activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.support.v4.b0;
import android.support.v4.bz1;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.on0;
import android.support.v4.p12;
import android.support.v4.wq;
import android.text.TextUtils;
import android.view.MenuItem;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.flyco.tablayout.SlidingTabLayout;
import com.flyco.tablayout.listener.OnTabSelectListener;
import com.google.android.material.appbar.AppBarLayout;
import com.google.gson.GsonBuilder;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wsw.cospa.R;
import com.wsw.cospa.adapter.CustomPagerAdapter;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.CookieBean;
import com.wsw.cospa.dao.Cnew;
import com.wsw.cospa.fragment.FindColumnFragment;
import com.wsw.cospa.utils.Cimplements;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.vo.FindChildVo;
import com.wsw.cospa.vo.FindParentVo;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes2.dex */
public class FindCategoryActivity extends BaseActivity {

    /* renamed from: break, reason: not valid java name */
    private ArrayList<Fragment> f21133break = new ArrayList<>();

    /* renamed from: goto, reason: not valid java name */
    private FindParentVo f21134goto;

    @BindView(R.id.arg_res_0x7f090299)
    public AppBarLayout mAppBarLayout;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f0902ac)
    public ViewPager mViewPager;

    @BindView(R.id.arg_res_0x7f09040f)
    public SlidingTabLayout tabLayout;

    /* renamed from: this, reason: not valid java name */
    private CustomPagerAdapter f21135this;

    @BindView(R.id.arg_res_0x7f0904be)
    public TextView tvTitle;

    /* renamed from: com.wsw.cospa.activity.FindCategoryActivity$do, reason: invalid class name */
    public class Cdo extends bz1<FindParentVo> {

        /* renamed from: com.wsw.cospa.activity.FindCategoryActivity$do$do, reason: invalid class name and collision with other inner class name */
        public class C0219do implements OnTabSelectListener {
            public C0219do() {
            }

            @Override // com.flyco.tablayout.listener.OnTabSelectListener
            public void onTabReselect(int i) {
            }

            @Override // com.flyco.tablayout.listener.OnTabSelectListener
            public void onTabSelect(int i) {
                if (FindCategoryActivity.this.f21133break == null || FindCategoryActivity.this.f21133break.get(i) == null) {
                    return;
                }
                ((FindColumnFragment) FindCategoryActivity.this.f21133break.get(i)).m26225volatile();
            }

            @Override // com.flyco.tablayout.listener.OnTabSelectListener
            public void onTabSelected(int i) {
                if (FindCategoryActivity.this.f21133break == null || FindCategoryActivity.this.f21133break.get(i) == null) {
                    return;
                }
                ((FindColumnFragment) FindCategoryActivity.this.f21133break.get(i)).m26225volatile();
            }
        }

        public Cdo() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(FindParentVo findParentVo) throws Resources.NotFoundException {
            List<FindChildVo> childVoList = findParentVo.getChildVoList();
            if (FindCategoryActivity.this.f21135this != null) {
                FindCategoryActivity.this.f21133break.clear();
                ArrayList arrayList = new ArrayList();
                int i = 0;
                while (i < childVoList.size()) {
                    FindChildVo findChildVo = childVoList.get(i);
                    if (findChildVo != null) {
                        arrayList.add(findChildVo.getKindName());
                        FindCategoryActivity.this.f21133break.add(FindColumnFragment.m26212private(findParentVo, findChildVo, i == 0));
                    }
                    i++;
                }
                FindCategoryActivity.this.f21135this.m25625if(arrayList);
                FindCategoryActivity.this.tabLayout.m12320while(0, false);
                FindCategoryActivity.this.tabLayout.m12309final();
                return;
            }
            ArrayList arrayList2 = new ArrayList();
            int i2 = 0;
            while (i2 < childVoList.size()) {
                FindChildVo findChildVo2 = childVoList.get(i2);
                if (findChildVo2 != null) {
                    arrayList2.add(findChildVo2.getKindName());
                    FindCategoryActivity.this.f21133break.add(FindColumnFragment.m26212private(findParentVo, findChildVo2, i2 == 0));
                }
                i2++;
            }
            FindCategoryActivity findCategoryActivity = FindCategoryActivity.this;
            findCategoryActivity.f21135this = new CustomPagerAdapter(findCategoryActivity.getSupportFragmentManager(), FindCategoryActivity.this.f21133break);
            FindCategoryActivity findCategoryActivity2 = FindCategoryActivity.this;
            findCategoryActivity2.mViewPager.setOffscreenPageLimit(findCategoryActivity2.f21133break.size() - 1);
            FindCategoryActivity findCategoryActivity3 = FindCategoryActivity.this;
            findCategoryActivity3.mViewPager.setAdapter(findCategoryActivity3.f21135this);
            FindCategoryActivity.this.f21135this.m25625if(arrayList2);
            FindCategoryActivity findCategoryActivity4 = FindCategoryActivity.this;
            findCategoryActivity4.tabLayout.setViewPager(findCategoryActivity4.mViewPager);
            FindCategoryActivity.this.tabLayout.setOnTabSelectListener(new C0219do());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: switch, reason: not valid java name */
    public /* synthetic */ void m25067switch(ObservableEmitter observableEmitter) throws Exception {
        String[] strArrSplit;
        ComicSourceBean comicSourceBeanM26368protected = com.wsw.cospa.model.Cdo.m26368protected(this.f21134goto.getParentTag());
        String ruleFindUrl = comicSourceBeanM26368protected.getRuleFindUrl();
        if (TextUtils.isEmpty(ruleFindUrl)) {
            return;
        }
        if (ruleFindUrl.startsWith("<js>")) {
            String strSubstring = ruleFindUrl.substring(4, ruleFindUrl.lastIndexOf("<"));
            CookieBean cookieBeanLoad = Cnew.m26132case().m26138try().m3142this().load(comicSourceBeanM26368protected.getBookSourceUrl());
            HashMap map = new HashMap();
            if (cookieBeanLoad == null || Cclass.A(cookieBeanLoad.getVariableStr())) {
                strArrSplit = Cimplements.m26920do(strSubstring, comicSourceBeanM26368protected.getBookSourceUrl()).toString().split("(&&|\n)+");
            } else {
                map.put(wq.m0, cookieBeanLoad.getVariableStr());
                strArrSplit = Cimplements.m26921if(strSubstring, comicSourceBeanM26368protected.getBookSourceUrl(), new GsonBuilder().disableHtmlEscaping().create().toJson(map)).toString().split("(&&|\n)+");
            }
        } else {
            strArrSplit = ruleFindUrl.split("(&&|\n)+");
        }
        ArrayList arrayList = new ArrayList();
        for (String str : strArrSplit) {
            if (!str.trim().isEmpty()) {
                String[] strArrSplit2 = str.split("::");
                FindChildVo findChildVo = new FindChildVo();
                findChildVo.setParentName(comicSourceBeanM26368protected.getBookSourceName());
                findChildVo.setParentTag(comicSourceBeanM26368protected.getBookSourceUrl());
                findChildVo.setKindName(strArrSplit2[0]);
                if (strArrSplit2[1].startsWith("http")) {
                    findChildVo.setKindUrl(strArrSplit2[1]);
                } else if (comicSourceBeanM26368protected.getBookSourceUrl().endsWith(on0.f4694final)) {
                    if (strArrSplit2[1].startsWith(on0.f4694final)) {
                        findChildVo.setKindUrl(comicSourceBeanM26368protected.getBookSourceUrl().substring(0, comicSourceBeanM26368protected.getBookSourceUrl().lastIndexOf(on0.f4694final)) + strArrSplit2[1]);
                    } else {
                        findChildVo.setKindUrl(comicSourceBeanM26368protected.getBookSourceUrl() + strArrSplit2[1]);
                    }
                } else if (strArrSplit2[1].startsWith(on0.f4694final)) {
                    findChildVo.setKindUrl(comicSourceBeanM26368protected.getBookSourceUrl() + strArrSplit2[1]);
                } else {
                    findChildVo.setKindUrl(comicSourceBeanM26368protected.getBookSourceUrl() + on0.f4694final + strArrSplit2[1]);
                }
                arrayList.add(findChildVo);
            }
        }
        this.f21134goto.setParentName(comicSourceBeanM26368protected.getBookSourceName());
        this.f21134goto.setParentTag(comicSourceBeanM26368protected.getBookSourceUrl());
        this.f21134goto.setChildVoList(arrayList);
        observableEmitter.onNext(this.f21134goto);
        observableEmitter.onComplete();
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m25068throws(Context context, FindParentVo findParentVo) {
        Intent intent = new Intent(context, (Class<?>) FindCategoryActivity.class);
        intent.putExtra(wq.Cdo.f7661return, findParentVo);
        context.startActivity(intent);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c0033;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }

    /* renamed from: static, reason: not valid java name */
    public void m25069static() {
        ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.jb0
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f3046do.m25067switch(observableEmitter);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cdo());
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() {
        p12.m5832case(this);
        Csynchronized.m27098for(this, this.mToolbar);
        FindParentVo findParentVo = (FindParentVo) getIntent().getSerializableExtra(wq.Cdo.f7661return);
        this.f21134goto = findParentVo;
        this.tvTitle.setText(findParentVo.getParentName());
        m25069static();
    }
}
