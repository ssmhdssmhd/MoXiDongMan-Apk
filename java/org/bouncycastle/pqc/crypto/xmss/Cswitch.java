package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.q3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.bouncycastle.pqc.crypto.xmss.Cabstract;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.switch, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cswitch implements XMSSStoreableObjectInterface {

    /* renamed from: do, reason: not valid java name */
    private final Cpublic f32499do;

    /* renamed from: for, reason: not valid java name */
    private final byte[] f32500for;

    /* renamed from: if, reason: not valid java name */
    private final long f32501if;

    /* renamed from: new, reason: not valid java name */
    private final List<Cabstract> f32502new;

    /* renamed from: org.bouncycastle.pqc.crypto.xmss.switch$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private final Cpublic f32503do;

        /* renamed from: if, reason: not valid java name */
        private long f32505if = 0;

        /* renamed from: for, reason: not valid java name */
        private byte[] f32504for = null;

        /* renamed from: new, reason: not valid java name */
        private List<Cabstract> f32506new = null;

        /* renamed from: try, reason: not valid java name */
        private byte[] f32507try = null;

        public Cif(Cpublic cpublic) {
            this.f32503do = cpublic;
        }

        /* renamed from: break, reason: not valid java name */
        public Cif m36024break(byte[] bArr) {
            this.f32507try = q3.m6371final(bArr);
            return this;
        }

        /* renamed from: case, reason: not valid java name */
        public Cswitch m36025case() {
            return new Cswitch(this);
        }

        /* renamed from: else, reason: not valid java name */
        public Cif m36026else(long j) {
            this.f32505if = j;
            return this;
        }

        /* renamed from: goto, reason: not valid java name */
        public Cif m36027goto(byte[] bArr) {
            this.f32504for = Cvolatile.m36077new(bArr);
            return this;
        }

        /* renamed from: this, reason: not valid java name */
        public Cif m36028this(List<Cabstract> list) {
            this.f32506new = list;
            return this;
        }
    }

    private Cswitch(Cif cif) {
        Cpublic cpublic = cif.f32503do;
        this.f32499do = cpublic;
        Objects.requireNonNull(cpublic, "params == null");
        int iM35957if = cpublic.m35957if();
        byte[] bArr = cif.f32507try;
        if (bArr == null) {
            this.f32501if = cif.f32505if;
            byte[] bArr2 = cif.f32504for;
            if (bArr2 == null) {
                this.f32500for = new byte[iM35957if];
            } else {
                if (bArr2.length != iM35957if) {
                    throw new IllegalArgumentException("size of random needs to be equal to size of digest");
                }
                this.f32500for = bArr2;
            }
            List<Cabstract> list = cif.f32506new;
            this.f32502new = list == null ? new ArrayList<>() : list;
            return;
        }
        int iM35844for = cpublic.m35952case().m36042try().m35844for();
        double dM35955for = cpublic.m35955for();
        Double.isNaN(dM35955for);
        int iCeil = (int) Math.ceil(dM35955for / 8.0d);
        int iM35955for = ((cpublic.m35955for() / cpublic.m35958new()) + iM35844for) * iM35957if;
        if (bArr.length != iCeil + iM35957if + (cpublic.m35958new() * iM35955for)) {
            throw new IllegalArgumentException("signature has wrong size");
        }
        long jM36074if = Cvolatile.m36074if(bArr, 0, iCeil);
        this.f32501if = jM36074if;
        if (!Cvolatile.m36071final(cpublic.m35955for(), jM36074if)) {
            throw new IllegalArgumentException("index out of bounds");
        }
        int i = iCeil + 0;
        this.f32500for = Cvolatile.m36080this(bArr, i, iM35957if);
        this.f32502new = new ArrayList();
        for (int i2 = i + iM35957if; i2 < bArr.length; i2 += iM35955for) {
            this.f32502new.add(new Cabstract.Cdo(this.f32499do.m35956goto()).m35831else(Cvolatile.m36080this(bArr, i2, iM35955for)).mo35833try());
        }
    }

    /* renamed from: do, reason: not valid java name */
    public long m36016do() {
        return this.f32501if;
    }

    /* renamed from: for, reason: not valid java name */
    public List<Cabstract> m36017for() {
        return this.f32502new;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m36018if() {
        return Cvolatile.m36077new(this.f32500for);
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.XMSSStoreableObjectInterface
    public byte[] toByteArray() {
        int iM35957if = this.f32499do.m35957if();
        int iM35844for = this.f32499do.m35952case().m36042try().m35844for();
        double dM35955for = this.f32499do.m35955for();
        Double.isNaN(dM35955for);
        int iCeil = (int) Math.ceil(dM35955for / 8.0d);
        int iM35955for = ((this.f32499do.m35955for() / this.f32499do.m35958new()) + iM35844for) * iM35957if;
        byte[] bArr = new byte[iCeil + iM35957if + (this.f32499do.m35958new() * iM35955for)];
        Cvolatile.m36065case(bArr, Cvolatile.m36078public(this.f32501if, iCeil), 0);
        int i = iCeil + 0;
        Cvolatile.m36065case(bArr, this.f32500for, i);
        int i2 = i + iM35957if;
        Iterator<Cabstract> it = this.f32502new.iterator();
        while (it.hasNext()) {
            Cvolatile.m36065case(bArr, it.next().toByteArray(), i2);
            i2 += iM35955for;
        }
        return bArr;
    }
}
