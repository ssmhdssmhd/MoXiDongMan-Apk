package org.bouncycastle.asn1;

import android.support.v4.q3;
import java.io.IOException;

/* renamed from: org.bouncycastle.asn1.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor extends Cfinal {

    /* renamed from: do, reason: not valid java name */
    private final byte[] f29069do;

    /* renamed from: if, reason: not valid java name */
    private static final byte[] f29066if = {-1};

    /* renamed from: for, reason: not valid java name */
    private static final byte[] f29065for = {0};

    /* renamed from: new, reason: not valid java name */
    public static final Cfor f29067new = new Cfor(false);

    /* renamed from: try, reason: not valid java name */
    public static final Cfor f29068try = new Cfor(true);

    public Cfor(boolean z) {
        this.f29069do = z ? f29066if : f29065for;
    }

    public Cfor(byte[] bArr) {
        if (bArr.length != 1) {
            throw new IllegalArgumentException("byte value should have 1 byte in it");
        }
        if (bArr[0] == 0) {
            this.f29069do = f29065for;
        } else if ((bArr[0] & 255) == 255) {
            this.f29069do = f29066if;
        } else {
            this.f29069do = q3.m6371final(bArr);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static Cfor m33017catch(byte[] bArr) {
        if (bArr.length == 1) {
            return bArr[0] == 0 ? f29067new : (bArr[0] & 255) == 255 ? f29068try : new Cfor(bArr);
        }
        throw new IllegalArgumentException("BOOLEAN value should have 1 byte in it");
    }

    /* renamed from: class, reason: not valid java name */
    public static Cfor m33018class(int i) {
        return i != 0 ? f29068try : f29067new;
    }

    /* renamed from: const, reason: not valid java name */
    public static Cfor m33019const(Object obj) {
        if (obj == null || (obj instanceof Cfor)) {
            return (Cfor) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (Cfor) Cfinal.m33015else((byte[]) obj);
        } catch (IOException e) {
            throw new IllegalArgumentException("failed to construct boolean from byte[]: " + e.getMessage());
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static Cfor m33020final(Cimport cimport, boolean z) {
        Cfinal cfinalM33065const = cimport.m33065const();
        return (z || (cfinalM33065const instanceof Cfor)) ? m33019const(cfinalM33065const) : m33017catch(((Cclass) cfinalM33065const).mo5490const());
    }

    /* renamed from: super, reason: not valid java name */
    public static Cfor m33021super(boolean z) {
        return z ? f29068try : f29067new;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() {
        return 3;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        return false;
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        return this.f29069do[0];
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new */
    public boolean mo32769new(Cfinal cfinal) {
        return (cfinal instanceof Cfor) && this.f29069do[0] == ((Cfor) cfinal).f29069do[0];
    }

    /* renamed from: throw, reason: not valid java name */
    public boolean m33022throw() {
        return this.f29069do[0] != 0;
    }

    public String toString() {
        return this.f29069do[0] != 0 ? "TRUE" : "FALSE";
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        cconst.m32909this(1, this.f29069do);
    }
}
