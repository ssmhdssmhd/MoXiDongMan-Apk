package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.hn0;
import java.io.Serializable;
import java.util.Map;
import java.util.TreeMap;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.pqc.crypto.xmss.Cgoto;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements Serializable {
    private static final long serialVersionUID = -3464451825208522308L;
    private final Map<Integer, Cdo> bdsState = new TreeMap();

    public Cif() {
    }

    public Cif(Cif cif, Cpublic cpublic, long j, byte[] bArr, byte[] bArr2) {
        for (Integer num : cif.bdsState.keySet()) {
            this.bdsState.put(num, cif.bdsState.get(num));
        }
        m35896do(cpublic, j, bArr, bArr2);
    }

    public Cif(Cpublic cpublic, long j, byte[] bArr, byte[] bArr2) {
        for (long j2 = 0; j2 < j; j2++) {
            m35896do(cpublic, j2, bArr, bArr2);
        }
    }

    /* renamed from: do, reason: not valid java name */
    private void m35896do(Cpublic cpublic, long j, byte[] bArr, byte[] bArr2) {
        Cfinally cfinallyM35956goto = cpublic.m35956goto();
        int iM35884new = cfinallyM35956goto.m35884new();
        long jM36067class = Cvolatile.m36067class(j, iM35884new);
        int iM36066catch = Cvolatile.m36066catch(j, iM35884new);
        Cgoto cgoto = (Cgoto) new Cgoto.Cif().m36053this(jM36067class).m35895throw(iM36066catch).mo35875try();
        int i = (1 << iM35884new) - 1;
        if (iM36066catch < i) {
            if (get(0) == null || iM36066catch == 0) {
                put(0, new Cdo(cfinallyM35956goto, bArr, bArr2, cgoto));
            }
            update(0, bArr, bArr2, cgoto);
        }
        for (int i2 = 1; i2 < cpublic.m35958new(); i2++) {
            int iM36066catch2 = Cvolatile.m36066catch(jM36067class, iM35884new);
            jM36067class = Cvolatile.m36067class(jM36067class, iM35884new);
            Cgoto cgoto2 = (Cgoto) new Cgoto.Cif().m36052goto(i2).m36053this(jM36067class).m35895throw(iM36066catch2).mo35875try();
            if (iM36066catch2 < i && Cvolatile.m36079super(j, iM35884new, i2)) {
                if (get(i2) == null) {
                    put(i2, new Cdo(cpublic.m35956goto(), bArr, bArr2, cgoto2));
                }
                update(i2, bArr, bArr2, cgoto2);
            }
        }
    }

    public Cdo get(int i) {
        return this.bdsState.get(hn0.m3072for(i));
    }

    public boolean isEmpty() {
        return this.bdsState.isEmpty();
    }

    public void put(int i, Cdo cdo) {
        this.bdsState.put(hn0.m3072for(i), cdo);
    }

    public Cdo update(int i, byte[] bArr, byte[] bArr2, Cgoto cgoto) {
        return this.bdsState.put(hn0.m3072for(i), this.bdsState.get(hn0.m3072for(i)).getNextState(bArr, bArr2, cgoto));
    }

    public Cif withWOTSDigest(Ccatch ccatch) {
        Cif cif = new Cif();
        for (Integer num : this.bdsState.keySet()) {
            cif.bdsState.put(num, this.bdsState.get(num).withWOTSDigest(ccatch));
        }
        return cif;
    }
}
