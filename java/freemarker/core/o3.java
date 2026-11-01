package freemarker.core;

import android.support.v4.dl2;
import android.support.v4.k52;
import android.support.v4.vl2;
import com.umeng.analytics.pro.ak;
import freemarker.cache.Cbreak;
import freemarker.log.Cif;
import freemarker.template.utility.Csuper;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes.dex */
final class o3 {

    /* renamed from: break, reason: not valid java name */
    public static final long f24025break;

    /* renamed from: case, reason: not valid java name */
    private static final Cbreak f24026case;

    /* renamed from: catch, reason: not valid java name */
    public static final long f24027catch = 4294967296L;

    /* renamed from: class, reason: not valid java name */
    public static final long f24028class = 8589934592L;

    /* renamed from: do, reason: not valid java name */
    private static final Cif f24029do;

    /* renamed from: else, reason: not valid java name */
    public static final long f24030else;

    /* renamed from: for, reason: not valid java name */
    private static final int f24031for = 25;

    /* renamed from: goto, reason: not valid java name */
    public static final long f24032goto;

    /* renamed from: if, reason: not valid java name */
    private static volatile boolean f24033if;

    /* renamed from: new, reason: not valid java name */
    private static final Object f24034new;

    /* renamed from: this, reason: not valid java name */
    public static final long f24035this;

    /* renamed from: try, reason: not valid java name */
    private static int f24036try;

    /* renamed from: freemarker.core.o3$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private final String f24037do;

        /* renamed from: for, reason: not valid java name */
        private final int f24038for;

        /* renamed from: if, reason: not valid java name */
        private final int f24039if;

        public Cdo(String str, int i) {
            this.f24037do = str;
            this.f24039if = i;
            this.f24038for = str.hashCode() + (i * 31);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Cdo)) {
                return false;
            }
            Cdo cdo = (Cdo) obj;
            return cdo.f24039if == this.f24039if && cdo.f24037do.equals(this.f24037do);
        }

        public int hashCode() {
            return this.f24038for;
        }
    }

    static {
        Cif cifM29193break = Cif.m29193break("freemarker.runtime");
        f24029do = cifM29193break;
        f24033if = cifM29193break.mo29189public();
        f24034new = new Object();
        f24026case = new Cbreak(50, 150);
        f24030else = m28194new(2);
        f24032goto = m28194new(8);
        f24035this = m28194new(4);
        f24025break = m28194new(32);
    }

    private o3() {
    }

    /* renamed from: case, reason: not valid java name */
    public static long m28190case(String str) {
        long j;
        long j2 = 0;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == 'c') {
                j = f24035this;
            } else if (cCharAt == 'f') {
                j = f24028class;
            } else if (cCharAt == 'i') {
                j = f24030else;
            } else if (cCharAt == 'm') {
                j = f24032goto;
            } else if (cCharAt == 'r') {
                j = f24027catch;
            } else if (cCharAt != 's') {
                if (f24033if) {
                    m28195try("Unrecognized regular expression flag: " + Csuper.m29330synchronized(String.valueOf(cCharAt)) + ".");
                }
            } else {
                j = f24025break;
            }
            j2 |= j;
        }
        return j2;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m28191do(String str, long j) throws vl2 {
        m28193if(str, j, false);
    }

    /* renamed from: for, reason: not valid java name */
    public static Pattern m28192for(String str, int i) throws k52 {
        Pattern pattern;
        Cdo cdo = new Cdo(str, i);
        Cbreak cbreak = f24026case;
        synchronized (cbreak) {
            pattern = (Pattern) cbreak.get(cdo);
        }
        if (pattern != null) {
            return pattern;
        }
        try {
            Pattern patternCompile = Pattern.compile(str, i);
            synchronized (cbreak) {
                cbreak.put(cdo, patternCompile);
            }
            return patternCompile;
        } catch (PatternSyntaxException e) {
            throw new vl2(e, "Malformed regular expression: ", new dl2(e));
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m28193if(String str, long j, boolean z) throws vl2 {
        String str2;
        if (z || f24033if) {
            if ((f24032goto & j) != 0) {
                str2 = "m";
            } else if ((f24025break & j) != 0) {
                str2 = ak.aB;
            } else if ((j & f24035this) == 0) {
                return;
            } else {
                str2 = "c";
            }
            Object[] objArr = {"?", str, " doesn't support the \"", str2, "\" flag without the \"r\" flag."};
            if (z) {
                throw new vl2(objArr);
            }
            m28195try(new z4(objArr).toString());
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static long m28194new(int i) {
        return i & WebSocketProtocol.PAYLOAD_SHORT_MAX;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m28195try(String str) {
        if (f24033if) {
            synchronized (f24034new) {
                int i = f24036try;
                if (i >= 25) {
                    f24033if = false;
                    return;
                }
                f24036try = i + 1;
                String str2 = str + " This will be an error in some later FreeMarker version!";
                if (i + 1 == 25) {
                    str2 = str2 + " [Will not log more regular expression flag problems until restart!]";
                }
                f24029do.mo29187package(str2);
            }
        }
    }
}
