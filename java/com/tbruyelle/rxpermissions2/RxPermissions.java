package com.tbruyelle.rxpermissions2;

import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class RxPermissions {

    /* renamed from: for, reason: not valid java name */
    public static final Object f20718for = new Object();

    /* renamed from: if, reason: not valid java name */
    public static final String f20719if = "RxPermissions";

    /* renamed from: do, reason: not valid java name */
    @VisibleForTesting
    public Lazy<RxPermissionsFragment> f20720do;

    @FunctionalInterface
    public interface Lazy<V> {
        V get();
    }

    /* renamed from: com.tbruyelle.rxpermissions2.RxPermissions$do, reason: invalid class name */
    public class Cdo implements Lazy<RxPermissionsFragment> {

        /* renamed from: do, reason: not valid java name */
        private RxPermissionsFragment f20721do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ FragmentManager f20723if;

        public Cdo(FragmentManager fragmentManager) {
            this.f20723if = fragmentManager;
        }

        @Override // com.tbruyelle.rxpermissions2.RxPermissions.Lazy
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public synchronized RxPermissionsFragment get() {
            if (this.f20721do == null) {
                this.f20721do = RxPermissions.this.m24530this(this.f20723if);
            }
            return this.f20721do;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.tbruyelle.rxpermissions2.RxPermissions$for, reason: invalid class name */
    public class Cfor<T> implements ObservableTransformer<T, com.tbruyelle.rxpermissions2.Cdo> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String[] f20724do;

        public Cfor(String[] strArr) {
            this.f20724do = strArr;
        }

        @Override // io.reactivex.ObservableTransformer
        public ObservableSource<com.tbruyelle.rxpermissions2.Cdo> apply(io.reactivex.Cnew<T> cnew) {
            return RxPermissions.this.m24531throw(cnew, this.f20724do);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.tbruyelle.rxpermissions2.RxPermissions$if, reason: invalid class name */
    public class Cif<T> implements ObservableTransformer<T, Boolean> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String[] f20726do;

        /* renamed from: com.tbruyelle.rxpermissions2.RxPermissions$if$do, reason: invalid class name */
        public class Cdo implements Function<List<com.tbruyelle.rxpermissions2.Cdo>, ObservableSource<Boolean>> {
            public Cdo() {
            }

            @Override // io.reactivex.functions.Function
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public ObservableSource<Boolean> apply(List<com.tbruyelle.rxpermissions2.Cdo> list) {
                if (list.isEmpty()) {
                    return io.reactivex.Cnew.empty();
                }
                Iterator<com.tbruyelle.rxpermissions2.Cdo> it = list.iterator();
                while (it.hasNext()) {
                    if (!it.next().f20739if) {
                        return io.reactivex.Cnew.just(Boolean.FALSE);
                    }
                }
                return io.reactivex.Cnew.just(Boolean.TRUE);
            }
        }

        public Cif(String[] strArr) {
            this.f20726do = strArr;
        }

        @Override // io.reactivex.ObservableTransformer
        public ObservableSource<Boolean> apply(io.reactivex.Cnew<T> cnew) {
            return RxPermissions.this.m24531throw(cnew, this.f20726do).buffer(this.f20726do.length).flatMap(new Cdo());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.tbruyelle.rxpermissions2.RxPermissions$new, reason: invalid class name */
    public class Cnew<T> implements ObservableTransformer<T, com.tbruyelle.rxpermissions2.Cdo> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String[] f20729do;

        /* renamed from: com.tbruyelle.rxpermissions2.RxPermissions$new$do, reason: invalid class name */
        public class Cdo implements Function<List<com.tbruyelle.rxpermissions2.Cdo>, ObservableSource<com.tbruyelle.rxpermissions2.Cdo>> {
            public Cdo() {
            }

            @Override // io.reactivex.functions.Function
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public ObservableSource<com.tbruyelle.rxpermissions2.Cdo> apply(List<com.tbruyelle.rxpermissions2.Cdo> list) {
                return list.isEmpty() ? io.reactivex.Cnew.empty() : io.reactivex.Cnew.just(new com.tbruyelle.rxpermissions2.Cdo(list));
            }
        }

        public Cnew(String[] strArr) {
            this.f20729do = strArr;
        }

        @Override // io.reactivex.ObservableTransformer
        public ObservableSource<com.tbruyelle.rxpermissions2.Cdo> apply(io.reactivex.Cnew<T> cnew) {
            return RxPermissions.this.m24531throw(cnew, this.f20729do).buffer(this.f20729do.length).flatMap(new Cdo());
        }
    }

    /* renamed from: com.tbruyelle.rxpermissions2.RxPermissions$try, reason: invalid class name */
    public class Ctry implements Function<Object, io.reactivex.Cnew<com.tbruyelle.rxpermissions2.Cdo>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String[] f20732do;

        public Ctry(String[] strArr) {
            this.f20732do = strArr;
        }

        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public io.reactivex.Cnew<com.tbruyelle.rxpermissions2.Cdo> apply(Object obj) {
            return RxPermissions.this.m24528public(this.f20732do);
        }
    }

    public RxPermissions(@NonNull FragmentActivity fragmentActivity) {
        this.f20720do = m24526goto(fragmentActivity.getSupportFragmentManager());
    }

    /* renamed from: else, reason: not valid java name */
    private RxPermissionsFragment m24523else(@NonNull FragmentManager fragmentManager) {
        return (RxPermissionsFragment) fragmentManager.findFragmentByTag(f20719if);
    }

    /* renamed from: final, reason: not valid java name */
    private io.reactivex.Cnew<?> m24524final(io.reactivex.Cnew<?> cnew, io.reactivex.Cnew<?> cnew2) {
        return cnew == null ? io.reactivex.Cnew.just(f20718for) : io.reactivex.Cnew.merge(cnew, cnew2);
    }

    @NonNull
    /* renamed from: goto, reason: not valid java name */
    private Lazy<RxPermissionsFragment> m24526goto(@NonNull FragmentManager fragmentManager) {
        return new Cdo(fragmentManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(23)
    /* renamed from: public, reason: not valid java name */
    public io.reactivex.Cnew<com.tbruyelle.rxpermissions2.Cdo> m24528public(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        ArrayList arrayList2 = new ArrayList();
        for (String str : strArr) {
            this.f20720do.get().m24558try("Requesting permission " + str);
            if (m24533break(str)) {
                arrayList.add(io.reactivex.Cnew.just(new com.tbruyelle.rxpermissions2.Cdo(str, true, false)));
            } else if (m24536class(str)) {
                arrayList.add(io.reactivex.Cnew.just(new com.tbruyelle.rxpermissions2.Cdo(str, false, false)));
            } else {
                io.reactivex.subjects.Ctry<com.tbruyelle.rxpermissions2.Cdo> ctryM24555if = this.f20720do.get().m24555if(str);
                if (ctryM24555if == null) {
                    arrayList2.add(str);
                    ctryM24555if = io.reactivex.subjects.Ctry.m29840else();
                    this.f20720do.get().m24557this(str, ctryM24555if);
                }
                arrayList.add(ctryM24555if);
            }
        }
        if (!arrayList2.isEmpty()) {
            m24541return((String[]) arrayList2.toArray(new String[arrayList2.size()]));
        }
        return io.reactivex.Cnew.concat(io.reactivex.Cnew.fromIterable(arrayList));
    }

    /* renamed from: super, reason: not valid java name */
    private io.reactivex.Cnew<?> m24529super(String... strArr) {
        for (String str : strArr) {
            if (!this.f20720do.get().m24551do(str)) {
                return io.reactivex.Cnew.empty();
            }
        }
        return io.reactivex.Cnew.just(f20718for);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public RxPermissionsFragment m24530this(@NonNull FragmentManager fragmentManager) {
        RxPermissionsFragment rxPermissionsFragmentM24523else = m24523else(fragmentManager);
        if (!(rxPermissionsFragmentM24523else == null)) {
            return rxPermissionsFragmentM24523else;
        }
        RxPermissionsFragment rxPermissionsFragment = new RxPermissionsFragment();
        fragmentManager.beginTransaction().add(rxPermissionsFragment, f20719if).commitNow();
        return rxPermissionsFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throw, reason: not valid java name */
    public io.reactivex.Cnew<com.tbruyelle.rxpermissions2.Cdo> m24531throw(io.reactivex.Cnew<?> cnew, String... strArr) {
        if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException("RxPermissions.request/requestEach requires at least one input permission");
        }
        return m24524final(cnew, m24529super(strArr)).flatMap(new Ctry(strArr));
    }

    @TargetApi(23)
    /* renamed from: throws, reason: not valid java name */
    private boolean m24532throws(Activity activity, String... strArr) {
        for (String str : strArr) {
            if (!m24533break(str) && !activity.shouldShowRequestPermissionRationale(str)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m24533break(String str) {
        return !m24535catch() || this.f20720do.get().m24553for(str);
    }

    /* renamed from: case, reason: not valid java name */
    public <T> ObservableTransformer<T, com.tbruyelle.rxpermissions2.Cdo> m24534case(String... strArr) {
        return new Cnew(strArr);
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m24535catch() {
        return Build.VERSION.SDK_INT >= 23;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m24536class(String str) {
        return m24535catch() && this.f20720do.get().m24556new(str);
    }

    /* renamed from: const, reason: not valid java name */
    public void m24537const(String[] strArr, int[] iArr) {
        this.f20720do.get().m24550case(strArr, iArr, new boolean[strArr.length]);
    }

    /* renamed from: import, reason: not valid java name */
    public io.reactivex.Cnew<com.tbruyelle.rxpermissions2.Cdo> m24538import(String... strArr) {
        return io.reactivex.Cnew.just(f20718for).compose(m24544try(strArr));
    }

    /* renamed from: native, reason: not valid java name */
    public io.reactivex.Cnew<com.tbruyelle.rxpermissions2.Cdo> m24539native(String... strArr) {
        return io.reactivex.Cnew.just(f20718for).compose(m24534case(strArr));
    }

    /* renamed from: new, reason: not valid java name */
    public <T> ObservableTransformer<T, Boolean> m24540new(String... strArr) {
        return new Cif(strArr);
    }

    @TargetApi(23)
    /* renamed from: return, reason: not valid java name */
    public void m24541return(String[] strArr) {
        this.f20720do.get().m24558try("requestPermissionsFromFragment " + TextUtils.join(", ", strArr));
        this.f20720do.get().m24552else(strArr);
    }

    /* renamed from: static, reason: not valid java name */
    public void m24542static(boolean z) {
        this.f20720do.get().m24554goto(z);
    }

    /* renamed from: switch, reason: not valid java name */
    public io.reactivex.Cnew<Boolean> m24543switch(Activity activity, String... strArr) {
        return !m24535catch() ? io.reactivex.Cnew.just(Boolean.FALSE) : io.reactivex.Cnew.just(Boolean.valueOf(m24532throws(activity, strArr)));
    }

    /* renamed from: try, reason: not valid java name */
    public <T> ObservableTransformer<T, com.tbruyelle.rxpermissions2.Cdo> m24544try(String... strArr) {
        return new Cfor(strArr);
    }

    /* renamed from: while, reason: not valid java name */
    public io.reactivex.Cnew<Boolean> m24545while(String... strArr) {
        return io.reactivex.Cnew.just(f20718for).compose(m24540new(strArr));
    }

    public RxPermissions(@NonNull Fragment fragment) {
        this.f20720do = m24526goto(fragment.getChildFragmentManager());
    }
}
