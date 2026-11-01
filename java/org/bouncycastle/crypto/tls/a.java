package org.bouncycastle.crypto.tls;

import android.support.v4.n72;
import android.support.v4.wd;
import com.uc.crashsdk.export.LogType;
import java.io.IOException;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public final class a {

    /* renamed from: do, reason: not valid java name */
    private int f30455do;

    /* renamed from: if, reason: not valid java name */
    private String f30456if;

    /* renamed from: for, reason: not valid java name */
    public static final a f30451for = new a(LogType.UNEXP_OTHER, "SSL 3.0");

    /* renamed from: new, reason: not valid java name */
    public static final a f30453new = new a(769, "TLS 1.0");

    /* renamed from: try, reason: not valid java name */
    public static final a f30454try = new a(770, "TLS 1.1");

    /* renamed from: case, reason: not valid java name */
    public static final a f30449case = new a(771, "TLS 1.2");

    /* renamed from: else, reason: not valid java name */
    public static final a f30450else = new a(65279, "DTLS 1.0");

    /* renamed from: goto, reason: not valid java name */
    public static final a f30452goto = new a(65277, "DTLS 1.2");

    private a(int i, String str) {
        this.f30455do = i & 65535;
        this.f30456if = str;
    }

    /* renamed from: else, reason: not valid java name */
    private static a m33933else(int i, int i2, String str) throws IOException {
        l0.m34218while(i);
        l0.m34218while(i2);
        int i3 = (i << 8) | i2;
        return new a(i3, str + " 0x" + Cfor.m36356final(Integer.toHexString(65536 | i3).substring(1)));
    }

    /* renamed from: if, reason: not valid java name */
    public static a m33934if(int i, int i2) throws IOException {
        String str;
        if (i != 3) {
            if (i != 254) {
                throw new n72((short) 47);
            }
            switch (i2) {
                case 253:
                    return f30452goto;
                case wd.i2 /* 254 */:
                    throw new n72((short) 47);
                case 255:
                    return f30450else;
                default:
                    str = "DTLS";
                    break;
            }
        } else {
            if (i2 == 0) {
                return f30451for;
            }
            if (i2 == 1) {
                return f30453new;
            }
            if (i2 == 2) {
                return f30454try;
            }
            if (i2 == 3) {
                return f30449case;
            }
            str = "TLS";
        }
        return m33933else(i, i2, str);
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m33935break(a aVar) {
        if (m33944try() != aVar.m33944try()) {
            return false;
        }
        int iM33936case = aVar.m33936case() - m33936case();
        if (m33941goto()) {
            if (iM33936case <= 0) {
                return false;
            }
        } else if (iM33936case >= 0) {
            return false;
        }
        return true;
    }

    /* renamed from: case, reason: not valid java name */
    public int m33936case() {
        return this.f30455do & 255;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m33937catch() {
        return this == f30451for;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m33938class() {
        return m33944try() == 3;
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m33939do(a aVar) {
        return aVar != null && this.f30455do == aVar.f30455do;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof a) && m33939do((a) obj));
    }

    /* renamed from: for, reason: not valid java name */
    public a m33940for() {
        return !m33941goto() ? this : this == f30450else ? f30454try : f30449case;
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m33941goto() {
        return m33944try() == 254;
    }

    public int hashCode() {
        return this.f30455do;
    }

    /* renamed from: new, reason: not valid java name */
    public int m33942new() {
        return this.f30455do;
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m33943this(a aVar) {
        if (m33944try() != aVar.m33944try()) {
            return false;
        }
        int iM33936case = aVar.m33936case() - m33936case();
        if (m33941goto()) {
            if (iM33936case > 0) {
                return false;
            }
        } else if (iM33936case < 0) {
            return false;
        }
        return true;
    }

    public String toString() {
        return this.f30456if;
    }

    /* renamed from: try, reason: not valid java name */
    public int m33944try() {
        return this.f30455do >> 8;
    }
}
