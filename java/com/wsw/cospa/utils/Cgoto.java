package com.wsw.cospa.utils;

import android.support.v4.wd;
import com.google.common.primitives.Cfinal;
import java.io.ByteArrayOutputStream;
import java.nio.charset.StandardCharsets;
import okio.Utf8;

/* renamed from: com.wsw.cospa.utils.goto, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cgoto {

    /* renamed from: do, reason: not valid java name */
    private static final byte f22651do = 7;

    /* renamed from: if, reason: not valid java name */
    private static final byte[] f22652if = {0, 10, 13, 34, 38, 92};

    /* renamed from: com.wsw.cospa.utils.goto$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        private final ByteArrayOutputStream f22653do = new ByteArrayOutputStream();

        /* renamed from: if, reason: not valid java name */
        private byte f22655if = 0;

        /* renamed from: for, reason: not valid java name */
        private byte f22654for = 0;

        /* renamed from: do, reason: not valid java name */
        public byte[] m26909do(String str) {
            byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
            for (int i = 0; i < bytes.length; i++) {
                if (bytes[i] > Byte.MAX_VALUE) {
                    int i2 = (bytes[i] >>> 8) & 7;
                    if (i2 != 7) {
                        m26910if(Cgoto.f22652if[i2]);
                    }
                    m26910if(bytes[i] & Byte.MAX_VALUE);
                } else {
                    m26910if(bytes[i]);
                }
            }
            return this.f22653do.toByteArray();
        }

        /* renamed from: if, reason: not valid java name */
        public void m26910if(int i) {
            int i2 = i << 1;
            byte b = this.f22655if;
            byte b2 = this.f22654for;
            byte b3 = (byte) (b | (i2 >>> b2));
            this.f22655if = b3;
            byte b4 = (byte) (b2 + 7);
            this.f22654for = b4;
            if (b4 >= 8) {
                this.f22653do.write(b3);
                byte b5 = (byte) (this.f22654for - 8);
                this.f22654for = b5;
                this.f22655if = (byte) ((i2 << (7 - b5)) & 255);
            }
        }
    }

    /* renamed from: com.wsw.cospa.utils.goto$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: new, reason: not valid java name */
        private static final byte f22656new = Byte.MIN_VALUE;

        /* renamed from: for, reason: not valid java name */
        private byte[] f22658for;

        /* renamed from: do, reason: not valid java name */
        private int f22657do = 0;

        /* renamed from: if, reason: not valid java name */
        private int f22659if = 0;

        public Cif(byte[] bArr) {
            this.f22658for = bArr;
        }

        /* renamed from: if, reason: not valid java name */
        private int m26911if(byte b) {
            for (int i = 0; i < Cgoto.f22652if.length; i++) {
                if (Cgoto.f22652if[i] == b) {
                    return i;
                }
            }
            return -1;
        }

        /* renamed from: do, reason: not valid java name */
        public String m26912do() {
            byte b;
            byte[] bArr = this.f22658for;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length + (bArr.length / 8) + 1);
            while (true) {
                byte bM26913for = m26913for();
                if (bM26913for == Byte.MIN_VALUE) {
                    return new String(byteArrayOutputStream.toByteArray(), StandardCharsets.UTF_8);
                }
                int iM26911if = m26911if(bM26913for);
                if (iM26911if != -1) {
                    byte bM26913for2 = m26913for();
                    if (bM26913for2 == Byte.MIN_VALUE) {
                        b = (byte) (-34);
                    } else {
                        b = (byte) (((iM26911if & 7) << 2) | (-62));
                        bM26913for = bM26913for2;
                    }
                    int i = (bM26913for & Cfinal.f15506do) > 0 ? 1 : 0;
                    byte b2 = (byte) ((bM26913for & Utf8.REPLACEMENT_BYTE) | (-128));
                    byteArrayOutputStream.write((byte) (b | ((byte) i)));
                    byteArrayOutputStream.write(b2);
                } else {
                    byteArrayOutputStream.write(bM26913for);
                }
            }
        }

        /* renamed from: for, reason: not valid java name */
        public byte m26913for() {
            int i = this.f22657do;
            byte[] bArr = this.f22658for;
            if (i >= bArr.length) {
                return Byte.MIN_VALUE;
            }
            byte b = bArr[i];
            int i2 = this.f22659if;
            int i3 = ((b & (wd.i2 >>> i2)) << i2) >>> 1;
            int i4 = i2 + 7;
            this.f22659if = i4;
            if (i4 < 8) {
                return (byte) i3;
            }
            int i5 = i4 - 8;
            this.f22659if = i5;
            int i6 = i + 1;
            this.f22657do = i6;
            return i6 >= bArr.length ? (byte) i3 : (byte) ((((bArr[i6] & (65280 >>> i5)) & 255) >>> (8 - i5)) | i3);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public String m26907for(byte[] bArr) {
        return new Cif(bArr).m26912do();
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m26908if(String str) {
        return new Cdo().m26909do(str);
    }
}
