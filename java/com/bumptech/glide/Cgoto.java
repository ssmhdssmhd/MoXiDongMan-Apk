package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.dn1;
import android.support.v4.fn1;
import android.support.v4.w42;
import android.view.View;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import com.bumptech.glide.load.engine.Ccase;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.manager.ConnectivityMonitor;
import com.bumptech.glide.manager.ConnectivityMonitorFactory;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.LifecycleListener;
import com.bumptech.glide.manager.RequestManagerTreeNode;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.Transition;
import java.io.File;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: com.bumptech.glide.goto, reason: invalid class name */
/* loaded from: classes.dex */
public class Cgoto implements ComponentCallbacks2, LifecycleListener, ModelTypes<Celse<Drawable>> {

    /* renamed from: const, reason: not valid java name */
    private static final dn1 f9433const = dn1.a0(Bitmap.class).o();

    /* renamed from: final, reason: not valid java name */
    private static final dn1 f9434final = dn1.a0(GifDrawable.class).o();

    /* renamed from: super, reason: not valid java name */
    private static final dn1 f9435super = dn1.b0(Ccase.f9735for).C(Ctry.LOW).K(true);

    /* renamed from: break, reason: not valid java name */
    private final CopyOnWriteArrayList<RequestListener<Object>> f9436break;

    /* renamed from: case, reason: not valid java name */
    @GuardedBy("this")
    private final w42 f9437case;

    /* renamed from: catch, reason: not valid java name */
    @GuardedBy("this")
    private dn1 f9438catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f9439class;

    /* renamed from: do, reason: not valid java name */
    public final Glide f9440do;

    /* renamed from: else, reason: not valid java name */
    private final Runnable f9441else;

    /* renamed from: for, reason: not valid java name */
    public final Lifecycle f9442for;

    /* renamed from: goto, reason: not valid java name */
    private final Handler f9443goto;

    /* renamed from: if, reason: not valid java name */
    public final Context f9444if;

    /* renamed from: new, reason: not valid java name */
    @GuardedBy("this")
    private final fn1 f9445new;

    /* renamed from: this, reason: not valid java name */
    private final ConnectivityMonitor f9446this;

    /* renamed from: try, reason: not valid java name */
    @GuardedBy("this")
    private final RequestManagerTreeNode f9447try;

    /* renamed from: com.bumptech.glide.goto$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Cgoto cgoto = Cgoto.this;
            cgoto.f9442for.addListener(cgoto);
        }
    }

    /* renamed from: com.bumptech.glide.goto$for, reason: invalid class name */
    public class Cfor implements ConnectivityMonitor.ConnectivityListener {

        /* renamed from: do, reason: not valid java name */
        @GuardedBy("RequestManager.this")
        private final fn1 f9449do;

        public Cfor(@NonNull fn1 fn1Var) {
            this.f9449do = fn1Var;
        }

        @Override // com.bumptech.glide.manager.ConnectivityMonitor.ConnectivityListener
        public void onConnectivityChanged(boolean z) {
            if (z) {
                synchronized (Cgoto.this) {
                    this.f9449do.m2368else();
                }
            }
        }
    }

    /* renamed from: com.bumptech.glide.goto$if, reason: invalid class name */
    public static class Cif extends com.bumptech.glide.request.target.Cdo<View, Object> {
        public Cif(@NonNull View view) {
            super(view);
        }

        @Override // com.bumptech.glide.request.target.Cdo
        /* renamed from: case, reason: not valid java name */
        public void mo11226case(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadFailed(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onResourceReady(@NonNull Object obj, @Nullable Transition<? super Object> transition) {
        }
    }

    public Cgoto(@NonNull Glide glide, @NonNull Lifecycle lifecycle, @NonNull RequestManagerTreeNode requestManagerTreeNode, @NonNull Context context) {
        this(glide, lifecycle, requestManagerTreeNode, new fn1(), glide.m11058goto(), context);
    }

    /* renamed from: implements, reason: not valid java name */
    private synchronized void m11209implements(@NonNull dn1 dn1Var) {
        this.f9438catch = this.f9438catch.mo11166do(dn1Var);
    }

    /* renamed from: transient, reason: not valid java name */
    private void m11210transient(@NonNull Target<?> target) {
        boolean zM11222protected = m11222protected(target);
        Request request = target.getRequest();
        if (zM11222protected || this.f9440do.m11062static(target) || request == null) {
            return;
        }
        target.setRequest(null);
        request.clear();
    }

    /* renamed from: abstract, reason: not valid java name */
    public synchronized void m11211abstract() {
        com.bumptech.glide.util.Ccase.m12048if();
        m11221private();
        Iterator<Cgoto> it = this.f9447try.getDescendants().iterator();
        while (it.hasNext()) {
            it.next().m11221private();
        }
    }

    @NonNull
    @CheckResult
    /* renamed from: break */
    public Celse<File> mo6020break(@Nullable Object obj) {
        return mo6022catch().load(obj);
    }

    @NonNull
    @CheckResult
    /* renamed from: case */
    public Celse<File> mo6021case() {
        return mo6026for(File.class).mo11166do(dn1.u0(true));
    }

    @NonNull
    @CheckResult
    /* renamed from: catch */
    public Celse<File> mo6022catch() {
        return mo6026for(File.class).mo11166do(f9435super);
    }

    /* renamed from: class, reason: not valid java name */
    public List<RequestListener<Object>> m11212class() {
        return this.f9436break;
    }

    /* renamed from: const, reason: not valid java name */
    public synchronized dn1 m11213const() {
        return this.f9438catch;
    }

    @NonNull
    /* renamed from: continue */
    public synchronized Cgoto mo6023continue(@NonNull dn1 dn1Var) {
        mo6040volatile(dn1Var);
        return this;
    }

    /* renamed from: default, reason: not valid java name */
    public synchronized void m11214default() {
        this.f9445new.m2374try();
    }

    /* renamed from: do */
    public Cgoto mo6024do(RequestListener<Object> requestListener) {
        this.f9436break.add(requestListener);
        return this;
    }

    @NonNull
    @CheckResult
    /* renamed from: else */
    public Celse<GifDrawable> mo6025else() {
        return mo6026for(GifDrawable.class).mo11166do(f9434final);
    }

    /* renamed from: extends, reason: not valid java name */
    public synchronized void m11215extends() {
        m11214default();
        Iterator<Cgoto> it = this.f9447try.getDescendants().iterator();
        while (it.hasNext()) {
            it.next().m11214default();
        }
    }

    @NonNull
    /* renamed from: final, reason: not valid java name */
    public <T> Cthis<?, T> m11216final(Class<T> cls) {
        return this.f9440do.m11050break().m11175try(cls);
    }

    /* renamed from: finally, reason: not valid java name */
    public synchronized void m11217finally() {
        this.f9445new.m2366case();
    }

    @NonNull
    @CheckResult
    /* renamed from: for */
    public <ResourceType> Celse<ResourceType> mo6026for(@NonNull Class<ResourceType> cls) {
        return new Celse<>(this.f9440do, this, cls, this.f9444if);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m11218goto(@NonNull View view) {
        m11225this(new Cif(view));
    }

    @NonNull
    /* renamed from: if */
    public synchronized Cgoto mo6027if(@NonNull dn1 dn1Var) {
        m11209implements(dn1Var);
        return this;
    }

    @Override // com.bumptech.glide.ModelTypes
    @NonNull
    @CheckResult
    /* renamed from: import, reason: merged with bridge method [inline-methods] */
    public Celse<Drawable> load(@Nullable Uri uri) {
        return mo6039try().load(uri);
    }

    /* renamed from: interface, reason: not valid java name */
    public synchronized void m11219interface(@NonNull Target<?> target, @NonNull Request request) {
        this.f9437case.m9049for(target);
        this.f9445new.m2373this(request);
    }

    @Override // com.bumptech.glide.ModelTypes
    @NonNull
    @CheckResult
    /* renamed from: native, reason: merged with bridge method [inline-methods] */
    public Celse<Drawable> load(@Nullable File file) {
        return mo6039try().load(file);
    }

    @NonNull
    @CheckResult
    /* renamed from: new */
    public Celse<Bitmap> mo6031new() {
        return mo6026for(Bitmap.class).mo11166do(f9433const);
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public synchronized void onDestroy() {
        this.f9437case.onDestroy();
        Iterator<Target<?>> it = this.f9437case.m9050if().iterator();
        while (it.hasNext()) {
            m11225this(it.next());
        }
        this.f9437case.m9048do();
        this.f9445new.m2369for();
        this.f9442for.removeListener(this);
        this.f9442for.removeListener(this.f9446this);
        this.f9443goto.removeCallbacks(this.f9441else);
        this.f9440do.m11056finally(this);
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public synchronized void onStart() {
        m11221private();
        this.f9437case.onStart();
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public synchronized void onStop() {
        m11217finally();
        this.f9437case.onStop();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        if (i == 60 && this.f9439class) {
            m11215extends();
        }
    }

    /* renamed from: package, reason: not valid java name */
    public synchronized void m11220package() {
        m11217finally();
        Iterator<Cgoto> it = this.f9447try.getDescendants().iterator();
        while (it.hasNext()) {
            it.next().m11217finally();
        }
    }

    /* renamed from: private, reason: not valid java name */
    public synchronized void m11221private() {
        this.f9445new.m2370goto();
    }

    /* renamed from: protected, reason: not valid java name */
    public synchronized boolean m11222protected(@NonNull Target<?> target) {
        Request request = target.getRequest();
        if (request == null) {
            return true;
        }
        if (!this.f9445new.m2371if(request)) {
            return false;
        }
        this.f9437case.m9051new(target);
        target.setRequest(null);
        return true;
    }

    @Override // com.bumptech.glide.ModelTypes
    @NonNull
    @CheckResult
    /* renamed from: public, reason: merged with bridge method [inline-methods] */
    public Celse<Drawable> load(@Nullable @DrawableRes @RawRes Integer num) {
        return mo6039try().load(num);
    }

    @Override // com.bumptech.glide.ModelTypes
    @NonNull
    @CheckResult
    /* renamed from: return, reason: merged with bridge method [inline-methods] */
    public Celse<Drawable> load(@Nullable Object obj) {
        return mo6039try().load(obj);
    }

    @Override // com.bumptech.glide.ModelTypes
    @NonNull
    @CheckResult
    /* renamed from: static, reason: merged with bridge method [inline-methods] */
    public Celse<Drawable> load(@Nullable String str) {
        return mo6039try().load(str);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m11223strictfp(boolean z) {
        this.f9439class = z;
    }

    /* renamed from: super, reason: not valid java name */
    public synchronized boolean m11224super() {
        return this.f9445new.m2372new();
    }

    @Override // com.bumptech.glide.ModelTypes
    @CheckResult
    @Deprecated
    /* renamed from: switch, reason: merged with bridge method [inline-methods] */
    public Celse<Drawable> load(@Nullable URL url) {
        return mo6039try().load(url);
    }

    /* renamed from: this, reason: not valid java name */
    public void m11225this(@Nullable Target<?> target) {
        if (target == null) {
            return;
        }
        m11210transient(target);
    }

    @Override // com.bumptech.glide.ModelTypes
    @NonNull
    @CheckResult
    /* renamed from: throw, reason: merged with bridge method [inline-methods] */
    public Celse<Drawable> load(@Nullable Bitmap bitmap) {
        return mo6039try().load(bitmap);
    }

    @Override // com.bumptech.glide.ModelTypes
    @NonNull
    @CheckResult
    /* renamed from: throws, reason: merged with bridge method [inline-methods] */
    public Celse<Drawable> load(@Nullable byte[] bArr) {
        return mo6039try().load(bArr);
    }

    public synchronized String toString() {
        return super.toString() + "{tracker=" + this.f9445new + ", treeNode=" + this.f9447try + "}";
    }

    @NonNull
    @CheckResult
    /* renamed from: try */
    public Celse<Drawable> mo6039try() {
        return mo6026for(Drawable.class);
    }

    /* renamed from: volatile */
    public synchronized void mo6040volatile(@NonNull dn1 dn1Var) {
        this.f9438catch = dn1Var.clone().mo11929if();
    }

    @Override // com.bumptech.glide.ModelTypes
    @NonNull
    @CheckResult
    /* renamed from: while, reason: merged with bridge method [inline-methods] */
    public Celse<Drawable> load(@Nullable Drawable drawable) {
        return mo6039try().load(drawable);
    }

    public Cgoto(Glide glide, Lifecycle lifecycle, RequestManagerTreeNode requestManagerTreeNode, fn1 fn1Var, ConnectivityMonitorFactory connectivityMonitorFactory, Context context) {
        this.f9437case = new w42();
        Cdo cdo = new Cdo();
        this.f9441else = cdo;
        Handler handler = new Handler(Looper.getMainLooper());
        this.f9443goto = handler;
        this.f9440do = glide;
        this.f9442for = lifecycle;
        this.f9447try = requestManagerTreeNode;
        this.f9445new = fn1Var;
        this.f9444if = context;
        ConnectivityMonitor connectivityMonitorBuild = connectivityMonitorFactory.build(context.getApplicationContext(), new Cfor(fn1Var));
        this.f9446this = connectivityMonitorBuild;
        if (com.bumptech.glide.util.Ccase.m12050native()) {
            handler.post(cdo);
        } else {
            lifecycle.addListener(this);
        }
        lifecycle.addListener(connectivityMonitorBuild);
        this.f9436break = new CopyOnWriteArrayList<>(glide.m11050break().m11170for());
        mo6040volatile(glide.m11050break().m11173new());
        glide.m11061return(this);
    }
}
