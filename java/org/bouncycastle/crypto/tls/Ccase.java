package org.bouncycastle.crypto.tls;

import android.support.v4.dy0;
import android.support.v4.e21;
import android.support.v4.n72;
import android.support.v4.q3;
import android.support.v4.r72;
import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;

/* renamed from: org.bouncycastle.crypto.tls.case, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Ccase extends Ctry implements TlsServer {

    /* renamed from: break, reason: not valid java name */
    public Vector f30539break;

    /* renamed from: case, reason: not valid java name */
    public Hashtable f30540case;

    /* renamed from: catch, reason: not valid java name */
    public boolean f30541catch;

    /* renamed from: class, reason: not valid java name */
    public int[] f30542class;

    /* renamed from: const, reason: not valid java name */
    public short[] f30543const;

    /* renamed from: do, reason: not valid java name */
    public TlsCipherFactory f30544do;

    /* renamed from: else, reason: not valid java name */
    public boolean f30545else;

    /* renamed from: final, reason: not valid java name */
    public short[] f30546final;

    /* renamed from: for, reason: not valid java name */
    public a f30547for;

    /* renamed from: goto, reason: not valid java name */
    public short f30548goto;

    /* renamed from: if, reason: not valid java name */
    public TlsServerContext f30549if;

    /* renamed from: import, reason: not valid java name */
    public Hashtable f30550import;

    /* renamed from: new, reason: not valid java name */
    public int[] f30551new;

    /* renamed from: super, reason: not valid java name */
    public a f30552super;

    /* renamed from: this, reason: not valid java name */
    public boolean f30553this;

    /* renamed from: throw, reason: not valid java name */
    public int f30554throw;

    /* renamed from: try, reason: not valid java name */
    public short[] f30555try;

    /* renamed from: while, reason: not valid java name */
    public short f30556while;

    public Ccase() {
        this(new Cextends());
    }

    public Ccase(TlsCipherFactory tlsCipherFactory) {
        this.f30544do = tlsCipherFactory;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m34023case(int[] iArr, short[] sArr) {
        if (iArr == null) {
            return s.m34313native();
        }
        for (int i : iArr) {
            if (e21.m1633do(i) && (!e21.m1634if(i) || s.m34320static(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m34024do() {
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public Hashtable m34025for() {
        Hashtable hashtableM34410import = v.m34410import(this.f30550import);
        this.f30550import = hashtableM34410import;
        return hashtableM34410import;
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public Ccatch getCertificateRequest() throws IOException {
        return null;
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public Cclass getCertificateStatus() throws IOException {
        return null;
    }

    @Override // org.bouncycastle.crypto.tls.TlsPeer
    public TlsCipher getCipher() throws IOException {
        return this.f30544do.createCipher(this.f30549if, l0.a(this.f30554throw), l0.e(this.f30554throw));
    }

    public abstract int[] getCipherSuites();

    @Override // org.bouncycastle.crypto.tls.TlsPeer
    public TlsCompression getCompression() throws IOException {
        if (this.f30556while == 0) {
            return new r72();
        }
        throw new n72((short) 80);
    }

    public short[] getCompressionMethods() {
        return new short[]{0};
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public Ctransient getNewSessionTicket() throws IOException {
        return new Ctransient(0L, l0.f30675do);
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public int getSelectedCipherSuite() throws IOException {
        Vector vectorJ = l0.j(this.f30539break);
        boolean zM34023case = m34023case(this.f30542class, this.f30543const);
        for (int i : getCipherSuites()) {
            if (q3.m6366continue(this.f30551new, i) && ((zM34023case || !s.m34319return(i)) && l0.y(i, this.f30552super) && l0.x(i, vectorJ))) {
                this.f30554throw = i;
                return i;
            }
        }
        throw new n72((short) 40);
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public short getSelectedCompressionMethod() throws IOException {
        short[] compressionMethods = getCompressionMethods();
        for (int i = 0; i < compressionMethods.length; i++) {
            if (q3.m6388strictfp(this.f30555try, compressionMethods[i])) {
                short s = compressionMethods[i];
                this.f30556while = s;
                return s;
            }
        }
        throw new n72((short) 40);
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public Hashtable getServerExtensions() throws IOException {
        if (this.f30545else && m34024do() && l0.p(this.f30554throw)) {
            v.m34402do(m34025for());
        }
        short s = this.f30548goto;
        if (s >= 0 && dy0.m1569do(s)) {
            v.m34413new(m34025for(), this.f30548goto);
        }
        if (this.f30553this && m34026if()) {
            v.m34408goto(m34025for());
        }
        if (this.f30543const != null && s.m34319return(this.f30554throw)) {
            this.f30546final = new short[]{0, 1, 2};
            s.m34308if(m34025for(), this.f30546final);
        }
        return this.f30550import;
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public Vector getServerSupplementalData() throws IOException {
        return null;
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public a getServerVersion() throws IOException {
        if (m34028try().m33943this(this.f30547for)) {
            a aVarM34027new = m34027new();
            if (this.f30547for.m33943this(aVarM34027new)) {
                a aVar = this.f30547for;
                this.f30552super = aVar;
                return aVar;
            }
            if (this.f30547for.m33935break(aVarM34027new)) {
                this.f30552super = aVarM34027new;
                return aVarM34027new;
            }
        }
        throw new n72((short) 70);
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m34026if() {
        return false;
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public void init(TlsServerContext tlsServerContext) {
        this.f30549if = tlsServerContext;
    }

    /* renamed from: new, reason: not valid java name */
    public a m34027new() {
        return a.f30454try;
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public void notifyClientCertificate(Cbreak cbreak) throws IOException {
        throw new n72((short) 80);
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public void notifyClientVersion(a aVar) throws IOException {
        this.f30547for = aVar;
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public void notifyFallback(boolean z) throws IOException {
        if (z && m34027new().m33935break(this.f30547for)) {
            throw new n72((short) 86);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public void notifyOfferedCipherSuites(int[] iArr) throws IOException {
        this.f30551new = iArr;
        this.f30541catch = s.m34295case(iArr);
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public void notifyOfferedCompressionMethods(short[] sArr) throws IOException {
        this.f30555try = sArr;
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public void processClientExtensions(Hashtable hashtable) throws IOException {
        this.f30540case = hashtable;
        if (hashtable != null) {
            this.f30545else = v.m34425throws(hashtable);
            short sM34417public = v.m34417public(hashtable);
            this.f30548goto = sM34417public;
            if (sM34417public >= 0 && !dy0.m1569do(sM34417public)) {
                throw new n72((short) 47);
            }
            this.f30553this = v.m34404extends(hashtable);
            Vector vectorH = l0.h(hashtable);
            this.f30539break = vectorH;
            if (vectorH != null && !l0.r(this.f30547for)) {
                throw new n72((short) 47);
            }
            this.f30542class = s.m34331while(hashtable);
            this.f30543const = s.m34310import(hashtable);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public void processClientSupplementalData(Vector vector) throws IOException {
        if (vector != null) {
            throw new n72((short) 10);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public a m34028try() {
        return a.f30453new;
    }
}
