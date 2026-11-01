package com.luck.picture.lib.permissions;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.FragmentManager;
import android.os.Build;
import android.support.v4.dd1;
import android.support.v4.np1;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.functions.Function;
import io.reactivex.subjects.Ctry;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.luck.picture.lib.permissions.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo {

    /* renamed from: for, reason: not valid java name */
    public static final Object f18771for = new Object();

    /* renamed from: if, reason: not valid java name */
    public static final String f18772if = "RxPermissions";

    /* renamed from: do, reason: not valid java name */
    public np1 f18773do;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.luck.picture.lib.permissions.do$do, reason: invalid class name and collision with other inner class name */
    public class C0177do<T> implements ObservableTransformer<T, Boolean> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String[] f18774do;

        /* renamed from: com.luck.picture.lib.permissions.do$do$do, reason: invalid class name and collision with other inner class name */
        public class C0178do implements Function<List<dd1>, ObservableSource<Boolean>> {
            public C0178do() {
            }

            @Override // io.reactivex.functions.Function
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public ObservableSource<Boolean> apply(List<dd1> list) throws Exception {
                if (list.isEmpty()) {
                    return Cnew.empty();
                }
                Iterator<dd1> it = list.iterator();
                while (it.hasNext()) {
                    if (!it.next().f999if) {
                        return Cnew.just(Boolean.FALSE);
                    }
                }
                return Cnew.just(Boolean.TRUE);
            }
        }

        public C0177do(String[] strArr) {
            this.f18774do = strArr;
        }

        @Override // io.reactivex.ObservableTransformer
        public ObservableSource<Boolean> apply(Cnew<T> cnew) {
            return Cdo.this.m23169const(cnew, this.f18774do).buffer(this.f18774do.length).flatMap(new C0178do());
        }
    }

    /* renamed from: com.luck.picture.lib.permissions.do$for, reason: invalid class name */
    public class Cfor implements Function<Object, Cnew<dd1>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String[] f18777do;

        public Cfor(String[] strArr) {
            this.f18777do = strArr;
        }

        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cnew<dd1> apply(Object obj) throws Exception {
            return Cdo.this.m23173throw(this.f18777do);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.luck.picture.lib.permissions.do$if, reason: invalid class name */
    public class Cif<T> implements ObservableTransformer<T, dd1> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String[] f18779do;

        public Cif(String[] strArr) {
            this.f18779do = strArr;
        }

        @Override // io.reactivex.ObservableTransformer
        public ObservableSource<dd1> apply(Cnew<T> cnew) {
            return Cdo.this.m23169const(cnew, this.f18779do);
        }
    }

    public Cdo(@NonNull Activity activity) {
        this.f18773do = m23166case(activity);
    }

    /* renamed from: case, reason: not valid java name */
    private np1 m23166case(Activity activity) {
        np1 np1VarM23174try;
        np1 np1Var;
        try {
            np1VarM23174try = m23174try(activity);
            if (!(np1VarM23174try == null)) {
                return np1VarM23174try;
            }
            try {
                np1Var = new np1();
            } catch (Exception e) {
                e = e;
            }
            try {
                FragmentManager fragmentManager = activity.getFragmentManager();
                fragmentManager.beginTransaction().add(np1Var, f18772if).commitAllowingStateLoss();
                fragmentManager.executePendingTransactions();
                return np1Var;
            } catch (Exception e2) {
                e = e2;
                np1VarM23174try = np1Var;
                e.printStackTrace();
                return np1VarM23174try;
            }
        } catch (Exception e3) {
            e = e3;
            np1VarM23174try = null;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private Cnew<?> m23167catch(Cnew<?> cnew, Cnew<?> cnew2) {
        return cnew == null ? Cnew.just(f18771for) : Cnew.merge(cnew, cnew2);
    }

    /* renamed from: class, reason: not valid java name */
    private Cnew<?> m23168class(String... strArr) {
        for (String str : strArr) {
            if (!this.f18773do.m5337do(str)) {
                return Cnew.empty();
            }
        }
        return Cnew.just(f18771for);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: const, reason: not valid java name */
    public Cnew<dd1> m23169const(Cnew<?> cnew, String... strArr) {
        if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException("RxPermissions.request/requestEach requires at least one input permission");
        }
        return m23167catch(cnew, m23168class(strArr)).flatMap(new Cfor(strArr));
    }

    @TargetApi(23)
    /* renamed from: public, reason: not valid java name */
    private boolean m23172public(Activity activity, String... strArr) {
        for (String str : strArr) {
            if (!m23176else(str) && !activity.shouldShowRequestPermissionRationale(str)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(23)
    /* renamed from: throw, reason: not valid java name */
    public Cnew<dd1> m23173throw(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        ArrayList arrayList2 = new ArrayList();
        for (String str : strArr) {
            this.f18773do.m5344try("Requesting permission " + str);
            if (m23176else(str)) {
                arrayList.add(Cnew.just(new dd1(str, true, false)));
            } else if (m23184this(str)) {
                arrayList.add(Cnew.just(new dd1(str, false, false)));
            } else {
                Ctry<dd1> ctryM5341if = this.f18773do.m5341if(str);
                if (ctryM5341if == null) {
                    arrayList2.add(str);
                    ctryM5341if = Ctry.m29840else();
                    this.f18773do.m5343this(str, ctryM5341if);
                }
                arrayList.add(ctryM5341if);
            }
        }
        if (!arrayList2.isEmpty()) {
            m23185while((String[]) arrayList2.toArray(new String[arrayList2.size()]));
        }
        return Cnew.concat(Cnew.fromIterable(arrayList));
    }

    /* renamed from: try, reason: not valid java name */
    private np1 m23174try(Activity activity) {
        return (np1) activity.getFragmentManager().findFragmentByTag(f18772if);
    }

    /* renamed from: break, reason: not valid java name */
    public void m23175break(String[] strArr, int[] iArr) {
        this.f18773do.m5336case(strArr, iArr, new boolean[strArr.length]);
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m23176else(String str) {
        return !m23179goto() || this.f18773do.m5339for(str);
    }

    /* renamed from: final, reason: not valid java name */
    public Cnew<Boolean> m23177final(String... strArr) {
        return Cnew.just(f18771for).compose(m23178for(strArr));
    }

    /* renamed from: for, reason: not valid java name */
    public <T> ObservableTransformer<T, Boolean> m23178for(String... strArr) {
        return new C0177do(strArr);
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m23179goto() {
        return Build.VERSION.SDK_INT >= 23;
    }

    /* renamed from: import, reason: not valid java name */
    public void m23180import(boolean z) {
        this.f18773do.m5340goto(z);
    }

    /* renamed from: native, reason: not valid java name */
    public Cnew<Boolean> m23181native(Activity activity, String... strArr) {
        return !m23179goto() ? Cnew.just(Boolean.FALSE) : Cnew.just(Boolean.valueOf(m23172public(activity, strArr)));
    }

    /* renamed from: new, reason: not valid java name */
    public <T> ObservableTransformer<T, dd1> m23182new(String... strArr) {
        return new Cif(strArr);
    }

    /* renamed from: super, reason: not valid java name */
    public Cnew<dd1> m23183super(String... strArr) {
        return Cnew.just(f18771for).compose(m23182new(strArr));
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m23184this(String str) {
        return m23179goto() && this.f18773do.m5342new(str);
    }

    @TargetApi(23)
    /* renamed from: while, reason: not valid java name */
    public void m23185while(String[] strArr) {
        this.f18773do.m5344try("requestPermissionsFromFragment " + TextUtils.join(", ", strArr));
        this.f18773do.m5338else(strArr);
    }
}
