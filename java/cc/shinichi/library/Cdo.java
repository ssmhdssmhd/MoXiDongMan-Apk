package cc.shinichi.library;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.support.v4.tl0;
import android.text.TextUtils;
import androidx.annotation.DrawableRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import cc.shinichi.library.view.ImagePreviewActivity;
import cc.shinichi.library.view.listener.OnBigImageClickListener;
import cc.shinichi.library.view.listener.OnBigImageLongClickListener;
import cc.shinichi.library.view.listener.OnBigImagePageChangeListener;
import cc.shinichi.library.view.listener.OnOriginProgressListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* renamed from: cc.shinichi.library.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo {

    /* renamed from: default, reason: not valid java name */
    public static final int f8706default = 1001;

    /* renamed from: extends, reason: not valid java name */
    public static final int f8707extends = 1002;

    /* renamed from: finally, reason: not valid java name */
    public static final int f8708finally = 1003;

    /* renamed from: package, reason: not valid java name */
    @LayoutRes
    public static final int f8709package = R.layout.sh_default_progress_layout;

    /* renamed from: private, reason: not valid java name */
    private static final int f8710private = 1500;

    /* renamed from: do, reason: not valid java name */
    private WeakReference<Context> f8716do;

    /* renamed from: if, reason: not valid java name */
    private List<tl0> f8721if;

    /* renamed from: native, reason: not valid java name */
    private OnBigImageClickListener f8723native;

    /* renamed from: public, reason: not valid java name */
    private OnBigImageLongClickListener f8725public;

    /* renamed from: return, reason: not valid java name */
    private OnBigImagePageChangeListener f8726return;

    /* renamed from: static, reason: not valid java name */
    private OnOriginProgressListener f8727static;

    /* renamed from: for, reason: not valid java name */
    private int f8719for = 0;

    /* renamed from: new, reason: not valid java name */
    private String f8724new = "Download";

    /* renamed from: try, reason: not valid java name */
    private float f8733try = 1.0f;

    /* renamed from: case, reason: not valid java name */
    private float f8712case = 3.0f;

    /* renamed from: else, reason: not valid java name */
    private float f8717else = 5.0f;

    /* renamed from: goto, reason: not valid java name */
    private boolean f8720goto = true;

    /* renamed from: this, reason: not valid java name */
    private boolean f8730this = false;

    /* renamed from: break, reason: not valid java name */
    private boolean f8711break = true;

    /* renamed from: catch, reason: not valid java name */
    private int f8713catch = 200;

    /* renamed from: class, reason: not valid java name */
    private boolean f8714class = false;

    /* renamed from: const, reason: not valid java name */
    private boolean f8715const = false;

    /* renamed from: final, reason: not valid java name */
    private boolean f8718final = true;

    /* renamed from: super, reason: not valid java name */
    private Cif f8728super = Cif.Default;

    /* renamed from: throw, reason: not valid java name */
    @DrawableRes
    private int f8731throw = R.drawable.ic_action_close;

    /* renamed from: while, reason: not valid java name */
    @DrawableRes
    private int f8734while = R.drawable.icon_download_new;

    /* renamed from: import, reason: not valid java name */
    @DrawableRes
    private int f8722import = R.drawable.load_failed;

    /* renamed from: switch, reason: not valid java name */
    @LayoutRes
    private int f8729switch = -1;

    /* renamed from: throws, reason: not valid java name */
    private long f8732throws = 0;

    /* renamed from: cc.shinichi.library.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0005do {

        /* renamed from: do, reason: not valid java name */
        private static Cdo f8735do = new Cdo();

        private C0005do() {
        }
    }

    /* renamed from: cc.shinichi.library.do$if, reason: invalid class name */
    public enum Cif {
        AlwaysOrigin,
        AlwaysThumb,
        NetworkAuto,
        Default
    }

    /* renamed from: break, reason: not valid java name */
    public static Cdo m10382break() {
        return C0005do.f8735do;
    }

    private Cdo c(OnOriginProgressListener onOriginProgressListener) {
        this.f8727static = onOriginProgressListener;
        return this;
    }

    public Cdo a(int i) {
        this.f8719for = i;
        return this;
    }

    /* renamed from: abstract, reason: not valid java name */
    public Cdo m10383abstract(@NonNull Context context) {
        this.f8716do = new WeakReference<>(context);
        return this;
    }

    public Cdo b(Cif cif) {
        this.f8728super = cif;
        return this;
    }

    /* renamed from: case, reason: not valid java name */
    public int m10384case() {
        return this.f8722import;
    }

    /* renamed from: catch, reason: not valid java name */
    public Cif m10385catch() {
        return this.f8728super;
    }

    /* renamed from: class, reason: not valid java name */
    public float m10386class() {
        return this.f8717else;
    }

    /* renamed from: const, reason: not valid java name */
    public float m10387const() {
        return this.f8712case;
    }

    /* renamed from: continue, reason: not valid java name */
    public Cdo m10388continue(@DrawableRes int i) {
        this.f8734while = i;
        return this;
    }

    public Cdo d(int i, OnOriginProgressListener onOriginProgressListener) {
        c(onOriginProgressListener);
        this.f8729switch = i;
        return this;
    }

    /* renamed from: default, reason: not valid java name */
    public void m10389default() {
        this.f8721if = null;
        this.f8719for = 0;
        this.f8733try = 1.0f;
        this.f8712case = 3.0f;
        this.f8717else = 5.0f;
        this.f8713catch = 200;
        this.f8711break = true;
        this.f8730this = false;
        this.f8714class = false;
        this.f8718final = true;
        this.f8720goto = true;
        this.f8731throw = R.drawable.ic_action_close;
        this.f8734while = R.drawable.icon_download_new;
        this.f8722import = R.drawable.load_failed;
        this.f8728super = Cif.Default;
        this.f8724new = "Download";
        WeakReference<Context> weakReference = this.f8716do;
        if (weakReference != null) {
            weakReference.clear();
            this.f8716do = null;
        }
        this.f8723native = null;
        this.f8725public = null;
        this.f8726return = null;
        this.f8729switch = -1;
        this.f8732throws = 0L;
    }

    /* renamed from: do, reason: not valid java name */
    public OnBigImageClickListener m10390do() {
        return this.f8723native;
    }

    @Deprecated
    public Cdo e(int i, int i2, int i3) {
        if (i3 <= i2 || i2 <= i || i <= 0) {
            throw new IllegalArgumentException("max must greater to medium, medium must greater to min!");
        }
        this.f8733try = i;
        this.f8712case = i2;
        this.f8717else = i3;
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public String m10391else() {
        if (TextUtils.isEmpty(this.f8724new)) {
            this.f8724new = "Download";
        }
        return this.f8724new;
    }

    /* renamed from: extends, reason: not valid java name */
    public Cdo m10392extends(OnBigImageClickListener onBigImageClickListener) {
        this.f8723native = onBigImageClickListener;
        return this;
    }

    @Deprecated
    public Cdo f(int i) {
        return this;
    }

    /* renamed from: final, reason: not valid java name */
    public float m10393final() {
        return this.f8733try;
    }

    /* renamed from: finally, reason: not valid java name */
    public Cdo m10394finally(OnBigImageLongClickListener onBigImageLongClickListener) {
        this.f8725public = onBigImageLongClickListener;
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public OnBigImagePageChangeListener m10395for() {
        return this.f8726return;
    }

    public Cdo g(boolean z) {
        this.f8730this = z;
        return this;
    }

    /* renamed from: goto, reason: not valid java name */
    public List<tl0> m10396goto() {
        return this.f8721if;
    }

    public Cdo h(boolean z) {
        this.f8711break = z;
        return this;
    }

    public Cdo i(boolean z) {
        this.f8720goto = z;
        return this;
    }

    /* renamed from: if, reason: not valid java name */
    public OnBigImageLongClickListener m10397if() {
        return this.f8725public;
    }

    /* renamed from: implements, reason: not valid java name */
    public Cdo m10398implements(@NonNull String str) {
        this.f8721if = new ArrayList();
        tl0 tl0Var = new tl0();
        tl0Var.setThumbnailUrl(str);
        tl0Var.setOriginUrl(str);
        this.f8721if.add(tl0Var);
        return this;
    }

    /* renamed from: import, reason: not valid java name */
    public boolean m10399import() {
        return this.f8718final;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public Cdo m10400instanceof(@NonNull List<tl0> list) {
        this.f8721if = list;
        return this;
    }

    /* renamed from: interface, reason: not valid java name */
    public Cdo m10401interface(boolean z) {
        this.f8715const = z;
        return this;
    }

    @Deprecated
    public Cdo j(boolean z) {
        return this;
    }

    public Cdo k(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("zoomTransitionDuration must greater 0");
        }
        this.f8713catch = i;
        return this;
    }

    public void l() {
        if (System.currentTimeMillis() - this.f8732throws <= 1500) {
            return;
        }
        WeakReference<Context> weakReference = this.f8716do;
        if (weakReference == null) {
            throw new IllegalArgumentException("You must call 'setContext(Context context)' first!");
        }
        Context context = weakReference.get();
        if (context == null) {
            throw new IllegalArgumentException("You must call 'setContext(Context context)' first!");
        }
        if (!(context instanceof Activity)) {
            throw new IllegalArgumentException("context must be a Activity!");
        }
        if (Build.VERSION.SDK_INT >= 17) {
            Activity activity = (Activity) context;
            if (activity.isFinishing() || activity.isDestroyed()) {
                m10389default();
                return;
            }
        } else if (((Activity) context).isFinishing()) {
            m10389default();
            return;
        }
        List<tl0> list = this.f8721if;
        if (list == null || list.size() == 0) {
            throw new IllegalArgumentException("Do you forget to call 'setImageInfoList(List<ImageInfo> imageInfoList)' ?");
        }
        if (this.f8719for >= this.f8721if.size()) {
            throw new IllegalArgumentException("index out of range!");
        }
        this.f8732throws = System.currentTimeMillis();
        ImagePreviewActivity.m10521throw(context);
    }

    /* renamed from: native, reason: not valid java name */
    public boolean m10402native() {
        return this.f8714class;
    }

    /* renamed from: new, reason: not valid java name */
    public int m10403new() {
        return this.f8731throw;
    }

    /* renamed from: package, reason: not valid java name */
    public Cdo m10404package(OnBigImagePageChangeListener onBigImagePageChangeListener) {
        this.f8726return = onBigImagePageChangeListener;
        return this;
    }

    /* renamed from: private, reason: not valid java name */
    public Cdo m10405private(@DrawableRes int i) {
        this.f8731throw = i;
        return this;
    }

    /* renamed from: protected, reason: not valid java name */
    public Cdo m10406protected(int i) {
        this.f8722import = i;
        return this;
    }

    /* renamed from: public, reason: not valid java name */
    public boolean m10407public() {
        return this.f8715const;
    }

    /* renamed from: return, reason: not valid java name */
    public boolean m10408return() {
        return this.f8730this;
    }

    /* renamed from: static, reason: not valid java name */
    public boolean m10409static() {
        return this.f8711break;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public Cdo m10410strictfp(boolean z) {
        this.f8718final = z;
        return this;
    }

    /* renamed from: super, reason: not valid java name */
    public OnOriginProgressListener m10411super() {
        return this.f8727static;
    }

    /* renamed from: switch, reason: not valid java name */
    public boolean m10412switch() {
        return this.f8720goto;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public Cdo m10413synchronized(@NonNull List<String> list) {
        this.f8721if = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            tl0 tl0Var = new tl0();
            tl0Var.setThumbnailUrl(list.get(i));
            tl0Var.setOriginUrl(list.get(i));
            this.f8721if.add(tl0Var);
        }
        return this;
    }

    /* renamed from: this, reason: not valid java name */
    public int m10414this() {
        return this.f8719for;
    }

    /* renamed from: throw, reason: not valid java name */
    public int m10415throw() {
        return this.f8729switch;
    }

    /* renamed from: throws, reason: not valid java name */
    public boolean m10416throws(int i) {
        List<tl0> listM10396goto = m10396goto();
        if (listM10396goto == null || listM10396goto.size() == 0 || listM10396goto.get(i).getOriginUrl().equalsIgnoreCase(listM10396goto.get(i).getThumbnailUrl())) {
            return false;
        }
        Cif cif = this.f8728super;
        if (cif == Cif.Default) {
            return true;
        }
        if (cif == Cif.NetworkAuto || cif == Cif.AlwaysThumb) {
            return false;
        }
        Cif cif2 = Cif.AlwaysOrigin;
        return false;
    }

    /* renamed from: transient, reason: not valid java name */
    public Cdo m10417transient(@NonNull String str) {
        this.f8724new = str;
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public int m10418try() {
        return this.f8734while;
    }

    /* renamed from: volatile, reason: not valid java name */
    public Cdo m10419volatile(boolean z) {
        this.f8714class = z;
        return this;
    }

    /* renamed from: while, reason: not valid java name */
    public int m10420while() {
        return this.f8713catch;
    }
}
