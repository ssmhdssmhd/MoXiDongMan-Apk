package com.wsw.cospa.fragment;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.b0;
import android.support.v4.bz1;
import android.support.v4.d72;
import android.support.v4.ih;
import android.support.v4.k61;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.o32;
import android.support.v4.om1;
import android.support.v4.on0;
import android.support.v4.v02;
import android.support.v4.v72;
import android.support.v4.vv0;
import android.support.v4.wq;
import android.text.TextUtils;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.flyco.tablayout.SlidingTabLayout;
import com.flyco.tablayout.listener.OnTabSelectListener;
import com.google.gson.GsonBuilder;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.ChannelEditDialog;
import com.wsw.cospa.activity.HomeActivity;
import com.wsw.cospa.adapter.CustomPagerAdapter;
import com.wsw.cospa.base.BaseFragment;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.CookieBean;
import com.wsw.cospa.dao.Cnew;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.event.ObtainRecommendListMessageObserver;
import com.wsw.cospa.event.RefreshRecommendChannelMessageObserver;
import com.wsw.cospa.event.SwitchRecommendModeMessageObserver;
import com.wsw.cospa.model.Cdo;
import com.wsw.cospa.utils.Cimplements;
import com.wsw.cospa.utils.Cpackage;
import com.wsw.cospa.vo.FindChildVo;
import com.wsw.cospa.vo.FindParentVo;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.functions.Function;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes2.dex */
public class RecommendFragmant extends BaseFragment implements View.OnClickListener, RefreshRecommendChannelMessageObserver, ObtainRecommendListMessageObserver, SwitchRecommendModeMessageObserver {

    /* renamed from: catch, reason: not valid java name */
    private HomeActivity f22259catch;

    /* renamed from: class, reason: not valid java name */
    private FindParentVo f22260class;

    /* renamed from: const, reason: not valid java name */
    private Method f22261const;

    @BindView(R.id.arg_res_0x7f09016a)
    public RelativeLayout error_view;

    /* renamed from: final, reason: not valid java name */
    private Object f22262final;

    /* renamed from: goto, reason: not valid java name */
    private FindParentVo f22263goto;

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
    private CustomPagerAdapter f22265this;

    @BindView(R.id.arg_res_0x7f09016b)
    public TextView tvErrorView;

    @BindView(R.id.arg_res_0x7f0904a7)
    public TextView tvRetry;

    /* renamed from: break, reason: not valid java name */
    private ArrayList<Fragment> f22258break = new ArrayList<>();

    /* renamed from: super, reason: not valid java name */
    private String[] f22264super = {"Activity", "FragmentActivity"};

    /* renamed from: com.wsw.cospa.fragment.RecommendFragmant$do, reason: invalid class name */
    public class Cdo extends bz1<FindParentVo> {
        public Cdo() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(FindParentVo findParentVo) throws Resources.NotFoundException {
            if (findParentVo != null) {
                RecommendFragmant.this.m26269throw(findParentVo);
            } else {
                v72.m8769if("没有推荐");
            }
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            super.onError(str);
            RecommendFragmant.this.m26265extends(str);
        }
    }

    /* renamed from: com.wsw.cospa.fragment.RecommendFragmant$for, reason: invalid class name */
    public class Cfor implements OnTabSelectListener {
        public Cfor() {
        }

        @Override // com.flyco.tablayout.listener.OnTabSelectListener
        public void onTabReselect(int i) {
        }

        @Override // com.flyco.tablayout.listener.OnTabSelectListener
        public void onTabSelect(int i) {
            if (RecommendFragmant.this.f22258break == null || RecommendFragmant.this.f22258break.get(i) == null) {
                return;
            }
            ((FindColumnFragment) RecommendFragmant.this.f22258break.get(i)).m26225volatile();
        }

        @Override // com.flyco.tablayout.listener.OnTabSelectListener
        public void onTabSelected(int i) {
            if (RecommendFragmant.this.f22258break == null || RecommendFragmant.this.f22258break.get(i) == null) {
                return;
            }
            ((FindColumnFragment) RecommendFragmant.this.f22258break.get(i)).m26225volatile();
        }
    }

    /* renamed from: com.wsw.cospa.fragment.RecommendFragmant$if, reason: invalid class name */
    public class Cif extends bz1<FindParentVo> {
        public Cif() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(FindParentVo findParentVo) throws Resources.NotFoundException {
            if (findParentVo != null) {
                RecommendFragmant.this.m26269throw(findParentVo);
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    private Method m26253const(Object obj, String str, Class<?>... clsArr) {
        for (Class<?> superclass = obj.getClass(); superclass != Object.class; superclass = superclass.getSuperclass()) {
            try {
                return superclass.getDeclaredMethod(str, clsArr);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    /* renamed from: default, reason: not valid java name */
    private Field m26254default(Class<?> cls, String str) throws NoSuchFieldException {
        if (cls == null) {
            throw new NoSuchFieldException();
        }
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } finally {
            cls.getSuperclass();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: import, reason: not valid java name */
    public /* synthetic */ void m26257import(List list, ObservableEmitter observableEmitter) throws Exception {
        String[] strArrSplit;
        boolean zM1156else = d72.m1156else(getActivity());
        FindParentVo findParentVo = (FindParentVo) com.wsw.cospa.utils.Cdo.m26783for(getActivity()).m26791const(wq.o0);
        this.f22263goto = findParentVo;
        if (!zM1156else && findParentVo != null) {
            observableEmitter.onNext(findParentVo);
            return;
        }
        if (list == null || list.size() <= 0) {
            observableEmitter.onError(new Throwable("没有获取到推荐！请选择其他图源"));
            return;
        }
        ComicSourceBean comicSourceBean = (ComicSourceBean) list.get(new Random().nextInt(list.size()));
        String ruleFindUrl = comicSourceBean.getRuleFindUrl();
        if (!TextUtils.isEmpty(ruleFindUrl)) {
            if (ruleFindUrl.startsWith("<js>")) {
                String strSubstring = ruleFindUrl.substring(4, ruleFindUrl.lastIndexOf("<"));
                CookieBean cookieBeanLoad = Cnew.m26132case().m26138try().m3142this().load(comicSourceBean.getBookSourceUrl());
                HashMap map = new HashMap();
                if (cookieBeanLoad == null || Cclass.A(cookieBeanLoad.getVariableStr())) {
                    strArrSplit = Cimplements.m26920do(strSubstring, comicSourceBean.getBookSourceUrl()).toString().split("(&&|\n)+");
                } else {
                    map.put(wq.m0, cookieBeanLoad.getVariableStr());
                    strArrSplit = Cimplements.m26921if(strSubstring, comicSourceBean.getBookSourceUrl(), new GsonBuilder().disableHtmlEscaping().create().toJson(map)).toString().split("(&&|\n)+");
                }
            } else {
                strArrSplit = ruleFindUrl.split("(&&|\n)+");
            }
            ArrayList arrayList = new ArrayList();
            for (String str : strArrSplit) {
                if (!str.trim().isEmpty()) {
                    String[] strArrSplit2 = str.split("::");
                    FindChildVo findChildVo = new FindChildVo();
                    findChildVo.setParentName(comicSourceBean.getBookSourceName());
                    findChildVo.setParentTag(comicSourceBean.getBookSourceUrl());
                    findChildVo.setKindName(strArrSplit2[0]);
                    if (strArrSplit2[1].startsWith("http")) {
                        findChildVo.setKindUrl(strArrSplit2[1]);
                    } else if (comicSourceBean.getBookSourceUrl().endsWith(on0.f4694final)) {
                        if (strArrSplit2[1].startsWith(on0.f4694final)) {
                            findChildVo.setKindUrl(comicSourceBean.getBookSourceUrl().substring(0, comicSourceBean.getBookSourceUrl().lastIndexOf(on0.f4694final)) + strArrSplit2[1]);
                        } else {
                            findChildVo.setKindUrl(comicSourceBean.getBookSourceUrl() + strArrSplit2[1]);
                        }
                    } else if (strArrSplit2[1].startsWith(on0.f4694final)) {
                        findChildVo.setKindUrl(comicSourceBean.getBookSourceUrl() + strArrSplit2[1]);
                    } else {
                        findChildVo.setKindUrl(comicSourceBean.getBookSourceUrl() + on0.f4694final + strArrSplit2[1]);
                    }
                    arrayList.add(findChildVo);
                }
            }
            FindParentVo findParentVo2 = new FindParentVo();
            this.f22263goto = findParentVo2;
            findParentVo2.setParentName(comicSourceBean.getBookSourceName());
            this.f22263goto.setParentTag(comicSourceBean.getBookSourceUrl());
            this.f22263goto.setChildVoList(arrayList);
        }
        com.wsw.cospa.utils.Cdo.m26783for(getActivity()).m26806static(wq.o0, this.f22263goto);
        observableEmitter.onNext(this.f22263goto);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: native, reason: not valid java name */
    public /* synthetic */ void m26258native(View view) {
        m26270throws();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: public, reason: not valid java name */
    public /* synthetic */ void m26259public(ObservableEmitter observableEmitter) throws Exception {
        String[] strArrSplit;
        boolean zM8713do = v02.m8711if(getActivity()).m8713do(wq.G, false);
        boolean zM8713do2 = v02.m8711if(getActivity()).m8713do(wq.H, true);
        ArrayList arrayList = zM8713do ? new ArrayList(DatabaseHelper.m26016switch().m26040super(zM8713do2)) : new ArrayList(DatabaseHelper.m26016switch().m26023const(zM8713do2));
        if (arrayList.size() <= 0) {
            observableEmitter.onError(new Throwable("暂无图源，请关注异次元微信公众号：搜索【异次元APP软件】或者扫描关于界面中的二维码获取图源"));
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ComicSourceBean comicSourceBean = (ComicSourceBean) it.next();
            try {
                String ruleFindUrl = comicSourceBean.getRuleFindUrl();
                if (!TextUtils.isEmpty(ruleFindUrl)) {
                    if (ruleFindUrl.startsWith("<js>")) {
                        String strSubstring = ruleFindUrl.substring(4, ruleFindUrl.lastIndexOf("<"));
                        CookieBean cookieBeanLoad = Cnew.m26132case().m26138try().m3142this().load(comicSourceBean.getBookSourceUrl());
                        HashMap map = new HashMap();
                        if (cookieBeanLoad == null || Cclass.A(cookieBeanLoad.getVariableStr())) {
                            strArrSplit = Cimplements.m26920do(strSubstring, comicSourceBean.getBookSourceUrl()).toString().split("(&&|\n)+");
                        } else {
                            map.put(wq.m0, cookieBeanLoad.getVariableStr());
                            strArrSplit = Cimplements.m26921if(strSubstring, comicSourceBean.getBookSourceUrl(), new GsonBuilder().disableHtmlEscaping().create().toJson(map)).toString().split("(&&|\n)+");
                        }
                    } else {
                        strArrSplit = ruleFindUrl.split("(&&|\n)+");
                    }
                    if (strArrSplit != null && strArrSplit.length > 0) {
                        arrayList2.add(comicSourceBean);
                    }
                }
            } catch (Exception unused) {
                comicSourceBean.addGroup("发现规则语法错误");
                DatabaseHelper.m26016switch().m26019abstract(comicSourceBean);
            }
        }
        observableEmitter.onNext(arrayList2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: static, reason: not valid java name */
    public /* synthetic */ void m26261static(ComicSourceBean comicSourceBean, ObservableEmitter observableEmitter) throws Exception {
        String[] strArrSplit;
        String ruleFindUrl = comicSourceBean.getRuleFindUrl();
        if (!TextUtils.isEmpty(ruleFindUrl)) {
            if (ruleFindUrl.startsWith("<js>")) {
                String strSubstring = ruleFindUrl.substring(4, ruleFindUrl.lastIndexOf("<"));
                CookieBean cookieBeanLoad = Cnew.m26132case().m26138try().m3142this().load(comicSourceBean.getBookSourceUrl());
                HashMap map = new HashMap();
                if (cookieBeanLoad == null || Cclass.A(cookieBeanLoad.getVariableStr())) {
                    strArrSplit = Cimplements.m26920do(strSubstring, comicSourceBean.getBookSourceUrl()).toString().split("(&&|\n)+");
                } else {
                    map.put(wq.m0, cookieBeanLoad.getVariableStr());
                    strArrSplit = Cimplements.m26921if(strSubstring, comicSourceBean.getBookSourceUrl(), new GsonBuilder().disableHtmlEscaping().create().toJson(map)).toString().split("(&&|\n)+");
                }
            } else {
                strArrSplit = ruleFindUrl.split("(&&|\n)+");
            }
            ArrayList arrayList = new ArrayList();
            for (String str : strArrSplit) {
                if (!str.trim().isEmpty()) {
                    String[] strArrSplit2 = str.split("::");
                    FindChildVo findChildVo = new FindChildVo();
                    findChildVo.setParentName(comicSourceBean.getBookSourceName());
                    findChildVo.setParentTag(comicSourceBean.getBookSourceUrl());
                    findChildVo.setKindName(strArrSplit2[0]);
                    if (strArrSplit2[1].startsWith("http")) {
                        findChildVo.setKindUrl(strArrSplit2[1]);
                    } else if (comicSourceBean.getBookSourceUrl().endsWith(on0.f4694final)) {
                        if (strArrSplit2[1].startsWith(on0.f4694final)) {
                            findChildVo.setKindUrl(comicSourceBean.getBookSourceUrl().substring(0, comicSourceBean.getBookSourceUrl().lastIndexOf(on0.f4694final)) + strArrSplit2[1]);
                        } else {
                            findChildVo.setKindUrl(comicSourceBean.getBookSourceUrl() + strArrSplit2[1]);
                        }
                    } else if (strArrSplit2[1].startsWith(on0.f4694final)) {
                        findChildVo.setKindUrl(comicSourceBean.getBookSourceUrl() + strArrSplit2[1]);
                    } else {
                        findChildVo.setKindUrl(comicSourceBean.getBookSourceUrl() + on0.f4694final + strArrSplit2[1]);
                    }
                    arrayList.add(findChildVo);
                }
            }
            FindParentVo findParentVo = new FindParentVo();
            this.f22263goto = findParentVo;
            findParentVo.setParentName(comicSourceBean.getBookSourceName());
            this.f22263goto.setParentTag(comicSourceBean.getBookSourceUrl());
            this.f22263goto.setChildVoList(arrayList);
        }
        com.wsw.cospa.utils.Cdo.m26783for(getActivity()).m26806static(wq.o0, this.f22263goto);
        observableEmitter.onNext(this.f22263goto);
    }

    /* renamed from: switch, reason: not valid java name */
    public static RecommendFragmant m26262switch() {
        return new RecommendFragmant();
    }

    /* renamed from: while, reason: not valid java name */
    private void m26264while() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object obj;
        if (Build.VERSION.SDK_INT < 11) {
            return;
        }
        try {
            Method method = this.f22261const;
            if (method != null && (obj = this.f22262final) != null) {
                method.invoke(obj, new Object[0]);
                return;
            }
            Class<?> superclass = getClass();
            do {
                superclass = superclass.getSuperclass();
                if (this.f22264super[0].equals(superclass.getSimpleName())) {
                    break;
                }
            } while (!this.f22264super[1].equals(superclass.getSimpleName()));
            Field fieldM26254default = m26254default(superclass, "mFragments");
            if (fieldM26254default != null) {
                Object obj2 = fieldM26254default.get(this);
                this.f22262final = obj2;
                Method methodM26253const = m26253const(obj2, "noteStateNotSaved", new Class[0]);
                this.f22261const = methodM26253const;
                if (methodM26253const != null) {
                    methodM26253const.invoke(this.f22262final, new Object[0]);
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: case */
    public void mo25879case() {
        this.ivMoreChannel.setOnClickListener(this);
        this.tvRetry.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.rl1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f5871do.m26258native(view);
            }
        });
        this.tabLayout.setIndicatorColor(getResources().getColor(R.color.arg_res_0x7f060380));
    }

    /* renamed from: extends, reason: not valid java name */
    public void m26265extends(String str) {
        this.error_view.setVisibility(0);
        this.mIndicatorView.setVisibility(8);
        this.mViewPager.setVisibility(8);
        this.tvErrorView.setText(str);
    }

    /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
    public io.reactivex.Cnew<FindParentVo> m26260return(final List<ComicSourceBean> list) {
        return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.ul1
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f6925do.m26257import(list, observableEmitter);
            }
        });
    }

    /* renamed from: finally, reason: not valid java name */
    public void m26267finally(final ComicSourceBean comicSourceBean) {
        ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.tl1
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f6610do.m26261static(comicSourceBean, observableEmitter);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cif());
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: if */
    public int mo25882if() {
        return R.layout.arg_res_0x7f0c0088;
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: new */
    public void mo25883new() {
        om1.m5717case().m9005for(this);
        k61.m4266case().m9005for(this);
        o32.m5454case().m9005for(this);
        m26270throws();
    }

    @Override // com.wsw.cospa.base.BaseFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f22259catch = (HomeActivity) context;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        FindParentVo findParentVo;
        if (view.getId() == R.id.arg_res_0x7f090244 && (findParentVo = this.f22260class) != null) {
            ChannelEditDialog.m24813import(this, Cpackage.m27019do(findParentVo));
        }
    }

    @Override // com.wsw.cospa.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        vv0.m8965if("RecommendFragmant", "onDestroy: ");
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        vv0.m8965if("RecommendFragmant", "onDestroyView: ");
        om1.m5717case().m9006new(this);
        k61.m4266case().m9006new(this);
        o32.m5454case().m9006new(this);
        super.onDestroyView();
    }

    @Override // com.wsw.cospa.event.ObtainRecommendListMessageObserver
    public void onObtainRecommendListMessage() {
        m26270throws();
    }

    @Override // com.wsw.cospa.event.RefreshRecommendChannelMessageObserver
    public void onRefreshChannel(FindParentVo findParentVo, List<ih> list) {
        try {
            ArrayList arrayList = new ArrayList();
            this.f22258break.clear();
            for (int i = 0; i < list.size(); i++) {
                FindChildVo findChildVo = (FindChildVo) list.get(i).m3427if();
                if (findChildVo != null) {
                    arrayList.add(findChildVo.getKindName());
                    this.f22258break.add(FindColumnFragment.m26211package(findParentVo, findChildVo));
                }
            }
            this.f22265this.m25625if(arrayList);
            this.tabLayout.m12320while(0, false);
            this.tabLayout.m12309final();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        super.onSaveInstanceState(bundle);
        m26264while();
    }

    @Override // com.wsw.cospa.event.SwitchRecommendModeMessageObserver
    public void onSwitchMode(boolean z) {
        m26270throws();
    }

    /* renamed from: super, reason: not valid java name */
    public void m26268super() {
        this.mLoadingRootView.setVisibility(8);
        this.mViewPager.setVisibility(0);
    }

    /* renamed from: throw, reason: not valid java name */
    public void m26269throw(FindParentVo findParentVo) throws Resources.NotFoundException {
        this.f22260class = findParentVo;
        m26268super();
        if (this.f22265this != null) {
            this.f22258break.clear();
            List<FindChildVo> childVoList = findParentVo.getChildVoList();
            ArrayList arrayList = new ArrayList();
            if (childVoList.size() >= 10) {
                this.ivMoreChannel.setVisibility(0);
                int i = 0;
                while (i < 10) {
                    FindChildVo findChildVo = childVoList.get(i);
                    if (findChildVo != null) {
                        arrayList.add(findChildVo.getKindName());
                        this.f22258break.add(FindColumnFragment.m26212private(findParentVo, findChildVo, i == 0));
                    }
                    i++;
                }
            } else {
                this.ivMoreChannel.setVisibility(8);
                int i2 = 0;
                while (i2 < childVoList.size()) {
                    FindChildVo findChildVo2 = childVoList.get(i2);
                    if (findChildVo2 != null) {
                        arrayList.add(findChildVo2.getKindName());
                        this.f22258break.add(FindColumnFragment.m26212private(findParentVo, findChildVo2, i2 == 0));
                    }
                    i2++;
                }
            }
            this.f22265this.m25625if(arrayList);
            this.tabLayout.m12320while(0, false);
            this.tabLayout.m12309final();
            return;
        }
        List<FindChildVo> childVoList2 = findParentVo.getChildVoList();
        ArrayList arrayList2 = new ArrayList();
        if (childVoList2.size() >= 10) {
            this.ivMoreChannel.setVisibility(0);
            int i3 = 0;
            while (i3 < 10) {
                FindChildVo findChildVo3 = childVoList2.get(i3);
                if (findChildVo3 != null) {
                    arrayList2.add(findChildVo3.getKindName());
                    this.f22258break.add(FindColumnFragment.m26212private(findParentVo, findChildVo3, i3 == 0));
                }
                i3++;
            }
        } else {
            this.ivMoreChannel.setVisibility(8);
            int i4 = 0;
            while (i4 < childVoList2.size()) {
                FindChildVo findChildVo4 = childVoList2.get(i4);
                if (findChildVo4 != null) {
                    arrayList2.add(findChildVo4.getKindName());
                    this.f22258break.add(FindColumnFragment.m26212private(findParentVo, findChildVo4, i4 == 0));
                }
                i4++;
            }
        }
        this.f22259catch.updateTitle(findParentVo.getParentName());
        this.f22265this = new CustomPagerAdapter(getChildFragmentManager(), this.f22258break);
        this.mViewPager.setOffscreenPageLimit(this.f22258break.size() - 1);
        this.mViewPager.setAdapter(this.f22265this);
        this.f22265this.m25625if(arrayList2);
        this.tabLayout.setViewPager(this.mViewPager);
        this.tabLayout.setOnTabSelectListener(new Cfor());
    }

    /* renamed from: throws, reason: not valid java name */
    public void m26270throws() {
        ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.sl1
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f6202do.m26259public(observableEmitter);
            }
        }).flatMap(new Function() { // from class: android.support.v4.wl1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Cdo.b((List) obj);
            }
        }).flatMap(new Function() { // from class: android.support.v4.vl1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f7293do.m26260return((List) obj);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cdo());
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: try */
    public m7 mo25884try() {
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f22259catch = (HomeActivity) activity;
    }
}
