package org.bouncycastle.pqc.crypto.xmss;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.abstract, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cabstract implements XMSSStoreableObjectInterface {

    /* renamed from: do, reason: not valid java name */
    private final Cfinally f32383do;

    /* renamed from: for, reason: not valid java name */
    private final List<Cdefault> f32384for;

    /* renamed from: if, reason: not valid java name */
    private final Cfinal f32385if;

    /* renamed from: org.bouncycastle.pqc.crypto.xmss.abstract$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private final Cfinally f32386do;

        /* renamed from: if, reason: not valid java name */
        private Cfinal f32388if = null;

        /* renamed from: for, reason: not valid java name */
        private List<Cdefault> f32387for = null;

        /* renamed from: new, reason: not valid java name */
        private byte[] f32389new = null;

        public Cdo(Cfinally cfinally) {
            this.f32386do = cfinally;
        }

        /* renamed from: case, reason: not valid java name */
        public Cdo m35830case(List<Cdefault> list) {
            this.f32387for = list;
            return this;
        }

        /* renamed from: else, reason: not valid java name */
        public Cdo m35831else(byte[] bArr) {
            this.f32389new = Cvolatile.m36077new(bArr);
            return this;
        }

        /* renamed from: goto, reason: not valid java name */
        public Cdo m35832goto(Cfinal cfinal) {
            this.f32388if = cfinal;
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public Cabstract mo35833try() {
            return new Cabstract(this);
        }
    }

    public Cabstract(Cdo cdo) {
        List<Cdefault> arrayList;
        Cfinally cfinally = cdo.f32386do;
        this.f32383do = cfinally;
        Objects.requireNonNull(cfinally, "params == null");
        int iM35882for = cfinally.m35882for();
        int iM35844for = cfinally.m35880case().m36042try().m35844for();
        int iM35884new = cfinally.m35884new();
        byte[] bArr = cdo.f32389new;
        if (bArr == null) {
            Cfinal cfinal = cdo.f32388if;
            this.f32385if = cfinal == null ? new Cfinal(cfinally.m35880case().m36042try(), (byte[][]) Array.newInstance((Class<?>) byte.class, iM35844for, iM35882for)) : cfinal;
            arrayList = cdo.f32387for;
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            } else if (arrayList.size() != iM35884new) {
                throw new IllegalArgumentException("size of authPath needs to be equal to height of tree");
            }
        } else {
            if (bArr.length != (iM35844for * iM35882for) + (iM35884new * iM35882for)) {
                throw new IllegalArgumentException("signature has wrong size");
            }
            byte[][] bArr2 = new byte[iM35844for][];
            int i = 0;
            for (int i2 = 0; i2 < iM35844for; i2++) {
                bArr2[i2] = Cvolatile.m36080this(bArr, i, iM35882for);
                i += iM35882for;
            }
            this.f32385if = new Cfinal(this.f32383do.m35880case().m36042try(), bArr2);
            arrayList = new ArrayList<>();
            for (int i3 = 0; i3 < iM35884new; i3++) {
                arrayList.add(new Cdefault(i3, Cvolatile.m36080this(bArr, i, iM35882for)));
                i += iM35882for;
            }
        }
        this.f32384for = arrayList;
    }

    /* renamed from: do, reason: not valid java name */
    public List<Cdefault> m35823do() {
        return this.f32384for;
    }

    /* renamed from: for, reason: not valid java name */
    public Cfinal m35824for() {
        return this.f32385if;
    }

    /* renamed from: if, reason: not valid java name */
    public Cfinally m35825if() {
        return this.f32383do;
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.XMSSStoreableObjectInterface
    public byte[] toByteArray() {
        int iM35882for = this.f32383do.m35882for();
        byte[] bArr = new byte[(this.f32383do.m35880case().m36042try().m35844for() * iM35882for) + (this.f32383do.m35884new() * iM35882for)];
        int i = 0;
        for (byte[] bArr2 : this.f32385if.m35878do()) {
            Cvolatile.m36065case(bArr, bArr2, i);
            i += iM35882for;
        }
        for (int i2 = 0; i2 < this.f32384for.size(); i2++) {
            Cvolatile.m36065case(bArr, this.f32384for.get(i2).getValue(), i);
            i += iM35882for;
        }
        return bArr;
    }
}
