package org.chromium.net.impl;

import android.annotation.SuppressLint;
import android.support.v4.ii0;
import android.support.v4.lo0;
import android.support.v4.r21;
import android.support.v4.rv0;
import android.support.v4.yc2;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;
import org.chromium.base.annotations.CalledByNative;
import org.chromium.net.Cpublic;
import org.chromium.net.impl.VersionSafeCallbacks;

@lo0("cronet")
@VisibleForTesting
/* loaded from: classes3.dex */
public final class CronetUploadDataStream extends yc2 {

    /* renamed from: final, reason: not valid java name */
    private static final String f33517final = "CronetUploadDataStream";

    /* renamed from: break, reason: not valid java name */
    @ii0("mLock")
    private long f33518break;

    /* renamed from: case, reason: not valid java name */
    private long f33519case;

    /* renamed from: class, reason: not valid java name */
    @ii0("mLock")
    private boolean f33521class;

    /* renamed from: const, reason: not valid java name */
    private Runnable f33522const;

    /* renamed from: do, reason: not valid java name */
    private final Executor f33523do;

    /* renamed from: for, reason: not valid java name */
    private final CronetUrlRequest f33525for;

    /* renamed from: goto, reason: not valid java name */
    private ByteBuffer f33526goto;

    /* renamed from: if, reason: not valid java name */
    private final VersionSafeCallbacks.Ccase f33527if;

    /* renamed from: new, reason: not valid java name */
    private long f33528new;

    /* renamed from: try, reason: not valid java name */
    private long f33530try;

    /* renamed from: else, reason: not valid java name */
    private final Runnable f33524else = new Cdo();

    /* renamed from: this, reason: not valid java name */
    private final Object f33529this = new Object();

    /* renamed from: catch, reason: not valid java name */
    @ii0("mLock")
    private int f33520catch = 3;

    public interface Natives {
        long attachUploadDataToRequest(CronetUploadDataStream cronetUploadDataStream, long j, long j2);

        long createAdapterForTesting(CronetUploadDataStream cronetUploadDataStream);

        long createUploadDataStreamForTesting(CronetUploadDataStream cronetUploadDataStream, long j, long j2);

        @r21("CronetUploadDataStreamAdapter")
        void destroy(long j);

        @r21("CronetUploadDataStreamAdapter")
        void onReadSucceeded(long j, CronetUploadDataStream cronetUploadDataStream, int i, boolean z);

        @r21("CronetUploadDataStreamAdapter")
        void onRewindSucceeded(long j, CronetUploadDataStream cronetUploadDataStream);
    }

    /* renamed from: org.chromium.net.impl.CronetUploadDataStream$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: if, reason: not valid java name */
        public static final /* synthetic */ boolean f33531if = false;

        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (CronetUploadDataStream.this.f33529this) {
                if (CronetUploadDataStream.this.f33518break == 0) {
                    return;
                }
                CronetUploadDataStream.this.m37577throw(3);
                if (CronetUploadDataStream.this.f33526goto == null) {
                    throw new IllegalStateException("Unexpected readData call. Buffer is null");
                }
                CronetUploadDataStream.this.f33520catch = 0;
                try {
                    CronetUploadDataStream.this.m37575super();
                    VersionSafeCallbacks.Ccase ccase = CronetUploadDataStream.this.f33527if;
                    CronetUploadDataStream cronetUploadDataStream = CronetUploadDataStream.this;
                    ccase.mo37421if(cronetUploadDataStream, cronetUploadDataStream.f33526goto);
                } catch (Exception e) {
                    CronetUploadDataStream.this.m37574return(e);
                }
            }
        }
    }

    /* renamed from: org.chromium.net.impl.CronetUploadDataStream$for, reason: invalid class name */
    public class Cfor implements Runnable {
        public Cfor() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                CronetUploadDataStream.this.m37575super();
                CronetUploadDataStream.this.f33527if.close();
            } catch (Exception e) {
                rv0.m7156if(CronetUploadDataStream.f33517final, "Exception thrown when closing", e);
            }
        }
    }

    /* renamed from: org.chromium.net.impl.CronetUploadDataStream$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (CronetUploadDataStream.this.f33529this) {
                if (CronetUploadDataStream.this.f33518break == 0) {
                    return;
                }
                CronetUploadDataStream.this.m37577throw(3);
                CronetUploadDataStream.this.f33520catch = 1;
                try {
                    CronetUploadDataStream.this.m37575super();
                    CronetUploadDataStream.this.f33527if.mo37420for(CronetUploadDataStream.this);
                } catch (Exception e) {
                    CronetUploadDataStream.this.m37574return(e);
                }
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: org.chromium.net.impl.CronetUploadDataStream$new, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cnew {
        public static final int V6 = 0;
        public static final int W6 = 1;
        public static final int X6 = 2;
        public static final int Y6 = 3;
    }

    public CronetUploadDataStream(Cpublic cpublic, Executor executor, CronetUrlRequest cronetUrlRequest) {
        this.f33523do = executor;
        this.f33527if = new VersionSafeCallbacks.Ccase(cpublic);
        this.f33525for = cronetUrlRequest;
    }

    /* renamed from: import, reason: not valid java name */
    private void m37572import() {
        synchronized (this.f33529this) {
            if (this.f33520catch == 0) {
                this.f33521class = true;
                return;
            }
            if (this.f33518break == 0) {
                return;
            }
            org.chromium.net.impl.Cnew.m37693if().destroy(this.f33518break);
            this.f33518break = 0L;
            Runnable runnable = this.f33522const;
            if (runnable != null) {
                runnable.run();
            }
            m37581static(new Cfor());
        }
    }

    /* renamed from: native, reason: not valid java name */
    private void m37573native() {
        synchronized (this.f33529this) {
            if (this.f33520catch == 0) {
                throw new IllegalStateException("Method should not be called when read has not completed.");
            }
            if (this.f33521class) {
                m37572import();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: return, reason: not valid java name */
    public void m37574return(Throwable th) {
        boolean z;
        synchronized (this.f33529this) {
            int i = this.f33520catch;
            if (i == 3) {
                throw new IllegalStateException("There is no read or rewind or length check in progress.");
            }
            z = i == 2;
            this.f33520catch = 3;
            this.f33526goto = null;
            m37573native();
        }
        if (z) {
            try {
                this.f33527if.close();
            } catch (Exception e) {
                rv0.m7156if(f33517final, "Failure closing data provider", e);
            }
        }
        this.f33525for.m37617transient(th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: super, reason: not valid java name */
    public void m37575super() {
        this.f33525for.m37611default();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ii0("mLock")
    /* renamed from: throw, reason: not valid java name */
    public void m37577throw(int i) {
        if (this.f33520catch == i) {
            return;
        }
        throw new IllegalStateException("Expected " + i + ", but was " + this.f33520catch);
    }

    @Override // android.support.v4.yc2
    /* renamed from: do */
    public void mo9806do(Exception exc) {
        synchronized (this.f33529this) {
            m37577throw(0);
            m37574return(exc);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public void m37579final(long j) {
        synchronized (this.f33529this) {
            this.f33518break = org.chromium.net.impl.Cnew.m37693if().attachUploadDataToRequest(this, j, this.f33528new);
        }
    }

    @Override // android.support.v4.yc2
    /* renamed from: for */
    public void mo9807for(Exception exc) {
        synchronized (this.f33529this) {
            m37577throw(1);
            m37574return(exc);
        }
    }

    @Override // android.support.v4.yc2
    @SuppressLint({"DefaultLocale"})
    /* renamed from: if */
    public void mo9808if(boolean z) {
        synchronized (this.f33529this) {
            m37577throw(0);
            if (this.f33519case != this.f33526goto.limit()) {
                throw new IllegalStateException("ByteBuffer limit changed");
            }
            if (z && this.f33528new >= 0) {
                throw new IllegalArgumentException("Non-chunked upload can't have last chunk");
            }
            int iPosition = this.f33526goto.position();
            long j = this.f33530try - iPosition;
            this.f33530try = j;
            if (j < 0 && this.f33528new >= 0) {
                throw new IllegalArgumentException(String.format("Read upload data length %d exceeds expected length %d", Long.valueOf(this.f33528new - this.f33530try), Long.valueOf(this.f33528new)));
            }
            this.f33526goto.position(0);
            this.f33526goto = null;
            this.f33520catch = 3;
            m37573native();
            if (this.f33518break == 0) {
                return;
            }
            org.chromium.net.impl.Cnew.m37693if().onReadSucceeded(this.f33518break, this, iPosition, z);
        }
    }

    @Override // android.support.v4.yc2
    /* renamed from: new */
    public void mo9809new() {
        synchronized (this.f33529this) {
            m37577throw(1);
            this.f33520catch = 3;
            this.f33530try = this.f33528new;
            if (this.f33518break == 0) {
                return;
            }
            org.chromium.net.impl.Cnew.m37693if().onRewindSucceeded(this.f33518break, this);
        }
    }

    @CalledByNative
    public void onUploadDataStreamDestroyed() {
        m37572import();
    }

    /* renamed from: public, reason: not valid java name */
    public void m37580public() {
        synchronized (this.f33529this) {
            this.f33520catch = 2;
        }
        try {
            this.f33525for.m37611default();
            long jMo37419do = this.f33527if.mo37419do();
            this.f33528new = jMo37419do;
            this.f33530try = jMo37419do;
        } catch (Throwable th) {
            m37574return(th);
        }
        synchronized (this.f33529this) {
            this.f33520catch = 3;
        }
    }

    @CalledByNative
    public void readData(ByteBuffer byteBuffer) {
        this.f33526goto = byteBuffer;
        this.f33519case = byteBuffer.limit();
        m37581static(this.f33524else);
    }

    @CalledByNative
    public void rewind() {
        m37581static(new Cif());
    }

    /* renamed from: static, reason: not valid java name */
    public void m37581static(Runnable runnable) {
        try {
            this.f33523do.execute(runnable);
        } catch (Throwable th) {
            this.f33525for.m37617transient(th);
        }
    }

    @VisibleForTesting
    /* renamed from: switch, reason: not valid java name */
    public void m37582switch(Runnable runnable) {
        this.f33522const = runnable;
    }

    @VisibleForTesting
    /* renamed from: while, reason: not valid java name */
    public long m37583while() throws IOException {
        long jCreateUploadDataStreamForTesting;
        synchronized (this.f33529this) {
            this.f33518break = org.chromium.net.impl.Cnew.m37693if().createAdapterForTesting(this);
            long jMo37419do = this.f33527if.mo37419do();
            this.f33528new = jMo37419do;
            this.f33530try = jMo37419do;
            jCreateUploadDataStreamForTesting = org.chromium.net.impl.Cnew.m37693if().createUploadDataStreamForTesting(this, this.f33528new, this.f33518break);
        }
        return jCreateUploadDataStreamForTesting;
    }
}
