package freemarker.ext.beans;

import com.uc.crashsdk.export.LogType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.bouncycastle.pqc.crypto.qtesla.Ccase;

/* loaded from: classes.dex */
class g {

    /* renamed from: break, reason: not valid java name */
    public static final int f24554break = 1024;

    /* renamed from: case, reason: not valid java name */
    public static final int f24555case = 64;

    /* renamed from: catch, reason: not valid java name */
    public static final int f24556catch = 2048;

    /* renamed from: class, reason: not valid java name */
    public static final int f24557class = 4096;

    /* renamed from: const, reason: not valid java name */
    public static final int f24558const = 8192;

    /* renamed from: do, reason: not valid java name */
    public static final int f24559do = 1;

    /* renamed from: else, reason: not valid java name */
    public static final int f24560else = 128;

    /* renamed from: final, reason: not valid java name */
    public static final int f24561final = 16384;

    /* renamed from: for, reason: not valid java name */
    public static final int f24562for = 8;

    /* renamed from: goto, reason: not valid java name */
    public static final int f24563goto = 256;

    /* renamed from: if, reason: not valid java name */
    public static final int f24564if = 4;

    /* renamed from: import, reason: not valid java name */
    public static final int f24565import = 262144;

    /* renamed from: native, reason: not valid java name */
    public static final int f24566native = 524288;

    /* renamed from: new, reason: not valid java name */
    public static final int f24567new = 16;

    /* renamed from: public, reason: not valid java name */
    public static final int f24568public = 522240;

    /* renamed from: return, reason: not valid java name */
    public static final int f24569return = 316;

    /* renamed from: static, reason: not valid java name */
    public static final int f24570static = 704;

    /* renamed from: super, reason: not valid java name */
    public static final int f24571super = 32768;

    /* renamed from: switch, reason: not valid java name */
    public static final int f24572switch = 1020;

    /* renamed from: this, reason: not valid java name */
    public static final int f24573this = 512;

    /* renamed from: throw, reason: not valid java name */
    public static final int f24574throw = 65536;

    /* renamed from: throws, reason: not valid java name */
    public static final int f24575throws = 2044;

    /* renamed from: try, reason: not valid java name */
    public static final int f24576try = 32;

    /* renamed from: while, reason: not valid java name */
    public static final int f24577while = 131072;

    /* renamed from: do, reason: not valid java name */
    public static int m28614do(Class cls) {
        if (cls == Object.class) {
            return f24568public;
        }
        if (cls == String.class) {
            return 8192;
        }
        if (cls.isPrimitive()) {
            if (cls == Integer.TYPE) {
                return 2064;
            }
            if (cls == Long.TYPE) {
                return 2080;
            }
            if (cls == Double.TYPE) {
                return 2176;
            }
            if (cls == Float.TYPE) {
                return Ccase.f32277throw;
            }
            if (cls == Byte.TYPE) {
                return 2052;
            }
            if (cls == Short.TYPE) {
                return 2056;
            }
            if (cls == Character.TYPE) {
                return 524288;
            }
            return cls == Boolean.TYPE ? 16384 : 0;
        }
        if (!Number.class.isAssignableFrom(cls)) {
            if (cls.isArray()) {
                return 262144;
            }
            int i = cls.isAssignableFrom(String.class) ? 8192 : 0;
            if (cls.isAssignableFrom(Date.class)) {
                i |= 4096;
            }
            if (cls.isAssignableFrom(Boolean.class)) {
                i |= 16384;
            }
            if (cls.isAssignableFrom(Map.class)) {
                i |= 32768;
            }
            if (cls.isAssignableFrom(List.class)) {
                i |= 65536;
            }
            if (cls.isAssignableFrom(Set.class)) {
                i |= 131072;
            }
            return cls == Character.class ? i | 524288 : i;
        }
        if (cls == Integer.class) {
            return 2064;
        }
        if (cls == Long.class) {
            return 2080;
        }
        if (cls == Double.class) {
            return 2176;
        }
        if (cls == Float.class) {
            return Ccase.f32277throw;
        }
        if (cls == Byte.class) {
            return 2052;
        }
        if (cls == Short.class) {
            return 2056;
        }
        if (BigDecimal.class.isAssignableFrom(cls)) {
            return 2560;
        }
        if (BigInteger.class.isAssignableFrom(cls)) {
            return LogType.UNEXP_LOW_MEMORY;
        }
        return 3072;
    }
}
