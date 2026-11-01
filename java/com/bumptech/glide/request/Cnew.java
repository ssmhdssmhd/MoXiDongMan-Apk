package com.bumptech.glide.request;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.c30;
import android.support.v4.sv0;
import android.util.Log;
import androidx.annotation.DrawableRes;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Cfor;
import com.bumptech.glide.Ctry;
import com.bumptech.glide.load.engine.Ccatch;
import com.bumptech.glide.load.engine.Celse;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.TransitionFactory;
import com.bumptech.glide.util.Ccase;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* renamed from: com.bumptech.glide.request.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew<R> implements Request, SizeReadyCallback, ResourceCallback {

    /* renamed from: abstract, reason: not valid java name */
    private static final String f10365abstract = "Request";

    /* renamed from: continue, reason: not valid java name */
    private static final String f10366continue = "Glide";

    /* renamed from: strictfp, reason: not valid java name */
    private static final boolean f10367strictfp = Log.isLoggable("Request", 2);

    /* renamed from: break, reason: not valid java name */
    private final com.bumptech.glide.request.Cdo<?> f10368break;

    /* renamed from: case, reason: not valid java name */
    private final Context f10369case;

    /* renamed from: catch, reason: not valid java name */
    private final int f10370catch;

    /* renamed from: class, reason: not valid java name */
    private final int f10371class;

    /* renamed from: const, reason: not valid java name */
    private final Ctry f10372const;

    /* renamed from: default, reason: not valid java name */
    @Nullable
    @GuardedBy("requestLock")
    private Drawable f10373default;

    /* renamed from: do, reason: not valid java name */
    @Nullable
    private final String f10374do;

    /* renamed from: else, reason: not valid java name */
    private final Cfor f10375else;

    /* renamed from: extends, reason: not valid java name */
    @GuardedBy("requestLock")
    private int f10376extends;

    /* renamed from: final, reason: not valid java name */
    private final Target<R> f10377final;

    /* renamed from: finally, reason: not valid java name */
    @GuardedBy("requestLock")
    private int f10378finally;

    /* renamed from: for, reason: not valid java name */
    private final Object f10379for;

    /* renamed from: goto, reason: not valid java name */
    @Nullable
    private final Object f10380goto;

    /* renamed from: if, reason: not valid java name */
    private final com.bumptech.glide.util.pool.Cdo f10381if;

    /* renamed from: import, reason: not valid java name */
    @GuardedBy("requestLock")
    private Resource<R> f10382import;

    /* renamed from: native, reason: not valid java name */
    @GuardedBy("requestLock")
    private Celse.Cnew f10383native;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    private final RequestListener<R> f10384new;

    /* renamed from: package, reason: not valid java name */
    @GuardedBy("requestLock")
    private boolean f10385package;

    /* renamed from: private, reason: not valid java name */
    @Nullable
    private RuntimeException f10386private;

    /* renamed from: public, reason: not valid java name */
    @GuardedBy("requestLock")
    private long f10387public;

    /* renamed from: return, reason: not valid java name */
    private volatile Celse f10388return;

    /* renamed from: static, reason: not valid java name */
    @GuardedBy("requestLock")
    private Cdo f10389static;

    /* renamed from: super, reason: not valid java name */
    @Nullable
    private final List<RequestListener<R>> f10390super;

    /* renamed from: switch, reason: not valid java name */
    @Nullable
    @GuardedBy("requestLock")
    private Drawable f10391switch;

    /* renamed from: this, reason: not valid java name */
    private final Class<R> f10392this;

    /* renamed from: throw, reason: not valid java name */
    private final TransitionFactory<? super R> f10393throw;

    /* renamed from: throws, reason: not valid java name */
    @Nullable
    @GuardedBy("requestLock")
    private Drawable f10394throws;

    /* renamed from: try, reason: not valid java name */
    private final RequestCoordinator f10395try;

    /* renamed from: while, reason: not valid java name */
    private final Executor f10396while;

    /* renamed from: com.bumptech.glide.request.new$do, reason: invalid class name */
    public enum Cdo {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CLEARED
    }

    private Cnew(Context context, Cfor cfor, @NonNull Object obj, @Nullable Object obj2, Class<R> cls, com.bumptech.glide.request.Cdo<?> cdo, int i, int i2, Ctry ctry, Target<R> target, @Nullable RequestListener<R> requestListener, @Nullable List<RequestListener<R>> list, RequestCoordinator requestCoordinator, Celse celse, TransitionFactory<? super R> transitionFactory, Executor executor) {
        this.f10374do = f10367strictfp ? String.valueOf(super.hashCode()) : null;
        this.f10381if = com.bumptech.glide.util.pool.Cdo.m12090do();
        this.f10379for = obj;
        this.f10369case = context;
        this.f10375else = cfor;
        this.f10380goto = obj2;
        this.f10392this = cls;
        this.f10368break = cdo;
        this.f10370catch = i;
        this.f10371class = i2;
        this.f10372const = ctry;
        this.f10377final = target;
        this.f10384new = requestListener;
        this.f10390super = list;
        this.f10395try = requestCoordinator;
        this.f10388return = celse;
        this.f10393throw = transitionFactory;
        this.f10396while = executor;
        this.f10389static = Cdo.PENDING;
        if (this.f10386private == null && cfor.m11174this()) {
            this.f10386private = new RuntimeException("Glide request origin trace");
        }
    }

    @GuardedBy("requestLock")
    /* renamed from: break, reason: not valid java name */
    private Drawable m11961break(@DrawableRes int i) {
        return c30.m725do(this.f10375else, i, this.f10368break.m11930implements() != null ? this.f10368break.m11930implements() : this.f10369case.getTheme());
    }

    @GuardedBy("requestLock")
    /* renamed from: case, reason: not valid java name */
    private Drawable m11962case() {
        if (this.f10391switch == null) {
            Drawable drawableM11948throws = this.f10368break.m11948throws();
            this.f10391switch = drawableM11948throws;
            if (drawableM11948throws == null && this.f10368break.m11944switch() > 0) {
                this.f10391switch = m11961break(this.f10368break.m11944switch());
            }
        }
        return this.f10391switch;
    }

    /* renamed from: catch, reason: not valid java name */
    private void m11963catch(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" this: ");
        sb.append(this.f10374do);
    }

    /* renamed from: class, reason: not valid java name */
    private static int m11964class(int i, float f) {
        return i == Integer.MIN_VALUE ? i : Math.round(f * i);
    }

    @GuardedBy("requestLock")
    /* renamed from: const, reason: not valid java name */
    private void m11965const() {
        RequestCoordinator requestCoordinator = this.f10395try;
        if (requestCoordinator != null) {
            requestCoordinator.onRequestFailed(this);
        }
    }

    @GuardedBy("requestLock")
    /* renamed from: do, reason: not valid java name */
    private void m11966do() {
        if (this.f10385package) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
    }

    @GuardedBy("requestLock")
    /* renamed from: else, reason: not valid java name */
    private Drawable m11967else() {
        if (this.f10373default == null) {
            Drawable drawableM11922default = this.f10368break.m11922default();
            this.f10373default = drawableM11922default;
            if (drawableM11922default == null && this.f10368break.m11924extends() > 0) {
                this.f10373default = m11961break(this.f10368break.m11924extends());
            }
        }
        return this.f10373default;
    }

    @GuardedBy("requestLock")
    /* renamed from: final, reason: not valid java name */
    private void m11968final() {
        RequestCoordinator requestCoordinator = this.f10395try;
        if (requestCoordinator != null) {
            requestCoordinator.onRequestSuccess(this);
        }
    }

    @GuardedBy("requestLock")
    /* renamed from: for, reason: not valid java name */
    private boolean m11969for() {
        RequestCoordinator requestCoordinator = this.f10395try;
        return requestCoordinator == null || requestCoordinator.canNotifyStatusChanged(this);
    }

    @GuardedBy("requestLock")
    /* renamed from: goto, reason: not valid java name */
    private Drawable m11970goto() {
        if (this.f10394throws == null) {
            Drawable drawableM11921continue = this.f10368break.m11921continue();
            this.f10394throws = drawableM11921continue;
            if (drawableM11921continue == null && this.f10368break.m11942strictfp() > 0) {
                this.f10394throws = m11961break(this.f10368break.m11942strictfp());
            }
        }
        return this.f10394throws;
    }

    @GuardedBy("requestLock")
    /* renamed from: if, reason: not valid java name */
    private boolean m11971if() {
        RequestCoordinator requestCoordinator = this.f10395try;
        return requestCoordinator == null || requestCoordinator.canNotifyCleared(this);
    }

    @GuardedBy("requestLock")
    /* renamed from: import, reason: not valid java name */
    private void m11972import() {
        if (m11969for()) {
            Drawable drawableM11967else = this.f10380goto == null ? m11967else() : null;
            if (drawableM11967else == null) {
                drawableM11967else = m11962case();
            }
            if (drawableM11967else == null) {
                drawableM11967else = m11970goto();
            }
            this.f10377final.onLoadFailed(drawableM11967else);
        }
    }

    @GuardedBy("requestLock")
    /* renamed from: new, reason: not valid java name */
    private boolean m11973new() {
        RequestCoordinator requestCoordinator = this.f10395try;
        return requestCoordinator == null || requestCoordinator.canSetImage(this);
    }

    /* renamed from: super, reason: not valid java name */
    public static <R> Cnew<R> m11974super(Context context, Cfor cfor, Object obj, Object obj2, Class<R> cls, com.bumptech.glide.request.Cdo<?> cdo, int i, int i2, Ctry ctry, Target<R> target, RequestListener<R> requestListener, @Nullable List<RequestListener<R>> list, RequestCoordinator requestCoordinator, Celse celse, TransitionFactory<? super R> transitionFactory, Executor executor) {
        return new Cnew<>(context, cfor, obj, obj2, cls, cdo, i, i2, ctry, target, requestListener, list, requestCoordinator, celse, transitionFactory, executor);
    }

    @GuardedBy("requestLock")
    /* renamed from: this, reason: not valid java name */
    private boolean m11975this() {
        RequestCoordinator requestCoordinator = this.f10395try;
        return requestCoordinator == null || !requestCoordinator.getRoot().isAnyResourceSet();
    }

    /* renamed from: throw, reason: not valid java name */
    private void m11976throw(Ccatch ccatch, int i) {
        boolean zOnLoadFailed;
        this.f10381if.mo12091for();
        synchronized (this.f10379for) {
            ccatch.setOrigin(this.f10386private);
            int iM11169else = this.f10375else.m11169else();
            if (iM11169else <= i) {
                StringBuilder sb = new StringBuilder();
                sb.append("Load failed for ");
                sb.append(this.f10380goto);
                sb.append(" with size [");
                sb.append(this.f10376extends);
                sb.append("x");
                sb.append(this.f10378finally);
                sb.append("]");
                if (iM11169else <= 4) {
                    ccatch.logRootCauses(f10366continue);
                }
            }
            this.f10383native = null;
            this.f10389static = Cdo.FAILED;
            boolean z = true;
            this.f10385package = true;
            try {
                List<RequestListener<R>> list = this.f10390super;
                if (list != null) {
                    Iterator<RequestListener<R>> it = list.iterator();
                    zOnLoadFailed = false;
                    while (it.hasNext()) {
                        zOnLoadFailed |= it.next().onLoadFailed(ccatch, this.f10380goto, this.f10377final, m11975this());
                    }
                } else {
                    zOnLoadFailed = false;
                }
                RequestListener<R> requestListener = this.f10384new;
                if (requestListener == null || !requestListener.onLoadFailed(ccatch, this.f10380goto, this.f10377final, m11975this())) {
                    z = false;
                }
                if (!(zOnLoadFailed | z)) {
                    m11972import();
                }
                this.f10385package = false;
                m11965const();
            } catch (Throwable th) {
                this.f10385package = false;
                throw th;
            }
        }
    }

    @GuardedBy("requestLock")
    /* renamed from: try, reason: not valid java name */
    private void m11977try() {
        m11966do();
        this.f10381if.mo12091for();
        this.f10377final.removeCallback(this);
        Celse.Cnew cnew = this.f10383native;
        if (cnew != null) {
            cnew.m11489do();
            this.f10383native = null;
        }
    }

    @GuardedBy("requestLock")
    /* renamed from: while, reason: not valid java name */
    private void m11978while(Resource<R> resource, R r, com.bumptech.glide.load.Cdo cdo) {
        boolean zOnResourceReady;
        boolean zM11975this = m11975this();
        this.f10389static = Cdo.COMPLETE;
        this.f10382import = resource;
        if (this.f10375else.m11169else() <= 3) {
            StringBuilder sb = new StringBuilder();
            sb.append("Finished loading ");
            sb.append(r.getClass().getSimpleName());
            sb.append(" from ");
            sb.append(cdo);
            sb.append(" for ");
            sb.append(this.f10380goto);
            sb.append(" with size [");
            sb.append(this.f10376extends);
            sb.append("x");
            sb.append(this.f10378finally);
            sb.append("] in ");
            sb.append(sv0.m7612do(this.f10387public));
            sb.append(" ms");
        }
        boolean z = true;
        this.f10385package = true;
        try {
            List<RequestListener<R>> list = this.f10390super;
            if (list != null) {
                Iterator<RequestListener<R>> it = list.iterator();
                zOnResourceReady = false;
                while (it.hasNext()) {
                    zOnResourceReady |= it.next().onResourceReady(r, this.f10380goto, this.f10377final, cdo, zM11975this);
                }
            } else {
                zOnResourceReady = false;
            }
            RequestListener<R> requestListener = this.f10384new;
            if (requestListener == null || !requestListener.onResourceReady(r, this.f10380goto, this.f10377final, cdo, zM11975this)) {
                z = false;
            }
            if (!(z | zOnResourceReady)) {
                this.f10377final.onResourceReady(r, this.f10393throw.build(cdo, zM11975this));
            }
            this.f10385package = false;
            m11968final();
        } catch (Throwable th) {
            this.f10385package = false;
            throw th;
        }
    }

    @Override // com.bumptech.glide.request.Request
    public void begin() {
        synchronized (this.f10379for) {
            m11966do();
            this.f10381if.mo12091for();
            this.f10387public = sv0.m7613if();
            if (this.f10380goto == null) {
                if (Ccase.m12054static(this.f10370catch, this.f10371class)) {
                    this.f10376extends = this.f10370catch;
                    this.f10378finally = this.f10371class;
                }
                m11976throw(new Ccatch("Received null model"), m11967else() == null ? 5 : 3);
                return;
            }
            Cdo cdo = this.f10389static;
            Cdo cdo2 = Cdo.RUNNING;
            if (cdo == cdo2) {
                throw new IllegalArgumentException("Cannot restart a running request");
            }
            if (cdo == Cdo.COMPLETE) {
                onResourceReady(this.f10382import, com.bumptech.glide.load.Cdo.MEMORY_CACHE);
                return;
            }
            Cdo cdo3 = Cdo.WAITING_FOR_SIZE;
            this.f10389static = cdo3;
            if (Ccase.m12054static(this.f10370catch, this.f10371class)) {
                onSizeReady(this.f10370catch, this.f10371class);
            } else {
                this.f10377final.getSize(this);
            }
            Cdo cdo4 = this.f10389static;
            if ((cdo4 == cdo2 || cdo4 == cdo3) && m11969for()) {
                this.f10377final.onLoadStarted(m11970goto());
            }
            if (f10367strictfp) {
                m11963catch("finished run method in " + sv0.m7612do(this.f10387public));
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public void clear() {
        synchronized (this.f10379for) {
            m11966do();
            this.f10381if.mo12091for();
            Cdo cdo = this.f10389static;
            Cdo cdo2 = Cdo.CLEARED;
            if (cdo == cdo2) {
                return;
            }
            m11977try();
            Resource<R> resource = this.f10382import;
            if (resource != null) {
                this.f10382import = null;
            } else {
                resource = null;
            }
            if (m11971if()) {
                this.f10377final.onLoadCleared(m11970goto());
            }
            this.f10389static = cdo2;
            if (resource != null) {
                this.f10388return.m11481goto(resource);
            }
        }
    }

    @Override // com.bumptech.glide.request.ResourceCallback
    public Object getLock() {
        this.f10381if.mo12091for();
        return this.f10379for;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isAnyResourceSet() {
        boolean z;
        synchronized (this.f10379for) {
            z = this.f10389static == Cdo.COMPLETE;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isCleared() {
        boolean z;
        synchronized (this.f10379for) {
            z = this.f10389static == Cdo.CLEARED;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isComplete() {
        boolean z;
        synchronized (this.f10379for) {
            z = this.f10389static == Cdo.COMPLETE;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isEquivalentTo(Request request) {
        int i;
        int i2;
        Object obj;
        Class<R> cls;
        com.bumptech.glide.request.Cdo<?> cdo;
        Ctry ctry;
        int size;
        int i3;
        int i4;
        Object obj2;
        Class<R> cls2;
        com.bumptech.glide.request.Cdo<?> cdo2;
        Ctry ctry2;
        int size2;
        if (!(request instanceof Cnew)) {
            return false;
        }
        synchronized (this.f10379for) {
            i = this.f10370catch;
            i2 = this.f10371class;
            obj = this.f10380goto;
            cls = this.f10392this;
            cdo = this.f10368break;
            ctry = this.f10372const;
            List<RequestListener<R>> list = this.f10390super;
            size = list != null ? list.size() : 0;
        }
        Cnew cnew = (Cnew) request;
        synchronized (cnew.f10379for) {
            i3 = cnew.f10370catch;
            i4 = cnew.f10371class;
            obj2 = cnew.f10380goto;
            cls2 = cnew.f10392this;
            cdo2 = cnew.f10368break;
            ctry2 = cnew.f10372const;
            List<RequestListener<R>> list2 = cnew.f10390super;
            size2 = list2 != null ? list2.size() : 0;
        }
        return i == i3 && i2 == i4 && Ccase.m12046for(obj, obj2) && cls.equals(cls2) && cdo.equals(cdo2) && ctry == ctry2 && size == size2;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isRunning() {
        boolean z;
        synchronized (this.f10379for) {
            Cdo cdo = this.f10389static;
            z = cdo == Cdo.RUNNING || cdo == Cdo.WAITING_FOR_SIZE;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.ResourceCallback
    public void onLoadFailed(Ccatch ccatch) {
        m11976throw(ccatch, 5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.request.ResourceCallback
    public void onResourceReady(Resource<?> resource, com.bumptech.glide.load.Cdo cdo) {
        this.f10381if.mo12091for();
        Resource<?> resource2 = null;
        try {
            synchronized (this.f10379for) {
                try {
                    this.f10383native = null;
                    if (resource == null) {
                        onLoadFailed(new Ccatch("Expected to receive a Resource<R> with an object of " + this.f10392this + " inside, but instead got null."));
                        return;
                    }
                    Object obj = resource.get();
                    try {
                        if (obj != null && this.f10392this.isAssignableFrom(obj.getClass())) {
                            if (m11973new()) {
                                m11978while(resource, obj, cdo);
                                return;
                            }
                            this.f10382import = null;
                            this.f10389static = Cdo.COMPLETE;
                            this.f10388return.m11481goto(resource);
                            return;
                        }
                        this.f10382import = null;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Expected to receive an object of ");
                        sb.append(this.f10392this);
                        sb.append(" but instead got ");
                        sb.append(obj != null ? obj.getClass() : "");
                        sb.append("{");
                        sb.append(obj);
                        sb.append("} inside Resource{");
                        sb.append(resource);
                        sb.append("}.");
                        sb.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                        onLoadFailed(new Ccatch(sb.toString()));
                        this.f10388return.m11481goto(resource);
                    } catch (Throwable th) {
                        resource2 = resource;
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (resource2 != null) {
                this.f10388return.m11481goto(resource2);
            }
            throw th3;
        }
    }

    @Override // com.bumptech.glide.request.target.SizeReadyCallback
    public void onSizeReady(int i, int i2) throws Throwable {
        Object obj;
        this.f10381if.mo12091for();
        Object obj2 = this.f10379for;
        synchronized (obj2) {
            try {
                try {
                    boolean z = f10367strictfp;
                    if (z) {
                        m11963catch("Got onSizeReady in " + sv0.m7612do(this.f10387public));
                    }
                    if (this.f10389static == Cdo.WAITING_FOR_SIZE) {
                        Cdo cdo = Cdo.RUNNING;
                        this.f10389static = cdo;
                        float fM11949transient = this.f10368break.m11949transient();
                        this.f10376extends = m11964class(i, fM11949transient);
                        this.f10378finally = m11964class(i2, fM11949transient);
                        if (z) {
                            m11963catch("finished setup for calling load in " + sv0.m7612do(this.f10387public));
                        }
                        obj = obj2;
                        try {
                            this.f10383native = this.f10388return.m11480for(this.f10375else, this.f10380goto, this.f10368break.m11938protected(), this.f10376extends, this.f10378finally, this.f10368break.m11933interface(), this.f10392this, this.f10372const, this.f10368break.m11941static(), this.f10368break.m11932instanceof(), this.f10368break.l(), this.f10368break.g(), this.f10368break.m11936package(), this.f10368break.e(), this.f10368break.a(), this.f10368break.m11945synchronized(), this.f10368break.m11926finally(), this, this.f10396while);
                            if (this.f10389static != cdo) {
                                this.f10383native = null;
                            }
                            if (z) {
                                m11963catch("finished onSizeReady in " + sv0.m7612do(this.f10387public));
                            }
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                obj = obj2;
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public void pause() {
        synchronized (this.f10379for) {
            if (isRunning()) {
                clear();
            }
        }
    }
}
