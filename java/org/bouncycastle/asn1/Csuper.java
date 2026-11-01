package org.bouncycastle.asn1;

import android.support.v4.Cimport;
import android.support.v4.q3;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Vector;
import org.bouncycastle.util.Iterable;

/* renamed from: org.bouncycastle.asn1.super, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Csuper extends Cfinal implements Iterable<ASN1Encodable> {

    /* renamed from: do, reason: not valid java name */
    public Vector f29167do;

    /* renamed from: org.bouncycastle.asn1.super$do, reason: invalid class name */
    public class Cdo implements ASN1SequenceParser {

        /* renamed from: do, reason: not valid java name */
        private final int f29168do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Csuper f29169for;

        /* renamed from: if, reason: not valid java name */
        private int f29170if;

        public Cdo(Csuper csuper) {
            this.f29169for = csuper;
            this.f29168do = Csuper.this.size();
        }

        @Override // org.bouncycastle.asn1.InMemoryRepresentable
        public Cfinal getLoadedObject() {
            return this.f29169for;
        }

        @Override // org.bouncycastle.asn1.ASN1SequenceParser
        public ASN1Encodable readObject() throws IOException {
            int i = this.f29170if;
            if (i == this.f29168do) {
                return null;
            }
            Csuper csuper = Csuper.this;
            this.f29170if = i + 1;
            ASN1Encodable aSN1EncodableMo33075final = csuper.mo33075final(i);
            return aSN1EncodableMo33075final instanceof Csuper ? ((Csuper) aSN1EncodableMo33075final).m33132throw() : aSN1EncodableMo33075final instanceof Cthrow ? ((Cthrow) aSN1EncodableMo33075final).m33155import() : aSN1EncodableMo33075final;
        }

        @Override // org.bouncycastle.asn1.ASN1Encodable
        public Cfinal toASN1Primitive() {
            return this.f29169for;
        }
    }

    public Csuper() {
        this.f29167do = new Vector();
    }

    public Csuper(Cimport cimport) {
        this.f29167do = new Vector();
        for (int i = 0; i != cimport.m3519new(); i++) {
            this.f29167do.addElement(cimport.m3517for(i));
        }
    }

    public Csuper(ASN1Encodable aSN1Encodable) {
        Vector vector = new Vector();
        this.f29167do = vector;
        vector.addElement(aSN1Encodable);
    }

    public Csuper(ASN1Encodable[] aSN1EncodableArr) {
        this.f29167do = new Vector();
        for (int i = 0; i != aSN1EncodableArr.length; i++) {
            this.f29167do.addElement(aSN1EncodableArr[i]);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static Csuper m33129catch(Object obj) {
        if (obj == null || (obj instanceof Csuper)) {
            return (Csuper) obj;
        }
        if (obj instanceof ASN1SequenceParser) {
            return m33129catch(((ASN1SequenceParser) obj).toASN1Primitive());
        }
        if (obj instanceof byte[]) {
            try {
                return m33129catch(Cfinal.m33015else((byte[]) obj));
            } catch (IOException e) {
                throw new IllegalArgumentException("failed to construct sequence from byte[]: " + e.getMessage());
            }
        }
        if (obj instanceof ASN1Encodable) {
            Cfinal aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof Csuper) {
                return (Csuper) aSN1Primitive;
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    /* renamed from: class, reason: not valid java name */
    public static Csuper m33130class(Cimport cimport, boolean z) {
        if (z) {
            if (cimport.m33066final()) {
                return m33129catch(cimport.m33065const().toASN1Primitive());
            }
            throw new IllegalArgumentException("object implicit - explicit expected.");
        }
        Cfinal cfinalM33065const = cimport.m33065const();
        if (cimport.m33066final()) {
            return cimport instanceof Cvolatile ? new Cpackage(cfinalM33065const) : new d0(cfinalM33065const);
        }
        if (cfinalM33065const instanceof Csuper) {
            return (Csuper) cfinalM33065const;
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + cimport.getClass().getName());
    }

    /* renamed from: const, reason: not valid java name */
    private ASN1Encodable m33131const(Enumeration enumeration) {
        return (ASN1Encodable) enumeration.nextElement();
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: break */
    public Cfinal mo32798break() {
        d0 d0Var = new d0();
        d0Var.f29167do = this.f29167do;
        return d0Var;
    }

    /* renamed from: final */
    public ASN1Encodable mo33075final(int i) {
        return (ASN1Encodable) this.f29167do.elementAt(i);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        return true;
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        Enumeration enumerationMo33076super = mo33076super();
        int size = size();
        while (enumerationMo33076super.hasMoreElements()) {
            size = (size * 17) ^ m33131const(enumerationMo33076super).hashCode();
        }
        return size;
    }

    @Override // org.bouncycastle.util.Iterable, java.lang.Iterable
    public Iterator<ASN1Encodable> iterator() {
        return new q3.Cdo(m33133while());
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new */
    public boolean mo32769new(Cfinal cfinal) {
        if (!(cfinal instanceof Csuper)) {
            return false;
        }
        Csuper csuper = (Csuper) cfinal;
        if (size() != csuper.size()) {
            return false;
        }
        Enumeration enumerationMo33076super = mo33076super();
        Enumeration enumerationMo33076super2 = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            ASN1Encodable aSN1EncodableM33131const = m33131const(enumerationMo33076super);
            ASN1Encodable aSN1EncodableM33131const2 = m33131const(enumerationMo33076super2);
            Cfinal aSN1Primitive = aSN1EncodableM33131const.toASN1Primitive();
            Cfinal aSN1Primitive2 = aSN1EncodableM33131const2.toASN1Primitive();
            if (aSN1Primitive != aSN1Primitive2 && !aSN1Primitive.equals(aSN1Primitive2)) {
                return false;
            }
        }
        return true;
    }

    public int size() {
        return this.f29167do.size();
    }

    /* renamed from: super */
    public Enumeration mo33076super() {
        return this.f29167do.elements();
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: this */
    public Cfinal mo32780this() {
        n nVar = new n();
        nVar.f29167do = this.f29167do;
        return nVar;
    }

    /* renamed from: throw, reason: not valid java name */
    public ASN1SequenceParser m33132throw() {
        return new Cdo(this);
    }

    public String toString() {
        return this.f29167do.toString();
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public abstract void mo32750try(Cconst cconst) throws IOException;

    /* renamed from: while, reason: not valid java name */
    public ASN1Encodable[] m33133while() {
        ASN1Encodable[] aSN1EncodableArr = new ASN1Encodable[size()];
        for (int i = 0; i != size(); i++) {
            aSN1EncodableArr[i] = mo33075final(i);
        }
        return aSN1EncodableArr;
    }
}
