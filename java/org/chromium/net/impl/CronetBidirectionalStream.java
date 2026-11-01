package org.chromium.net.impl;

import android.support.v4.bf1;
import android.support.v4.cn1;
import android.support.v4.ii0;
import android.support.v4.jf;
import android.support.v4.lo0;
import android.support.v4.r21;
import android.support.v4.rs;
import android.support.v4.rv0;
import android.support.v4.s8;
import android.support.v4.ss;
import android.support.v4.ts;
import android.support.v4.xi1;
import androidx.annotation.VisibleForTesting;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import org.chromium.base.annotations.CalledByNative;
import org.chromium.net.Cif;
import org.chromium.net.Cnative;
import org.chromium.net.Cstatic;
import org.chromium.net.impl.Cthis;
import org.chromium.net.impl.VersionSafeCallbacks;

@lo0("cronet")
@VisibleForTesting
/* loaded from: classes3.dex */
public class CronetBidirectionalStream extends org.chromium.net.Ctry {

    /* renamed from: finally, reason: not valid java name */
    public static final /* synthetic */ boolean f33468finally = false;

    /* renamed from: break, reason: not valid java name */
    private final boolean f33469break;

    /* renamed from: case, reason: not valid java name */
    private final String f33470case;

    /* renamed from: catch, reason: not valid java name */
    private final int f33471catch;

    /* renamed from: class, reason: not valid java name */
    private final boolean f33472class;

    /* renamed from: const, reason: not valid java name */
    private final int f33473const;

    /* renamed from: default, reason: not valid java name */
    private Ccase f33474default;

    /* renamed from: do, reason: not valid java name */
    private final CronetUrlRequestContext f33475do;

    /* renamed from: else, reason: not valid java name */
    private final String[] f33476else;

    /* renamed from: extends, reason: not valid java name */
    private Runnable f33477extends;

    /* renamed from: final, reason: not valid java name */
    private rs f33478final;

    /* renamed from: for, reason: not valid java name */
    private final VersionSafeCallbacks.Cdo f33479for;

    /* renamed from: goto, reason: not valid java name */
    private final boolean f33480goto;

    /* renamed from: if, reason: not valid java name */
    private final Executor f33481if;

    /* renamed from: import, reason: not valid java name */
    @ii0("mNativeStreamLock")
    private boolean f33482import;

    /* renamed from: native, reason: not valid java name */
    @ii0("mNativeStreamLock")
    private boolean f33483native;

    /* renamed from: new, reason: not valid java name */
    private final String f33484new;

    /* renamed from: public, reason: not valid java name */
    @ii0("mNativeStreamLock")
    private Cnative.Cif f33485public;

    /* renamed from: return, reason: not valid java name */
    @ii0("mNativeStreamLock")
    private long f33486return;

    /* renamed from: this, reason: not valid java name */
    private final Collection<Object> f33490this;

    /* renamed from: throws, reason: not valid java name */
    private Cthis f33492throws;

    /* renamed from: try, reason: not valid java name */
    private final int f33493try;

    /* renamed from: super, reason: not valid java name */
    private final Object f33488super = new Object();

    /* renamed from: static, reason: not valid java name */
    @ii0("mNativeStreamLock")
    private int f33487static = 0;

    /* renamed from: switch, reason: not valid java name */
    @ii0("mNativeStreamLock")
    private int f33489switch = 0;

    /* renamed from: throw, reason: not valid java name */
    @ii0("mNativeStreamLock")
    private LinkedList<ByteBuffer> f33491throw = new LinkedList<>();

    /* renamed from: while, reason: not valid java name */
    @ii0("mNativeStreamLock")
    private LinkedList<ByteBuffer> f33494while = new LinkedList<>();

    public interface Natives {
        long createBidirectionalStream(CronetBidirectionalStream cronetBidirectionalStream, long j, boolean z, boolean z2, boolean z3, int i, boolean z4, int i2);

        @r21("CronetBidirectionalStreamAdapter")
        void destroy(long j, CronetBidirectionalStream cronetBidirectionalStream, boolean z);

        @r21("CronetBidirectionalStreamAdapter")
        boolean readData(long j, CronetBidirectionalStream cronetBidirectionalStream, ByteBuffer byteBuffer, int i, int i2);

        @r21("CronetBidirectionalStreamAdapter")
        void sendRequestHeaders(long j, CronetBidirectionalStream cronetBidirectionalStream);

        @r21("CronetBidirectionalStreamAdapter")
        int start(long j, CronetBidirectionalStream cronetBidirectionalStream, String str, int i, String str2, String[] strArr, boolean z);

        @r21("CronetBidirectionalStreamAdapter")
        boolean writevData(long j, CronetBidirectionalStream cronetBidirectionalStream, ByteBuffer[] byteBufferArr, int[] iArr, int[] iArr2, boolean z);
    }

    /* renamed from: org.chromium.net.impl.CronetBidirectionalStream$case, reason: invalid class name */
    public final class Ccase implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public ByteBuffer f33495do;

        /* renamed from: if, reason: not valid java name */
        public boolean f33497if;

        private Ccase() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ByteBuffer byteBuffer = this.f33495do;
                this.f33495do = null;
                synchronized (CronetBidirectionalStream.this.f33488super) {
                    if (CronetBidirectionalStream.this.m37530abstract()) {
                        return;
                    }
                    boolean z = false;
                    if (this.f33497if) {
                        CronetBidirectionalStream.this.f33487static = 4;
                        if (CronetBidirectionalStream.this.f33489switch == 10) {
                            z = true;
                        }
                    } else {
                        CronetBidirectionalStream.this.f33487static = 2;
                    }
                    VersionSafeCallbacks.Cdo cdo = CronetBidirectionalStream.this.f33479for;
                    CronetBidirectionalStream cronetBidirectionalStream = CronetBidirectionalStream.this;
                    cdo.mo37525for(cronetBidirectionalStream, cronetBidirectionalStream.f33492throws, byteBuffer, this.f33497if);
                    if (z) {
                        CronetBidirectionalStream.this.m37535continue();
                    }
                }
            } catch (Exception e) {
                CronetBidirectionalStream.this.m37550strictfp(e);
            }
        }

        public /* synthetic */ Ccase(CronetBidirectionalStream cronetBidirectionalStream, Cdo cdo) {
            this();
        }
    }

    /* renamed from: org.chromium.net.impl.CronetBidirectionalStream$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ boolean f33498do;

        public Cdo(boolean z) {
            this.f33498do = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (CronetBidirectionalStream.this.f33488super) {
                if (CronetBidirectionalStream.this.m37530abstract()) {
                    return;
                }
                CronetBidirectionalStream.this.f33483native = this.f33498do;
                CronetBidirectionalStream.this.f33487static = 2;
                if (CronetBidirectionalStream.m37555throws(CronetBidirectionalStream.this.f33470case) || !CronetBidirectionalStream.this.f33483native) {
                    CronetBidirectionalStream.this.f33489switch = 8;
                } else {
                    CronetBidirectionalStream.this.f33489switch = 10;
                }
                try {
                    CronetBidirectionalStream.this.f33479for.mo37522case(CronetBidirectionalStream.this);
                } catch (Exception e) {
                    CronetBidirectionalStream.this.m37550strictfp(e);
                }
            }
        }
    }

    /* renamed from: org.chromium.net.impl.CronetBidirectionalStream$else, reason: invalid class name */
    public final class Celse implements Runnable {

        /* renamed from: do, reason: not valid java name */
        private ByteBuffer f33500do;

        /* renamed from: if, reason: not valid java name */
        private final boolean f33502if;

        public Celse(ByteBuffer byteBuffer, boolean z) {
            this.f33500do = byteBuffer;
            this.f33502if = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ByteBuffer byteBuffer = this.f33500do;
                this.f33500do = null;
                synchronized (CronetBidirectionalStream.this.f33488super) {
                    if (CronetBidirectionalStream.this.m37530abstract()) {
                        return;
                    }
                    boolean z = false;
                    if (this.f33502if) {
                        CronetBidirectionalStream.this.f33489switch = 10;
                        if (CronetBidirectionalStream.this.f33487static == 4) {
                            z = true;
                        }
                    }
                    VersionSafeCallbacks.Cdo cdo = CronetBidirectionalStream.this.f33479for;
                    CronetBidirectionalStream cronetBidirectionalStream = CronetBidirectionalStream.this;
                    cdo.mo37526goto(cronetBidirectionalStream, cronetBidirectionalStream.f33492throws, byteBuffer, this.f33502if);
                    if (z) {
                        CronetBidirectionalStream.this.m37535continue();
                    }
                }
            } catch (Exception e) {
                CronetBidirectionalStream.this.m37550strictfp(e);
            }
        }
    }

    /* renamed from: org.chromium.net.impl.CronetBidirectionalStream$for, reason: invalid class name */
    public class Cfor implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cstatic.Cdo f33503do;

        public Cfor(Cstatic.Cdo cdo) {
            this.f33503do = cdo;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (CronetBidirectionalStream.this.f33488super) {
                if (CronetBidirectionalStream.this.m37530abstract()) {
                    return;
                }
                try {
                    VersionSafeCallbacks.Cdo cdo = CronetBidirectionalStream.this.f33479for;
                    CronetBidirectionalStream cronetBidirectionalStream = CronetBidirectionalStream.this;
                    cdo.mo37529try(cronetBidirectionalStream, cronetBidirectionalStream.f33492throws, this.f33503do);
                } catch (Exception e) {
                    CronetBidirectionalStream.this.m37550strictfp(e);
                }
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: org.chromium.net.impl.CronetBidirectionalStream$goto, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cgoto {
        public static final int K6 = 0;
        public static final int L6 = 1;
        public static final int M6 = 2;
        public static final int N6 = 3;
        public static final int O6 = 4;
        public static final int P6 = 5;
        public static final int Q6 = 6;
        public static final int R6 = 7;
        public static final int S6 = 8;
        public static final int T6 = 9;
        public static final int U6 = 10;
    }

    /* renamed from: org.chromium.net.impl.CronetBidirectionalStream$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (CronetBidirectionalStream.this.f33488super) {
                if (CronetBidirectionalStream.this.m37530abstract()) {
                    return;
                }
                CronetBidirectionalStream.this.f33487static = 2;
                try {
                    VersionSafeCallbacks.Cdo cdo = CronetBidirectionalStream.this.f33479for;
                    CronetBidirectionalStream cronetBidirectionalStream = CronetBidirectionalStream.this;
                    cdo.mo37528new(cronetBidirectionalStream, cronetBidirectionalStream.f33492throws);
                } catch (Exception e) {
                    CronetBidirectionalStream.this.m37550strictfp(e);
                }
            }
        }
    }

    /* renamed from: org.chromium.net.impl.CronetBidirectionalStream$new, reason: invalid class name */
    public class Cnew implements Runnable {
        public Cnew() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                VersionSafeCallbacks.Cdo cdo = CronetBidirectionalStream.this.f33479for;
                CronetBidirectionalStream cronetBidirectionalStream = CronetBidirectionalStream.this;
                cdo.mo37523do(cronetBidirectionalStream, cronetBidirectionalStream.f33492throws);
            } catch (Exception e) {
                rv0.m7156if(CronetUrlRequestContext.f33583abstract, "Exception in onCanceled method", e);
            }
        }
    }

    /* renamed from: org.chromium.net.impl.CronetBidirectionalStream$try, reason: invalid class name */
    public class Ctry implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ rs f33507do;

        public Ctry(rs rsVar) {
            this.f33507do = rsVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            CronetBidirectionalStream.this.m37538extends(this.f33507do);
        }
    }

    public CronetBidirectionalStream(CronetUrlRequestContext cronetUrlRequestContext, String str, int i, Cif.AbstractC0480if abstractC0480if, Executor executor, String str2, List<Map.Entry<String, String>> list, boolean z, Collection<Object> collection, boolean z2, int i2, boolean z3, int i3) {
        this.f33475do = cronetUrlRequestContext;
        this.f33484new = str;
        this.f33493try = m37549static(i);
        this.f33479for = new VersionSafeCallbacks.Cdo(abstractC0480if);
        this.f33481if = executor;
        this.f33470case = str2;
        this.f33476else = m37541implements(list);
        this.f33480goto = z;
        this.f33490this = collection;
        this.f33469break = z2;
        this.f33471catch = i2;
        this.f33472class = z3;
        this.f33473const = i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ii0("mNativeStreamLock")
    /* renamed from: abstract, reason: not valid java name */
    public boolean m37530abstract() {
        return this.f33487static != 0 && this.f33486return == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: continue, reason: not valid java name */
    public void m37535continue() {
        synchronized (this.f33488super) {
            if (m37530abstract()) {
                return;
            }
            if (this.f33489switch == 10 && this.f33487static == 4) {
                this.f33489switch = 7;
                this.f33487static = 7;
                m37552switch(false);
                try {
                    this.f33479for.mo37524else(this, this.f33492throws);
                } catch (Exception e) {
                    rv0.m7156if(CronetUrlRequestContext.f33583abstract, "Exception in onSucceeded method", e);
                }
            }
        }
    }

    /* renamed from: default, reason: not valid java name */
    private void m37536default(rs rsVar) {
        m37556volatile(new Ctry(rsVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: extends, reason: not valid java name */
    public void m37538extends(rs rsVar) {
        this.f33478final = rsVar;
        synchronized (this.f33488super) {
            if (m37530abstract()) {
                return;
            }
            this.f33489switch = 6;
            this.f33487static = 6;
            m37552switch(false);
            try {
                this.f33479for.mo37527if(this, this.f33492throws, rsVar);
            } catch (Exception e) {
                rv0.m7156if(CronetUrlRequestContext.f33583abstract, "Exception notifying of failed request", e);
            }
        }
    }

    /* renamed from: implements, reason: not valid java name */
    private static String[] m37541implements(List<Map.Entry<String, String>> list) {
        String[] strArr = new String[list.size() * 2];
        int i = 0;
        for (Map.Entry<String, String> entry : list) {
            int i2 = i + 1;
            strArr[i] = entry.getKey();
            i = i2 + 1;
            strArr[i2] = entry.getValue();
        }
        return strArr;
    }

    /* renamed from: interface, reason: not valid java name */
    private Cthis m37543interface(int i, String str, String[] strArr, long j) {
        return new Cthis(Arrays.asList(this.f33484new), i, "", m37545private(strArr), false, str, null, j);
    }

    @CalledByNative
    private void onCanceled() {
        m37556volatile(new Cnew());
    }

    @CalledByNative
    private void onError(int i, int i2, int i3, String str, long j) {
        Cthis cthis = this.f33492throws;
        if (cthis != null) {
            cthis.m37697catch(j);
        }
        if (i == 10 || i == 3) {
            m37536default(new xi1("Exception in BidirectionalStream: " + str, i, i2, i3));
            return;
        }
        m37536default(new s8("Exception in BidirectionalStream: " + str, i, i2));
    }

    @CalledByNative
    private void onMetricsCollected(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, boolean z, long j14, long j15) {
        synchronized (this.f33488super) {
            if (this.f33485public != null) {
                throw new IllegalStateException("Metrics collection should only happen once.");
            }
            ts tsVar = new ts(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, z, j14, j15);
            this.f33485public = tsVar;
            int i = this.f33487static;
            this.f33475do.a(new cn1(this.f33484new, this.f33490this, tsVar, i == 7 ? 0 : i == 5 ? 2 : 1, this.f33492throws, this.f33478final));
        }
    }

    @CalledByNative
    private void onReadCompleted(ByteBuffer byteBuffer, int i, int i2, int i3, long j) {
        int i4;
        this.f33492throws.m37697catch(j);
        if (byteBuffer.position() != i2 || byteBuffer.limit() != i3) {
            m37536default(new ss("ByteBuffer modified externally during read", null));
            return;
        }
        if (i < 0 || (i4 = i2 + i) > i3) {
            m37536default(new ss("Invalid number of bytes read", null));
            return;
        }
        byteBuffer.position(i4);
        Ccase ccase = this.f33474default;
        ccase.f33495do = byteBuffer;
        ccase.f33497if = i == 0;
        m37556volatile(ccase);
    }

    @CalledByNative
    private void onResponseHeadersReceived(int i, String str, String[] strArr, long j) {
        try {
            this.f33492throws = m37543interface(i, str, strArr, j);
            m37556volatile(new Cif());
        } catch (Exception unused) {
            m37536default(new ss("Cannot prepare ResponseInfo", null));
        }
    }

    @CalledByNative
    private void onResponseTrailersReceived(String[] strArr) {
        m37556volatile(new Cfor(new Cthis.Cdo(m37545private(strArr))));
    }

    @CalledByNative
    private void onStreamReady(boolean z) {
        m37556volatile(new Cdo(z));
    }

    @CalledByNative
    private void onWritevCompleted(ByteBuffer[] byteBufferArr, int[] iArr, int[] iArr2, boolean z) {
        synchronized (this.f33488super) {
            if (m37530abstract()) {
                return;
            }
            this.f33489switch = 8;
            if (!this.f33494while.isEmpty()) {
                m37546protected();
            }
            for (int i = 0; i < byteBufferArr.length; i++) {
                ByteBuffer byteBuffer = byteBufferArr[i];
                if (byteBuffer.position() != iArr[i] || byteBuffer.limit() != iArr2[i]) {
                    m37536default(new ss("ByteBuffer modified externally during write", null));
                    return;
                }
                byteBuffer.position(byteBuffer.limit());
                boolean z2 = true;
                if (!z || i != byteBufferArr.length - 1) {
                    z2 = false;
                }
                m37556volatile(new Celse(byteBuffer, z2));
            }
        }
    }

    /* renamed from: private, reason: not valid java name */
    private static ArrayList<Map.Entry<String, String>> m37545private(String[] strArr) {
        ArrayList<Map.Entry<String, String>> arrayList = new ArrayList<>(strArr.length / 2);
        for (int i = 0; i < strArr.length; i += 2) {
            arrayList.add(new AbstractMap.SimpleImmutableEntry(strArr[i], strArr[i + 1]));
        }
        return arrayList;
    }

    /* renamed from: protected, reason: not valid java name */
    private void m37546protected() {
        int size = this.f33494while.size();
        ByteBuffer[] byteBufferArr = new ByteBuffer[size];
        int[] iArr = new int[size];
        int[] iArr2 = new int[size];
        for (int i = 0; i < size; i++) {
            ByteBuffer byteBufferPoll = this.f33494while.poll();
            byteBufferArr[i] = byteBufferPoll;
            iArr[i] = byteBufferPoll.position();
            iArr2[i] = byteBufferPoll.limit();
        }
        this.f33489switch = 9;
        this.f33483native = true;
        if (org.chromium.net.impl.Cdo.m37644if().writevData(this.f33486return, this, byteBufferArr, iArr, iArr2, this.f33482import && this.f33491throw.isEmpty())) {
            return;
        }
        this.f33489switch = 8;
        throw new IllegalArgumentException("Unable to call native writev.");
    }

    /* renamed from: static, reason: not valid java name */
    private static int m37549static(int i) {
        if (i == 0) {
            return 1;
        }
        if (i == 1) {
            return 2;
        }
        if (i == 2) {
            return 3;
        }
        if (i == 3) {
            return 4;
        }
        if (i == 4) {
            return 5;
        }
        throw new IllegalArgumentException("Invalid stream priority.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: strictfp, reason: not valid java name */
    public void m37550strictfp(Exception exc) {
        jf jfVar = new jf("CalledByNative method has thrown an exception", exc);
        rv0.m7156if(CronetUrlRequestContext.f33583abstract, "Exception in CalledByNative method", exc);
        m37538extends(jfVar);
    }

    @ii0("mNativeStreamLock")
    /* renamed from: switch, reason: not valid java name */
    private void m37552switch(boolean z) {
        rv0.m7155goto(CronetUrlRequestContext.f33583abstract, "destroyNativeStreamLocked " + toString(), new Object[0]);
        if (this.f33486return == 0) {
            return;
        }
        org.chromium.net.impl.Cdo.m37644if().destroy(this.f33486return, this, z);
        this.f33475do.m37627implements();
        this.f33486return = 0L;
        Runnable runnable = this.f33477extends;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throws, reason: not valid java name */
    public static boolean m37555throws(String str) {
        return (str.equals("GET") || str.equals("HEAD")) ? false : true;
    }

    /* renamed from: volatile, reason: not valid java name */
    private void m37556volatile(Runnable runnable) {
        try {
            this.f33481if.execute(runnable);
        } catch (RejectedExecutionException e) {
            rv0.m7156if(CronetUrlRequestContext.f33583abstract, "Exception posting task to executor", e);
            synchronized (this.f33488super) {
                this.f33489switch = 6;
                this.f33487static = 6;
                m37552switch(false);
            }
        }
    }

    @Override // org.chromium.net.Cif
    /* renamed from: case */
    public void mo37516case(ByteBuffer byteBuffer, boolean z) {
        synchronized (this.f33488super) {
            bf1.m528do(byteBuffer);
            if (!byteBuffer.hasRemaining() && !z) {
                throw new IllegalArgumentException("Empty buffer before end of stream.");
            }
            if (this.f33482import) {
                throw new IllegalArgumentException("Write after writing end of stream.");
            }
            if (m37530abstract()) {
                return;
            }
            this.f33491throw.add(byteBuffer);
            if (z) {
                this.f33482import = true;
            }
        }
    }

    @Override // org.chromium.net.Cif
    /* renamed from: do */
    public void mo37517do() {
        synchronized (this.f33488super) {
            if (!m37530abstract() && this.f33487static != 0) {
                this.f33489switch = 5;
                this.f33487static = 5;
                m37552switch(true);
            }
        }
    }

    @VisibleForTesting
    /* renamed from: finally, reason: not valid java name */
    public List<ByteBuffer> m37558finally() {
        LinkedList linkedList;
        synchronized (this.f33488super) {
            linkedList = new LinkedList();
            Iterator<ByteBuffer> it = this.f33494while.iterator();
            while (it.hasNext()) {
                linkedList.add(it.next().asReadOnlyBuffer());
            }
        }
        return linkedList;
    }

    @Override // org.chromium.net.Cif
    /* renamed from: for */
    public boolean mo37518for() {
        boolean zM37530abstract;
        synchronized (this.f33488super) {
            zM37530abstract = m37530abstract();
        }
        return zM37530abstract;
    }

    @Override // org.chromium.net.Cif
    /* renamed from: if */
    public void mo37519if() {
        int i;
        synchronized (this.f33488super) {
            if (!m37530abstract() && ((i = this.f33489switch) == 8 || i == 9)) {
                if (this.f33491throw.isEmpty() && this.f33494while.isEmpty()) {
                    if (!this.f33483native) {
                        this.f33483native = true;
                        org.chromium.net.impl.Cdo.m37644if().sendRequestHeaders(this.f33486return, this);
                        if (!m37555throws(this.f33470case)) {
                            this.f33489switch = 10;
                        }
                    }
                    return;
                }
                if (!this.f33491throw.isEmpty()) {
                    this.f33494while.addAll(this.f33491throw);
                    this.f33491throw.clear();
                }
                if (this.f33489switch == 9) {
                    return;
                }
                m37546protected();
            }
        }
    }

    @Override // org.chromium.net.Cif
    /* renamed from: new */
    public void mo37520new(ByteBuffer byteBuffer) {
        synchronized (this.f33488super) {
            bf1.m529if(byteBuffer);
            bf1.m528do(byteBuffer);
            if (this.f33487static != 2) {
                throw new IllegalStateException("Unexpected read attempt.");
            }
            if (m37530abstract()) {
                return;
            }
            if (this.f33474default == null) {
                this.f33474default = new Ccase(this, null);
            }
            this.f33487static = 3;
            if (org.chromium.net.impl.Cdo.m37644if().readData(this.f33486return, this, byteBuffer, byteBuffer.position(), byteBuffer.limit())) {
                return;
            }
            this.f33487static = 2;
            throw new IllegalArgumentException("Unable to call native read");
        }
    }

    @VisibleForTesting
    /* renamed from: package, reason: not valid java name */
    public List<ByteBuffer> m37559package() {
        LinkedList linkedList;
        synchronized (this.f33488super) {
            linkedList = new LinkedList();
            Iterator<ByteBuffer> it = this.f33491throw.iterator();
            while (it.hasNext()) {
                linkedList.add(it.next().asReadOnlyBuffer());
            }
        }
        return linkedList;
    }

    @VisibleForTesting
    /* renamed from: transient, reason: not valid java name */
    public void m37560transient(Runnable runnable) {
        this.f33477extends = runnable;
    }

    @Override // org.chromium.net.Cif
    /* renamed from: try */
    public void mo37521try() {
        synchronized (this.f33488super) {
            if (this.f33487static != 0) {
                throw new IllegalStateException("Stream is already started.");
            }
            try {
                this.f33486return = org.chromium.net.impl.Cdo.m37644if().createBidirectionalStream(this, this.f33475do.m37631volatile(), !this.f33480goto, this.f33475do.m37629interface(), this.f33469break, this.f33471catch, this.f33472class, this.f33473const);
                this.f33475do.m37628instanceof();
                Natives nativesM37644if = org.chromium.net.impl.Cdo.m37644if();
                long j = this.f33486return;
                String str = this.f33484new;
                int i = this.f33493try;
                String str2 = this.f33470case;
                int iStart = nativesM37644if.start(j, this, str, i, str2, this.f33476else, !m37555throws(str2));
                if (iStart == -1) {
                    throw new IllegalArgumentException("Invalid http method " + this.f33470case);
                }
                if (iStart > 0) {
                    int i2 = iStart - 1;
                    throw new IllegalArgumentException("Invalid header " + this.f33476else[i2] + "=" + this.f33476else[i2 + 1]);
                }
                this.f33489switch = 1;
                this.f33487static = 1;
            } catch (RuntimeException e) {
                m37552switch(false);
                throw e;
            }
        }
    }
}
