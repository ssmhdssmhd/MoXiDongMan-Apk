package com.wsw.cospa.activity;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.b0;
import android.support.v4.bz1;
import android.support.v4.d72;
import android.support.v4.fd2;
import android.support.v4.g31;
import android.support.v4.hm1;
import android.support.v4.ht;
import android.support.v4.im1;
import android.support.v4.j10;
import android.support.v4.jh0;
import android.support.v4.l22;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.p12;
import android.support.v4.rd1;
import android.support.v4.v02;
import android.support.v4.v72;
import android.support.v4.w2;
import android.support.v4.wi0;
import android.support.v4.wq;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import butterknife.BindView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.transition.Transition;
import com.flyco.tablayout.CommonTabLayout;
import com.flyco.tablayout.listener.CustomTabEntity;
import com.flyco.tablayout.listener.OnTabSelectListener;
import com.google.android.material.appbar.AppBarLayout;
import com.google.gson.Gson;
import com.luck.picture.lib.entity.LocalMedia;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.tbruyelle.rxpermissions2.RxPermissions;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.HomeActivity;
import com.wsw.cospa.activity.SourceFilterView;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.BlockComic;
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.dao.ComicSourceBeanDao;
import com.wsw.cospa.fragment.BookListFragment;
import com.wsw.cospa.fragment.ComicFindFragment;
import com.wsw.cospa.fragment.HistoryRecordFragment;
import com.wsw.cospa.fragment.LocalComicFragment;
import com.wsw.cospa.fragment.RecommendFragmant;
import com.wsw.cospa.model.Cwhile;
import com.wsw.cospa.utils.Cfinally;
import com.wsw.cospa.utils.Cimport;
import com.wsw.cospa.utils.Cpackage;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.utils.Cthis;
import com.wsw.cospa.utils.DialogTool;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders;
import com.wsw.cospa.utils.analyzeUrl.impl.IHttpGetApi;
import com.wsw.cospa.widget.view.SwitchButton;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.greenrobot.greendao.query.WhereCondition;
import retrofit2.Response;

/* loaded from: classes2.dex */
public class HomeActivity extends BaseActivity implements View.OnClickListener, OnTabSelectListener, CompoundButton.OnCheckedChangeListener {

    /* renamed from: throws, reason: not valid java name */
    private static final String f21149throws = "HomeActivity";

    @BindView(R.id.arg_res_0x7f09003d)
    public AppBarLayout abl_main;

    /* renamed from: break, reason: not valid java name */
    private ComicFindFragment f21150break;

    /* renamed from: catch, reason: not valid java name */
    private HistoryRecordFragment f21151catch;

    /* renamed from: class, reason: not valid java name */
    private LocalComicFragment f21152class;

    @BindView(R.id.arg_res_0x7f090117)
    public FrameLayout contentView;

    @BindView(R.id.arg_res_0x7f090143)
    public DrawerLayout dlLeftMain;

    /* renamed from: goto, reason: not valid java name */
    private BookListFragment f21155goto;

    /* renamed from: import, reason: not valid java name */
    private File f21156import;

    @BindView(R.id.arg_res_0x7f090232)
    public ImageView ivArrow;

    @BindView(R.id.arg_res_0x7f090242)
    public ImageView iv_header;

    @BindView(R.id.arg_res_0x7f090291)
    public LinearLayout ll_version;

    @BindView(R.id.arg_res_0x7f09029e)
    public CommonTabLayout mCommonTabLayout;

    /* renamed from: native, reason: not valid java name */
    private Bitmap f21157native;

    @BindView(R.id.arg_res_0x7f0902fc)
    public RelativeLayout nightModelView;

    /* renamed from: return, reason: not valid java name */
    private Method f21159return;

    @BindView(R.id.arg_res_0x7f090389)
    public AppCompatTextView searchView;

    @BindView(R.id.arg_res_0x7f0903b6)
    public LinearLayout sourceNameLayout;

    /* renamed from: static, reason: not valid java name */
    private Object f21160static;

    @BindView(R.id.arg_res_0x7f0903d7)
    public View statusBarView;

    /* renamed from: super, reason: not valid java name */
    private int f21161super;

    @BindView(R.id.arg_res_0x7f0903e4)
    public TextView swNightModelText;

    @BindView(R.id.arg_res_0x7f0903e5)
    public SwitchButton swNightTheme;

    @BindView(R.id.arg_res_0x7f090427)
    public Toolbar tbToolbar;

    /* renamed from: this, reason: not valid java name */
    private RecommendFragmant f21163this;

    /* renamed from: throw, reason: not valid java name */
    private SourceFilterView f21164throw;

    @BindView(R.id.arg_res_0x7f09045b)
    public TextView tvAbout;

    @BindView(R.id.arg_res_0x7f09046e)
    public TextView tvComicManager;

    @BindView(R.id.arg_res_0x7f09047f)
    public TextView tvDownloadTask;

    @BindView(R.id.arg_res_0x7f090496)
    public TextView tvLocalComic;

    @BindView(R.id.arg_res_0x7f0904b0)
    public TextView tvSetting;

    @BindView(R.id.arg_res_0x7f0904b4)
    public TextView tvSourceName;

    @BindView(R.id.arg_res_0x7f0904c2)
    public TextView tvToolbarTitle;

    @BindView(R.id.arg_res_0x7f0904c4)
    public TextView tvVersion;

    @BindView(R.id.arg_res_0x7f09047b)
    public TextView tv_donate;

    @BindView(R.id.arg_res_0x7f090485)
    public TextView tv_feedback;

    @BindView(R.id.arg_res_0x7f0904b1)
    public TextView tv_shop;

    /* renamed from: while, reason: not valid java name */
    private String f21165while;

    /* renamed from: const, reason: not valid java name */
    private final ArrayList<CustomTabEntity> f21153const = new ArrayList<>();

    /* renamed from: final, reason: not valid java name */
    private final ArrayList<Fragment> f21154final = new ArrayList<>();

    /* renamed from: public, reason: not valid java name */
    private long f21158public = 0;

    /* renamed from: switch, reason: not valid java name */
    private String[] f21162switch = {"Activity", "FragmentActivity"};

    /* renamed from: com.wsw.cospa.activity.HomeActivity$case, reason: invalid class name */
    public class Ccase implements DialogTool.EditDialogOptcb {
        public Ccase() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.EditDialogOptcb
        public void onConfirm(String str) {
            if (l22.m4571return(str) || !g31.m2567for(str)) {
                return;
            }
            v02.m8711if(HomeActivity.this).m8718this(wq.f7630this, str);
            HomeActivity.this.x();
            j10.m3652do(HomeActivity.this.dlLeftMain);
        }
    }

    /* renamed from: com.wsw.cospa.activity.HomeActivity$do, reason: invalid class name */
    public class Cdo implements SourceFilterView.onSourceFilterListener {
        public Cdo() {
        }

        @Override // com.wsw.cospa.activity.SourceFilterView.onSourceFilterListener
        public void onChange(ComicSourceBean comicSourceBean) {
            HomeActivity.this.updateTitle(comicSourceBean.getBookSourceName());
            if (HomeActivity.this.f21163this != null) {
                HomeActivity.this.f21163this.m26267finally(comicSourceBean);
            }
        }

        @Override // com.wsw.cospa.activity.SourceFilterView.onSourceFilterListener
        public void onDismiss() {
            HomeActivity.this.y(true);
        }
    }

    /* renamed from: com.wsw.cospa.activity.HomeActivity$else, reason: invalid class name */
    public class Celse extends bz1<ComicShelfBean> {
        public Celse() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicShelfBean comicShelfBean) {
            HomeActivity.this.b(comicShelfBean);
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onError(Throwable th) {
            v72.m8769if(th.getMessage());
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            HomeActivity.this.f21908do.add(disposable);
        }
    }

    /* renamed from: com.wsw.cospa.activity.HomeActivity$for, reason: invalid class name */
    public class Cfor implements DialogTool.EditDialogOptcb {
        public Cfor() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.EditDialogOptcb
        public void onConfirm(String str) {
            HomeActivity.this.m25108implements(l22.m4569package(str));
        }
    }

    /* renamed from: com.wsw.cospa.activity.HomeActivity$goto, reason: invalid class name */
    public class Cgoto extends bz1<ComicShelfBean> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ComicShelfBean f21170do;

        public Cgoto(ComicShelfBean comicShelfBean) {
            this.f21170do = comicShelfBean;
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicShelfBean comicShelfBean) {
            ComicInfoBean comicInfoBean = comicShelfBean.getComicInfoBean();
            if (comicInfoBean.getChapterUrl() == null || TextUtils.isEmpty(comicInfoBean.getName())) {
                v72.m8769if("添加漫画失败，,请补全书名和封面规则");
                return;
            }
            com.wsw.cospa.dao.Cdo.n(this.f21170do);
            im1.m3512case().mo970if(this.f21170do);
            hm1.m3062case().mo970if(new Object[0]);
            v72.m8769if("添加漫画成功");
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            v72.m8769if("添加漫画失败" + str);
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            HomeActivity.this.f21908do.add(disposable);
        }
    }

    /* renamed from: com.wsw.cospa.activity.HomeActivity$if, reason: invalid class name */
    public class Cif implements CustomTabEntity {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ List f21172do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ List f21173for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f21174if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ List f21175new;

        public Cif(List list, int i, List list2, List list3) {
            this.f21172do = list;
            this.f21174if = i;
            this.f21173for = list2;
            this.f21175new = list3;
        }

        @Override // com.flyco.tablayout.listener.CustomTabEntity
        public int getTabSelectedIcon() {
            return ((Integer) this.f21173for.get(this.f21174if)).intValue();
        }

        @Override // com.flyco.tablayout.listener.CustomTabEntity
        public String getTabTitle() {
            return (String) this.f21172do.get(this.f21174if);
        }

        @Override // com.flyco.tablayout.listener.CustomTabEntity
        public int getTabUnselectedIcon() {
            return ((Integer) this.f21175new.get(this.f21174if)).intValue();
        }
    }

    /* renamed from: com.wsw.cospa.activity.HomeActivity$new, reason: invalid class name */
    public class Cnew extends ht<Bitmap> {
        public Cnew() {
        }

        @Override // com.bumptech.glide.request.target.Target
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onResourceReady(@NonNull Bitmap bitmap, @Nullable Transition<? super Bitmap> transition) {
            String str = "header_" + l22.m4563for(System.currentTimeMillis(), "yyyy_MM_dd_HH_mm") + rd1.f5753if;
            HomeActivity homeActivity = HomeActivity.this;
            Cthis.m27104catch(homeActivity, homeActivity.f21157native, str);
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadCleared(@Nullable Drawable drawable) {
        }
    }

    /* renamed from: com.wsw.cospa.activity.HomeActivity$try, reason: invalid class name */
    public class Ctry extends ht<Bitmap> {
        public Ctry() {
        }

        @Override // com.bumptech.glide.request.target.Target
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onResourceReady(@NonNull Bitmap bitmap, @Nullable Transition<? super Bitmap> transition) {
            String str = "header_" + l22.m4563for(System.currentTimeMillis(), "yyyy_MM_dd_HH_mm") + rd1.f5753if;
            HomeActivity homeActivity = HomeActivity.this;
            Cthis.m27104catch(homeActivity, homeActivity.f21157native, str);
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadCleared(@Nullable Drawable drawable) {
        }
    }

    @RequiresApi(api = 21)
    private Animator a(ViewGroup viewGroup, int i, int i2) {
        Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(viewGroup, i, i2, 0.0f, (float) Math.hypot(viewGroup.getWidth(), viewGroup.getHeight()));
        animatorCreateCircularReveal.setDuration(600L);
        animatorCreateCircularReveal.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorCreateCircularReveal.start();
        return animatorCreateCircularReveal;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(ComicShelfBean comicShelfBean) {
        ((ObservableSubscribeProxy) Cwhile.m26502catch().m26514else(comicShelfBean).flatMap(new Function() { // from class: android.support.v4.wj0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return HomeActivity.g((ComicShelfBean) obj);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cgoto(comicShelfBean));
    }

    private Method c(Object obj, String str, Class<?>... clsArr) {
        for (Class<?> superclass = obj.getClass(); superclass != Object.class; superclass = superclass.getSuperclass()) {
            try {
                return superclass.getDeclaredMethod(str, clsArr);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    private void e() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object obj;
        try {
            Method method = this.f21159return;
            if (method != null && (obj = this.f21160static) != null) {
                method.invoke(obj, new Object[0]);
                return;
            }
            Class<?> superclass = getClass();
            do {
                superclass = superclass.getSuperclass();
                if (this.f21162switch[0].equals(superclass.getSimpleName())) {
                    break;
                }
            } while (!this.f21162switch[1].equals(superclass.getSimpleName()));
            Field fieldV = v(superclass, "mFragments");
            if (fieldV != null) {
                Object obj2 = fieldV.get(this);
                this.f21160static = obj2;
                Method methodC = c(obj2, "noteStateNotSaved", new Class[0]);
                this.f21159return = methodC;
                if (methodC != null) {
                    methodC.invoke(this.f21160static, new Object[0]);
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(String str, ObservableEmitter observableEmitter) throws Exception {
        if (l22.m4571return(str) || !fd2.m2255new(str)) {
            observableEmitter.tryOnError(new Throwable("无效网址！"));
            return;
        }
        if (com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3143try().load(str) != null) {
            observableEmitter.tryOnError(new Throwable("已在书架中"));
            return;
        }
        String strM4564goto = l22.m4564goto(str);
        ComicSourceBean comicSourceBeanLoad = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().load(strM4564goto);
        if (comicSourceBeanLoad == null) {
            comicSourceBeanLoad = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().queryBuilder().where(ComicSourceBeanDao.Properties.a.like(strM4564goto + "%"), new WhereCondition[0]).limit(1).build().unique();
        }
        if (comicSourceBeanLoad == null) {
            observableEmitter.tryOnError(new Throwable("未找到对应图源"));
            return;
        }
        ComicShelfBean comicShelfBean = new ComicShelfBean();
        comicShelfBean.setTag(comicSourceBeanLoad.getBookSourceUrl());
        comicShelfBean.setNoteUrl(str);
        comicShelfBean.setDurChapter(0);
        comicShelfBean.setDurChapterPage(0);
        comicShelfBean.setFinalDate(Long.valueOf(System.currentTimeMillis()));
        observableEmitter.onNext(comicShelfBean);
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ObservableSource g(ComicShelfBean comicShelfBean) throws Exception {
        return Cwhile.m26502catch().m26515goto(comicShelfBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(View view) {
        startActivity(new Intent(this, (Class<?>) SearchComicActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(View view) {
        SourceFilterView sourceFilterView = this.f21164throw;
        if (sourceFilterView == null) {
            SourceFilterView sourceFilterView2 = new SourceFilterView(this, new Cdo());
            this.f21164throw = sourceFilterView2;
            sourceFilterView2.m25319catch();
        } else {
            sourceFilterView.m25327switch();
        }
        this.f21164throw.m25329throws(this.tbToolbar);
        if (this.f21164throw.m25328throw()) {
            y(false);
        } else {
            y(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: instanceof, reason: not valid java name */
    public io.reactivex.Cnew<ComicShelfBean> m25092instanceof(final String str) {
        return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.fk0
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                HomeActivity.f(str, observableEmitter);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        x();
        v02.m8711if(this).m8718this(wq.p0, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean l(View view) {
        File file;
        this.f21165while = v02.m8711if(this).m8719try(wq.p0, "");
        this.f21156import = new File(this.f21165while);
        if (TextUtils.isEmpty(this.f21165while) || (file = this.f21156import) == null || !file.exists()) {
            return false;
        }
        QMUIDialog.Ccase ccase = new QMUIDialog.Ccase(this);
        ccase.m23995synchronized("恢复背景图", new DialogInterface.OnClickListener() { // from class: android.support.v4.ak0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f185do.k(dialogInterface, i);
            }
        });
        ccase.m24051this().show();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        if (this.f21157native != null) {
            Cthis.m27104catch(this, this.f21157native, "header_" + l22.m4563for(System.currentTimeMillis(), "yyyy_MM_dd_HH_mm") + rd1.f5753if);
            return;
        }
        try {
            String strM8719try = v02.m8711if(this).m8719try(wq.f7630this, "");
            if (l22.m4571return(strM8719try)) {
                Glide.m11048volatile(this).mo6031new().load(wq.f7612goto).j0(new Ctry());
            } else {
                this.f21157native = jh0.m3881class(this).mo6031new().load(strM8719try).C0().get();
                Glide.m11048volatile(this).mo6031new().load(strM8719try).j0(new Cnew());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        A();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void p(String str, ObservableEmitter observableEmitter) throws Exception {
        try {
            observableEmitter.onNext((BlockComic) new Gson().fromJson(str, BlockComic.class));
            observableEmitter.onComplete();
        } catch (Exception e) {
            observableEmitter.onError(e);
            observableEmitter.onComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ObservableSource q(Response response) throws Exception {
        return u((String) response.body());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(BlockComic blockComic) throws Exception {
        if (blockComic != null) {
            if (blockComic.isShowMall()) {
                this.tv_shop.setVisibility(0);
            } else {
                this.tv_shop.setVisibility(8);
            }
            if (blockComic.isShowComic()) {
                v02.m8711if(this).m8718this(wq.H0, "");
            } else if (blockComic.getList().size() > 0) {
                v02.m8711if(this).m8718this(wq.H0, Cpackage.m27019do(blockComic.getList()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s() {
        try {
            this.iv_header.setImageBitmap(this.f21157native);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t() {
        try {
            String strM8719try = v02.m8711if(this).m8719try(wq.f7630this, "");
            if (l22.m4571return(strM8719try)) {
                this.f21157native = jh0.m3881class(this).mo6031new().load(wq.f7612goto).C0().get();
            } else {
                this.f21157native = jh0.m3881class(this).mo6031new().load(strM8719try).C0().get();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        wi0.m9165try(new Runnable() { // from class: android.support.v4.xj0
            @Override // java.lang.Runnable
            public final void run() {
                this.f7969do.s();
            }
        });
    }

    private ObservableSource<BlockComic> u(final String str) {
        return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.gk0
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                HomeActivity.p(str, observableEmitter);
            }
        });
    }

    private Field v(Class<?> cls, String str) throws NoSuchFieldException {
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

    public void A() {
        com.luck.picture.lib.Cif.m23125do(this).m23131class(rd1.m6920throw()).m23059import(1).m23062native(1).m23047const(3).m23048continue(1).m23049default(true).m23053final(true).m23046class(rd1.f5753if).m23080while(true).m23070strictfp("/CustomPath").m23044case(true).b(1, 1).m23045catch(false).m23075throw(true).m23079volatile(true).m23061interface(true).m23076throws(true).m23071super(true).m23065private(true).m23057if(false).m23056goto(188);
    }

    public void B() {
        DialogTool.Cnew cnew = new DialogTool.Cnew("请输入头图地址", null, null);
        DialogTool.Ctry ctry = new DialogTool.Ctry("确认", "取消");
        String strM8719try = v02.m8711if(this).m8719try(wq.f7630this, "");
        DialogTool.s(this, cnew, ctry, "请输入头图地址", !l22.m4571return(strM8719try) ? strM8719try : null, new Ccase());
    }

    public void C(int i) {
        if (i == 0) {
            ((AppBarLayout.Cfor) this.tbToolbar.getLayoutParams()).m12634new(5);
            this.tbToolbar.getLayoutParams();
            this.tvToolbarTitle.setVisibility(8);
            this.searchView.setVisibility(0);
            this.sourceNameLayout.setVisibility(8);
            return;
        }
        if (i == 1) {
            ((AppBarLayout.Cfor) this.tbToolbar.getLayoutParams()).m12634new(5);
            try {
                AppBarLayout.Behavior behavior = (AppBarLayout.Behavior) ((CoordinatorLayout.LayoutParams) this.abl_main.getLayoutParams()).getBehavior();
                if (behavior != null) {
                    behavior.setTopAndBottomOffset(-behavior.getTopAndBottomOffset());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            this.tbToolbar.getLayoutParams();
            this.searchView.setVisibility(8);
            this.tvToolbarTitle.setVisibility(8);
            this.sourceNameLayout.setVisibility(0);
            boolean zM8713do = v02.m8711if(this).m8713do(wq.I, false);
            boolean zM8713do2 = v02.m8711if(this).m8713do(wq.f36252J, true);
            boolean zM8713do3 = v02.m8711if(this).m8713do(wq.K, false);
            v02.m8711if(this).m8713do(wq.L, false);
            if (zM8713do) {
                if (!zM8713do2) {
                    z("发现");
                    return;
                } else if (zM8713do3) {
                    z("本地");
                    return;
                } else {
                    z("历史");
                    return;
                }
            }
            return;
        }
        if (i == 2) {
            boolean zM8713do4 = v02.m8711if(this).m8713do(wq.I, false);
            boolean zM8713do5 = v02.m8711if(this).m8713do(wq.f36252J, true);
            boolean zM8713do6 = v02.m8711if(this).m8713do(wq.K, false);
            boolean zM8713do7 = v02.m8711if(this).m8713do(wq.L, false);
            if (!zM8713do4) {
                if (!zM8713do5) {
                    z("发现");
                    return;
                } else if (zM8713do6) {
                    z("本地");
                    return;
                } else {
                    z("历史");
                    return;
                }
            }
            if (!zM8713do5) {
                if (zM8713do6) {
                    z("本地");
                    return;
                } else {
                    z("历史");
                    return;
                }
            }
            if (zM8713do6) {
                z("本地");
                return;
            } else if (zM8713do7) {
                z("历史");
                return;
            } else {
                z("本地");
                return;
            }
        }
        if (i != 3) {
            if (i == 4) {
                z("本地");
                return;
            }
            return;
        }
        boolean zM8713do8 = v02.m8711if(this).m8713do(wq.I, false);
        boolean zM8713do9 = v02.m8711if(this).m8713do(wq.f36252J, true);
        boolean zM8713do10 = v02.m8711if(this).m8713do(wq.K, false);
        boolean zM8713do11 = v02.m8711if(this).m8713do(wq.L, false);
        if (zM8713do8) {
            if (zM8713do9) {
                if (zM8713do10) {
                    z("本地");
                    return;
                } else {
                    z("历史");
                    return;
                }
            }
            if (zM8713do10) {
                z("本地");
                return;
            } else {
                if (zM8713do11) {
                    return;
                }
                z("本地");
                return;
            }
        }
        if (!zM8713do9) {
            if (zM8713do10) {
                z("本地");
                return;
            } else {
                z("历史");
                return;
            }
        }
        if (zM8713do10) {
            z("本地");
        } else if (zM8713do11) {
            z("历史");
        } else {
            z("本地");
        }
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        try {
            d72.m1156else(this);
            boolean zM8713do = v02.m8711if(CartoonApplication.m24690do()).m8713do(wq.N, true);
            boolean zM8713do2 = v02.m8711if(CartoonApplication.m24690do()).m8713do(wq.d0, false);
            StringBuilder sb = new StringBuilder();
            sb.append("initData: isNowBackupSuccessed : ");
            sb.append(zM8713do2);
            sb.append(" isAutoBackup : ");
            sb.append(zM8713do);
            if (!zM8713do || zM8713do2) {
                return;
            }
            Cimport.m26924const().m26941case(this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: const, reason: not valid java name */
    public void mo25106const(@Nullable Bundle bundle) {
        super.mo25106const(bundle);
        if (bundle != null) {
            this.f21161super = bundle.getInt("mCurrentTab");
        }
    }

    public void d() {
        boolean zM8713do = v02.m8711if(this).m8713do(wq.I, false);
        boolean zM8713do2 = v02.m8711if(this).m8713do(wq.f36252J, true);
        boolean zM8713do3 = v02.m8711if(this).m8713do(wq.K, false);
        boolean zM8713do4 = v02.m8711if(this).m8713do(wq.L, false);
        ArrayList arrayList = new ArrayList(Arrays.asList("书架"));
        ArrayList arrayList2 = new ArrayList(Arrays.asList(Integer.valueOf(R.drawable.arg_res_0x7f0801c6)));
        ArrayList arrayList3 = new ArrayList(Arrays.asList(Integer.valueOf(R.drawable.arg_res_0x7f0801c5)));
        if (this.f21155goto == null) {
            this.f21155goto = BookListFragment.m26145class();
        }
        this.f21154final.add(this.f21155goto);
        if (!zM8713do) {
            arrayList.add("推荐");
            arrayList3.add(Integer.valueOf(R.drawable.arg_res_0x7f0801c3));
            arrayList2.add(Integer.valueOf(R.drawable.arg_res_0x7f0801c4));
            if (this.f21163this == null) {
                this.f21163this = RecommendFragmant.m26262switch();
            }
            this.f21154final.add(this.f21163this);
        }
        if (!zM8713do2) {
            z("发现");
            arrayList.add("发现");
            arrayList3.add(Integer.valueOf(R.drawable.arg_res_0x7f0801c7));
            arrayList2.add(Integer.valueOf(R.drawable.arg_res_0x7f0801c8));
            if (this.f21150break == null) {
                this.f21150break = ComicFindFragment.m26192final();
            }
            this.f21154final.add(this.f21150break);
        }
        if (!zM8713do3) {
            z("历史");
            arrayList.add("历史");
            arrayList3.add(Integer.valueOf(R.drawable.arg_res_0x7f0801bf));
            arrayList2.add(Integer.valueOf(R.drawable.arg_res_0x7f0801c0));
            if (this.f21151catch == null) {
                this.f21151catch = HistoryRecordFragment.m26235throw();
            }
            this.f21154final.add(this.f21151catch);
        }
        if (!zM8713do4) {
            z("本地");
            arrayList.add("本地");
            arrayList3.add(Integer.valueOf(R.drawable.arg_res_0x7f0801c1));
            arrayList2.add(Integer.valueOf(R.drawable.arg_res_0x7f0801c2));
            if (this.f21152class == null) {
                this.f21152class = LocalComicFragment.m26241class();
            }
            this.f21154final.add(this.f21152class);
        }
        for (int i = 0; i < arrayList.size(); i++) {
            this.f21153const.add(new Cif(arrayList, i, arrayList3, arrayList2));
        }
        this.mCommonTabLayout.m12263public(this.f21153const, this, R.id.arg_res_0x7f090117, this.f21154final);
        this.mCommonTabLayout.setCurrentTab(this.f21161super);
        C(this.f21161super);
        this.mCommonTabLayout.setOnTabSelectListener(this);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: final, reason: not valid java name */
    public void mo25107final(@NonNull Bundle bundle) {
        super.mo25107final(bundle);
        if (bundle != null) {
            bundle.putInt("mCurrentTab", this.f21161super);
        }
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    /* renamed from: implements, reason: not valid java name */
    public void m25108implements(String str) {
        String strTrim = str.trim();
        if (TextUtils.isEmpty(strTrim)) {
            return;
        }
        ((ObservableSubscribeProxy) io.reactivex.Cnew.fromArray(strTrim.split("\\n")).flatMap(new Function() { // from class: android.support.v4.uj0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f6900do.m25092instanceof((String) obj);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Celse());
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c0037;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        List<LocalMedia> listM23128this;
        super.onActivityResult(i, i2, intent);
        if (i2 == -1) {
            if (i == 1) {
                if (intent != null) {
                    getContentResolver().takePersistableUriPermission(intent.getData(), 3);
                }
            } else if (i == 188 && (listM23128this = com.luck.picture.lib.Cif.m23128this(intent)) != null && listM23128this.size() > 0) {
                LocalMedia localMedia = listM23128this.get(0);
                Cfinally.m26885case(this, localMedia.m23093if(), this.iv_header);
                v02.m8711if(this).m8718this(wq.p0, localMedia.m23093if());
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        SourceFilterView sourceFilterView = this.f21164throw;
        if (sourceFilterView == null || !sourceFilterView.m25328throw()) {
            super.onBackPressed();
        } else {
            this.f21164throw.m25320class();
        }
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
    }

    @Override // android.view.View.OnClickListener
    @TargetApi(21)
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.arg_res_0x7f090242 /* 2131296834 */:
                this.f21165while = v02.m8711if(this).m8719try(wq.p0, "");
                this.f21156import = new File(this.f21165while);
                QMUIDialog.Ccase ccase = new QMUIDialog.Ccase(this);
                if (TextUtils.isEmpty(this.f21165while) || !this.f21156import.exists()) {
                    ccase.m23995synchronized("保存图片", new DialogInterface.OnClickListener() { // from class: android.support.v4.sj0
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            this.f6161do.m(dialogInterface, i);
                        }
                    });
                }
                ccase.m23995synchronized("选择相册", new DialogInterface.OnClickListener() { // from class: android.support.v4.zj0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        this.f8574do.n(dialogInterface, i);
                    }
                });
                ccase.m23995synchronized("头图地址", new DialogInterface.OnClickListener() { // from class: android.support.v4.bk0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        this.f464do.o(dialogInterface, i);
                    }
                });
                ccase.m24051this().show();
                break;
            case R.id.arg_res_0x7f090291 /* 2131296913 */:
                com.wsw.cospa.utils.Celse.m26874try(this, true);
                break;
            case R.id.arg_res_0x7f09045b /* 2131297371 */:
                AboutMeActivity.m24709public(this);
                break;
            case R.id.arg_res_0x7f09046e /* 2131297390 */:
                ComicManagerActivity.A(this);
                break;
            case R.id.arg_res_0x7f09047b /* 2131297403 */:
                DonateActivity.m24970package(this);
                break;
            case R.id.arg_res_0x7f09047f /* 2131297407 */:
                DownloadComicActivity.m24987volatile(this);
                break;
            case R.id.arg_res_0x7f090485 /* 2131297413 */:
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(wq.f7603const));
                    intent.addCategory("android.intent.category.BROWSABLE");
                    startActivity(intent);
                    break;
                } catch (Exception e) {
                    e.printStackTrace();
                    v72.m8769if(e.getMessage());
                    return;
                }
            case R.id.arg_res_0x7f090496 /* 2131297430 */:
                LocalComicActivity.m25119throws(this);
                break;
            case R.id.arg_res_0x7f0904b0 /* 2131297456 */:
                AppSettingActivity.m24785switch(this);
                break;
            case R.id.arg_res_0x7f0904b1 /* 2131297457 */:
                ShopMallActivity.m25290static(this);
                break;
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.arg_res_0x7f0d000b, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyDown(i, keyEvent);
        }
        if (this.dlLeftMain.isDrawerOpen(findViewById(R.id.arg_res_0x7f09025d))) {
            this.dlLeftMain.closeDrawers();
            return true;
        }
        if (System.currentTimeMillis() - this.f21158public <= 2000) {
            finish();
            return true;
        }
        v72.m8768do(R.string.arg_res_0x7f1100d5);
        this.f21158public = System.currentTimeMillis();
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        if (menuItem.getItemId() == R.id.arg_res_0x7f09010b) {
            startActivity(new Intent(this, (Class<?>) SearchComicActivity.class));
        } else if (menuItem.getItemId() == R.id.arg_res_0x7f090081) {
            if (this.f21161super == 0) {
                m25109synchronized();
            } else {
                FileSelectorActivity.b(this.f21152class, false, false, true, true, new String[]{"png", "jpg", "jpeg", "webp", "gif", "zip", "rar", "7z"}, true);
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        boolean zM8713do = v02.m8711if(this).m8713do(wq.I, false);
        boolean zM8713do2 = v02.m8711if(this).m8713do(wq.f36252J, true);
        boolean zM8713do3 = v02.m8711if(this).m8713do(wq.K, false);
        boolean zM8713do4 = v02.m8711if(this).m8713do(wq.L, false);
        for (int i = 0; i < menu.size(); i++) {
            int itemId = menu.getItem(i).getItemId();
            if (itemId != R.id.arg_res_0x7f090081) {
                if (itemId == R.id.arg_res_0x7f09010b) {
                    if (zM8713do) {
                        if (zM8713do2) {
                            if (zM8713do3) {
                                menu.getItem(i).setVisible(false);
                            } else if (this.f21161super == 1) {
                                menu.getItem(i).setVisible(true);
                            } else {
                                menu.getItem(i).setVisible(false);
                            }
                        } else if (!zM8713do3) {
                            int i2 = this.f21161super;
                            if (i2 == 1 || i2 == 2) {
                                menu.getItem(i).setVisible(true);
                            } else {
                                menu.getItem(i).setVisible(false);
                            }
                        } else if (this.f21161super == 1) {
                            menu.getItem(i).setVisible(true);
                        } else {
                            menu.getItem(i).setVisible(false);
                        }
                    } else if (zM8713do2) {
                        if (!zM8713do3) {
                            int i3 = this.f21161super;
                            if (i3 == 1 || i3 == 2) {
                                menu.getItem(i).setVisible(true);
                            } else {
                                menu.getItem(i).setVisible(false);
                            }
                        } else if (this.f21161super == 1) {
                            menu.getItem(i).setVisible(true);
                        } else {
                            menu.getItem(i).setVisible(false);
                        }
                    } else if (zM8713do3) {
                        int i4 = this.f21161super;
                        if (i4 == 1 || i4 == 2) {
                            menu.getItem(i).setVisible(true);
                        } else {
                            menu.getItem(i).setVisible(false);
                        }
                    } else if (zM8713do4) {
                        int i5 = this.f21161super;
                        if (i5 == 1 || i5 == 2 || i5 == 3) {
                            menu.getItem(i).setVisible(true);
                        } else {
                            menu.getItem(i).setVisible(false);
                        }
                    } else {
                        int i6 = this.f21161super;
                        if (i6 == 1 || i6 == 2 || i6 == 3) {
                            menu.getItem(i).setVisible(true);
                        } else {
                            menu.getItem(i).setVisible(false);
                        }
                    }
                }
            } else if (zM8713do) {
                if (zM8713do2) {
                    if (zM8713do3) {
                        menu.getItem(i).setVisible(true);
                    } else {
                        int i7 = this.f21161super;
                        if (i7 == 0 || i7 == 2) {
                            menu.getItem(i).setVisible(true);
                        } else {
                            menu.getItem(i).setVisible(false);
                        }
                    }
                } else if (zM8713do3) {
                    int i8 = this.f21161super;
                    if (i8 == 0 || i8 == 2) {
                        menu.getItem(i).setVisible(true);
                    } else {
                        menu.getItem(i).setVisible(false);
                    }
                } else {
                    int i9 = this.f21161super;
                    if (i9 == 0 || i9 == 3) {
                        menu.getItem(i).setVisible(true);
                    } else {
                        menu.getItem(i).setVisible(false);
                    }
                }
            } else if (zM8713do2) {
                if (zM8713do3) {
                    int i10 = this.f21161super;
                    if (i10 == 0 || i10 == 2) {
                        menu.getItem(i).setVisible(true);
                    } else {
                        menu.getItem(i).setVisible(false);
                    }
                } else {
                    int i11 = this.f21161super;
                    if (i11 == 0 || i11 == 3) {
                        menu.getItem(i).setVisible(true);
                    } else {
                        menu.getItem(i).setVisible(false);
                    }
                }
            } else if (zM8713do3) {
                int i12 = this.f21161super;
                if (i12 == 0 || i12 == 3) {
                    menu.getItem(i).setVisible(true);
                } else {
                    menu.getItem(i).setVisible(false);
                }
            } else {
                int i13 = this.f21161super;
                if (i13 == 0 || i13 == 4) {
                    menu.getItem(i).setVisible(true);
                } else {
                    menu.getItem(i).setVisible(false);
                }
            }
        }
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(@NonNull Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (bundle != null) {
            bundle.putInt("mCurrentTab", this.f21161super);
        }
    }

    @Override // com.wsw.cospa.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        super.onSaveInstanceState(bundle);
        e();
    }

    @Override // com.flyco.tablayout.listener.OnTabSelectListener
    public void onTabReselect(int i) {
    }

    @Override // com.flyco.tablayout.listener.OnTabSelectListener
    public void onTabSelect(int i) {
        this.f21161super = i;
        supportInvalidateOptionsMenu();
        C(i);
    }

    @Override // com.flyco.tablayout.listener.OnTabSelectListener
    public void onTabSelected(int i) {
    }

    /* renamed from: synchronized, reason: not valid java name */
    public void m25109synchronized() {
        DialogTool.s(this, new DialogTool.Cnew("输入漫画网址", null, null), new DialogTool.Ctry("确认", "取消"), "请输入漫画详情的地址", null, new Cfor());
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() {
        File file;
        getSwipeBackLayout().setEnableGesture(false);
        p12.m5834else(this, this.statusBarView);
        p12.m5832case(this);
        setSupportActionBar(this.tbToolbar);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowTitleEnabled(false);
        }
        Csynchronized.m27096do(this, this.dlLeftMain, this.tbToolbar);
        this.searchView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.ck0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f813do.h(view);
            }
        });
        this.sourceNameLayout.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.dk0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f1071do.i(view);
            }
        });
        this.f21908do.add(((ObservableSubscribeProxy) new RxPermissions(this).m24545while("android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.READ_PHONE_STATE").as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.tj0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ((Boolean) obj).booleanValue();
            }
        }));
        this.tvDownloadTask.setOnClickListener(this);
        this.tvAbout.setOnClickListener(this);
        this.tvSetting.setOnClickListener(this);
        this.tvComicManager.setOnClickListener(this);
        this.ll_version.setOnClickListener(this);
        this.tvLocalComic.setOnClickListener(this);
        this.tv_feedback.setOnClickListener(this);
        this.tv_donate.setOnClickListener(this);
        this.nightModelView.setOnClickListener(this);
        this.swNightTheme.setOnCheckedChangeListener(this);
        this.tv_shop.setOnClickListener(this);
        if (j10.f2950do.equals(j10.m3665try(this, "MTA_CHANNEL"))) {
            this.ll_version.setVisibility(8);
        } else {
            com.wsw.cospa.utils.Celse.m26874try(this, false);
            this.ll_version.setVisibility(0);
            this.tvVersion.setText(w2.m9018for(this));
        }
        d();
        this.f21165while = v02.m8711if(this).m8719try(wq.p0, "");
        this.f21156import = new File(this.f21165while);
        if (TextUtils.isEmpty(this.f21165while) || (file = this.f21156import) == null || !file.exists()) {
            x();
        } else {
            Cfinally.m26885case(this, this.f21165while, this.iv_header);
        }
        this.iv_header.setOnClickListener(this);
        this.iv_header.setOnLongClickListener(new View.OnLongClickListener() { // from class: android.support.v4.ek0
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f1515do.l(view);
            }
        });
        w();
    }

    public void updateTitle(String str) {
        this.tvSourceName.setText(str);
    }

    @SuppressLint({"CheckResult"})
    public void w() {
        ((ObservableSubscribeProxy) ((IHttpGetApi) com.wsw.cospa.model.impl.Cif.m26424break().m26440class("https://yiciyuan.coding.net/p/ycy/d/ycy/").create(IHttpGetApi.class)).getWebContent("git/raw/master/block.json", AnalyzeHeaders.getMap(null)).flatMap(new Function() { // from class: android.support.v4.vj0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f7226do.q((Response) obj);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.hk0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f2431do.r((BlockComic) obj);
            }
        });
    }

    public void x() {
        if (g31.m2570try(this)) {
            wi0.m9161else(new Runnable() { // from class: android.support.v4.yj0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f8246do.t();
                }
            });
        }
    }

    public void y(boolean z) {
        float f;
        float width = this.ivArrow.getWidth() / 2.0f;
        float height = this.ivArrow.getHeight() / 2.0f;
        float f2 = 180.0f;
        if (z) {
            f = 360.0f;
        } else {
            f = 180.0f;
            f2 = 0.0f;
        }
        RotateAnimation rotateAnimation = new RotateAnimation(f2, f, width, height);
        rotateAnimation.setDuration(300L);
        rotateAnimation.setFillAfter(true);
        this.ivArrow.startAnimation(rotateAnimation);
    }

    public void z(String str) {
        ((AppBarLayout.Cfor) this.tbToolbar.getLayoutParams()).m12634new(2);
        this.tbToolbar.getLayoutParams();
        this.searchView.setVisibility(8);
        this.sourceNameLayout.setVisibility(8);
        this.tvToolbarTitle.setVisibility(0);
        this.tvToolbarTitle.setText(str);
    }
}
