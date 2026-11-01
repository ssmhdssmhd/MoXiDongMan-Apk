package com.gyf.immersionbar;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.support.v4.n51;
import android.support.v4.r41;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.common.collect.LinkedHashMultimap;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;

@TargetApi(19)
/* renamed from: com.gyf.immersionbar.else, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Celse implements ImmersionCallback {

    /* renamed from: break, reason: not valid java name */
    private boolean f18059break;

    /* renamed from: case, reason: not valid java name */
    private ViewGroup f18060case;

    /* renamed from: catch, reason: not valid java name */
    private boolean f18061catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f18062class;

    /* renamed from: const, reason: not valid java name */
    private Cfor f18063const;

    /* renamed from: default, reason: not valid java name */
    private int f18064default;

    /* renamed from: do, reason: not valid java name */
    private Activity f18065do;

    /* renamed from: else, reason: not valid java name */
    private ViewGroup f18066else;

    /* renamed from: extends, reason: not valid java name */
    private int f18067extends;

    /* renamed from: final, reason: not valid java name */
    private com.gyf.immersionbar.Cdo f18068final;

    /* renamed from: finally, reason: not valid java name */
    private int f18069finally;

    /* renamed from: for, reason: not valid java name */
    private Fragment f18070for;

    /* renamed from: goto, reason: not valid java name */
    private Celse f18071goto;

    /* renamed from: if, reason: not valid java name */
    private androidx.fragment.app.Fragment f18072if;

    /* renamed from: import, reason: not valid java name */
    private Ccase f18073import;

    /* renamed from: native, reason: not valid java name */
    private Map<String, Cfor> f18074native;

    /* renamed from: new, reason: not valid java name */
    private Dialog f18075new;

    /* renamed from: public, reason: not valid java name */
    private int f18076public;

    /* renamed from: return, reason: not valid java name */
    private boolean f18077return;

    /* renamed from: static, reason: not valid java name */
    private boolean f18078static;

    /* renamed from: super, reason: not valid java name */
    private int f18079super;

    /* renamed from: switch, reason: not valid java name */
    private boolean f18080switch;

    /* renamed from: this, reason: not valid java name */
    private boolean f18081this;

    /* renamed from: throw, reason: not valid java name */
    private int f18082throw;

    /* renamed from: throws, reason: not valid java name */
    private int f18083throws;

    /* renamed from: try, reason: not valid java name */
    private Window f18084try;

    /* renamed from: while, reason: not valid java name */
    private int f18085while;

    /* renamed from: com.gyf.immersionbar.else$do, reason: invalid class name */
    public static class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ViewGroup.LayoutParams f18086do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f18087for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ View f18088if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Integer f18089new;

        public Cdo(ViewGroup.LayoutParams layoutParams, View view, int i, Integer num) {
            this.f18086do = layoutParams;
            this.f18088if = view;
            this.f18087for = i;
            this.f18089new = num;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f18086do.height = (this.f18088if.getHeight() + this.f18087for) - this.f18089new.intValue();
            View view = this.f18088if;
            view.setPadding(view.getPaddingLeft(), (this.f18088if.getPaddingTop() + this.f18087for) - this.f18089new.intValue(), this.f18088if.getPaddingRight(), this.f18088if.getPaddingBottom());
            this.f18088if.setLayoutParams(this.f18086do);
        }
    }

    /* renamed from: com.gyf.immersionbar.else$if, reason: invalid class name */
    public static /* synthetic */ class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f18090do;

        static {
            int[] iArr = new int[com.gyf.immersionbar.Cif.values().length];
            f18090do = iArr;
            try {
                iArr[com.gyf.immersionbar.Cif.FLAG_HIDE_BAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18090do[com.gyf.immersionbar.Cif.FLAG_HIDE_STATUS_BAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18090do[com.gyf.immersionbar.Cif.FLAG_HIDE_NAVIGATION_BAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18090do[com.gyf.immersionbar.Cif.FLAG_SHOW_BAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public Celse(Activity activity) {
        this.f18081this = false;
        this.f18059break = false;
        this.f18061catch = false;
        this.f18062class = false;
        this.f18079super = 0;
        this.f18082throw = 0;
        this.f18085while = 0;
        this.f18073import = null;
        this.f18074native = new HashMap();
        this.f18076public = 0;
        this.f18077return = false;
        this.f18078static = false;
        this.f18080switch = false;
        this.f18083throws = 0;
        this.f18064default = 0;
        this.f18067extends = 0;
        this.f18069finally = 0;
        this.f18081this = true;
        this.f18065do = activity;
        e0(activity.getWindow());
    }

    @TargetApi(14)
    public static int A(@NonNull Activity activity) {
        return new com.gyf.immersionbar.Cdo(activity).m22685case();
    }

    @TargetApi(14)
    public static int B(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return A(fragment.getActivity());
    }

    @TargetApi(14)
    public static int C(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return A(fragment.getActivity());
    }

    public static int D(@NonNull Activity activity) {
        if (U(activity)) {
            return r41.m6763try(activity);
        }
        return 0;
    }

    public static int E(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return D(fragment.getActivity());
    }

    public static int F(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return D(fragment.getActivity());
    }

    private static Ccatch K() {
        return Ccatch.m22655break();
    }

    @TargetApi(14)
    public static int L(@NonNull Activity activity) {
        return new com.gyf.immersionbar.Cdo(activity).m22690this();
    }

    @TargetApi(14)
    public static int M(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return L(fragment.getActivity());
    }

    private void M0() {
        h2();
        k();
        if (this.f18059break || !n51.m5104this()) {
            return;
        }
        j();
    }

    @TargetApi(14)
    public static int N(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return L(fragment.getActivity());
    }

    @TargetApi(14)
    public static boolean R(@NonNull Activity activity) {
        return new com.gyf.immersionbar.Cdo(activity).m22686catch();
    }

    public static void R0(Activity activity) {
        S0(activity, true);
    }

    @TargetApi(14)
    public static boolean S(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return R(fragment.getActivity());
    }

    public static void S0(Activity activity, boolean z) {
        if (activity == null) {
            return;
        }
        V0(((ViewGroup) activity.findViewById(android.R.id.content)).getChildAt(0), z);
    }

    @TargetApi(14)
    public static boolean T(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return R(fragment.getActivity());
    }

    public static void T0(Fragment fragment) {
        if (fragment == null) {
            return;
        }
        R0(fragment.getActivity());
    }

    public static boolean U(@NonNull Activity activity) {
        return r41.m6754const(activity);
    }

    public static void U0(Fragment fragment, boolean z) {
        if (fragment == null) {
            return;
        }
        S0(fragment.getActivity(), z);
    }

    public static boolean V(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return U(fragment.getActivity());
    }

    private static void V0(View view, boolean z) {
        if (view == null) {
            return;
        }
        if (!(view instanceof ViewGroup)) {
            view.setFitsSystemWindows(z);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (viewGroup instanceof DrawerLayout) {
            V0(viewGroup.getChildAt(0), z);
        } else {
            viewGroup.setFitsSystemWindows(z);
            viewGroup.setClipToPadding(true);
        }
    }

    public static boolean W(@NonNull View view) {
        return r41.m6757final(view);
    }

    public static void W0(androidx.fragment.app.Fragment fragment) {
        if (fragment == null) {
            return;
        }
        R0(fragment.getActivity());
    }

    public static boolean X(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return U(fragment.getActivity());
    }

    public static void X0(androidx.fragment.app.Fragment fragment, boolean z) {
        if (fragment == null) {
            return;
        }
        S0(fragment.getActivity(), z);
    }

    private int Y(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            int i2 = Cif.f18090do[this.f18063const.f18092break.ordinal()];
            if (i2 == 1) {
                i |= 518;
            } else if (i2 == 2) {
                i |= 1028;
            } else if (i2 == 3) {
                i |= 514;
            } else if (i2 == 4) {
                i |= 0;
            }
        }
        return i | 4096;
    }

    private int Y0(int i) {
        return (Build.VERSION.SDK_INT < 26 || !this.f18063const.f18095class) ? i : i | 16;
    }

    private void a() {
        if (Build.VERSION.SDK_INT < 28 || this.f18077return) {
            return;
        }
        WindowManager.LayoutParams attributes = this.f18084try.getAttributes();
        attributes.layoutInDisplayCutoutMode = 1;
        this.f18084try.setAttributes(attributes);
    }

    public static void a0(@NonNull Window window) {
        window.setFlags(1024, 1024);
    }

    @RequiresApi(api = 21)
    private int c0(int i) {
        if (!this.f18077return) {
            this.f18063const.f18104for = this.f18084try.getNavigationBarColor();
        }
        int i2 = i | 1024;
        Cfor cfor = this.f18063const;
        if (cfor.f18105goto && cfor.f18110interface) {
            i2 |= 512;
        }
        this.f18084try.clearFlags(67108864);
        if (this.f18068final.m22686catch()) {
            this.f18084try.clearFlags(134217728);
        }
        this.f18084try.addFlags(Integer.MIN_VALUE);
        Cfor cfor2 = this.f18063const;
        if (cfor2.f18129while) {
            this.f18084try.setStatusBarColor(ColorUtils.blendARGB(cfor2.f18099do, cfor2.f18108import, cfor2.f18112new));
        } else {
            this.f18084try.setStatusBarColor(ColorUtils.blendARGB(cfor2.f18099do, 0, cfor2.f18112new));
        }
        Cfor cfor3 = this.f18063const;
        if (cfor3.f18110interface) {
            this.f18084try.setNavigationBarColor(ColorUtils.blendARGB(cfor3.f18106if, cfor3.f18111native, cfor3.f18093case));
        } else {
            this.f18084try.setNavigationBarColor(cfor3.f18104for);
        }
        return i2;
    }

    private void c1(int i, int i2, int i3, int i4) {
        ViewGroup viewGroup = this.f18066else;
        if (viewGroup != null) {
            viewGroup.setPadding(i, i2, i3, i4);
        }
        this.f18083throws = i;
        this.f18064default = i2;
        this.f18067extends = i3;
        this.f18069finally = i4;
    }

    /* renamed from: continue, reason: not valid java name */
    private void m22691continue() {
        if (this.f18065do != null) {
            Ccase ccase = this.f18073import;
            if (ccase != null) {
                ccase.m22652do();
                this.f18073import = null;
            }
            Ctry.m22740if().m22743new(this);
            Cthis.m22737do().removeOnNavigationBarListener(this.f18063const.f18122synchronized);
        }
    }

    private void d0() {
        this.f18084try.addFlags(67108864);
        y1();
        if (this.f18068final.m22686catch() || n51.m5104this()) {
            Cfor cfor = this.f18063const;
            if (cfor.f18110interface && cfor.f18115protected) {
                this.f18084try.addFlags(134217728);
            } else {
                this.f18084try.clearFlags(134217728);
            }
            if (this.f18079super == 0) {
                this.f18079super = this.f18068final.m22689new();
            }
            if (this.f18082throw == 0) {
                this.f18082throw = this.f18068final.m22685case();
            }
            x1();
        }
    }

    private void d1() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (n51.m5099final()) {
            Cclass.m22673for(this.f18084try, Cnew.f18148this, this.f18063const.f18094catch);
            Cfor cfor = this.f18063const;
            if (cfor.f18110interface) {
                Cclass.m22673for(this.f18084try, Cnew.f18135break, cfor.f18095class);
            }
        }
        if (n51.m5094catch()) {
            Cfor cfor2 = this.f18063const;
            int i = cfor2.f18114private;
            if (i != 0) {
                Cclass.m22678try(this.f18065do, i);
            } else {
                Cclass.m22669case(this.f18065do, cfor2.f18094catch);
            }
        }
    }

    private void d2() {
        if (this.f18063const.f18116public.size() != 0) {
            for (Map.Entry<View, Map<Integer, Integer>> entry : this.f18063const.f18116public.entrySet()) {
                View key = entry.getKey();
                Map<Integer, Integer> value = entry.getValue();
                Integer numValueOf = Integer.valueOf(this.f18063const.f18099do);
                Integer numValueOf2 = Integer.valueOf(this.f18063const.f18108import);
                for (Map.Entry<Integer, Integer> entry2 : value.entrySet()) {
                    Integer key2 = entry2.getKey();
                    numValueOf2 = entry2.getValue();
                    numValueOf = key2;
                }
                if (key != null) {
                    if (Math.abs(this.f18063const.f18117return - 0.0f) == 0.0f) {
                        key.setBackgroundColor(ColorUtils.blendARGB(numValueOf.intValue(), numValueOf2.intValue(), this.f18063const.f18112new));
                    } else {
                        key.setBackgroundColor(ColorUtils.blendARGB(numValueOf.intValue(), numValueOf2.intValue(), this.f18063const.f18117return));
                    }
                }
            }
        }
    }

    private void e0(Window window) {
        this.f18084try = window;
        this.f18063const = new Cfor();
        ViewGroup viewGroup = (ViewGroup) this.f18084try.getDecorView();
        this.f18060case = viewGroup;
        this.f18066else = (ViewGroup) viewGroup.findViewById(android.R.id.content);
    }

    private int e1(int i) {
        return (Build.VERSION.SDK_INT < 23 || !this.f18063const.f18094catch) ? i : i | 8192;
    }

    public static void f1(Activity activity, int i, View... viewArr) {
        if (Build.VERSION.SDK_INT < 19 || activity == null) {
            return;
        }
        if (i < 0) {
            i = 0;
        }
        for (View view : viewArr) {
            if (view != null) {
                int i2 = R.id.immersion_fits_layout_overlap;
                Integer num = (Integer) view.getTag(i2);
                if (num == null) {
                    num = 0;
                }
                if (num.intValue() != i) {
                    view.setTag(i2, Integer.valueOf(i));
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    if (layoutParams == null) {
                        layoutParams = new ViewGroup.LayoutParams(-1, 0);
                    }
                    layoutParams.height = i;
                    view.setLayoutParams(layoutParams);
                }
            }
        }
    }

    private void g() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            if (i < 21 || n51.m5104this()) {
                i();
            } else {
                h();
            }
            m22693instanceof();
        }
    }

    public static void g1(Activity activity, View... viewArr) {
        f1(activity, L(activity), viewArr);
    }

    private void h() {
        h2();
        if (m22696strictfp(this.f18060case.findViewById(android.R.id.content))) {
            c1(0, 0, 0, 0);
            return;
        }
        int iM22690this = (this.f18063const.f18098default && this.f18076public == 4) ? this.f18068final.m22690this() : 0;
        if (this.f18063const.f18097continue) {
            iM22690this = this.f18068final.m22690this() + this.f18085while;
        }
        c1(0, iM22690this, 0, 0);
    }

    private static boolean h0(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static void h1(Fragment fragment, int i, View... viewArr) {
        if (fragment == null) {
            return;
        }
        f1(fragment.getActivity(), i, viewArr);
    }

    private void h2() {
        com.gyf.immersionbar.Cdo cdo = new com.gyf.immersionbar.Cdo(this.f18065do);
        this.f18068final = cdo;
        if (!this.f18077return || this.f18078static) {
            this.f18085while = cdo.m22688do();
        }
    }

    private void i() {
        if (this.f18063const.f18097continue) {
            this.f18078static = true;
            this.f18066else.post(this);
        } else {
            this.f18078static = false;
            M0();
        }
    }

    public static void i1(Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        g1(fragment.getActivity(), viewArr);
    }

    private void i2() {
        m22697this();
        if (Build.VERSION.SDK_INT >= 19) {
            h2();
            Celse celse = this.f18071goto;
            if (celse != null) {
                if (this.f18059break) {
                    celse.f18063const = this.f18063const;
                }
                if (this.f18062class && celse.f18080switch) {
                    celse.f18063const.f18119strictfp = false;
                }
            }
        }
    }

    /* renamed from: implements, reason: not valid java name */
    private void m22692implements() {
        if (Build.VERSION.SDK_INT >= 19) {
            if (!this.f18059break) {
                if (this.f18063const.f18119strictfp) {
                    if (this.f18073import == null) {
                        this.f18073import = new Ccase(this);
                    }
                    this.f18073import.m22653for(this.f18063const.f18128volatile);
                    return;
                } else {
                    Ccase ccase = this.f18073import;
                    if (ccase != null) {
                        ccase.m22654if();
                        return;
                    }
                    return;
                }
            }
            Celse celse = this.f18071goto;
            if (celse != null) {
                if (celse.f18063const.f18119strictfp) {
                    if (celse.f18073import == null) {
                        celse.f18073import = new Ccase(celse);
                    }
                    Celse celse2 = this.f18071goto;
                    celse2.f18073import.m22653for(celse2.f18063const.f18128volatile);
                    return;
                }
                Ccase ccase2 = celse.f18073import;
                if (ccase2 != null) {
                    ccase2.m22654if();
                }
            }
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    private void m22693instanceof() {
        int iL = this.f18063const.f18113package ? L(this.f18065do) : 0;
        int i = this.f18076public;
        if (i == 1) {
            l1(this.f18065do, iL, this.f18063const.f18101extends);
        } else if (i == 2) {
            r1(this.f18065do, iL, this.f18063const.f18101extends);
        } else {
            if (i != 3) {
                return;
            }
            f1(this.f18065do, iL, this.f18063const.f18103finally);
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public static void m22694interface(@NonNull Activity activity, @NonNull Dialog dialog) {
        K().m22664if(activity, dialog);
    }

    private void j() {
        View viewFindViewById = this.f18060case.findViewById(Cnew.f18145if);
        Cfor cfor = this.f18063const;
        if (!cfor.f18110interface || !cfor.f18115protected) {
            Ctry.m22740if().m22743new(this);
            viewFindViewById.setVisibility(8);
        } else if (viewFindViewById != null) {
            Ctry.m22740if().m22741do(this);
            Ctry.m22740if().m22742for(this.f18065do.getApplication());
        }
    }

    @TargetApi(14)
    public static boolean j0(@NonNull Activity activity) {
        return new com.gyf.immersionbar.Cdo(activity).m22687class();
    }

    public static void j1(androidx.fragment.app.Fragment fragment, int i, View... viewArr) {
        if (fragment == null) {
            return;
        }
        f1(fragment.getActivity(), i, viewArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void k() {
        int iM22685case;
        int iM22689new;
        if (m22696strictfp(this.f18060case.findViewById(android.R.id.content))) {
            c1(0, 0, 0, 0);
            return;
        }
        int iM22690this = (this.f18063const.f18098default && this.f18076public == 4) ? this.f18068final.m22690this() : 0;
        if (this.f18063const.f18097continue) {
            iM22690this = this.f18068final.m22690this() + this.f18085while;
        }
        if (this.f18068final.m22686catch()) {
            Cfor cfor = this.f18063const;
            if (cfor.f18110interface && cfor.f18115protected) {
                if (cfor.f18105goto) {
                    iM22685case = 0;
                } else if (this.f18068final.m22687class()) {
                    iM22689new = this.f18068final.m22689new();
                    iM22685case = 0;
                    if (this.f18063const.f18123this) {
                        if (!this.f18068final.m22687class()) {
                            iM22685case = this.f18068final.m22685case();
                        }
                    } else if (!this.f18068final.m22687class()) {
                        iM22685case = 0;
                    }
                } else {
                    iM22685case = this.f18068final.m22685case();
                }
                iM22689new = 0;
                if (this.f18063const.f18123this) {
                }
            } else {
                iM22685case = 0;
            }
            iM22689new = 0;
        }
        c1(0, iM22690this, iM22685case, iM22689new);
    }

    @TargetApi(14)
    public static boolean k0(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return j0(fragment.getActivity());
    }

    public static void k1(androidx.fragment.app.Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        g1(fragment.getActivity(), viewArr);
    }

    public static Celse k2(@NonNull Activity activity) {
        return K().m22665new(activity);
    }

    @TargetApi(14)
    public static boolean l0(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return j0(fragment.getActivity());
    }

    public static void l1(Activity activity, int i, View... viewArr) {
        if (Build.VERSION.SDK_INT < 19 || activity == null) {
            return;
        }
        if (i < 0) {
            i = 0;
        }
        for (View view : viewArr) {
            if (view != null) {
                int i2 = R.id.immersion_fits_layout_overlap;
                Integer num = (Integer) view.getTag(i2);
                if (num == null) {
                    num = 0;
                }
                if (num.intValue() != i) {
                    view.setTag(i2, Integer.valueOf(i));
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    if (layoutParams == null) {
                        layoutParams = new ViewGroup.LayoutParams(-1, -2);
                    }
                    int i3 = layoutParams.height;
                    if (i3 == -2 || i3 == -1) {
                        view.post(new Cdo(layoutParams, view, i, num));
                    } else {
                        layoutParams.height = i3 + (i - num.intValue());
                        view.setPadding(view.getPaddingLeft(), (view.getPaddingTop() + i) - num.intValue(), view.getPaddingRight(), view.getPaddingBottom());
                        view.setLayoutParams(layoutParams);
                    }
                }
            }
        }
    }

    public static Celse l2(@NonNull Activity activity, @NonNull Dialog dialog) {
        return K().m22666try(activity, dialog);
    }

    public static boolean m0() {
        return n51.m5099final() || Build.VERSION.SDK_INT >= 26;
    }

    public static void m1(Activity activity, View... viewArr) {
        l1(activity, L(activity), viewArr);
    }

    public static Celse m2(@NonNull DialogFragment dialogFragment) {
        return K().m22661case(dialogFragment, false);
    }

    public static boolean n0() {
        return n51.m5099final() || n51.m5094catch() || Build.VERSION.SDK_INT >= 23;
    }

    public static void n1(Fragment fragment, int i, View... viewArr) {
        if (fragment == null) {
            return;
        }
        l1(fragment.getActivity(), i, viewArr);
    }

    public static Celse n2(@NonNull Fragment fragment) {
        return K().m22661case(fragment, false);
    }

    public static void o1(Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        m1(fragment.getActivity(), viewArr);
    }

    public static Celse o2(@NonNull Fragment fragment, boolean z) {
        return K().m22661case(fragment, z);
    }

    public static void p1(androidx.fragment.app.Fragment fragment, int i, View... viewArr) {
        if (fragment == null) {
            return;
        }
        l1(fragment.getActivity(), i, viewArr);
    }

    public static Celse p2(@NonNull androidx.fragment.app.DialogFragment dialogFragment) {
        return K().m22662else(dialogFragment, false);
    }

    /* renamed from: protected, reason: not valid java name */
    public static void m22695protected(@NonNull androidx.fragment.app.Fragment fragment) {
        K().m22663for(fragment, false);
    }

    @TargetApi(14)
    public static int q(@NonNull Activity activity) {
        return new com.gyf.immersionbar.Cdo(activity).m22688do();
    }

    public static void q1(androidx.fragment.app.Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        m1(fragment.getActivity(), viewArr);
    }

    public static Celse q2(@NonNull androidx.fragment.app.Fragment fragment) {
        return K().m22662else(fragment, false);
    }

    @TargetApi(14)
    public static int r(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return q(fragment.getActivity());
    }

    public static void r1(Activity activity, int i, View... viewArr) {
        if (Build.VERSION.SDK_INT < 19 || activity == null) {
            return;
        }
        if (i < 0) {
            i = 0;
        }
        for (View view : viewArr) {
            if (view != null) {
                int i2 = R.id.immersion_fits_layout_overlap;
                Integer num = (Integer) view.getTag(i2);
                if (num == null) {
                    num = 0;
                }
                if (num.intValue() != i) {
                    view.setTag(i2, Integer.valueOf(i));
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    if (layoutParams == null) {
                        layoutParams = new ViewGroup.MarginLayoutParams(-1, -2);
                    }
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    marginLayoutParams.setMargins(marginLayoutParams.leftMargin, (marginLayoutParams.topMargin + i) - num.intValue(), marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
                    view.setLayoutParams(marginLayoutParams);
                }
            }
        }
    }

    public static Celse r2(@NonNull androidx.fragment.app.Fragment fragment, boolean z) {
        return K().m22662else(fragment, z);
    }

    @TargetApi(14)
    public static int s(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return q(fragment.getActivity());
    }

    public static void s1(Activity activity, View... viewArr) {
        r1(activity, L(activity), viewArr);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static boolean m22696strictfp(View view) {
        if (view == null) {
            return false;
        }
        if (view.getFitsSystemWindows()) {
            return true;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (((childAt instanceof DrawerLayout) && m22696strictfp(childAt)) || childAt.getFitsSystemWindows()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void t1(Fragment fragment, int i, View... viewArr) {
        if (fragment == null) {
            return;
        }
        r1(fragment.getActivity(), i, viewArr);
    }

    /* renamed from: this, reason: not valid java name */
    private void m22697this() {
        int i;
        int i2;
        Cfor cfor = this.f18063const;
        if (cfor.f18096const && (i2 = cfor.f18099do) != 0) {
            P1(i2 > -4539718, cfor.f18120super);
        }
        Cfor cfor2 = this.f18063const;
        if (!cfor2.f18102final || (i = cfor2.f18106if) == 0) {
            return;
        }
        F0(i > -4539718, cfor2.f18124throw);
    }

    /* renamed from: transient, reason: not valid java name */
    public static void m22698transient(@NonNull androidx.fragment.app.Fragment fragment, boolean z) {
        K().m22663for(fragment, z);
    }

    public static void u1(Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        s1(fragment.getActivity(), viewArr);
    }

    public static void v1(androidx.fragment.app.Fragment fragment, int i, View... viewArr) {
        if (fragment == null) {
            return;
        }
        r1(fragment.getActivity(), i, viewArr);
    }

    /* renamed from: volatile, reason: not valid java name */
    private void m22699volatile() {
        if (this.f18071goto == null) {
            this.f18071goto = k2(this.f18065do);
        }
        Celse celse = this.f18071goto;
        if (celse == null || celse.f18077return) {
            return;
        }
        celse.b0();
    }

    public static void w1(androidx.fragment.app.Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        s1(fragment.getActivity(), viewArr);
    }

    @TargetApi(14)
    public static int x(@NonNull Activity activity) {
        return new com.gyf.immersionbar.Cdo(activity).m22689new();
    }

    private void x1() {
        FrameLayout.LayoutParams layoutParams;
        ViewGroup viewGroup = this.f18060case;
        int i = Cnew.f18145if;
        View viewFindViewById = viewGroup.findViewById(i);
        if (viewFindViewById == null) {
            viewFindViewById = new View(this.f18065do);
            viewFindViewById.setId(i);
            this.f18060case.addView(viewFindViewById);
        }
        if (this.f18068final.m22687class()) {
            layoutParams = new FrameLayout.LayoutParams(-1, this.f18068final.m22689new());
            layoutParams.gravity = 80;
        } else {
            layoutParams = new FrameLayout.LayoutParams(this.f18068final.m22685case(), -1);
            layoutParams.gravity = GravityCompat.END;
        }
        viewFindViewById.setLayoutParams(layoutParams);
        Cfor cfor = this.f18063const;
        viewFindViewById.setBackgroundColor(ColorUtils.blendARGB(cfor.f18106if, cfor.f18111native, cfor.f18093case));
        Cfor cfor2 = this.f18063const;
        if (cfor2.f18110interface && cfor2.f18115protected && !cfor2.f18123this) {
            viewFindViewById.setVisibility(0);
        } else {
            viewFindViewById.setVisibility(8);
        }
    }

    @TargetApi(14)
    public static int y(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return x(fragment.getActivity());
    }

    private void y1() {
        ViewGroup viewGroup = this.f18060case;
        int i = Cnew.f18140do;
        View viewFindViewById = viewGroup.findViewById(i);
        if (viewFindViewById == null) {
            viewFindViewById = new View(this.f18065do);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, this.f18068final.m22690this());
            layoutParams.gravity = 48;
            viewFindViewById.setLayoutParams(layoutParams);
            viewFindViewById.setVisibility(0);
            viewFindViewById.setId(i);
            this.f18060case.addView(viewFindViewById);
        }
        Cfor cfor = this.f18063const;
        if (cfor.f18129while) {
            viewFindViewById.setBackgroundColor(ColorUtils.blendARGB(cfor.f18099do, cfor.f18108import, cfor.f18112new));
        } else {
            viewFindViewById.setBackgroundColor(ColorUtils.blendARGB(cfor.f18099do, 0, cfor.f18112new));
        }
    }

    @TargetApi(14)
    public static int z(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return x(fragment.getActivity());
    }

    public static void z1(@NonNull Window window) {
        window.clearFlags(1024);
    }

    public Celse A0(@ColorInt int i, @ColorInt int i2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        Cfor cfor = this.f18063const;
        cfor.f18106if = i;
        cfor.f18111native = i2;
        cfor.f18093case = f;
        return this;
    }

    public Celse A1(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        Cfor cfor = this.f18063const;
        cfor.f18112new = f;
        cfor.f18127try = f;
        return this;
    }

    public Celse B0(@ColorRes int i) {
        return D0(ContextCompat.getColor(this.f18065do, i));
    }

    public Celse B1(@ColorRes int i) {
        return H1(ContextCompat.getColor(this.f18065do, i));
    }

    public Celse C0(String str) {
        return D0(Color.parseColor(str));
    }

    public Celse C1(@ColorRes int i, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        return I1(ContextCompat.getColor(this.f18065do, i), f);
    }

    public Celse D0(@ColorInt int i) {
        this.f18063const.f18111native = i;
        return this;
    }

    public Celse D1(@ColorRes int i, @ColorRes int i2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        return J1(ContextCompat.getColor(this.f18065do, i), ContextCompat.getColor(this.f18065do, i2), f);
    }

    public Celse E0(boolean z) {
        return F0(z, 0.2f);
    }

    public Celse E1(String str) {
        return H1(Color.parseColor(str));
    }

    public Celse F0(boolean z, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        this.f18063const.f18095class = z;
        if (!z || m0()) {
            Cfor cfor = this.f18063const;
            cfor.f18093case = cfor.f18100else;
        } else {
            this.f18063const.f18093case = f;
        }
        return this;
    }

    public Celse F1(String str, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        return I1(Color.parseColor(str), f);
    }

    public int G() {
        return this.f18069finally;
    }

    public Celse G0(boolean z) {
        this.f18063const.f18110interface = z;
        return this;
    }

    public Celse G1(String str, String str2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        return J1(Color.parseColor(str), Color.parseColor(str2), f);
    }

    public int H() {
        return this.f18083throws;
    }

    public Celse H0(boolean z) {
        if (n51.m5104this()) {
            Cfor cfor = this.f18063const;
            cfor.f18126transient = z;
            cfor.f18115protected = z;
        }
        return this;
    }

    public Celse H1(@ColorInt int i) {
        this.f18063const.f18099do = i;
        return this;
    }

    public int I() {
        return this.f18067extends;
    }

    public Celse I0(boolean z) {
        this.f18063const.f18115protected = z;
        return this;
    }

    public Celse I1(@ColorInt int i, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        Cfor cfor = this.f18063const;
        cfor.f18099do = i;
        cfor.f18112new = f;
        return this;
    }

    public int J() {
        return this.f18064default;
    }

    public void J0(Configuration configuration) {
        if (!n51.m5104this() && Build.VERSION.SDK_INT != 19) {
            g();
        } else if (this.f18077return && !this.f18059break && this.f18063const.f18115protected) {
            b0();
        } else {
            g();
        }
    }

    public Celse J1(@ColorInt int i, @ColorInt int i2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        Cfor cfor = this.f18063const;
        cfor.f18099do = i;
        cfor.f18108import = i2;
        cfor.f18112new = f;
        return this;
    }

    public void K0() {
        Celse celse;
        m22691continue();
        if (this.f18062class && (celse = this.f18071goto) != null) {
            Cfor cfor = celse.f18063const;
            cfor.f18119strictfp = celse.f18080switch;
            if (cfor.f18092break != com.gyf.immersionbar.Cif.FLAG_SHOW_BAR) {
                celse.Q0();
            }
        }
        this.f18077return = false;
    }

    public Celse K1(@ColorRes int i) {
        return N1(ContextCompat.getColor(this.f18065do, i));
    }

    public void L0() {
        if (this.f18059break || !this.f18077return || this.f18063const == null) {
            return;
        }
        if (n51.m5104this() && this.f18063const.f18126transient) {
            b0();
        } else if (this.f18063const.f18092break != com.gyf.immersionbar.Cif.FLAG_SHOW_BAR) {
            Q0();
        }
    }

    public Celse L1(String str) {
        return N1(Color.parseColor(str));
    }

    public Celse M1(boolean z) {
        this.f18063const.f18129while = z;
        return this;
    }

    public Celse N0() {
        if (this.f18063const.f18116public.size() != 0) {
            this.f18063const.f18116public.clear();
        }
        return this;
    }

    public Celse N1(@ColorInt int i) {
        this.f18063const.f18108import = i;
        return this;
    }

    public androidx.fragment.app.Fragment O() {
        return this.f18072if;
    }

    public Celse O0(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View参数不能为空");
        }
        Map<Integer, Integer> map = this.f18063const.f18116public.get(view);
        if (map != null && map.size() != 0) {
            this.f18063const.f18116public.remove(view);
        }
        return this;
    }

    public Celse O1(boolean z) {
        return P1(z, 0.2f);
    }

    public Celse P(String str) {
        if (h0(str)) {
            throw new IllegalArgumentException("tag不能为空");
        }
        Cfor cfor = this.f18074native.get(str);
        if (cfor != null) {
            this.f18063const = cfor.clone();
        }
        return this;
    }

    public Celse P0() {
        this.f18063const = new Cfor();
        this.f18076public = 0;
        return this;
    }

    public Celse P1(boolean z, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        this.f18063const.f18094catch = z;
        if (!z || n0()) {
            Cfor cfor = this.f18063const;
            cfor.f18114private = cfor.f18091abstract;
            cfor.f18112new = cfor.f18127try;
        } else {
            this.f18063const.f18112new = f;
        }
        return this;
    }

    public Window Q() {
        return this.f18084try;
    }

    public void Q0() {
        int iY0 = 256;
        if (Build.VERSION.SDK_INT < 21 || n51.m5104this()) {
            d0();
        } else {
            a();
            iY0 = Y0(e1(c0(256)));
        }
        this.f18060case.setSystemUiVisibility(Y(iY0));
        d1();
        if (this.f18063const.f18122synchronized != null) {
            Cthis.m22737do().m22738if(this.f18065do.getApplication());
        }
    }

    public Celse Q1(@IdRes int i) {
        return S1(this.f18065do.findViewById(i));
    }

    public Celse R1(@IdRes int i, View view) {
        return S1(view.findViewById(i));
    }

    public Celse S1(View view) {
        if (view == null) {
            return this;
        }
        this.f18063const.f18103finally = view;
        if (this.f18076public == 0) {
            this.f18076public = 3;
        }
        return this;
    }

    public Celse T1(boolean z) {
        this.f18063const.f18097continue = z;
        return this;
    }

    public Celse U1(@IdRes int i) {
        return X1(i, true);
    }

    public Celse V1(@IdRes int i, View view) {
        return Z1(view.findViewById(i), true);
    }

    public Celse W1(@IdRes int i, View view, boolean z) {
        return Z1(view.findViewById(i), z);
    }

    public Celse X1(@IdRes int i, boolean z) {
        androidx.fragment.app.Fragment fragment = this.f18072if;
        if (fragment != null && fragment.getView() != null) {
            return Z1(this.f18072if.getView().findViewById(i), z);
        }
        Fragment fragment2 = this.f18070for;
        return (fragment2 == null || fragment2.getView() == null) ? Z1(this.f18065do.findViewById(i), z) : Z1(this.f18070for.getView().findViewById(i), z);
    }

    public Celse Y1(View view) {
        return view == null ? this : Z1(view, true);
    }

    public Celse Z(com.gyf.immersionbar.Cif cif) {
        this.f18063const.f18092break = cif;
        if (Build.VERSION.SDK_INT == 19 || n51.m5104this()) {
            Cfor cfor = this.f18063const;
            com.gyf.immersionbar.Cif cif2 = cfor.f18092break;
            cfor.f18123this = cif2 == com.gyf.immersionbar.Cif.FLAG_HIDE_NAVIGATION_BAR || cif2 == com.gyf.immersionbar.Cif.FLAG_HIDE_BAR;
        }
        return this;
    }

    public Celse Z0(OnBarListener onBarListener) {
        if (onBarListener != null) {
            Cfor cfor = this.f18063const;
            if (cfor.a == null) {
                cfor.a = onBarListener;
            }
        } else {
            Cfor cfor2 = this.f18063const;
            if (cfor2.a != null) {
                cfor2.a = null;
            }
        }
        return this;
    }

    public Celse Z1(View view, boolean z) {
        if (view == null) {
            return this;
        }
        if (this.f18076public == 0) {
            this.f18076public = 1;
        }
        Cfor cfor = this.f18063const;
        cfor.f18101extends = view;
        cfor.f18129while = z;
        return this;
    }

    public Celse a1(@Nullable OnKeyboardListener onKeyboardListener) {
        Cfor cfor = this.f18063const;
        if (cfor.f18109instanceof == null) {
            cfor.f18109instanceof = onKeyboardListener;
        }
        return this;
    }

    public Celse a2(@IdRes int i) {
        androidx.fragment.app.Fragment fragment = this.f18072if;
        if (fragment != null && fragment.getView() != null) {
            return c2(this.f18072if.getView().findViewById(i));
        }
        Fragment fragment2 = this.f18070for;
        return (fragment2 == null || fragment2.getView() == null) ? c2(this.f18065do.findViewById(i)) : c2(this.f18070for.getView().findViewById(i));
    }

    /* renamed from: abstract, reason: not valid java name */
    public Celse m22700abstract(boolean z) {
        this.f18063const.f18107implements = z;
        return this;
    }

    public Celse b(boolean z) {
        this.f18063const.f18098default = z;
        if (!z) {
            this.f18076public = 0;
        } else if (this.f18076public == 0) {
            this.f18076public = 4;
        }
        return this;
    }

    public void b0() {
        if (Build.VERSION.SDK_INT < 19 || !this.f18063const.f18107implements) {
            return;
        }
        i2();
        Q0();
        g();
        m22692implements();
        d2();
        this.f18077return = true;
    }

    public Celse b1(OnNavigationBarListener onNavigationBarListener) {
        if (onNavigationBarListener != null) {
            Cfor cfor = this.f18063const;
            if (cfor.f18122synchronized == null) {
                cfor.f18122synchronized = onNavigationBarListener;
                Cthis.m22737do().addOnNavigationBarListener(this.f18063const.f18122synchronized);
            }
        } else if (this.f18063const.f18122synchronized != null) {
            Cthis.m22737do().removeOnNavigationBarListener(this.f18063const.f18122synchronized);
            this.f18063const.f18122synchronized = null;
        }
        return this;
    }

    public Celse b2(@IdRes int i, View view) {
        return c2(view.findViewById(i));
    }

    /* renamed from: break, reason: not valid java name */
    public Celse m22701break(boolean z) {
        this.f18063const.f18113package = !z;
        S0(this.f18065do, z);
        return this;
    }

    public Celse c(boolean z, @ColorRes int i) {
        return e(z, ContextCompat.getColor(this.f18065do, i));
    }

    public Celse c2(View view) {
        if (view == null) {
            return this;
        }
        if (this.f18076public == 0) {
            this.f18076public = 2;
        }
        this.f18063const.f18101extends = view;
        return this;
    }

    /* renamed from: case, reason: not valid java name */
    public Celse m22702case(View view, String str, String str2) {
        return m22713goto(view, Color.parseColor(str), Color.parseColor(str2));
    }

    /* renamed from: catch, reason: not valid java name */
    public Celse m22703catch(boolean z) {
        return m22704class(z, 0.2f);
    }

    /* renamed from: class, reason: not valid java name */
    public Celse m22704class(boolean z, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        Cfor cfor = this.f18063const;
        cfor.f18096const = z;
        cfor.f18120super = f;
        cfor.f18102final = z;
        cfor.f18124throw = f;
        return this;
    }

    /* renamed from: const, reason: not valid java name */
    public Celse m22705const(boolean z) {
        return m22710final(z, 0.2f);
    }

    public Celse d(boolean z, @ColorRes int i, @ColorRes int i2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        return f(z, ContextCompat.getColor(this.f18065do, i), ContextCompat.getColor(this.f18065do, i2), f);
    }

    /* renamed from: default, reason: not valid java name */
    public Celse m22706default(@ColorInt int i, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        Cfor cfor = this.f18063const;
        cfor.f18099do = i;
        cfor.f18106if = i;
        cfor.f18112new = f;
        cfor.f18093case = f;
        return this;
    }

    /* renamed from: do, reason: not valid java name */
    public Celse m22707do(String str) {
        if (h0(str)) {
            throw new IllegalArgumentException("tag不能为空");
        }
        this.f18074native.put(str, this.f18063const.clone());
        return this;
    }

    public Celse e(boolean z, @ColorInt int i) {
        return f(z, i, -16777216, 0.0f);
    }

    public Celse e2() {
        Cfor cfor = this.f18063const;
        cfor.f18099do = 0;
        cfor.f18106if = 0;
        cfor.f18105goto = true;
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public Celse m22708else(View view, @ColorInt int i) {
        if (view == null) {
            throw new IllegalArgumentException("View参数不能为空");
        }
        HashMap map = new HashMap();
        map.put(Integer.valueOf(this.f18063const.f18099do), Integer.valueOf(i));
        this.f18063const.f18116public.put(view, map);
        return this;
    }

    /* renamed from: extends, reason: not valid java name */
    public Celse m22709extends(@ColorInt int i, @ColorInt int i2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        Cfor cfor = this.f18063const;
        cfor.f18099do = i;
        cfor.f18106if = i;
        cfor.f18108import = i2;
        cfor.f18111native = i2;
        cfor.f18112new = f;
        cfor.f18093case = f;
        return this;
    }

    public Celse f(boolean z, @ColorInt int i, @ColorInt int i2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        Cfor cfor = this.f18063const;
        cfor.f18098default = z;
        cfor.f18118static = i;
        cfor.f18121switch = i2;
        cfor.f18125throws = f;
        if (!z) {
            this.f18076public = 0;
        } else if (this.f18076public == 0) {
            this.f18076public = 4;
        }
        this.f18066else.setBackgroundColor(ColorUtils.blendARGB(i, i2, f));
        return this;
    }

    public boolean f0() {
        return this.f18077return;
    }

    public Celse f2() {
        Cfor cfor = this.f18063const;
        cfor.f18106if = 0;
        cfor.f18105goto = true;
        return this;
    }

    /* renamed from: final, reason: not valid java name */
    public Celse m22710final(boolean z, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        Cfor cfor = this.f18063const;
        cfor.f18102final = z;
        cfor.f18124throw = f;
        return this;
    }

    /* renamed from: finally, reason: not valid java name */
    public Celse m22711finally(@ColorRes int i) {
        return m22719private(ContextCompat.getColor(this.f18065do, i));
    }

    /* renamed from: for, reason: not valid java name */
    public Celse m22712for(View view, @ColorRes int i) {
        return m22708else(view, ContextCompat.getColor(this.f18065do, i));
    }

    public boolean g0() {
        return this.f18061catch;
    }

    public Celse g2() {
        this.f18063const.f18099do = 0;
        return this;
    }

    /* renamed from: goto, reason: not valid java name */
    public Celse m22713goto(View view, @ColorInt int i, @ColorInt int i2) {
        if (view == null) {
            throw new IllegalArgumentException("View参数不能为空");
        }
        HashMap map = new HashMap();
        map.put(Integer.valueOf(i), Integer.valueOf(i2));
        this.f18063const.f18116public.put(view, map);
        return this;
    }

    public boolean i0() {
        return this.f18059break;
    }

    /* renamed from: if, reason: not valid java name */
    public Celse m22714if(View view) {
        return m22708else(view, this.f18063const.f18108import);
    }

    /* renamed from: import, reason: not valid java name */
    public Celse m22715import(@ColorRes int i) {
        return m22727throws(ContextCompat.getColor(this.f18065do, i));
    }

    public Celse j2(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        this.f18063const.f18117return = f;
        return this;
    }

    public Celse l(@ColorRes int i) {
        this.f18063const.f18114private = ContextCompat.getColor(this.f18065do, i);
        Cfor cfor = this.f18063const;
        cfor.f18091abstract = cfor.f18114private;
        return this;
    }

    public Celse m(String str) {
        this.f18063const.f18114private = Color.parseColor(str);
        Cfor cfor = this.f18063const;
        cfor.f18091abstract = cfor.f18114private;
        return this;
    }

    public Celse n(@ColorInt int i) {
        Cfor cfor = this.f18063const;
        cfor.f18114private = i;
        cfor.f18091abstract = i;
        return this;
    }

    /* renamed from: native, reason: not valid java name */
    public Celse m22716native(@ColorRes int i, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        return m22706default(ContextCompat.getColor(this.f18065do, i), i);
    }

    /* renamed from: new, reason: not valid java name */
    public Celse m22717new(View view, @ColorRes int i, @ColorRes int i2) {
        return m22713goto(view, ContextCompat.getColor(this.f18065do, i), ContextCompat.getColor(this.f18065do, i2));
    }

    public Celse o(boolean z) {
        this.f18063const.f18105goto = z;
        return this;
    }

    public Celse o0(boolean z) {
        return p0(z, this.f18063const.f18128volatile);
    }

    @Override // com.gyf.immersionbar.OnNavigationBarListener
    public void onNavigationBarChange(boolean z) {
        View viewFindViewById = this.f18060case.findViewById(Cnew.f18145if);
        if (viewFindViewById != null) {
            this.f18068final = new com.gyf.immersionbar.Cdo(this.f18065do);
            int paddingBottom = this.f18066else.getPaddingBottom();
            int paddingRight = this.f18066else.getPaddingRight();
            if (z) {
                viewFindViewById.setVisibility(0);
                if (!m22696strictfp(this.f18060case.findViewById(android.R.id.content))) {
                    if (this.f18079super == 0) {
                        this.f18079super = this.f18068final.m22689new();
                    }
                    if (this.f18082throw == 0) {
                        this.f18082throw = this.f18068final.m22685case();
                    }
                    if (!this.f18063const.f18123this) {
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewFindViewById.getLayoutParams();
                        if (this.f18068final.m22687class()) {
                            layoutParams.gravity = 80;
                            paddingBottom = this.f18079super;
                            layoutParams.height = paddingBottom;
                            if (this.f18063const.f18105goto) {
                                paddingBottom = 0;
                            }
                            paddingRight = 0;
                        } else {
                            layoutParams.gravity = GravityCompat.END;
                            int i = this.f18082throw;
                            layoutParams.width = i;
                            if (this.f18063const.f18105goto) {
                                i = 0;
                            }
                            paddingRight = i;
                            paddingBottom = 0;
                        }
                        viewFindViewById.setLayoutParams(layoutParams);
                    }
                }
                c1(0, this.f18066else.getPaddingTop(), paddingRight, paddingBottom);
            }
            viewFindViewById.setVisibility(8);
            paddingBottom = 0;
            paddingRight = 0;
            c1(0, this.f18066else.getPaddingTop(), paddingRight, paddingBottom);
        }
    }

    public int p() {
        return this.f18085while;
    }

    public Celse p0(boolean z, int i) {
        Cfor cfor = this.f18063const;
        cfor.f18119strictfp = z;
        cfor.f18128volatile = i;
        this.f18080switch = z;
        return this;
    }

    /* renamed from: package, reason: not valid java name */
    public Celse m22718package(String str) {
        return m22719private(Color.parseColor(str));
    }

    /* renamed from: private, reason: not valid java name */
    public Celse m22719private(@ColorInt int i) {
        Cfor cfor = this.f18063const;
        cfor.f18108import = i;
        cfor.f18111native = i;
        return this;
    }

    /* renamed from: public, reason: not valid java name */
    public Celse m22720public(@ColorRes int i, @ColorRes int i2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        return m22709extends(ContextCompat.getColor(this.f18065do, i), ContextCompat.getColor(this.f18065do, i2), f);
    }

    public Celse q0(int i) {
        this.f18063const.f18128volatile = i;
        return this;
    }

    public Celse r0(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        Cfor cfor = this.f18063const;
        cfor.f18093case = f;
        cfor.f18100else = f;
        return this;
    }

    /* renamed from: return, reason: not valid java name */
    public Celse m22721return(String str) {
        return m22727throws(Color.parseColor(str));
    }

    @Override // java.lang.Runnable
    public void run() {
        M0();
    }

    public Celse s0(@ColorRes int i) {
        return y0(ContextCompat.getColor(this.f18065do, i));
    }

    /* renamed from: static, reason: not valid java name */
    public Celse m22722static(String str, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        return m22706default(Color.parseColor(str), f);
    }

    /* renamed from: super, reason: not valid java name */
    public Celse m22723super(boolean z) {
        return m22726throw(z, 0.2f);
    }

    /* renamed from: switch, reason: not valid java name */
    public Celse m22724switch(String str, String str2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        return m22709extends(Color.parseColor(str), Color.parseColor(str2), f);
    }

    /* renamed from: synchronized, reason: not valid java name */
    public Celse m22725synchronized(boolean z) {
        this.f18063const.f18113package = z;
        return this;
    }

    public Activity t() {
        return this.f18065do;
    }

    public Celse t0(@ColorRes int i, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        return z0(ContextCompat.getColor(this.f18065do, i), f);
    }

    /* renamed from: throw, reason: not valid java name */
    public Celse m22726throw(boolean z, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        Cfor cfor = this.f18063const;
        cfor.f18096const = z;
        cfor.f18120super = f;
        return this;
    }

    /* renamed from: throws, reason: not valid java name */
    public Celse m22727throws(@ColorInt int i) {
        Cfor cfor = this.f18063const;
        cfor.f18099do = i;
        cfor.f18106if = i;
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public Celse m22728try(View view, String str) {
        return m22708else(view, Color.parseColor(str));
    }

    public com.gyf.immersionbar.Cdo u() {
        if (this.f18068final == null) {
            this.f18068final = new com.gyf.immersionbar.Cdo(this.f18065do);
        }
        return this.f18068final;
    }

    public Celse u0(@ColorRes int i, @ColorRes int i2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        return A0(ContextCompat.getColor(this.f18065do, i), ContextCompat.getColor(this.f18065do, i2), f);
    }

    public Cfor v() {
        return this.f18063const;
    }

    public Celse v0(String str) {
        return y0(Color.parseColor(str));
    }

    public Fragment w() {
        return this.f18070for;
    }

    public Celse w0(String str, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        return z0(Color.parseColor(str), f);
    }

    /* renamed from: while, reason: not valid java name */
    public Celse m22729while(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        Cfor cfor = this.f18063const;
        cfor.f18112new = f;
        cfor.f18127try = f;
        cfor.f18093case = f;
        cfor.f18100else = f;
        return this;
    }

    public Celse x0(String str, String str2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        return A0(Color.parseColor(str), Color.parseColor(str2), f);
    }

    public Celse y0(@ColorInt int i) {
        this.f18063const.f18106if = i;
        return this;
    }

    public Celse z0(@ColorInt int i, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        Cfor cfor = this.f18063const;
        cfor.f18106if = i;
        cfor.f18093case = f;
        return this;
    }

    public Celse(androidx.fragment.app.Fragment fragment) {
        this.f18081this = false;
        this.f18059break = false;
        this.f18061catch = false;
        this.f18062class = false;
        this.f18079super = 0;
        this.f18082throw = 0;
        this.f18085while = 0;
        this.f18073import = null;
        this.f18074native = new HashMap();
        this.f18076public = 0;
        this.f18077return = false;
        this.f18078static = false;
        this.f18080switch = false;
        this.f18083throws = 0;
        this.f18064default = 0;
        this.f18067extends = 0;
        this.f18069finally = 0;
        this.f18059break = true;
        this.f18065do = fragment.getActivity();
        this.f18072if = fragment;
        m22699volatile();
        e0(this.f18065do.getWindow());
    }

    public Celse(Fragment fragment) {
        this.f18081this = false;
        this.f18059break = false;
        this.f18061catch = false;
        this.f18062class = false;
        this.f18079super = 0;
        this.f18082throw = 0;
        this.f18085while = 0;
        this.f18073import = null;
        this.f18074native = new HashMap();
        this.f18076public = 0;
        this.f18077return = false;
        this.f18078static = false;
        this.f18080switch = false;
        this.f18083throws = 0;
        this.f18064default = 0;
        this.f18067extends = 0;
        this.f18069finally = 0;
        this.f18059break = true;
        this.f18065do = fragment.getActivity();
        this.f18070for = fragment;
        m22699volatile();
        e0(this.f18065do.getWindow());
    }

    public Celse(androidx.fragment.app.DialogFragment dialogFragment) {
        this.f18081this = false;
        this.f18059break = false;
        this.f18061catch = false;
        this.f18062class = false;
        this.f18079super = 0;
        this.f18082throw = 0;
        this.f18085while = 0;
        this.f18073import = null;
        this.f18074native = new HashMap();
        this.f18076public = 0;
        this.f18077return = false;
        this.f18078static = false;
        this.f18080switch = false;
        this.f18083throws = 0;
        this.f18064default = 0;
        this.f18067extends = 0;
        this.f18069finally = 0;
        this.f18062class = true;
        this.f18061catch = true;
        this.f18065do = dialogFragment.getActivity();
        this.f18072if = dialogFragment;
        this.f18075new = dialogFragment.getDialog();
        m22699volatile();
        e0(this.f18075new.getWindow());
    }

    public Celse(DialogFragment dialogFragment) {
        this.f18081this = false;
        this.f18059break = false;
        this.f18061catch = false;
        this.f18062class = false;
        this.f18079super = 0;
        this.f18082throw = 0;
        this.f18085while = 0;
        this.f18073import = null;
        this.f18074native = new HashMap();
        this.f18076public = 0;
        this.f18077return = false;
        this.f18078static = false;
        this.f18080switch = false;
        this.f18083throws = 0;
        this.f18064default = 0;
        this.f18067extends = 0;
        this.f18069finally = 0;
        this.f18062class = true;
        this.f18061catch = true;
        this.f18065do = dialogFragment.getActivity();
        this.f18070for = dialogFragment;
        this.f18075new = dialogFragment.getDialog();
        m22699volatile();
        e0(this.f18075new.getWindow());
    }

    public Celse(Activity activity, Dialog dialog) {
        this.f18081this = false;
        this.f18059break = false;
        this.f18061catch = false;
        this.f18062class = false;
        this.f18079super = 0;
        this.f18082throw = 0;
        this.f18085while = 0;
        this.f18073import = null;
        this.f18074native = new HashMap();
        this.f18076public = 0;
        this.f18077return = false;
        this.f18078static = false;
        this.f18080switch = false;
        this.f18083throws = 0;
        this.f18064default = 0;
        this.f18067extends = 0;
        this.f18069finally = 0;
        this.f18062class = true;
        this.f18065do = activity;
        this.f18075new = dialog;
        m22699volatile();
        e0(this.f18075new.getWindow());
    }
}
