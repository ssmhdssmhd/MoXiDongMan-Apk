package android.support.v4;

/* loaded from: classes3.dex */
public class kf0 {
    /* renamed from: case, reason: not valid java name */
    public void m4389case(String str, byte[] bArr) {
        System.out.println(str);
        int i = 0;
        for (byte b : bArr) {
            System.out.println(i + "; " + ((int) b));
            i++;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public int m4390do(byte[] bArr) {
        return ((bArr[3] & 255) << 24) | (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16);
    }

    /* renamed from: else, reason: not valid java name */
    public void m4391else(String str, byte[][] bArr) {
        System.out.println(str);
        int i = 0;
        for (byte[] bArr2 : bArr) {
            for (int i2 = 0; i2 < bArr[0].length; i2++) {
                System.out.println(i + "; " + ((int) bArr2[i2]));
                i++;
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m4392for(byte[][] bArr) {
        byte[] bArr2 = new byte[bArr.length * bArr[0].length];
        int length = 0;
        for (int i = 0; i < bArr.length; i++) {
            System.arraycopy(bArr[i], 0, bArr2, length, bArr[i].length);
            length += bArr[i].length;
        }
        return bArr2;
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m4393goto(int i) {
        int i2 = 1;
        while (i2 < i) {
            i2 <<= 1;
        }
        return i == i2;
    }

    /* renamed from: if, reason: not valid java name */
    public int m4394if(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = i2 + 1;
        int i4 = (bArr[i] & 255) | ((bArr[i2] & 255) << 8);
        int i5 = i3 + 1;
        return ((bArr[i5] & 255) << 24) | i4 | ((bArr[i3] & 255) << 16);
    }

    /* renamed from: new, reason: not valid java name */
    public int m4395new(int i) {
        int i2 = 1;
        int i3 = 2;
        while (i3 < i) {
            i3 <<= 1;
            i2++;
        }
        return i2;
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m4396try(int i) {
        return new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255)};
    }
}
