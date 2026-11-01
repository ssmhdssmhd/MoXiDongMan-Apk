package org.bouncycastle.asn1;

import android.support.v4.q3;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.asn1.class, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cclass extends Cfinal implements ASN1OctetStringParser {

    /* renamed from: do, reason: not valid java name */
    public byte[] f28915do;

    public Cclass(byte[] bArr) {
        Objects.requireNonNull(bArr, "string cannot be null");
        this.f28915do = bArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public static Cclass m32796catch(Object obj) {
        if (obj == null || (obj instanceof Cclass)) {
            return (Cclass) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return m32796catch(Cfinal.m33015else((byte[]) obj));
            } catch (IOException e) {
                throw new IllegalArgumentException("failed to construct OCTET STRING from byte[]: " + e.getMessage());
            }
        }
        if (obj instanceof ASN1Encodable) {
            Cfinal aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof Cclass) {
                return (Cclass) aSN1Primitive;
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    /* renamed from: class, reason: not valid java name */
    public static Cclass m32797class(Cimport cimport, boolean z) {
        Cfinal cfinalM33065const = cimport.m33065const();
        return (z || (cfinalM33065const instanceof Cclass)) ? m32796catch(cfinalM33065const) : Cthrows.m33162throw(Csuper.m33129catch(cfinalM33065const));
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: break, reason: not valid java name */
    public Cfinal mo32798break() {
        return new j(this.f28915do);
    }

    /* renamed from: const */
    public byte[] mo5490const() {
        return this.f28915do;
    }

    /* renamed from: final, reason: not valid java name */
    public ASN1OctetStringParser m32799final() {
        return this;
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public Cfinal getLoadedObject() {
        return toASN1Primitive();
    }

    @Override // org.bouncycastle.asn1.ASN1OctetStringParser
    public InputStream getOctetStream() {
        return new ByteArrayInputStream(this.f28915do);
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        return q3.n(mo5490const());
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new */
    public boolean mo32769new(Cfinal cfinal) {
        if (cfinal instanceof Cclass) {
            return q3.m6362case(this.f28915do, ((Cclass) cfinal).f28915do);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: this */
    public Cfinal mo32780this() {
        return new j(this.f28915do);
    }

    public String toString() {
        return "#" + Cfor.m36359if(org.bouncycastle.util.encoders.Cfor.m36327case(this.f28915do));
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public abstract void mo32750try(Cconst cconst) throws IOException;
}
