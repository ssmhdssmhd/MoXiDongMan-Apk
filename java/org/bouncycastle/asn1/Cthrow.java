package org.bouncycastle.asn1;

import android.support.v4.Cimport;
import android.support.v4.q3;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Vector;
import org.bouncycastle.util.Iterable;

/* renamed from: org.bouncycastle.asn1.throw, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cthrow extends Cfinal implements Iterable<ASN1Encodable> {

    /* renamed from: do, reason: not valid java name */
    private Vector f29193do;

    /* renamed from: if, reason: not valid java name */
    private boolean f29194if;

    /* renamed from: org.bouncycastle.asn1.throw$do, reason: invalid class name */
    public class Cdo implements ASN1SetParser {

        /* renamed from: do, reason: not valid java name */
        private final int f29195do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Cthrow f29196for;

        /* renamed from: if, reason: not valid java name */
        private int f29197if;

        public Cdo(Cthrow cthrow) {
            this.f29196for = cthrow;
            this.f29195do = Cthrow.this.size();
        }

        @Override // org.bouncycastle.asn1.InMemoryRepresentable
        public Cfinal getLoadedObject() {
            return this.f29196for;
        }

        @Override // org.bouncycastle.asn1.ASN1SetParser
        public ASN1Encodable readObject() throws IOException {
            int i = this.f29197if;
            if (i == this.f29195do) {
                return null;
            }
            Cthrow cthrow = Cthrow.this;
            this.f29197if = i + 1;
            ASN1Encodable aSN1EncodableM33158super = cthrow.m33158super(i);
            return aSN1EncodableM33158super instanceof Csuper ? ((Csuper) aSN1EncodableM33158super).m33132throw() : aSN1EncodableM33158super instanceof Cthrow ? ((Cthrow) aSN1EncodableM33158super).m33155import() : aSN1EncodableM33158super;
        }

        @Override // org.bouncycastle.asn1.ASN1Encodable
        public Cfinal toASN1Primitive() {
            return this.f29196for;
        }
    }

    public Cthrow() {
        this.f29193do = new Vector();
        this.f29194if = false;
    }

    public Cthrow(Cimport cimport, boolean z) {
        this.f29193do = new Vector();
        this.f29194if = false;
        for (int i = 0; i != cimport.m3519new(); i++) {
            this.f29193do.addElement(cimport.m3517for(i));
        }
        if (z) {
            m33156native();
        }
    }

    public Cthrow(ASN1Encodable aSN1Encodable) {
        Vector vector = new Vector();
        this.f29193do = vector;
        this.f29194if = false;
        vector.addElement(aSN1Encodable);
    }

    public Cthrow(ASN1Encodable[] aSN1EncodableArr, boolean z) {
        this.f29193do = new Vector();
        this.f29194if = false;
        for (int i = 0; i != aSN1EncodableArr.length; i++) {
            this.f29193do.addElement(aSN1EncodableArr[i]);
        }
        if (z) {
            m33156native();
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private byte[] m33150catch(ASN1Encodable aSN1Encodable) {
        try {
            return aSN1Encodable.toASN1Primitive().m32764do(ASN1Encoding.DER);
        } catch (IOException unused) {
            throw new IllegalArgumentException("cannot encode object added to SET");
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static Cthrow m33151class(Object obj) {
        if (obj == null || (obj instanceof Cthrow)) {
            return (Cthrow) obj;
        }
        if (obj instanceof ASN1SetParser) {
            return m33151class(((ASN1SetParser) obj).toASN1Primitive());
        }
        if (obj instanceof byte[]) {
            try {
                return m33151class(Cfinal.m33015else((byte[]) obj));
            } catch (IOException e) {
                throw new IllegalArgumentException("failed to construct set from byte[]: " + e.getMessage());
            }
        }
        if (obj instanceof ASN1Encodable) {
            Cfinal aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof Cthrow) {
                return (Cthrow) aSN1Primitive;
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    /* renamed from: const, reason: not valid java name */
    public static Cthrow m33152const(Cimport cimport, boolean z) {
        if (z) {
            if (cimport.m33066final()) {
                return (Cthrow) cimport.m33065const();
            }
            throw new IllegalArgumentException("object implicit - explicit expected.");
        }
        Cfinal cfinalM33065const = cimport.m33065const();
        if (cimport.m33066final()) {
            return cimport instanceof Cvolatile ? new Ccontinue(cfinalM33065const) : new e0(cfinalM33065const);
        }
        if (cfinalM33065const instanceof Cthrow) {
            return (Cthrow) cfinalM33065const;
        }
        if (cfinalM33065const instanceof Csuper) {
            Csuper csuper = (Csuper) cfinalM33065const;
            return cimport instanceof Cvolatile ? new Ccontinue(csuper.m33133while()) : new e0(csuper.m33133while());
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + cimport.getClass().getName());
    }

    /* renamed from: final, reason: not valid java name */
    private ASN1Encodable m33153final(Enumeration enumeration) {
        ASN1Encodable aSN1Encodable = (ASN1Encodable) enumeration.nextElement();
        return aSN1Encodable == null ? h.f29080do : aSN1Encodable;
    }

    /* renamed from: while, reason: not valid java name */
    private boolean m33154while(byte[] bArr, byte[] bArr2) {
        int iMin = Math.min(bArr.length, bArr2.length);
        for (int i = 0; i != iMin; i++) {
            if (bArr[i] != bArr2[i]) {
                return (bArr[i] & 255) < (bArr2[i] & 255);
            }
        }
        return iMin == bArr.length;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: break */
    public Cfinal mo32798break() {
        e0 e0Var = new e0();
        e0Var.f29193do = this.f29193do;
        return e0Var;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        return true;
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        Enumeration enumerationM33159throw = m33159throw();
        int size = size();
        while (enumerationM33159throw.hasMoreElements()) {
            size = (size * 17) ^ m33153final(enumerationM33159throw).hashCode();
        }
        return size;
    }

    /* renamed from: import, reason: not valid java name */
    public ASN1SetParser m33155import() {
        return new Cdo(this);
    }

    @Override // org.bouncycastle.util.Iterable, java.lang.Iterable
    public Iterator<ASN1Encodable> iterator() {
        return new q3.Cdo(m33157public());
    }

    /* renamed from: native, reason: not valid java name */
    public void m33156native() {
        if (this.f29194if) {
            return;
        }
        this.f29194if = true;
        if (this.f29193do.size() > 1) {
            int size = this.f29193do.size() - 1;
            boolean z = true;
            while (z) {
                int i = 0;
                byte[] bArrM33150catch = m33150catch((ASN1Encodable) this.f29193do.elementAt(0));
                z = false;
                int i2 = 0;
                while (i2 != size) {
                    int i3 = i2 + 1;
                    byte[] bArrM33150catch2 = m33150catch((ASN1Encodable) this.f29193do.elementAt(i3));
                    if (m33154while(bArrM33150catch, bArrM33150catch2)) {
                        bArrM33150catch = bArrM33150catch2;
                    } else {
                        Object objElementAt = this.f29193do.elementAt(i2);
                        Vector vector = this.f29193do;
                        vector.setElementAt(vector.elementAt(i3), i2);
                        this.f29193do.setElementAt(objElementAt, i3);
                        i = i2;
                        z = true;
                    }
                    i2 = i3;
                }
                size = i;
            }
        }
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new */
    public boolean mo32769new(Cfinal cfinal) {
        if (!(cfinal instanceof Cthrow)) {
            return false;
        }
        Cthrow cthrow = (Cthrow) cfinal;
        if (size() != cthrow.size()) {
            return false;
        }
        Enumeration enumerationM33159throw = m33159throw();
        Enumeration enumerationM33159throw2 = cthrow.m33159throw();
        while (enumerationM33159throw.hasMoreElements()) {
            ASN1Encodable aSN1EncodableM33153final = m33153final(enumerationM33159throw);
            ASN1Encodable aSN1EncodableM33153final2 = m33153final(enumerationM33159throw2);
            Cfinal aSN1Primitive = aSN1EncodableM33153final.toASN1Primitive();
            Cfinal aSN1Primitive2 = aSN1EncodableM33153final2.toASN1Primitive();
            if (aSN1Primitive != aSN1Primitive2 && !aSN1Primitive.equals(aSN1Primitive2)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: public, reason: not valid java name */
    public ASN1Encodable[] m33157public() {
        ASN1Encodable[] aSN1EncodableArr = new ASN1Encodable[size()];
        for (int i = 0; i != size(); i++) {
            aSN1EncodableArr[i] = m33158super(i);
        }
        return aSN1EncodableArr;
    }

    public int size() {
        return this.f29193do.size();
    }

    /* renamed from: super, reason: not valid java name */
    public ASN1Encodable m33158super(int i) {
        return (ASN1Encodable) this.f29193do.elementAt(i);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: this */
    public Cfinal mo32780this() {
        if (this.f29194if) {
            q qVar = new q();
            qVar.f29193do = this.f29193do;
            return qVar;
        }
        Vector vector = new Vector();
        for (int i = 0; i != this.f29193do.size(); i++) {
            vector.addElement(this.f29193do.elementAt(i));
        }
        q qVar2 = new q();
        qVar2.f29193do = vector;
        qVar2.m33156native();
        return qVar2;
    }

    /* renamed from: throw, reason: not valid java name */
    public Enumeration m33159throw() {
        return this.f29193do.elements();
    }

    public String toString() {
        return this.f29193do.toString();
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public abstract void mo32750try(Cconst cconst) throws IOException;
}
