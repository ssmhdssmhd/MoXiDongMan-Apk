package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.q3;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.bouncycastle.pqc.crypto.xmss.Cgoto;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.this, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cthis {

    /* renamed from: do, reason: not valid java name */
    private final Ccatch f32508do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f32509for;

    /* renamed from: if, reason: not valid java name */
    private final Ccase f32510if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f32511new;

    public Cthis(Ccatch ccatch) {
        Objects.requireNonNull(ccatch, "params == null");
        this.f32508do = ccatch;
        int iM35845if = ccatch.m35845if();
        this.f32510if = new Ccase(ccatch.m35842do(), iM35845if);
        this.f32509for = new byte[iM35845if];
        this.f32511new = new byte[iM35845if];
    }

    /* renamed from: do, reason: not valid java name */
    private byte[] m36029do(byte[] bArr, int i, int i2, Cgoto cgoto) {
        int iM35845if = this.f32508do.m35845if();
        Objects.requireNonNull(bArr, "startHash == null");
        if (bArr.length != iM35845if) {
            throw new IllegalArgumentException("startHash needs to be " + iM35845if + "bytes");
        }
        Objects.requireNonNull(cgoto, "otsHashAddress == null");
        Objects.requireNonNull(cgoto.mo35866try(), "otsHashAddress byte array == null");
        int i3 = i + i2;
        if (i3 > this.f32508do.m35843else() - 1) {
            throw new IllegalArgumentException("max chain length must not be greater than w");
        }
        if (i2 == 0) {
            return bArr;
        }
        byte[] bArrM36029do = m36029do(bArr, i, i2 - 1, cgoto);
        Cgoto cgoto2 = (Cgoto) new Cgoto.Cif().m36052goto(cgoto.m36045if()).m36053this(cgoto.m36044for()).m35895throw(cgoto.m35888goto()).m35893final(cgoto.m35886case()).m35894super(i3 - 1).m36051else(0).mo35875try();
        byte[] bArrM35840new = this.f32510if.m35840new(this.f32511new, cgoto2.mo35866try());
        byte[] bArrM35840new2 = this.f32510if.m35840new(this.f32511new, ((Cgoto) new Cgoto.Cif().m36052goto(cgoto2.m36045if()).m36053this(cgoto2.m36044for()).m35895throw(cgoto2.m35888goto()).m35893final(cgoto2.m35886case()).m35894super(cgoto2.m35887else()).m36051else(1).mo35875try()).mo35866try());
        byte[] bArr2 = new byte[iM35845if];
        for (int i4 = 0; i4 < iM35845if; i4++) {
            bArr2[i4] = (byte) (bArrM36029do[i4] ^ bArrM35840new2[i4]);
        }
        return this.f32510if.m35837do(bArrM35840new, bArr2);
    }

    /* renamed from: for, reason: not valid java name */
    private byte[] m36030for(int i) {
        if (i < 0 || i >= this.f32508do.m35844for()) {
            throw new IllegalArgumentException("index out of bounds");
        }
        return this.f32510if.m35840new(this.f32509for, Cvolatile.m36078public(i, 32));
    }

    /* renamed from: if, reason: not valid java name */
    private List<Integer> m36031if(byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr, "msg == null");
        if (i != 4 && i != 16) {
            throw new IllegalArgumentException("w needs to be 4 or 16");
        }
        int iM36083while = Cvolatile.m36083while(i);
        if (i2 > (bArr.length * 8) / iM36083while) {
            throw new IllegalArgumentException("outLength too big");
        }
        ArrayList arrayList = new ArrayList();
        for (int i3 : bArr) {
            for (int i4 = 8 - iM36083while; i4 >= 0; i4 -= iM36083while) {
                arrayList.add(Integer.valueOf((i3 >> i4) & (i - 1)));
                if (arrayList.size() == i2) {
                    return arrayList;
                }
            }
        }
        return arrayList;
    }

    /* renamed from: break, reason: not valid java name */
    public byte[] m36032break() {
        return q3.m6371final(this.f32509for);
    }

    /* renamed from: case, reason: not valid java name */
    public Cclass m36033case() {
        int iM35844for = this.f32508do.m35844for();
        byte[][] bArr = new byte[iM35844for][];
        for (int i = 0; i < iM35844for; i++) {
            bArr[i] = m36030for(i);
        }
        return new Cclass(this.f32508do, bArr);
    }

    /* renamed from: catch, reason: not valid java name */
    public byte[] m36034catch(byte[] bArr, Cgoto cgoto) {
        return this.f32510if.m35840new(bArr, ((Cgoto) new Cgoto.Cif().m36052goto(cgoto.m36045if()).m36053this(cgoto.m36044for()).m35895throw(cgoto.m35888goto()).mo35875try()).mo35866try());
    }

    /* renamed from: class, reason: not valid java name */
    public void m36035class(byte[] bArr, byte[] bArr2) {
        Objects.requireNonNull(bArr, "secretKeySeed == null");
        if (bArr.length != this.f32508do.m35845if()) {
            throw new IllegalArgumentException("size of secretKeySeed needs to be equal to size of digest");
        }
        Objects.requireNonNull(bArr2, "publicSeed == null");
        if (bArr2.length != this.f32508do.m35845if()) {
            throw new IllegalArgumentException("size of publicSeed needs to be equal to size of digest");
        }
        this.f32509for = bArr;
        this.f32511new = bArr2;
    }

    /* renamed from: const, reason: not valid java name */
    public Cfinal m36036const(byte[] bArr, Cgoto cgoto) {
        Objects.requireNonNull(bArr, "messageDigest == null");
        if (bArr.length != this.f32508do.m35845if()) {
            throw new IllegalArgumentException("size of messageDigest needs to be equal to size of digest");
        }
        Objects.requireNonNull(cgoto, "otsHashAddress == null");
        List<Integer> listM36031if = m36031if(bArr, this.f32508do.m35843else(), this.f32508do.m35846new());
        int iM35843else = 0;
        for (int i = 0; i < this.f32508do.m35846new(); i++) {
            iM35843else += (this.f32508do.m35843else() - 1) - listM36031if.get(i).intValue();
        }
        int iM35847try = iM35843else << (8 - ((this.f32508do.m35847try() * Cvolatile.m36083while(this.f32508do.m35843else())) % 8));
        double dM35847try = this.f32508do.m35847try() * Cvolatile.m36083while(this.f32508do.m35843else());
        Double.isNaN(dM35847try);
        listM36031if.addAll(m36031if(Cvolatile.m36078public(iM35847try, (int) Math.ceil(dM35847try / 8.0d)), this.f32508do.m35843else(), this.f32508do.m35847try()));
        byte[][] bArr2 = new byte[this.f32508do.m35844for()][];
        for (int i2 = 0; i2 < this.f32508do.m35844for(); i2++) {
            cgoto = (Cgoto) new Cgoto.Cif().m36052goto(cgoto.m36045if()).m36053this(cgoto.m36044for()).m35895throw(cgoto.m35888goto()).m35893final(i2).m35894super(cgoto.m35887else()).m36051else(cgoto.m36043do()).mo35875try();
            bArr2[i2] = m36029do(m36030for(i2), 0, listM36031if.get(i2).intValue(), cgoto);
        }
        return new Cfinal(this.f32508do, bArr2);
    }

    /* renamed from: else, reason: not valid java name */
    public Cconst m36037else(Cgoto cgoto) {
        Objects.requireNonNull(cgoto, "otsHashAddress == null");
        byte[][] bArr = new byte[this.f32508do.m35844for()][];
        for (int i = 0; i < this.f32508do.m35844for(); i++) {
            cgoto = (Cgoto) new Cgoto.Cif().m36052goto(cgoto.m36045if()).m36053this(cgoto.m36044for()).m35895throw(cgoto.m35888goto()).m35893final(i).m35894super(cgoto.m35887else()).m36051else(cgoto.m36043do()).mo35875try();
            bArr[i] = m36029do(m36030for(i), 0, this.f32508do.m35843else() - 1, cgoto);
        }
        return new Cconst(this.f32508do, bArr);
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m36038final(byte[] bArr, Cfinal cfinal, Cgoto cgoto) {
        Objects.requireNonNull(bArr, "messageDigest == null");
        if (bArr.length != this.f32508do.m35845if()) {
            throw new IllegalArgumentException("size of messageDigest needs to be equal to size of digest");
        }
        Objects.requireNonNull(cfinal, "signature == null");
        Objects.requireNonNull(cgoto, "otsHashAddress == null");
        return Cvolatile.m36069do(m36039goto(bArr, cfinal, cgoto).m35849do(), m36037else(cgoto).m35849do());
    }

    /* renamed from: goto, reason: not valid java name */
    public Cconst m36039goto(byte[] bArr, Cfinal cfinal, Cgoto cgoto) {
        Objects.requireNonNull(bArr, "messageDigest == null");
        if (bArr.length != this.f32508do.m35845if()) {
            throw new IllegalArgumentException("size of messageDigest needs to be equal to size of digest");
        }
        Objects.requireNonNull(cfinal, "signature == null");
        Objects.requireNonNull(cgoto, "otsHashAddress == null");
        List<Integer> listM36031if = m36031if(bArr, this.f32508do.m35843else(), this.f32508do.m35846new());
        int iM35843else = 0;
        for (int i = 0; i < this.f32508do.m35846new(); i++) {
            iM35843else += (this.f32508do.m35843else() - 1) - listM36031if.get(i).intValue();
        }
        int iM35847try = iM35843else << (8 - ((this.f32508do.m35847try() * Cvolatile.m36083while(this.f32508do.m35843else())) % 8));
        double dM35847try = this.f32508do.m35847try() * Cvolatile.m36083while(this.f32508do.m35843else());
        Double.isNaN(dM35847try);
        listM36031if.addAll(m36031if(Cvolatile.m36078public(iM35847try, (int) Math.ceil(dM35847try / 8.0d)), this.f32508do.m35843else(), this.f32508do.m35847try()));
        byte[][] bArr2 = new byte[this.f32508do.m35844for()][];
        for (int i2 = 0; i2 < this.f32508do.m35844for(); i2++) {
            cgoto = (Cgoto) new Cgoto.Cif().m36052goto(cgoto.m36045if()).m36053this(cgoto.m36044for()).m35895throw(cgoto.m35888goto()).m35893final(i2).m35894super(cgoto.m35887else()).m36051else(cgoto.m36043do()).mo35875try();
            bArr2[i2] = m36029do(cfinal.m35878do()[i2], listM36031if.get(i2).intValue(), (this.f32508do.m35843else() - 1) - listM36031if.get(i2).intValue(), cgoto);
        }
        return new Cconst(this.f32508do, bArr2);
    }

    /* renamed from: new, reason: not valid java name */
    public Ccase m36040new() {
        return this.f32510if;
    }

    /* renamed from: this, reason: not valid java name */
    public byte[] m36041this() {
        return q3.m6371final(this.f32511new);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m36042try() {
        return this.f32508do;
    }
}
