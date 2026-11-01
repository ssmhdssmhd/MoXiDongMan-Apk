package org.chromium.net.impl;

import android.os.ConditionVariable;
import android.support.v4.cd2;
import android.support.v4.e31;
import android.support.v4.f31;
import android.support.v4.ii0;
import android.support.v4.im0;
import android.support.v4.lo0;
import android.support.v4.qs;
import android.support.v4.r21;
import android.support.v4.r8;
import android.support.v4.rv0;
import androidx.annotation.VisibleForTesting;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandlerFactory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicInteger;
import org.chromium.base.ObserverList;
import org.chromium.base.annotations.CalledByNative;
import org.chromium.base.annotations.UsedByReflection;
import org.chromium.net.Cif;
import org.chromium.net.Cnative;
import org.chromium.net.Creturn;
import org.chromium.net.Ctry;
import org.chromium.net.impl.Cif;
import org.chromium.net.impl.VersionSafeCallbacks;
import org.chromium.net.urlconnection.Cgoto;

@UsedByReflection("CronetEngine.java")
@lo0("cronet")
@VisibleForTesting
/* loaded from: classes3.dex */
public class CronetUrlRequestContext extends qs {

    /* renamed from: abstract, reason: not valid java name */
    public static final String f33583abstract = "CronetUrlRequestContext";

    /* renamed from: continue, reason: not valid java name */
    @ii0("sInUseStoragePaths")
    private static final HashSet<String> f33584continue = new HashSet<>();

    /* renamed from: finally, reason: not valid java name */
    private static final int f33585finally = 3;

    /* renamed from: package, reason: not valid java name */
    private static final int f33586package = -1;

    /* renamed from: private, reason: not valid java name */
    private static final int f33587private = -2;

    /* renamed from: break, reason: not valid java name */
    private final ConditionVariable f33588break;

    /* renamed from: catch, reason: not valid java name */
    private final AtomicInteger f33589catch;

    /* renamed from: class, reason: not valid java name */
    @ii0("mLock")
    private long f33590class;

    /* renamed from: const, reason: not valid java name */
    private Thread f33591const;

    /* renamed from: default, reason: not valid java name */
    private final String f33592default;

    /* renamed from: extends, reason: not valid java name */
    @ii0("mLock")
    private boolean f33593extends;

    /* renamed from: final, reason: not valid java name */
    private final boolean f33594final;

    /* renamed from: import, reason: not valid java name */
    @ii0("mNetworkQualityLock")
    private int f33595import;

    /* renamed from: native, reason: not valid java name */
    @ii0("mNetworkQualityLock")
    private int f33596native;

    /* renamed from: public, reason: not valid java name */
    @ii0("mNetworkQualityLock")
    private int f33597public;

    /* renamed from: return, reason: not valid java name */
    @ii0("mNetworkQualityLock")
    private final ObserverList<VersionSafeCallbacks.Cfor> f33598return;

    /* renamed from: static, reason: not valid java name */
    @ii0("mNetworkQualityLock")
    private final ObserverList<VersionSafeCallbacks.Cnew> f33599static;

    /* renamed from: super, reason: not valid java name */
    private final Object f33600super;

    /* renamed from: switch, reason: not valid java name */
    @ii0("mFinishedListenerLock")
    private final Map<Cnative.Cdo, VersionSafeCallbacks.Ctry> f33601switch;

    /* renamed from: this, reason: not valid java name */
    private final Object f33602this;

    /* renamed from: throw, reason: not valid java name */
    private final Object f33603throw;

    /* renamed from: throws, reason: not valid java name */
    private volatile ConditionVariable f33604throws;

    /* renamed from: while, reason: not valid java name */
    @ii0("mNetworkQualityLock")
    private int f33605while;

    public interface Natives {
        void addPkp(long j, String str, byte[][] bArr, boolean z, long j2);

        void addQuicHint(long j, String str, int i, int i2);

        @r21("CronetURLRequestContextAdapter")
        void configureNetworkQualityEstimatorForTesting(long j, CronetUrlRequestContext cronetUrlRequestContext, boolean z, boolean z2, boolean z3);

        long createRequestContextAdapter(long j);

        long createRequestContextConfig(String str, String str2, boolean z, String str3, boolean z2, boolean z3, boolean z4, int i, long j, String str4, long j2, boolean z5, boolean z6, int i2);

        @r21("CronetURLRequestContextAdapter")
        void destroy(long j, CronetUrlRequestContext cronetUrlRequestContext);

        byte[] getHistogramDeltas();

        @r21("CronetURLRequestContextAdapter")
        void initRequestContextOnInitThread(long j, CronetUrlRequestContext cronetUrlRequestContext);

        @r21("CronetURLRequestContextAdapter")
        void provideRTTObservations(long j, CronetUrlRequestContext cronetUrlRequestContext, boolean z);

        @r21("CronetURLRequestContextAdapter")
        void provideThroughputObservations(long j, CronetUrlRequestContext cronetUrlRequestContext, boolean z);

        int setMinLogLevel(int i);

        @r21("CronetURLRequestContextAdapter")
        void startNetLogToDisk(long j, CronetUrlRequestContext cronetUrlRequestContext, String str, boolean z, int i);

        @r21("CronetURLRequestContextAdapter")
        boolean startNetLogToFile(long j, CronetUrlRequestContext cronetUrlRequestContext, String str, boolean z);

        @r21("CronetURLRequestContextAdapter")
        void stopNetLog(long j, CronetUrlRequestContext cronetUrlRequestContext);
    }

    /* renamed from: org.chromium.net.impl.CronetUrlRequestContext$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CronetLibraryLoader.m37563if();
            synchronized (CronetUrlRequestContext.this.f33602this) {
                Ctry.m37709if().initRequestContextOnInitThread(CronetUrlRequestContext.this.f33590class, CronetUrlRequestContext.this);
            }
        }
    }

    /* renamed from: org.chromium.net.impl.CronetUrlRequestContext$for, reason: invalid class name */
    public class Cfor implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ VersionSafeCallbacks.Cnew f33607do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ long f33608for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f33609if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ int f33610new;

        public Cfor(VersionSafeCallbacks.Cnew cnew, int i, long j, int i2) {
            this.f33607do = cnew;
            this.f33609if = i;
            this.f33608for = j;
            this.f33610new = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f33607do.mo2131if(this.f33609if, this.f33608for, this.f33610new);
        }
    }

    /* renamed from: org.chromium.net.impl.CronetUrlRequestContext$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ VersionSafeCallbacks.Cfor f33612do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ long f33613for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f33614if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ int f33615new;

        public Cif(VersionSafeCallbacks.Cfor cfor, int i, long j, int i2) {
            this.f33612do = cfor;
            this.f33614if = i;
            this.f33613for = j;
            this.f33615new = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f33612do.mo1642if(this.f33614if, this.f33613for, this.f33615new);
        }
    }

    /* renamed from: org.chromium.net.impl.CronetUrlRequestContext$new, reason: invalid class name */
    public class Cnew implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ VersionSafeCallbacks.Ctry f33617do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Cnative f33619if;

        public Cnew(VersionSafeCallbacks.Ctry ctry, Cnative cnative) {
            this.f33617do = ctry;
            this.f33619if = cnative;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f33617do.mo26740if(this.f33619if);
        }
    }

    @UsedByReflection("CronetEngine.java")
    public CronetUrlRequestContext(org.chromium.net.impl.Cif cif) {
        Object obj = new Object();
        this.f33602this = obj;
        this.f33588break = new ConditionVariable(false);
        this.f33589catch = new AtomicInteger(0);
        this.f33600super = new Object();
        this.f33603throw = new Object();
        this.f33605while = 0;
        this.f33595import = -1;
        this.f33596native = -1;
        this.f33597public = -1;
        this.f33598return = new ObserverList<>();
        this.f33599static = new ObserverList<>();
        this.f33601switch = new HashMap();
        this.f33594final = cif.m37675implements();
        CronetLibraryLoader.m37561do(cif.m37681private(), cif);
        Ctry.m37709if().setMinLogLevel(m37625strictfp());
        if (cif.m37678interface() == 1) {
            String strI = cif.i();
            this.f33592default = strI;
            HashSet<String> hashSet = f33584continue;
            synchronized (hashSet) {
                if (!hashSet.add(strI)) {
                    throw new IllegalStateException("Disk cache storage path already in use");
                }
            }
        } else {
            this.f33592default = null;
        }
        synchronized (obj) {
            long jCreateRequestContextAdapter = Ctry.m37709if().createRequestContextAdapter(m37620continue(cif));
            this.f33590class = jCreateRequestContextAdapter;
            if (jCreateRequestContextAdapter == 0) {
                throw new NullPointerException("Context Adapter creation failed.");
            }
        }
        CronetLibraryLoader.m37564new(new Cdo());
    }

    /* renamed from: abstract, reason: not valid java name */
    private static int m37619abstract(int i) {
        if (i == 0) {
            return 0;
        }
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    i2 = 4;
                    if (i != 4) {
                        if (i == 5) {
                            return 5;
                        }
                        throw new RuntimeException("Internal Error: Illegal EffectiveConnectionType value " + i);
                    }
                }
            }
        }
        return i2;
    }

    @VisibleForTesting
    /* renamed from: continue, reason: not valid java name */
    public static long m37620continue(org.chromium.net.impl.Cif cif) {
        long jCreateRequestContextConfig = Ctry.m37709if().createRequestContextConfig(cif.m37671continue(), cif.i(), cif.a(), cif.m37670abstract(), cif.m37685strictfp(), cif.m37679native(), cif.m37682public(), cif.m37678interface(), cif.m37690volatile(), cif.m37680package(), cif.m37689transient(), cif.m37675implements(), cif.m37677instanceof(), cif.j(10));
        for (Cif.Cfor cfor : cif.b()) {
            Ctry.m37709if().addQuicHint(jCreateRequestContextConfig, cfor.f33674do, cfor.f33676if, cfor.f33675for);
        }
        for (Cif.C0482if c0482if : cif.m37687synchronized()) {
            Ctry.m37709if().addPkp(jCreateRequestContextConfig, c0482if.f33677do, c0482if.f33679if, c0482if.f33678for, c0482if.f33680new.getTime());
        }
        return jCreateRequestContextConfig;
    }

    @CalledByNative
    private void initNetworkThread() {
        this.f33591const = Thread.currentThread();
        this.f33588break.open();
        Thread.currentThread().setName("ChromiumNet");
    }

    @CalledByNative
    private void onEffectiveConnectionTypeChanged(int i) {
        synchronized (this.f33600super) {
            this.f33605while = i;
        }
    }

    @CalledByNative
    private void onRTTOrThroughputEstimatesComputed(int i, int i2, int i3) {
        synchronized (this.f33600super) {
            this.f33595import = i;
            this.f33596native = i2;
            this.f33597public = i3;
        }
    }

    @CalledByNative
    private void onRttObservation(int i, long j, int i2) {
        synchronized (this.f33600super) {
            Iterator<VersionSafeCallbacks.Cfor> it = this.f33598return.iterator();
            while (it.hasNext()) {
                VersionSafeCallbacks.Cfor next = it.next();
                m37626synchronized(next.mo1641do(), new Cif(next, i, j, i2));
            }
        }
    }

    @CalledByNative
    private void onThroughputObservation(int i, long j, int i2) {
        synchronized (this.f33600super) {
            Iterator<VersionSafeCallbacks.Cnew> it = this.f33599static.iterator();
            while (it.hasNext()) {
                VersionSafeCallbacks.Cnew next = it.next();
                m37626synchronized(next.mo2130do(), new Cfor(next, i, j, i2));
            }
        }
    }

    @ii0("mLock")
    /* renamed from: private, reason: not valid java name */
    private void m37623private() throws IllegalStateException {
        if (!m37624protected()) {
            throw new IllegalStateException("Engine is shut down.");
        }
    }

    @ii0("mLock")
    /* renamed from: protected, reason: not valid java name */
    private boolean m37624protected() {
        return this.f33590class != 0;
    }

    /* renamed from: strictfp, reason: not valid java name */
    private int m37625strictfp() {
        String str = f33583abstract;
        if (rv0.m7146break(str, 2)) {
            return -2;
        }
        return rv0.m7146break(str, 3) ? -1 : 3;
    }

    /* renamed from: synchronized, reason: not valid java name */
    private static void m37626synchronized(Executor executor, Runnable runnable) {
        try {
            executor.execute(runnable);
        } catch (RejectedExecutionException e) {
            rv0.m7156if(f33583abstract, "Exception posting task to executor", e);
        }
    }

    public void a(Cnative cnative) {
        synchronized (this.f33603throw) {
            if (this.f33601switch.isEmpty()) {
                return;
            }
            Iterator it = new ArrayList(this.f33601switch.values()).iterator();
            while (it.hasNext()) {
                VersionSafeCallbacks.Ctry ctry = (VersionSafeCallbacks.Ctry) it.next();
                m37626synchronized(ctry.mo37639do(), new Cnew(ctry, cnative));
            }
        }
    }

    @Override // org.chromium.net.Ccase
    /* renamed from: break */
    public void mo37439break(Cnative.Cdo cdo) {
        synchronized (this.f33603throw) {
            this.f33601switch.put(cdo, new VersionSafeCallbacks.Ctry(cdo));
        }
    }

    @Override // org.chromium.net.Cfor
    /* renamed from: case */
    public URLConnection mo37499case(URL url) {
        return mo37445public(url, Proxy.NO_PROXY);
    }

    @Override // org.chromium.net.Ccase
    /* renamed from: catch */
    public void mo37440catch(e31 e31Var) {
        if (!this.f33594final) {
            throw new IllegalStateException("Network quality estimator must be enabled");
        }
        synchronized (this.f33600super) {
            if (this.f33598return.isEmpty()) {
                synchronized (this.f33602this) {
                    m37623private();
                    Ctry.m37709if().provideRTTObservations(this.f33590class, this, true);
                }
            }
            this.f33598return.m36878try(new VersionSafeCallbacks.Cfor(e31Var));
        }
    }

    @Override // org.chromium.net.Ccase
    /* renamed from: class */
    public void mo37441class(f31 f31Var) {
        if (!this.f33594final) {
            throw new IllegalStateException("Network quality estimator must be enabled");
        }
        synchronized (this.f33600super) {
            if (this.f33599static.isEmpty()) {
                synchronized (this.f33602this) {
                    m37623private();
                    Ctry.m37709if().provideThroughputObservations(this.f33590class, this, true);
                }
            }
            this.f33599static.m36878try(new VersionSafeCallbacks.Cnew(f31Var));
        }
    }

    @Override // org.chromium.net.Ccase
    @VisibleForTesting
    /* renamed from: const */
    public void mo37442const(boolean z, boolean z2, boolean z3) {
        if (!this.f33594final) {
            throw new IllegalStateException("Network quality estimator must be enabled");
        }
        synchronized (this.f33602this) {
            m37623private();
            Ctry.m37709if().configureNetworkQualityEstimatorForTesting(this.f33590class, this, z, z2, z3);
        }
    }

    @Override // android.support.v4.qs
    /* renamed from: default */
    public Ctry mo6660default(String str, Cif.AbstractC0480if abstractC0480if, Executor executor, String str2, List<Map.Entry<String, String>> list, int i, boolean z, Collection<Object> collection, boolean z2, int i2, boolean z3, int i3) throws Throwable {
        synchronized (this.f33602this) {
            try {
                try {
                    m37623private();
                    return new CronetBidirectionalStream(this, str, i, abstractC0480if, executor, str2, list, z, collection, z2, i2, z3, i3);
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                throw th;
            }
        }
    }

    @Override // org.chromium.net.Cfor
    /* renamed from: else */
    public void mo37500else() {
        if (this.f33592default != null) {
            HashSet<String> hashSet = f33584continue;
            synchronized (hashSet) {
                hashSet.remove(this.f33592default);
            }
        }
        synchronized (this.f33602this) {
            m37623private();
            if (this.f33589catch.get() != 0) {
                throw new IllegalStateException("Cannot shutdown with active requests.");
            }
            if (Thread.currentThread() == this.f33591const) {
                throw new IllegalThreadStateException("Cannot shutdown from network thread.");
            }
        }
        this.f33588break.block();
        mo37505this();
        synchronized (this.f33602this) {
            if (m37624protected()) {
                Ctry.m37709if().destroy(this.f33590class, this);
                this.f33590class = 0L;
            }
        }
    }

    @Override // android.support.v4.qs
    /* renamed from: extends */
    public cd2 mo6661extends(String str, Creturn.Cif cif, Executor executor, int i, Collection<Object> collection, boolean z, boolean z2, boolean z3, boolean z4, int i2, boolean z5, int i3, Cnative.Cdo cdo, int i4) throws Throwable {
        synchronized (this.f33602this) {
            try {
                try {
                    m37623private();
                    return new CronetUrlRequest(this, str, i, cif, executor, collection, z, z2, z3, z4, i2, z5, i3, cdo, i4);
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    @Override // org.chromium.net.Ccase
    /* renamed from: final */
    public int mo37443final() {
        int i;
        if (!this.f33594final) {
            throw new IllegalStateException("Network quality estimator must be enabled");
        }
        synchronized (this.f33600super) {
            i = this.f33597public;
            if (i == -1) {
                i = -1;
            }
        }
        return i;
    }

    @Override // org.chromium.net.Cfor
    /* renamed from: for */
    public byte[] mo37501for() {
        return Ctry.m37709if().getHistogramDeltas();
    }

    @Override // org.chromium.net.Cfor
    /* renamed from: goto */
    public void mo37502goto(String str, boolean z) {
        synchronized (this.f33602this) {
            m37623private();
            if (!Ctry.m37709if().startNetLogToFile(this.f33590class, this, str, z)) {
                throw new RuntimeException("Unable to start NetLog");
            }
            this.f33593extends = true;
        }
    }

    @Override // org.chromium.net.Cfor
    /* renamed from: if */
    public URLStreamHandlerFactory mo37503if() {
        return new Cgoto(this);
    }

    /* renamed from: implements, reason: not valid java name */
    public void m37627implements() {
        this.f33589catch.decrementAndGet();
    }

    @Override // org.chromium.net.Ccase
    /* renamed from: import */
    public Ctry.Cdo mo37444import(String str, Cif.AbstractC0480if abstractC0480if, Executor executor) {
        return new r8(str, abstractC0480if, executor, this);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m37628instanceof() {
        this.f33589catch.incrementAndGet();
    }

    /* renamed from: interface, reason: not valid java name */
    public boolean m37629interface() {
        boolean z;
        synchronized (this.f33603throw) {
            z = !this.f33601switch.isEmpty();
        }
        return z;
    }

    @Override // org.chromium.net.Cfor
    /* renamed from: new */
    public String mo37504new() {
        return "Cronet/" + im0.m3509for();
    }

    @Override // org.chromium.net.Ccase
    /* renamed from: public */
    public URLConnection mo37445public(URL url, Proxy proxy) {
        if (proxy.type() != Proxy.Type.DIRECT) {
            throw new UnsupportedOperationException();
        }
        String protocol = url.getProtocol();
        if ("http".equals(protocol) || "https".equals(protocol)) {
            return new org.chromium.net.urlconnection.Cnew(url, this);
        }
        throw new UnsupportedOperationException("Unexpected protocol:" + protocol);
    }

    @Override // org.chromium.net.Ccase
    /* renamed from: return */
    public void mo37446return(Cnative.Cdo cdo) {
        synchronized (this.f33603throw) {
            this.f33601switch.remove(cdo);
        }
    }

    @Override // org.chromium.net.Ccase
    /* renamed from: static */
    public void mo37447static(e31 e31Var) {
        if (!this.f33594final) {
            throw new IllegalStateException("Network quality estimator must be enabled");
        }
        synchronized (this.f33600super) {
            if (this.f33598return.m36876class(new VersionSafeCallbacks.Cfor(e31Var)) && this.f33598return.isEmpty()) {
                synchronized (this.f33602this) {
                    m37623private();
                    Ctry.m37709if().provideRTTObservations(this.f33590class, this, false);
                }
            }
        }
    }

    @CalledByNative
    public void stopNetLogCompleted() {
        this.f33604throws.open();
    }

    @Override // org.chromium.net.Ccase
    /* renamed from: super */
    public int mo37448super() {
        int iM37619abstract;
        if (!this.f33594final) {
            throw new IllegalStateException("Network quality estimator must be enabled");
        }
        synchronized (this.f33600super) {
            iM37619abstract = m37619abstract(this.f33605while);
        }
        return iM37619abstract;
    }

    @Override // org.chromium.net.Ccase
    /* renamed from: switch */
    public void mo37449switch(f31 f31Var) {
        if (!this.f33594final) {
            throw new IllegalStateException("Network quality estimator must be enabled");
        }
        synchronized (this.f33600super) {
            if (this.f33599static.m36876class(new VersionSafeCallbacks.Cnew(f31Var)) && this.f33599static.isEmpty()) {
                synchronized (this.f33602this) {
                    m37623private();
                    Ctry.m37709if().provideThroughputObservations(this.f33590class, this, false);
                }
            }
        }
    }

    @Override // org.chromium.net.Cfor
    /* renamed from: this */
    public void mo37505this() {
        synchronized (this.f33602this) {
            if (this.f33593extends) {
                m37623private();
                this.f33604throws = new ConditionVariable();
                Ctry.m37709if().stopNetLog(this.f33590class, this);
                this.f33593extends = false;
                this.f33604throws.block();
            }
        }
    }

    @Override // org.chromium.net.Ccase
    /* renamed from: throw */
    public int mo37450throw() {
        int i;
        if (!this.f33594final) {
            throw new IllegalStateException("Network quality estimator must be enabled");
        }
        synchronized (this.f33600super) {
            i = this.f33595import;
            if (i == -1) {
                i = -1;
            }
        }
        return i;
    }

    @Override // org.chromium.net.Ccase
    /* renamed from: throws */
    public void mo37451throws(String str, boolean z, int i) {
        synchronized (this.f33602this) {
            m37623private();
            Ctry.m37709if().startNetLogToDisk(this.f33590class, this, str, z, i);
            this.f33593extends = true;
        }
    }

    /* renamed from: transient, reason: not valid java name */
    public boolean m37630transient(Thread thread) {
        return thread == this.f33591const;
    }

    @Override // android.support.v4.qs, org.chromium.net.Ccase, org.chromium.net.Cfor
    /* renamed from: try */
    public /* bridge */ /* synthetic */ Creturn.Cdo mo6663try(String str, Creturn.Cif cif, Executor executor) {
        return super.mo6663try(str, cif, executor);
    }

    @VisibleForTesting
    /* renamed from: volatile, reason: not valid java name */
    public long m37631volatile() {
        long j;
        synchronized (this.f33602this) {
            m37623private();
            j = this.f33590class;
        }
        return j;
    }

    @Override // org.chromium.net.Ccase
    /* renamed from: while */
    public int mo37452while() {
        int i;
        if (!this.f33594final) {
            throw new IllegalStateException("Network quality estimator must be enabled");
        }
        synchronized (this.f33600super) {
            i = this.f33596native;
            if (i == -1) {
                i = -1;
            }
        }
        return i;
    }
}
