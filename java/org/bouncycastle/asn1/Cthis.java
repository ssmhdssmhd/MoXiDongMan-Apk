package org.bouncycastle.asn1;

import java.io.IOException;

/* renamed from: org.bouncycastle.asn1.this, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cthis extends Cfinal {
    /* renamed from: catch, reason: not valid java name */
    public static Cthis m33149catch(Object obj) {
        if (obj instanceof Cthis) {
            return (Cthis) obj;
        }
        if (obj == null) {
            return null;
        }
        try {
            return m33149catch(Cfinal.m33015else((byte[]) obj));
        } catch (IOException e) {
            throw new IllegalArgumentException("failed to construct NULL from byte[]: " + e.getMessage());
        } catch (ClassCastException unused) {
            throw new IllegalArgumentException("unknown object in getInstance(): " + obj.getClass().getName());
        }
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        return -1;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new */
    public boolean mo32769new(Cfinal cfinal) {
        return cfinal instanceof Cthis;
    }

    public String toString() {
        return "NULL";
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public abstract void mo32750try(Cconst cconst) throws IOException;
}
