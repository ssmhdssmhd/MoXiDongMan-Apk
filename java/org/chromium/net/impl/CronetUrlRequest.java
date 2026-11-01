package org.chromium.net.impl;

import android.support.v4.bf1;
import android.support.v4.c31;
import android.support.v4.cd2;
import android.support.v4.cn1;
import android.support.v4.ii0;
import android.support.v4.jf;
import android.support.v4.ko0;
import android.support.v4.lo0;
import android.support.v4.r21;
import android.support.v4.rs;
import android.support.v4.rv0;
import android.support.v4.sm0;
import android.support.v4.ss;
import android.support.v4.ts;
import android.support.v4.xi1;
import androidx.annotation.VisibleForTesting;
import java.nio.ByteBuffer;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import org.chromium.base.annotations.CalledByNative;
import org.chromium.net.Cnative;
import org.chromium.net.Cpublic;
import org.chromium.net.Creturn;
import org.chromium.net.impl.VersionSafeCallbacks;

@lo0("cronet")
@ko0({VersionSafeCallbacks.class})
@VisibleForTesting
/* loaded from: classes3.dex */
public final class CronetUrlRequest extends cd2 {

    /* renamed from: strictfp, reason: not valid java name */
    public static final /* synthetic */ boolean f33535strictfp = false;

    /* renamed from: abstract, reason: not valid java name */
    private Ccatch f33536abstract;

    /* renamed from: break, reason: not valid java name */
    private final List<String> f33537break;

    /* renamed from: case, reason: not valid java name */
    @ii0("mUrlRequestAdapterLock")
    private boolean f33538case;

    /* renamed from: catch, reason: not valid java name */
    private final VersionSafeCallbacks.Celse f33539catch;

    /* renamed from: class, reason: not valid java name */
    private final String f33540class;

    /* renamed from: const, reason: not valid java name */
    private final int f33541const;

    /* renamed from: continue, reason: not valid java name */
    @ii0("mUrlRequestAdapterLock")
    private Runnable f33542continue;

    /* renamed from: default, reason: not valid java name */
    private CronetUploadDataStream f33543default;

    /* renamed from: else, reason: not valid java name */
    private final Object f33544else = new Object();

    /* renamed from: extends, reason: not valid java name */
    private org.chromium.net.impl.Cthis f33545extends;

    /* renamed from: final, reason: not valid java name */
    private final int f33546final;

    /* renamed from: finally, reason: not valid java name */
    private int f33547finally;

    /* renamed from: for, reason: not valid java name */
    @ii0("mUrlRequestAdapterLock")
    private long f33548for;

    /* renamed from: goto, reason: not valid java name */
    private final CronetUrlRequestContext f33549goto;

    /* renamed from: if, reason: not valid java name */
    private final boolean f33550if;

    /* renamed from: import, reason: not valid java name */
    private final boolean f33551import;

    /* renamed from: native, reason: not valid java name */
    private final boolean f33552native;

    /* renamed from: new, reason: not valid java name */
    @ii0("mUrlRequestAdapterLock")
    private boolean f33553new;

    /* renamed from: package, reason: not valid java name */
    private rs f33554package;

    /* renamed from: private, reason: not valid java name */
    private ts f33555private;

    /* renamed from: public, reason: not valid java name */
    private final boolean f33556public;

    /* renamed from: return, reason: not valid java name */
    private final int f33557return;

    /* renamed from: static, reason: not valid java name */
    private final boolean f33558static;

    /* renamed from: super, reason: not valid java name */
    private String f33559super;

    /* renamed from: switch, reason: not valid java name */
    private final int f33560switch;

    /* renamed from: this, reason: not valid java name */
    private final Executor f33561this;

    /* renamed from: throw, reason: not valid java name */
    private final Cbreak f33562throw;

    /* renamed from: throws, reason: not valid java name */
    private final VersionSafeCallbacks.Ctry f33563throws;

    /* renamed from: try, reason: not valid java name */
    @ii0("mUrlRequestAdapterLock")
    private boolean f33564try;

    /* renamed from: while, reason: not valid java name */
    private final Collection<Object> f33565while;

    public interface Natives {
        @r21("CronetURLRequestAdapter")
        boolean addRequestHeader(long j, CronetUrlRequest cronetUrlRequest, String str, String str2);

        long createRequestAdapter(CronetUrlRequest cronetUrlRequest, long j, String str, int i, boolean z, boolean z2, boolean z3, boolean z4, int i2, boolean z5, int i3, int i4);

        @r21("CronetURLRequestAdapter")
        void destroy(long j, CronetUrlRequest cronetUrlRequest, boolean z);

        @r21("CronetURLRequestAdapter")
        void followDeferredRedirect(long j, CronetUrlRequest cronetUrlRequest);

        @r21("CronetURLRequestAdapter")
        void getStatus(long j, CronetUrlRequest cronetUrlRequest, VersionSafeCallbacks.UrlRequestStatusListener urlRequestStatusListener);

        @r21("CronetURLRequestAdapter")
        boolean readData(long j, CronetUrlRequest cronetUrlRequest, ByteBuffer byteBuffer, int i, int i2);

        @r21("CronetURLRequestAdapter")
        boolean setHttpMethod(long j, CronetUrlRequest cronetUrlRequest, String str);

        @r21("CronetURLRequestAdapter")
        void start(long j, CronetUrlRequest cronetUrlRequest);
    }

    /* renamed from: org.chromium.net.impl.CronetUrlRequest$break, reason: invalid class name */
    public static final class Cbreak extends ArrayList<Map.Entry<String, String>> {
        private Cbreak() {
        }

        public /* synthetic */ Cbreak(Cdo cdo) {
            this();
        }
    }

    /* renamed from: org.chromium.net.impl.CronetUrlRequest$case, reason: invalid class name */
    public class Ccase implements Runnable {
        public Ccase() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                VersionSafeCallbacks.Celse celse = CronetUrlRequest.this.f33539catch;
                CronetUrlRequest cronetUrlRequest = CronetUrlRequest.this;
                celse.mo26746do(cronetUrlRequest, cronetUrlRequest.f33545extends);
                CronetUrlRequest.this.m37594interface();
            } catch (Exception e) {
                rv0.m7156if(CronetUrlRequestContext.f33583abstract, "Exception in onCanceled method", e);
            }
        }
    }

    /* renamed from: org.chromium.net.impl.CronetUrlRequest$catch, reason: invalid class name */
    public final class Ccatch implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public ByteBuffer f33567do;

        private Ccatch() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CronetUrlRequest.this.m37611default();
            ByteBuffer byteBuffer = this.f33567do;
            this.f33567do = null;
            try {
                synchronized (CronetUrlRequest.this.f33544else) {
                    if (CronetUrlRequest.this.m37602strictfp()) {
                        return;
                    }
                    CronetUrlRequest.this.f33538case = true;
                    VersionSafeCallbacks.Celse celse = CronetUrlRequest.this.f33539catch;
                    CronetUrlRequest cronetUrlRequest = CronetUrlRequest.this;
                    celse.mo26747for(cronetUrlRequest, cronetUrlRequest.f33545extends, byteBuffer);
                }
            } catch (Exception e) {
                CronetUrlRequest.this.m37598protected(e);
            }
        }

        public /* synthetic */ Ccatch(CronetUrlRequest cronetUrlRequest, Cdo cdo) {
            this();
        }
    }

    /* renamed from: org.chromium.net.impl.CronetUrlRequest$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CronetUrlRequest.this.f33543default.m37580public();
            synchronized (CronetUrlRequest.this.f33544else) {
                if (CronetUrlRequest.this.m37602strictfp()) {
                    return;
                }
                CronetUrlRequest.this.f33543default.m37579final(CronetUrlRequest.this.f33548for);
                CronetUrlRequest.this.b();
            }
        }
    }

    /* renamed from: org.chromium.net.impl.CronetUrlRequest$else, reason: invalid class name */
    public class Celse implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ VersionSafeCallbacks.UrlRequestStatusListener f33570do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f33572if;

        public Celse(VersionSafeCallbacks.UrlRequestStatusListener urlRequestStatusListener, int i) {
            this.f33570do = urlRequestStatusListener;
            this.f33572if = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f33570do.mo37638do(cd2.m854goto(this.f33572if));
        }
    }

    /* renamed from: org.chromium.net.impl.CronetUrlRequest$for, reason: invalid class name */
    public class Cfor implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ org.chromium.net.impl.Cthis f33573do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ String f33575if;

        public Cfor(org.chromium.net.impl.Cthis cthis, String str) {
            this.f33573do = cthis;
            this.f33575if = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            CronetUrlRequest.this.m37611default();
            synchronized (CronetUrlRequest.this.f33544else) {
                if (CronetUrlRequest.this.m37602strictfp()) {
                    return;
                }
                CronetUrlRequest.this.f33564try = true;
                try {
                    CronetUrlRequest.this.f33539catch.mo26749new(CronetUrlRequest.this, this.f33573do, this.f33575if);
                } catch (Exception e) {
                    CronetUrlRequest.this.m37598protected(e);
                }
            }
        }
    }

    /* renamed from: org.chromium.net.impl.CronetUrlRequest$goto, reason: invalid class name */
    public class Cgoto implements Runnable {
        public Cgoto() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                VersionSafeCallbacks.Celse celse = CronetUrlRequest.this.f33539catch;
                CronetUrlRequest cronetUrlRequest = CronetUrlRequest.this;
                celse.mo26748if(cronetUrlRequest, cronetUrlRequest.f33545extends, CronetUrlRequest.this.f33554package);
                CronetUrlRequest.this.m37594interface();
            } catch (Exception e) {
                rv0.m7156if(CronetUrlRequestContext.f33583abstract, "Exception in onFailed method", e);
            }
        }
    }

    /* renamed from: org.chromium.net.impl.CronetUrlRequest$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ VersionSafeCallbacks.UrlRequestStatusListener f33577do;

        public Cif(VersionSafeCallbacks.UrlRequestStatusListener urlRequestStatusListener) {
            this.f33577do = urlRequestStatusListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f33577do.mo37638do(-1);
        }
    }

    /* renamed from: org.chromium.net.impl.CronetUrlRequest$new, reason: invalid class name */
    public class Cnew implements Runnable {
        public Cnew() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CronetUrlRequest.this.m37611default();
            synchronized (CronetUrlRequest.this.f33544else) {
                if (CronetUrlRequest.this.m37602strictfp()) {
                    return;
                }
                CronetUrlRequest.this.f33538case = true;
                try {
                    VersionSafeCallbacks.Celse celse = CronetUrlRequest.this.f33539catch;
                    CronetUrlRequest cronetUrlRequest = CronetUrlRequest.this;
                    celse.mo26750try(cronetUrlRequest, cronetUrlRequest.f33545extends);
                } catch (Exception e) {
                    CronetUrlRequest.this.m37598protected(e);
                }
            }
        }
    }

    /* renamed from: org.chromium.net.impl.CronetUrlRequest$this, reason: invalid class name */
    public class Cthis implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cnative f33580do;

        public Cthis(Cnative cnative) {
            this.f33580do = cnative;
        }

        @Override // java.lang.Runnable
        public void run() {
            CronetUrlRequest.this.f33563throws.mo26740if(this.f33580do);
        }
    }

    /* renamed from: org.chromium.net.impl.CronetUrlRequest$try, reason: invalid class name */
    public class Ctry implements Runnable {
        public Ctry() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (CronetUrlRequest.this.f33544else) {
                if (CronetUrlRequest.this.m37602strictfp()) {
                    return;
                }
                CronetUrlRequest.this.m37597private(0);
                try {
                    VersionSafeCallbacks.Celse celse = CronetUrlRequest.this.f33539catch;
                    CronetUrlRequest cronetUrlRequest = CronetUrlRequest.this;
                    celse.mo26745case(cronetUrlRequest, cronetUrlRequest.f33545extends);
                    CronetUrlRequest.this.m37594interface();
                } catch (Exception e) {
                    rv0.m7156if(CronetUrlRequestContext.f33583abstract, "Exception in onSucceeded method", e);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CronetUrlRequest(CronetUrlRequestContext cronetUrlRequestContext, String str, int i, Creturn.Cif cif, Executor executor, Collection<Object> collection, boolean z, boolean z2, boolean z3, boolean z4, int i2, boolean z5, int i3, Cnative.Cdo cdo, int i4) {
        ArrayList arrayList = new ArrayList();
        this.f33537break = arrayList;
        this.f33562throw = new Cbreak(0 == true ? 1 : 0);
        Objects.requireNonNull(str, "URL is required");
        Objects.requireNonNull(cif, "Listener is required");
        Objects.requireNonNull(executor, "Executor is required");
        this.f33550if = z3;
        this.f33549goto = cronetUrlRequestContext;
        this.f33540class = str;
        arrayList.add(str);
        this.f33541const = m37596package(i);
        this.f33539catch = new VersionSafeCallbacks.Celse(cif);
        this.f33561this = executor;
        this.f33565while = collection;
        this.f33551import = z;
        this.f33552native = z2;
        this.f33556public = z4;
        this.f33557return = i2;
        this.f33558static = z5;
        this.f33560switch = i3;
        this.f33563throws = cdo != null ? new VersionSafeCallbacks.Ctry(cdo) : null;
        this.f33546final = m37590finally(i4);
    }

    /* renamed from: abstract, reason: not valid java name */
    private void m37584abstract(rs rsVar) {
        synchronized (this.f33544else) {
            if (m37602strictfp()) {
                return;
            }
            this.f33554package = rsVar;
            m37597private(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ii0("mUrlRequestAdapterLock")
    public void b() {
        org.chromium.net.impl.Ccase.m37641if().start(this.f33548for, this);
    }

    /* renamed from: extends, reason: not valid java name */
    private void m37588extends() {
        synchronized (this.f33544else) {
            if (this.f33553new || m37602strictfp()) {
                throw new IllegalStateException("Request is already started.");
            }
        }
    }

    /* renamed from: finally, reason: not valid java name */
    private static int m37590finally(int i) {
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                return 0;
            }
        }
        return i2;
    }

    /* renamed from: implements, reason: not valid java name */
    private void m37591implements(Runnable runnable) {
        try {
            this.f33561this.execute(runnable);
        } catch (RejectedExecutionException e) {
            rv0.m7156if(CronetUrlRequestContext.f33583abstract, "Exception posting task to executor", e);
            m37584abstract(new ss("Exception posting task to executor", e));
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    private org.chromium.net.impl.Cthis m37593instanceof(int i, String str, String[] strArr, boolean z, String str2, String str3, long j) {
        Cbreak cbreak = new Cbreak(null);
        for (int i2 = 0; i2 < strArr.length; i2 += 2) {
            cbreak.add(new AbstractMap.SimpleImmutableEntry(strArr[i2], strArr[i2 + 1]));
        }
        return new org.chromium.net.impl.Cthis(new ArrayList(this.f33537break), i, str, cbreak, z, str2, str3, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: interface, reason: not valid java name */
    public void m37594interface() {
        ts tsVar = this.f33555private;
        if (tsVar != null) {
            cn1 cn1Var = new cn1(this.f33540class, this.f33565while, tsVar, this.f33547finally, this.f33545extends, this.f33554package);
            this.f33549goto.a(cn1Var);
            VersionSafeCallbacks.Ctry ctry = this.f33563throws;
            if (ctry != null) {
                try {
                    ctry.mo37639do().execute(new Cthis(cn1Var));
                } catch (RejectedExecutionException e) {
                    rv0.m7156if(CronetUrlRequestContext.f33583abstract, "Exception posting task to executor", e);
                }
            }
        }
    }

    @CalledByNative
    private void onCanceled() {
        m37591implements(new Ccase());
    }

    @CalledByNative
    private void onError(int i, int i2, int i3, String str, long j) {
        org.chromium.net.impl.Cthis cthis = this.f33545extends;
        if (cthis != null) {
            cthis.m37697catch(j);
        }
        if (i == 10 || i == 3) {
            m37584abstract(new xi1("Exception in CronetUrlRequest: " + str, i, i2, i3));
            return;
        }
        m37584abstract(new c31("Exception in CronetUrlRequest: " + str, m37607volatile(i), i2));
    }

    @CalledByNative
    private void onMetricsCollected(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, boolean z, long j14, long j15) {
        synchronized (this.f33544else) {
            if (this.f33555private != null) {
                throw new IllegalStateException("Metrics collection should only happen once.");
            }
            this.f33555private = new ts(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, z, j14, j15);
        }
    }

    @CalledByNative
    private void onNativeAdapterDestroyed() {
        synchronized (this.f33544else) {
            Runnable runnable = this.f33542continue;
            if (runnable != null) {
                runnable.run();
            }
            if (this.f33554package == null) {
                return;
            }
            try {
                this.f33561this.execute(new Cgoto());
            } catch (RejectedExecutionException e) {
                rv0.m7156if(CronetUrlRequestContext.f33583abstract, "Exception posting task to executor", e);
            }
        }
    }

    @CalledByNative
    private void onReadCompleted(ByteBuffer byteBuffer, int i, int i2, int i3, long j) {
        this.f33545extends.m37697catch(j);
        Cdo cdo = null;
        if (byteBuffer.position() != i2 || byteBuffer.limit() != i3) {
            m37584abstract(new ss("ByteBuffer modified externally during read", null));
            return;
        }
        if (this.f33536abstract == null) {
            this.f33536abstract = new Ccatch(this, cdo);
        }
        byteBuffer.position(i2 + i);
        Ccatch ccatch = this.f33536abstract;
        ccatch.f33567do = byteBuffer;
        m37591implements(ccatch);
    }

    @CalledByNative
    private void onRedirectReceived(String str, int i, String str2, String[] strArr, boolean z, String str3, String str4, long j) {
        org.chromium.net.impl.Cthis cthisM37593instanceof = m37593instanceof(i, str2, strArr, z, str3, str4, j);
        this.f33537break.add(str);
        m37591implements(new Cfor(cthisM37593instanceof, str));
    }

    @CalledByNative
    private void onResponseStarted(int i, String str, String[] strArr, boolean z, String str2, String str3, long j) {
        this.f33545extends = m37593instanceof(i, str, strArr, z, str2, str3, j);
        m37591implements(new Cnew());
    }

    @CalledByNative
    private void onStatus(VersionSafeCallbacks.UrlRequestStatusListener urlRequestStatusListener, int i) {
        m37591implements(new Celse(urlRequestStatusListener, i));
    }

    @CalledByNative
    private void onSucceeded(long j) {
        this.f33545extends.m37697catch(j);
        m37591implements(new Ctry());
    }

    /* renamed from: package, reason: not valid java name */
    private static int m37596package(int i) {
        if (i == 0) {
            return 1;
        }
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return i != 4 ? 4 : 5;
        }
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ii0("mUrlRequestAdapterLock")
    /* renamed from: private, reason: not valid java name */
    public void m37597private(int i) {
        this.f33547finally = i;
        if (this.f33548for == 0) {
            return;
        }
        this.f33549goto.m37627implements();
        org.chromium.net.impl.Ccase.m37641if().destroy(this.f33548for, this, i == 2);
        this.f33548for = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: protected, reason: not valid java name */
    public void m37598protected(Exception exc) {
        jf jfVar = new jf("Exception received from UrlRequest.Callback", exc);
        rv0.m7156if(CronetUrlRequestContext.f33583abstract, "Exception in CalledByNative method", exc);
        m37584abstract(jfVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ii0("mUrlRequestAdapterLock")
    /* renamed from: strictfp, reason: not valid java name */
    public boolean m37602strictfp() {
        return this.f33553new && this.f33548for == 0;
    }

    /* renamed from: volatile, reason: not valid java name */
    private int m37607volatile(int i) {
        switch (i) {
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 6;
            case 7:
                return 7;
            case 8:
                return 8;
            case 9:
                return 9;
            case 10:
                return 10;
            case 11:
                return 11;
            default:
                rv0.m7156if(CronetUrlRequestContext.f33583abstract, "Unknown error code: " + i, new Object[0]);
                return i;
        }
    }

    @VisibleForTesting
    public void a(Runnable runnable) {
        this.f33543default.m37582switch(runnable);
    }

    @Override // android.support.v4.cd2
    /* renamed from: break */
    public void mo855break(Cpublic cpublic, Executor executor) {
        Objects.requireNonNull(cpublic, "Invalid UploadDataProvider.");
        if (this.f33559super == null) {
            this.f33559super = "POST";
        }
        this.f33543default = new CronetUploadDataStream(cpublic, executor, this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v3, types: [boolean] */
    @Override // org.chromium.net.Creturn
    /* renamed from: case, reason: not valid java name */
    public void mo37609case() throws Throwable {
        int iHasNext;
        Map.Entry<String, String> next;
        synchronized (this.f33544else) {
            try {
                try {
                    m37588extends();
                    try {
                    } catch (RuntimeException e) {
                        e = e;
                    }
                    try {
                        this.f33548for = org.chromium.net.impl.Ccase.m37641if().createRequestAdapter(this, this.f33549goto.m37631volatile(), this.f33540class, this.f33541const, this.f33551import, this.f33552native, this.f33549goto.m37629interface() || this.f33563throws != null, this.f33556public, this.f33557return, this.f33558static, this.f33560switch, this.f33546final);
                        this.f33549goto.m37628instanceof();
                        if (this.f33559super != null && !org.chromium.net.impl.Ccase.m37641if().setHttpMethod(this.f33548for, this, this.f33559super)) {
                            throw new IllegalArgumentException("Invalid http method " + this.f33559super);
                        }
                        Iterator<Map.Entry<String, String>> it = this.f33562throw.iterator();
                        boolean z = false;
                        do {
                            iHasNext = it.hasNext();
                            if (iHasNext == 0) {
                                CronetUploadDataStream cronetUploadDataStream = this.f33543default;
                                if (cronetUploadDataStream == null) {
                                    this.f33553new = true;
                                    b();
                                    return;
                                }
                                try {
                                    if (!z) {
                                        throw new IllegalArgumentException("Requests with upload data must have a Content-Type.");
                                    }
                                    this.f33553new = true;
                                    cronetUploadDataStream.m37581static(new Cdo());
                                    return;
                                } catch (RuntimeException e2) {
                                    e = e2;
                                    m37597private(iHasNext);
                                    throw e;
                                }
                            }
                            next = it.next();
                            if (next.getKey().equalsIgnoreCase("Content-Type") && !next.getValue().isEmpty()) {
                                z = true;
                            }
                        } while (org.chromium.net.impl.Ccase.m37641if().addRequestHeader(this.f33548for, this, next.getKey(), next.getValue()));
                        throw new IllegalArgumentException("Invalid header " + next.getKey() + "=" + next.getValue());
                    } catch (RuntimeException e3) {
                        e = e3;
                        iHasNext = 1;
                        m37597private(iHasNext);
                        throw e;
                    }
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

    @VisibleForTesting
    /* renamed from: continue, reason: not valid java name */
    public long m37610continue() {
        long j;
        synchronized (this.f33544else) {
            j = this.f33548for;
        }
        return j;
    }

    /* renamed from: default, reason: not valid java name */
    public void m37611default() {
        if (!this.f33550if && this.f33549goto.m37630transient(Thread.currentThread())) {
            throw new sm0();
        }
    }

    @Override // org.chromium.net.Creturn
    /* renamed from: do, reason: not valid java name */
    public void mo37612do() {
        synchronized (this.f33544else) {
            if (!m37602strictfp() && this.f33553new) {
                m37597private(2);
            }
        }
    }

    @Override // android.support.v4.cd2
    /* renamed from: else */
    public void mo856else(String str, String str2) {
        m37588extends();
        Objects.requireNonNull(str, "Invalid header name.");
        Objects.requireNonNull(str2, "Invalid header value.");
        this.f33562throw.add(new AbstractMap.SimpleImmutableEntry(str, str2));
    }

    @Override // org.chromium.net.Creturn
    /* renamed from: for, reason: not valid java name */
    public void mo37613for(Creturn.Cnew cnew) {
        VersionSafeCallbacks.UrlRequestStatusListener urlRequestStatusListener = new VersionSafeCallbacks.UrlRequestStatusListener(cnew);
        synchronized (this.f33544else) {
            if (this.f33548for != 0) {
                org.chromium.net.impl.Ccase.m37641if().getStatus(this.f33548for, this, urlRequestStatusListener);
            } else {
                m37591implements(new Cif(urlRequestStatusListener));
            }
        }
    }

    @Override // org.chromium.net.Creturn
    /* renamed from: if, reason: not valid java name */
    public void mo37614if() {
        synchronized (this.f33544else) {
            if (!this.f33564try) {
                throw new IllegalStateException("No redirect to follow.");
            }
            this.f33564try = false;
            if (m37602strictfp()) {
                return;
            }
            org.chromium.net.impl.Ccase.m37641if().followDeferredRedirect(this.f33548for, this);
        }
    }

    @Override // org.chromium.net.Creturn
    /* renamed from: new, reason: not valid java name */
    public boolean mo37615new() {
        boolean zM37602strictfp;
        synchronized (this.f33544else) {
            zM37602strictfp = m37602strictfp();
        }
        return zM37602strictfp;
    }

    @VisibleForTesting
    /* renamed from: synchronized, reason: not valid java name */
    public void m37616synchronized(Runnable runnable) {
        synchronized (this.f33544else) {
            this.f33542continue = runnable;
        }
    }

    @Override // android.support.v4.cd2
    /* renamed from: this */
    public void mo857this(String str) {
        m37588extends();
        Objects.requireNonNull(str, "Method is required.");
        this.f33559super = str;
    }

    /* renamed from: transient, reason: not valid java name */
    public void m37617transient(Throwable th) {
        jf jfVar = new jf("Exception received from UploadDataProvider", th);
        rv0.m7156if(CronetUrlRequestContext.f33583abstract, "Exception in upload method", th);
        m37584abstract(jfVar);
    }

    @Override // org.chromium.net.Creturn
    /* renamed from: try, reason: not valid java name */
    public void mo37618try(ByteBuffer byteBuffer) {
        bf1.m529if(byteBuffer);
        bf1.m528do(byteBuffer);
        synchronized (this.f33544else) {
            if (!this.f33538case) {
                throw new IllegalStateException("Unexpected read attempt.");
            }
            this.f33538case = false;
            if (m37602strictfp()) {
                return;
            }
            if (org.chromium.net.impl.Ccase.m37641if().readData(this.f33548for, this, byteBuffer, byteBuffer.position(), byteBuffer.limit())) {
                return;
            }
            this.f33538case = true;
            throw new IllegalArgumentException("Unable to call native read");
        }
    }
}
