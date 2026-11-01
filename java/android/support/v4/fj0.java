package android.support.v4;

import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.List;

/* loaded from: classes3.dex */
public class fj0 {
    /* renamed from: do, reason: not valid java name */
    public static String m2314do(byte[] bArr, boolean z) {
        if (z) {
            return new String(bArr, StandardCharsets.UTF_8);
        }
        try {
            return new String(bArr, on0.f4690class);
        } catch (UnsupportedEncodingException unused) {
            return new String(bArr);
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static oa0 m2315for(rk2 rk2Var, String str) throws rj2 {
        if (rk2Var == null) {
            throw new rj2("zip model is null, cannot determine file header with exact match for fileName: " + str);
        }
        if (!mj2.m4939try(str)) {
            throw new rj2("file name is null, cannot determine file header with exact match for fileName: " + str);
        }
        if (rk2Var.m7038if() == null) {
            throw new rj2("central directory is null, cannot determine file header with exact match for fileName: " + str);
        }
        if (rk2Var.m7038if().m9135if() == null) {
            throw new rj2("file Headers are null, cannot determine file header with exact match for fileName: " + str);
        }
        if (rk2Var.m7038if().m9135if().size() == 0) {
            return null;
        }
        for (oa0 oa0Var : rk2Var.m7038if().m9135if()) {
            String strM8069catch = oa0Var.m8069catch();
            if (mj2.m4939try(strM8069catch) && str.equalsIgnoreCase(strM8069catch)) {
                return oa0Var;
            }
        }
        return null;
    }

    /* renamed from: if, reason: not valid java name */
    public static oa0 m2316if(rk2 rk2Var, String str) throws rj2 {
        oa0 oa0VarM2315for = m2315for(rk2Var, str);
        if (oa0VarM2315for != null) {
            return oa0VarM2315for;
        }
        String strReplaceAll = str.replaceAll("\\\\", on0.f4694final);
        oa0 oa0VarM2315for2 = m2315for(rk2Var, strReplaceAll);
        return oa0VarM2315for2 == null ? m2315for(rk2Var, strReplaceAll.replaceAll(on0.f4694final, "\\\\")) : oa0VarM2315for2;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m2317new(rk2 rk2Var, oa0 oa0Var) throws rj2 {
        if (rk2Var == null || oa0Var == null) {
            throw new rj2("input parameters is null, cannot determine index of file header");
        }
        if (rk2Var.m7038if() == null || rk2Var.m7038if().m9135if() == null || rk2Var.m7038if().m9135if().size() <= 0) {
            return -1;
        }
        String strM8069catch = oa0Var.m8069catch();
        if (!mj2.m4939try(strM8069catch)) {
            throw new rj2("file name in file header is empty or null, cannot determine index of file header");
        }
        List<oa0> listM9135if = rk2Var.m7038if().m9135if();
        for (int i = 0; i < listM9135if.size(); i++) {
            String strM8069catch2 = listM9135if.get(i).m8069catch();
            if (mj2.m4939try(strM8069catch2) && strM8069catch.equalsIgnoreCase(strM8069catch2)) {
                return i;
            }
        }
        return -1;
    }
}
