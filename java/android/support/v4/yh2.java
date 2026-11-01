package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;

/* loaded from: classes3.dex */
public class yh2 {
    /* renamed from: do, reason: not valid java name */
    public int m9870do(Cif cif) {
        return (cif.mo35334switch() + 7) / 8;
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m9871for(BigInteger bigInteger, int i) {
        byte[] byteArray = bigInteger.toByteArray();
        if (i < byteArray.length) {
            byte[] bArr = new byte[i];
            System.arraycopy(byteArray, byteArray.length - i, bArr, 0, i);
            return bArr;
        }
        if (i <= byteArray.length) {
            return byteArray;
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(byteArray, 0, bArr2, i - byteArray.length, byteArray.length);
        return bArr2;
    }

    /* renamed from: if, reason: not valid java name */
    public int m9872if(Cfor cfor) {
        return (cfor.mo332else() + 7) / 8;
    }
}
