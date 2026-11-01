package org.bouncycastle.crypto.tls;

import android.support.v4.hn0;
import android.support.v4.n72;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

/* renamed from: org.bouncycastle.crypto.tls.static, reason: invalid class name */
/* loaded from: classes3.dex */
class Cstatic {

    /* renamed from: break, reason: not valid java name */
    private static final int f30749break = 12;

    /* renamed from: this, reason: not valid java name */
    private static final int f30750this = 16;

    /* renamed from: do, reason: not valid java name */
    private Creturn f30752do;

    /* renamed from: if, reason: not valid java name */
    private TlsHandshakeHash f30756if;

    /* renamed from: for, reason: not valid java name */
    private Hashtable f30754for = new Hashtable();

    /* renamed from: new, reason: not valid java name */
    private Hashtable f30757new = null;

    /* renamed from: try, reason: not valid java name */
    private Vector f30758try = new Vector();

    /* renamed from: case, reason: not valid java name */
    private boolean f30751case = true;

    /* renamed from: else, reason: not valid java name */
    private int f30753else = 0;

    /* renamed from: goto, reason: not valid java name */
    private int f30755goto = 0;

    /* renamed from: org.bouncycastle.crypto.tls.static$do, reason: invalid class name */
    public class Cdo implements DTLSHandshakeRetransmit {
        public Cdo() {
        }

        @Override // org.bouncycastle.crypto.tls.DTLSHandshakeRetransmit
        public void receivedHandshakeRecord(int i, byte[] bArr, int i2, int i3) throws IOException {
            Cstatic.this.m34332catch(0, i, bArr, i2, i3);
        }
    }

    /* renamed from: org.bouncycastle.crypto.tls.static$for, reason: invalid class name */
    public static class Cfor extends ByteArrayOutputStream {
        public Cfor(int i) {
            super(i);
        }

        /* renamed from: do, reason: not valid java name */
        public void m34352do(Creturn creturn) throws IOException {
            creturn.send(((ByteArrayOutputStream) this).buf, 0, ((ByteArrayOutputStream) this).count);
            ((ByteArrayOutputStream) this).buf = null;
        }
    }

    /* renamed from: org.bouncycastle.crypto.tls.static$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private final int f30760do;

        /* renamed from: for, reason: not valid java name */
        private final byte[] f30761for;

        /* renamed from: if, reason: not valid java name */
        private final short f30762if;

        private Cif(int i, short s, byte[] bArr) {
            this.f30760do = i;
            this.f30762if = s;
            this.f30761for = bArr;
        }

        public /* synthetic */ Cif(int i, short s, byte[] bArr, Cdo cdo) {
            this(i, s, bArr);
        }

        /* renamed from: do, reason: not valid java name */
        public byte[] m34353do() {
            return this.f30761for;
        }

        /* renamed from: for, reason: not valid java name */
        public short m34354for() {
            return this.f30762if;
        }

        /* renamed from: if, reason: not valid java name */
        public int m34355if() {
            return this.f30760do;
        }
    }

    public Cstatic(TlsContext tlsContext, Creturn creturn) {
        this.f30752do = creturn;
        Ccontinue ccontinue = new Ccontinue();
        this.f30756if = ccontinue;
        ccontinue.init(tlsContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public boolean m34332catch(int i, int i2, byte[] bArr, int i3, int i4) throws IOException {
        int iX;
        int iX2;
        Cpublic cpublic;
        boolean z = false;
        int i5 = i3;
        int i6 = i4;
        boolean z2 = false;
        while (i6 >= 12 && i6 >= (iX2 = (iX = l0.X(bArr, i5 + 9)) + 12)) {
            int iX3 = l0.X(bArr, i5 + 1);
            int iX4 = l0.X(bArr, i5 + 6);
            if (iX4 + iX > iX3) {
                break;
            }
            short sD0 = l0.d0(bArr, i5 + 0);
            if (i2 != (sD0 == 20 ? 1 : 0)) {
                break;
            }
            int iU = l0.U(bArr, i5 + 4);
            int i7 = this.f30755goto;
            if (iU < i7 + i) {
                if (iU >= i7) {
                    Cpublic cpublic2 = (Cpublic) this.f30754for.get(hn0.m3072for(iU));
                    if (cpublic2 == null) {
                        cpublic2 = new Cpublic(sD0, iX3);
                        this.f30754for.put(hn0.m3072for(iU), cpublic2);
                    }
                    cpublic2.m34244do(sD0, iX3, bArr, i5 + 12, iX4, iX);
                } else {
                    Hashtable hashtable = this.f30757new;
                    if (hashtable != null && (cpublic = (Cpublic) hashtable.get(hn0.m3072for(iU))) != null) {
                        cpublic.m34244do(sD0, iX3, bArr, i5 + 12, iX4, iX);
                        z2 = true;
                    }
                }
            }
            i5 += iX2;
            i6 -= iX2;
        }
        if (z2 && m34336for(this.f30757new)) {
            z = true;
        }
        if (z) {
            m34335final();
            m34342super(this.f30757new);
        }
        return z;
    }

    /* renamed from: else, reason: not valid java name */
    private Cif m34334else() throws IOException {
        byte[] bArrM34246if;
        Cpublic cpublic = (Cpublic) this.f30754for.get(hn0.m3072for(this.f30755goto));
        Cdo cdo = null;
        if (cpublic == null || (bArrM34246if = cpublic.m34246if()) == null) {
            return null;
        }
        this.f30757new = null;
        int i = this.f30755goto;
        this.f30755goto = i + 1;
        return m34338import(new Cif(i, cpublic.m34245for(), bArrM34246if, cdo));
    }

    /* renamed from: final, reason: not valid java name */
    private void m34335final() throws IOException {
        this.f30752do.m34283catch();
        for (int i = 0; i < this.f30758try.size(); i++) {
            m34341public((Cif) this.f30758try.elementAt(i));
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static boolean m34336for(Hashtable hashtable) {
        Enumeration enumerationElements = hashtable.elements();
        while (enumerationElements.hasMoreElements()) {
            if (((Cpublic) enumerationElements.nextElement()).m34246if() == null) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    private int m34337if(int i) {
        return Math.min(i * 2, 60000);
    }

    /* renamed from: import, reason: not valid java name */
    private Cif m34338import(Cif cif) throws IOException {
        if (cif.m34354for() != 0) {
            byte[] bArrM34353do = cif.m34353do();
            byte[] bArr = new byte[12];
            l0.I0(cif.m34354for(), bArr, 0);
            l0.y0(bArrM34353do.length, bArr, 1);
            l0.s0(cif.m34355if(), bArr, 4);
            l0.y0(0, bArr, 6);
            l0.y0(bArrM34353do.length, bArr, 9);
            this.f30756if.update(bArr, 0, 12);
            this.f30756if.update(bArrM34353do, 0, bArrM34353do.length);
        }
        return cif;
    }

    /* renamed from: native, reason: not valid java name */
    private void m34339native(Cif cif, int i, int i2) throws IOException {
        Cfor cfor = new Cfor(i2 + 12);
        l0.H0(cif.m34354for(), cfor);
        l0.x0(cif.m34353do().length, cfor);
        l0.r0(cif.m34355if(), cfor);
        l0.x0(i, cfor);
        l0.x0(i2, cfor);
        cfor.write(cif.m34353do(), i, i2);
        cfor.m34352do(this.f30752do);
    }

    /* renamed from: new, reason: not valid java name */
    private void m34340new() {
        Enumeration enumerationKeys = this.f30754for.keys();
        while (enumerationKeys.hasMoreElements()) {
            ((Integer) enumerationKeys.nextElement()).intValue();
        }
    }

    /* renamed from: public, reason: not valid java name */
    private void m34341public(Cif cif) throws IOException {
        int sendLimit = this.f30752do.getSendLimit() - 12;
        if (sendLimit < 1) {
            throw new n72((short) 80);
        }
        int length = cif.m34353do().length;
        int i = 0;
        do {
            int iMin = Math.min(length - i, sendLimit);
            m34339native(cif, i, iMin);
            i += iMin;
        } while (i < length);
    }

    /* renamed from: super, reason: not valid java name */
    private static void m34342super(Hashtable hashtable) {
        Enumeration enumerationElements = hashtable.elements();
        while (enumerationElements.hasMoreElements()) {
            ((Cpublic) enumerationElements.nextElement()).m34247new();
        }
    }

    /* renamed from: this, reason: not valid java name */
    private void m34343this(Hashtable hashtable) {
        m34342super(this.f30754for);
        this.f30757new = this.f30754for;
        this.f30754for = hashtable;
    }

    /* renamed from: break, reason: not valid java name */
    public TlsHandshakeHash m34344break() {
        TlsHandshakeHash tlsHandshakeHash = this.f30756if;
        this.f30756if = tlsHandshakeHash.stopTracking();
        return tlsHandshakeHash;
    }

    /* renamed from: case, reason: not valid java name */
    public TlsHandshakeHash m34345case() {
        return this.f30756if;
    }

    /* renamed from: class, reason: not valid java name */
    public Cif m34346class() throws IOException {
        Cif cifM34334else;
        if (this.f30751case) {
            this.f30751case = false;
            m34343this(new Hashtable());
        }
        byte[] bArr = null;
        int iM34337if = 1000;
        while (true) {
            try {
                cifM34334else = m34334else();
            } catch (IOException unused) {
            }
            if (cifM34334else != null) {
                return cifM34334else;
            }
            int receiveLimit = this.f30752do.getReceiveLimit();
            if (bArr == null || bArr.length < receiveLimit) {
                bArr = new byte[receiveLimit];
            }
            int iReceive = this.f30752do.receive(bArr, 0, receiveLimit, iM34337if);
            if (iReceive < 0) {
                m34335final();
                iM34337if = m34337if(iM34337if);
            } else if (m34332catch(16, this.f30752do.m34292try(), bArr, 0, iReceive)) {
                iM34337if = m34337if(iM34337if);
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    public byte[] m34347const(short s) throws IOException {
        Cif cifM34346class = m34346class();
        if (cifM34346class.m34354for() == s) {
            return cifM34346class.m34353do();
        }
        throw new n72((short) 10);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m34348goto() {
        this.f30756if = this.f30756if.notifyPRFDetermined();
    }

    /* renamed from: throw, reason: not valid java name */
    public void m34349throw() {
        this.f30756if.reset();
    }

    /* renamed from: try, reason: not valid java name */
    public void m34350try() {
        Cdo cdo = null;
        if (this.f30751case) {
            m34343this(null);
            if (this.f30757new != null) {
                cdo = new Cdo();
            }
        } else {
            m34340new();
        }
        this.f30752do.m34285else(cdo);
    }

    /* renamed from: while, reason: not valid java name */
    public void m34351while(short s, byte[] bArr) throws IOException {
        l0.m34184class(bArr.length);
        if (!this.f30751case) {
            m34340new();
            this.f30751case = true;
            this.f30758try.removeAllElements();
        }
        int i = this.f30753else;
        this.f30753else = i + 1;
        Cif cif = new Cif(i, s, bArr, null);
        this.f30758try.addElement(cif);
        m34341public(cif);
        m34338import(cif);
    }
}
