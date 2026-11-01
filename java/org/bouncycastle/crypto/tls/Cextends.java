package org.bouncycastle.crypto.tls;

import android.support.v4.Ccase;
import android.support.v4.jj1;
import android.support.v4.n72;
import android.support.v4.wt;
import java.io.IOException;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.engines.Cdefault;
import org.bouncycastle.crypto.engines.Cif;
import org.bouncycastle.crypto.modes.AEADBlockCipher;
import org.bouncycastle.crypto.modes.Ccatch;
import org.bouncycastle.crypto.modes.Cdo;
import org.bouncycastle.crypto.modes.Cimport;

/* renamed from: org.bouncycastle.crypto.tls.extends, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cextends extends Cdo {
    /* renamed from: break, reason: not valid java name */
    public BlockCipher m34061break() {
        return new Cif();
    }

    /* renamed from: case, reason: not valid java name */
    public l m34062case(TlsContext tlsContext, int i, int i2) throws IOException {
        return new l(tlsContext, m34082try(), m34082try(), m34072import(i2), m34072import(i2), i);
    }

    /* renamed from: catch, reason: not valid java name */
    public TlsCipher m34063catch(TlsContext tlsContext) throws IOException {
        return new Csuper(tlsContext);
    }

    /* renamed from: class, reason: not valid java name */
    public k m34064class(TlsContext tlsContext, int i, int i2) throws IOException {
        return new k(tlsContext, m34066do(), m34066do(), i, i2);
    }

    /* renamed from: const, reason: not valid java name */
    public k m34065const(TlsContext tlsContext, int i, int i2) throws IOException {
        return new k(tlsContext, m34071if(), m34071if(), i, i2);
    }

    @Override // org.bouncycastle.crypto.tls.Cdo, org.bouncycastle.crypto.tls.TlsCipherFactory
    public TlsCipher createCipher(TlsContext tlsContext, int i, int i2) throws IOException {
        if (i == 0) {
            return m34073native(tlsContext, i2);
        }
        if (i == 2) {
            return m34075public(tlsContext, 16, i2);
        }
        if (i == 103) {
            return m34068final(tlsContext, 16, 12);
        }
        if (i == 104) {
            return m34068final(tlsContext, 32, 12);
        }
        switch (i) {
            case 7:
                return m34083while(tlsContext, i2);
            case 8:
                return m34062case(tlsContext, 16, i2);
            case 9:
                return m34062case(tlsContext, 32, i2);
            case 10:
                return m34065const(tlsContext, 16, 16);
            case 11:
                return m34065const(tlsContext, 32, 16);
            case 12:
                return m34080this(tlsContext, 16, i2);
            case 13:
                return m34080this(tlsContext, 32, i2);
            case 14:
                return m34079switch(tlsContext, i2);
            case 15:
                return m34064class(tlsContext, 16, 16);
            case 16:
                return m34064class(tlsContext, 16, 8);
            case 17:
                return m34064class(tlsContext, 32, 16);
            case 18:
                return m34064class(tlsContext, 32, 8);
            case 19:
                return m34078super(tlsContext, 16, 16);
            case 20:
                return m34078super(tlsContext, 32, 16);
            case 21:
                return m34063catch(tlsContext);
            default:
                throw new n72((short) 80);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public AEADBlockCipher m34066do() {
        return new org.bouncycastle.crypto.modes.Cif(m34067else());
    }

    /* renamed from: else, reason: not valid java name */
    public BlockCipher m34067else() {
        return new Ccase();
    }

    /* renamed from: final, reason: not valid java name */
    public k m34068final(TlsContext tlsContext, int i, int i2) throws IOException {
        return new k(tlsContext, m34069for(), m34069for(), i, i2, 2);
    }

    /* renamed from: for, reason: not valid java name */
    public AEADBlockCipher m34069for() {
        return new Cimport(m34067else(), m34067else());
    }

    /* renamed from: goto, reason: not valid java name */
    public BlockCipher m34070goto() {
        return new Cdo(m34061break());
    }

    /* renamed from: if, reason: not valid java name */
    public AEADBlockCipher m34071if() {
        return new Ccatch(m34067else());
    }

    /* renamed from: import, reason: not valid java name */
    public Digest m34072import(int i) throws IOException {
        if (i == 0) {
            return null;
        }
        if (i == 1) {
            return l0.m34214throws((short) 1);
        }
        if (i == 2) {
            return l0.m34214throws((short) 2);
        }
        if (i == 3) {
            return l0.m34214throws((short) 4);
        }
        if (i == 4) {
            return l0.m34214throws((short) 5);
        }
        if (i == 5) {
            return l0.m34214throws((short) 6);
        }
        throw new n72((short) 80);
    }

    /* renamed from: native, reason: not valid java name */
    public x m34073native(TlsContext tlsContext, int i) throws IOException {
        return new x(tlsContext, m34072import(i), m34072import(i));
    }

    /* renamed from: new, reason: not valid java name */
    public AEADBlockCipher m34074new() {
        return new Ccatch(m34061break());
    }

    /* renamed from: public, reason: not valid java name */
    public k0 m34075public(TlsContext tlsContext, int i, int i2) throws IOException {
        return new k0(tlsContext, m34076return(), m34076return(), m34072import(i2), m34072import(i2), i, false);
    }

    /* renamed from: return, reason: not valid java name */
    public StreamCipher m34076return() {
        return new jj1();
    }

    /* renamed from: static, reason: not valid java name */
    public BlockCipher m34077static() {
        return new Cdo(new Cdefault());
    }

    /* renamed from: super, reason: not valid java name */
    public k m34078super(TlsContext tlsContext, int i, int i2) throws IOException {
        return new k(tlsContext, m34074new(), m34074new(), i, i2);
    }

    /* renamed from: switch, reason: not valid java name */
    public l m34079switch(TlsContext tlsContext, int i) throws IOException {
        return new l(tlsContext, m34077static(), m34077static(), m34072import(i), m34072import(i), 16);
    }

    /* renamed from: this, reason: not valid java name */
    public l m34080this(TlsContext tlsContext, int i, int i2) throws IOException {
        return new l(tlsContext, m34070goto(), m34070goto(), m34072import(i2), m34072import(i2), i);
    }

    /* renamed from: throw, reason: not valid java name */
    public BlockCipher m34081throw() {
        return new Cdo(new wt());
    }

    /* renamed from: try, reason: not valid java name */
    public BlockCipher m34082try() {
        return new Cdo(m34067else());
    }

    /* renamed from: while, reason: not valid java name */
    public l m34083while(TlsContext tlsContext, int i) throws IOException {
        return new l(tlsContext, m34081throw(), m34081throw(), m34072import(i), m34072import(i), 24);
    }
}
