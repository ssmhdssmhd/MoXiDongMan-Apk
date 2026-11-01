package net.lingala.zip4j.crypto.PBKDF2;

import android.support.v4.s91;

/* renamed from: net.lingala.zip4j.crypto.PBKDF2.new, reason: invalid class name */
/* loaded from: classes3.dex */
class Cnew {
    /* renamed from: do, reason: not valid java name */
    public boolean m31435do(s91 s91Var, String str) throws NumberFormatException {
        if (s91Var == null || str == null) {
            return true;
        }
        String[] strArrSplit = str.split(":");
        if (strArrSplit.length != 3) {
            return true;
        }
        byte[] bArrM31417for = Cdo.m31417for(strArrSplit[0]);
        int i = Integer.parseInt(strArrSplit[1]);
        byte[] bArrM31417for2 = Cdo.m31417for(strArrSplit[2]);
        s91Var.m7308break(bArrM31417for);
        s91Var.m7316this(i);
        s91Var.m7309case(bArrM31417for2);
        return false;
    }

    /* renamed from: if, reason: not valid java name */
    public String m31436if(s91 s91Var) {
        return Cdo.m31416do(s91Var.m7317try()) + ":" + String.valueOf(s91Var.m7315new()) + ":" + Cdo.m31416do(s91Var.m7310do());
    }
}
