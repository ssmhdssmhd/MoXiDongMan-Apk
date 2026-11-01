package org.bouncycastle.crypto.util;

import android.support.v4.q3;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.u;

/* renamed from: org.bouncycastle.crypto.util.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew {

    /* renamed from: do, reason: not valid java name */
    private final byte[] f30884do;

    /* renamed from: org.bouncycastle.crypto.util.new$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f30885do;

        static {
            int[] iArr = new int[Cfor.values().length];
            f30885do = iArr;
            try {
                iArr[Cfor.UNILATERALU.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f30885do[Cfor.BILATERALU.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f30885do[Cfor.UNILATERALV.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f30885do[Cfor.BILATERALV.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: org.bouncycastle.crypto.util.new$for, reason: invalid class name */
    public enum Cfor {
        UNILATERALU("KC_1_U"),
        UNILATERALV("KC_1_V"),
        BILATERALU("KC_2_U"),
        BILATERALV("KC_2_V");

        private final String enc;

        Cfor(String str) {
            this.enc = str;
        }

        public byte[] getHeader() {
            return org.bouncycastle.util.Cfor.m36358goto(this.enc);
        }
    }

    /* renamed from: org.bouncycastle.crypto.util.new$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: case, reason: not valid java name */
        private byte[] f30887case;

        /* renamed from: do, reason: not valid java name */
        private final Cfor f30888do;

        /* renamed from: for, reason: not valid java name */
        private Cclass f30889for;

        /* renamed from: if, reason: not valid java name */
        private Cclass f30890if;

        /* renamed from: new, reason: not valid java name */
        private Cclass f30891new;

        /* renamed from: try, reason: not valid java name */
        private Cclass f30892try;

        public Cif(Cfor cfor, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
            this.f30888do = cfor;
            this.f30890if = Ccase.m34464do(bArr);
            this.f30889for = Ccase.m34464do(bArr2);
            this.f30891new = Ccase.m34464do(bArr3);
            this.f30892try = Ccase.m34464do(bArr4);
        }

        /* renamed from: if, reason: not valid java name */
        private byte[] m34498if(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6) {
            return q3.m6367default(q3.m6370extends(bArr, bArr2, bArr3), q3.m6370extends(bArr4, bArr5, bArr6));
        }

        /* renamed from: do, reason: not valid java name */
        public Cnew m34499do() {
            int i = Cdo.f30885do[this.f30888do.ordinal()];
            Cdo cdo = null;
            if (i == 1 || i == 2) {
                return new Cnew(m34498if(this.f30888do.getHeader(), Ccase.m34465if(this.f30890if), Ccase.m34465if(this.f30889for), Ccase.m34465if(this.f30891new), Ccase.m34465if(this.f30892try), this.f30887case), cdo);
            }
            if (i == 3 || i == 4) {
                return new Cnew(m34498if(this.f30888do.getHeader(), Ccase.m34465if(this.f30889for), Ccase.m34465if(this.f30890if), Ccase.m34465if(this.f30892try), Ccase.m34465if(this.f30891new), this.f30887case), cdo);
            }
            throw new IllegalStateException("Unknown type encountered in build");
        }

        /* renamed from: for, reason: not valid java name */
        public Cif m34500for(byte[] bArr) {
            this.f30887case = Ccase.m34465if(new u(false, 0, Ccase.m34464do(bArr)));
            return this;
        }
    }

    private Cnew(byte[] bArr) {
        this.f30884do = bArr;
    }

    public /* synthetic */ Cnew(byte[] bArr, Cdo cdo) {
        this(bArr);
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m34497do() {
        return q3.m6371final(this.f30884do);
    }
}
