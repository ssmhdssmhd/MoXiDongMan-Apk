package android.support.v4;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import net.lingala.zip4j.io.inputstream.Ccase;
import net.lingala.zip4j.io.inputstream.Cthis;

/* loaded from: classes3.dex */
public class wc2 {
    /* renamed from: do, reason: not valid java name */
    public static void m9119do(oa0 oa0Var, File file) throws IOException {
        try {
            Path path = file.toPath();
            db0.m1203import(path, oa0Var.c());
            db0.m1204native(path, oa0Var.m8076final());
        } catch (NoSuchMethodError unused) {
            db0.m1206public(file, oa0Var.m8076final());
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static Cthis m9120if(rk2 rk2Var, oa0 oa0Var, char[] cArr) throws IOException {
        Ccase ccase;
        Ccase ccase2 = null;
        try {
            ccase = new Ccase(rk2Var.m7027catch(), rk2Var.m7029const(), rk2Var.m7051try().m9068new());
        } catch (IOException e) {
            e = e;
        }
        try {
            ccase.m31456for(oa0Var);
            Cthis cthis = new Cthis(ccase, cArr);
            if (cthis.m31495else(oa0Var) != null) {
                return cthis;
            }
            throw new rj2("Could not locate local file header for corresponding file header");
        } catch (IOException e2) {
            e = e2;
            ccase2 = ccase;
            if (ccase2 != null) {
                ccase2.close();
            }
            throw e;
        }
    }
}
