package org.bouncycastle.asn1;

import android.support.v4.Cnative;
import java.io.IOException;

/* renamed from: org.bouncycastle.asn1.import, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cimport extends Cfinal implements ASN1TaggedObjectParser {

    /* renamed from: do, reason: not valid java name */
    public int f29094do;

    /* renamed from: for, reason: not valid java name */
    public boolean f29095for;

    /* renamed from: if, reason: not valid java name */
    public boolean f29096if = false;

    /* renamed from: new, reason: not valid java name */
    public ASN1Encodable f29097new;

    public Cimport(boolean z, int i, ASN1Encodable aSN1Encodable) {
        this.f29095for = true;
        this.f29097new = null;
        if (aSN1Encodable instanceof ASN1Choice) {
            this.f29095for = true;
        } else {
            this.f29095for = z;
        }
        this.f29094do = i;
        if (!this.f29095for) {
            boolean z2 = aSN1Encodable.toASN1Primitive() instanceof Cthrow;
        }
        this.f29097new = aSN1Encodable;
    }

    /* renamed from: catch, reason: not valid java name */
    public static Cimport m33063catch(Object obj) {
        if (obj == null || (obj instanceof Cimport)) {
            return (Cimport) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
        }
        try {
            return m33063catch(Cfinal.m33015else((byte[]) obj));
        } catch (IOException e) {
            throw new IllegalArgumentException("failed to construct tagged object from byte[]: " + e.getMessage());
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static Cimport m33064class(Cimport cimport, boolean z) {
        if (z) {
            return (Cimport) cimport.m33065const();
        }
        throw new IllegalArgumentException("implicitly tagged tagged object");
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: break */
    public Cfinal mo32798break() {
        return new f0(this.f29095for, this.f29094do, this.f29097new);
    }

    /* renamed from: const, reason: not valid java name */
    public Cfinal m33065const() {
        ASN1Encodable aSN1Encodable = this.f29097new;
        if (aSN1Encodable != null) {
            return aSN1Encodable.toASN1Primitive();
        }
        return null;
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m33066final() {
        return this.f29095for;
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public Cfinal getLoadedObject() {
        return toASN1Primitive();
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1Encodable getObjectParser(int i, boolean z) throws IOException {
        if (i == 4) {
            return Cclass.m32797class(this, z).m32799final();
        }
        if (i == 16) {
            return Csuper.m33130class(this, z).m33132throw();
        }
        if (i == 17) {
            return Cthrow.m33152const(this, z).m33155import();
        }
        if (z) {
            return m33065const();
        }
        throw new Cnative("implicit tagging not implemented for tag: " + i);
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public int getTagNo() {
        return this.f29094do;
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        int i = this.f29094do;
        ASN1Encodable aSN1Encodable = this.f29097new;
        return aSN1Encodable != null ? i ^ aSN1Encodable.hashCode() : i;
    }

    public boolean isEmpty() {
        return this.f29096if;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new */
    public boolean mo32769new(Cfinal cfinal) {
        if (!(cfinal instanceof Cimport)) {
            return false;
        }
        Cimport cimport = (Cimport) cfinal;
        if (this.f29094do != cimport.f29094do || this.f29096if != cimport.f29096if || this.f29095for != cimport.f29095for) {
            return false;
        }
        ASN1Encodable aSN1Encodable = this.f29097new;
        return aSN1Encodable == null ? cimport.f29097new == null : aSN1Encodable.toASN1Primitive().equals(cimport.f29097new.toASN1Primitive());
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: this */
    public Cfinal mo32780this() {
        return new u(this.f29095for, this.f29094do, this.f29097new);
    }

    public String toString() {
        return "[" + this.f29094do + "]" + this.f29097new;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public abstract void mo32750try(Cconst cconst) throws IOException;
}
