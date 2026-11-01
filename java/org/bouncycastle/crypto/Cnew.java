package org.bouncycastle.crypto;

import android.support.v4.l91;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: org.bouncycastle.crypto.new, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cnew implements CharToByteConverter {
    public static final Cnew ASCII;
    public static final Cnew PKCS12;
    public static final Cnew UTF8;

    /* renamed from: do, reason: not valid java name */
    private static final /* synthetic */ Cnew[] f30196do;

    /* renamed from: org.bouncycastle.crypto.new$do, reason: invalid class name */
    public enum Cdo extends Cnew {
        public Cdo(String str, int i) {
            super(str, i, null);
        }

        @Override // org.bouncycastle.crypto.CharToByteConverter
        public byte[] convert(char[] cArr) {
            return l91.m4621if(cArr);
        }

        @Override // org.bouncycastle.crypto.CharToByteConverter
        public String getType() {
            return "ASCII";
        }
    }

    static {
        Cdo cdo = new Cdo("ASCII", 0);
        ASCII = cdo;
        Cnew cnew = new Cnew("UTF8", 1) { // from class: org.bouncycastle.crypto.new.if
            {
                Cdo cdo2 = null;
            }

            @Override // org.bouncycastle.crypto.CharToByteConverter
            public byte[] convert(char[] cArr) {
                return l91.m4620for(cArr);
            }

            @Override // org.bouncycastle.crypto.CharToByteConverter
            public String getType() {
                return "UTF8";
            }
        };
        UTF8 = cnew;
        Cnew cnew2 = new Cnew("PKCS12", 2) { // from class: org.bouncycastle.crypto.new.for
            {
                Cdo cdo2 = null;
            }

            @Override // org.bouncycastle.crypto.CharToByteConverter
            public byte[] convert(char[] cArr) {
                return l91.m4619do(cArr);
            }

            @Override // org.bouncycastle.crypto.CharToByteConverter
            public String getType() {
                return "PKCS12";
            }
        };
        PKCS12 = cnew2;
        f30196do = new Cnew[]{cdo, cnew, cnew2};
    }

    private Cnew(String str, int i) {
    }

    public /* synthetic */ Cnew(String str, int i, Cdo cdo) {
        this(str, i);
    }

    public static Cnew valueOf(String str) {
        return (Cnew) Enum.valueOf(Cnew.class, str);
    }

    public static Cnew[] values() {
        return (Cnew[]) f30196do.clone();
    }
}
