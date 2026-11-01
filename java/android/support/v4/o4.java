package android.support.v4;

import org.objectweb.asm.Cbreak;
import org.objectweb.asm.Cfor;
import org.objectweb.asm.Cif;

/* loaded from: classes3.dex */
public class o4 {

    /* renamed from: do, reason: not valid java name */
    public final String f4408do;

    /* renamed from: for, reason: not valid java name */
    public o4 f4409for;

    /* renamed from: if, reason: not valid java name */
    public byte[] f4410if;

    public o4(String str) {
        this.f4408do = str;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m5455case() {
        return true;
    }

    /* renamed from: do, reason: not valid java name */
    public final int m5456do() {
        int i = 0;
        for (o4 o4Var = this; o4Var != null; o4Var = o4Var.f4409for) {
            i++;
        }
        return i;
    }

    /* renamed from: else, reason: not valid java name */
    public o4 m5457else(Cif cif, int i, int i2, char[] cArr, int i3, Cbreak[] cbreakArr) {
        o4 o4Var = new o4(this.f4408do);
        byte[] bArr = new byte[i2];
        o4Var.f4410if = bArr;
        System.arraycopy(cif.f34063do, i, bArr, 0, i2);
        return o4Var;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m5458for(Cfor cfor, byte[] bArr, int i, int i2, int i3, ee eeVar) {
        for (o4 o4Var = this; o4Var != null; o4Var = o4Var.f4409for) {
            ee eeVarM5459goto = o4Var.m5459goto(cfor, bArr, i, i2, i3);
            eeVar.m1807this(cfor.c(o4Var.f4408do)).m1803else(eeVarM5459goto.f1403if);
            eeVar.m1801case(eeVarM5459goto.f1402do, 0, eeVarM5459goto.f1403if);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public ee m5459goto(Cfor cfor, byte[] bArr, int i, int i2, int i3) {
        ee eeVar = new ee();
        byte[] bArr2 = this.f4410if;
        eeVar.f1402do = bArr2;
        eeVar.f1403if = bArr2.length;
        return eeVar;
    }

    /* renamed from: if, reason: not valid java name */
    public final int m5460if(Cfor cfor, byte[] bArr, int i, int i2, int i3) {
        int i4 = 0;
        for (o4 o4Var = this; o4Var != null; o4Var = o4Var.f4409for) {
            cfor.c(o4Var.f4408do);
            i4 += o4Var.m5459goto(cfor, bArr, i, i2, i3).f1403if + 6;
        }
        return i4;
    }

    /* renamed from: new, reason: not valid java name */
    public Cbreak[] m5461new() {
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m5462try() {
        return false;
    }
}
