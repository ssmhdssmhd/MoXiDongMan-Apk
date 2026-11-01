package android.support.v4;

import java.nio.charset.StandardCharsets;

/* loaded from: classes3.dex */
public class pa0 {
    /* renamed from: do, reason: not valid java name */
    private int m5921do(String str) {
        return str.getBytes(StandardCharsets.UTF_8).length;
    }

    /* renamed from: else, reason: not valid java name */
    private String m5922else(String str) throws rj2 {
        if (mj2.m4939try(str)) {
            return str;
        }
        throw new rj2("fileNameInZip is null or empty");
    }

    /* renamed from: for, reason: not valid java name */
    private Cgoto m5923for(sk2 sk2Var) throws rj2 {
        Cgoto cgoto = new Cgoto();
        if (sk2Var.m7488if() != null) {
            cgoto.m2761this(sk2Var.m7488if());
        }
        w0 w0VarM7481do = sk2Var.m7481do();
        w0 w0Var = w0.KEY_STRENGTH_128;
        if (w0VarM7481do == w0Var) {
            cgoto.m2759goto(w0Var);
        } else {
            w0 w0VarM7481do2 = sk2Var.m7481do();
            w0 w0Var2 = w0.KEY_STRENGTH_192;
            if (w0VarM7481do2 == w0Var2) {
                cgoto.m2759goto(w0Var2);
            } else {
                w0 w0VarM7481do3 = sk2Var.m7481do();
                w0 w0Var3 = w0.KEY_STRENGTH_256;
                if (w0VarM7481do3 != w0Var3) {
                    throw new rj2("invalid AES key strength");
                }
                cgoto.m2759goto(w0Var3);
            }
        }
        cgoto.m2753break(sk2Var.m7491new());
        return cgoto;
    }

    /* renamed from: if, reason: not valid java name */
    private byte[] m5924if(boolean z, sk2 sk2Var) {
        byte[] bArr = new byte[2];
        bArr[0] = m5925try(z, sk2Var);
        bArr[1] = b9.m478if(bArr[1], 3);
        return bArr;
    }

    /* renamed from: try, reason: not valid java name */
    private byte m5925try(boolean z, sk2 sk2Var) {
        byte bM478if = z ? b9.m478if((byte) 0, 0) : (byte) 0;
        if (sk2Var.m7491new() == hq.DEFLATE) {
            if (sk2Var.m7486for() == fq.NORMAL) {
                bM478if = b9.m477for(b9.m477for(bM478if, 1), 2);
            } else if (sk2Var.m7486for() == fq.MAXIMUM) {
                bM478if = b9.m477for(b9.m478if(bM478if, 1), 2);
            } else if (sk2Var.m7486for() == fq.FAST) {
                bM478if = b9.m478if(b9.m477for(bM478if, 1), 2);
            } else if (sk2Var.m7486for() == fq.FASTEST) {
                bM478if = b9.m478if(b9.m478if(bM478if, 1), 2);
            }
        }
        return sk2Var.m7501throw() ? b9.m478if(bM478if, 3) : bM478if;
    }

    /* renamed from: case, reason: not valid java name */
    public mu0 m5926case(oa0 oa0Var) {
        mu0 mu0Var = new mu0();
        mu0Var.m6616if(ej0.LOCAL_FILE_HEADER);
        mu0Var.m8095synchronized(oa0Var.m8097throw());
        mu0Var.m8098throws(oa0Var.m8100try());
        mu0Var.m8080implements(oa0Var.m8076final());
        mu0Var.m8082instanceof(oa0Var.m8093super());
        mu0Var.m8083interface(oa0Var.m8070class());
        mu0Var.m8101volatile(oa0Var.m8069catch());
        mu0Var.m8087private(oa0Var.m8089public());
        mu0Var.m8066abstract(oa0Var.m8079goto());
        mu0Var.m8091static(oa0Var.m8078for());
        mu0Var.m8073default(oa0Var.m8068case());
        mu0Var.m8094switch(oa0Var.m8085new());
        mu0Var.m8099transient((byte[]) oa0Var.m8071const().clone());
        mu0Var.m8077finally(oa0Var.m8081import());
        return mu0Var;
    }

    /* renamed from: new, reason: not valid java name */
    public oa0 m5927new(sk2 sk2Var, boolean z, int i) throws rj2 {
        oa0 oa0Var = new oa0();
        oa0Var.m6616if(ej0.CENTRAL_DIRECTORY);
        oa0Var.o(20);
        oa0Var.m8095synchronized(20);
        if (sk2Var.m7476catch() && sk2Var.m7475case() == t70.AES) {
            oa0Var.m8098throws(hq.AES_INTERNAL_ONLY);
            oa0Var.m8091static(m5923for(sk2Var));
        } else {
            oa0Var.m8098throws(sk2Var.m7491new());
        }
        if (sk2Var.m7476catch()) {
            if (sk2Var.m7475case() == null || sk2Var.m7475case() == t70.NONE) {
                throw new rj2("Encryption method has to be set when encryptFiles flag is set in zip parameters");
            }
            oa0Var.m8087private(true);
            oa0Var.m8066abstract(sk2Var.m7475case());
        }
        String strM5922else = m5922else(sk2Var.m7500this());
        oa0Var.m8101volatile(strM5922else);
        oa0Var.m8083interface(m5921do(strM5922else));
        if (!z) {
            i = 0;
        }
        oa0Var.i(i);
        if (sk2Var.m7474break() > 0) {
            oa0Var.m8080implements(mj2.m4934case(sk2Var.m7474break()));
        } else {
            oa0Var.m8080implements(mj2.m4934case(System.currentTimeMillis()));
        }
        oa0Var.j(new byte[4]);
        oa0Var.m8086package(db0.m1209throw(strM5922else));
        oa0Var.m8082instanceof(sk2Var.m7487goto());
        if (sk2Var.m7476catch() && sk2Var.m7475case() == t70.ZIP_STANDARD) {
            oa0Var.m8073default(sk2Var.m7482else());
        }
        oa0Var.m8099transient(m5924if(oa0Var.m8089public(), sk2Var));
        oa0Var.m8077finally(sk2Var.m7501throw());
        return oa0Var;
    }
}
