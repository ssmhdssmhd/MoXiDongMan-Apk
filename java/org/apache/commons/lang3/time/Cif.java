package org.apache.commons.lang3.time;

import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.ak;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import org.apache.commons.lang3.Cclass;

/* renamed from: org.apache.commons.lang3.time.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif {

    /* renamed from: do, reason: not valid java name */
    public static final String f28836do = "'P'yyyy'Y'M'M'd'DT'H'H'm'M's.S'S'";

    /* renamed from: if, reason: not valid java name */
    public static final Object f28840if = "y";

    /* renamed from: for, reason: not valid java name */
    public static final Object f28838for = "M";

    /* renamed from: new, reason: not valid java name */
    public static final Object f28841new = "d";

    /* renamed from: try, reason: not valid java name */
    public static final Object f28842try = "H";

    /* renamed from: case, reason: not valid java name */
    public static final Object f28835case = "m";

    /* renamed from: else, reason: not valid java name */
    public static final Object f28837else = ak.aB;

    /* renamed from: goto, reason: not valid java name */
    public static final Object f28839goto = ExifInterface.LATITUDE_SOUTH;

    /* JADX WARN: Removed duplicated region for block: B:39:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0097 A[SYNTHETIC] */
    /* renamed from: break, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Cdo[] m32669break(String str) {
        Object obj;
        ArrayList arrayList = new ArrayList(str.length());
        StringBuilder sb = null;
        Cdo cdo = null;
        boolean z = false;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (z && cCharAt != '\'') {
                sb.append(cCharAt);
            } else if (cCharAt != '\'') {
                if (cCharAt == 'H') {
                    obj = f28842try;
                } else if (cCharAt == 'M') {
                    obj = f28838for;
                } else if (cCharAt == 'S') {
                    obj = f28839goto;
                } else if (cCharAt == 'd') {
                    obj = f28841new;
                } else if (cCharAt == 'm') {
                    obj = f28835case;
                } else if (cCharAt == 's') {
                    obj = f28837else;
                } else if (cCharAt != 'y') {
                    if (sb == null) {
                        sb = new StringBuilder();
                        arrayList.add(new Cdo(sb));
                    }
                    sb.append(cCharAt);
                    obj = null;
                } else {
                    obj = f28840if;
                }
                if (obj != null) {
                    if (cdo == null || cdo.m32681for() != obj) {
                        Cdo cdo2 = new Cdo(obj);
                        arrayList.add(cdo2);
                        cdo = cdo2;
                    } else {
                        cdo.m32683new();
                    }
                    sb = null;
                }
            } else if (z) {
                sb = null;
                obj = null;
                z = false;
                if (obj != null) {
                }
            } else {
                sb = new StringBuilder();
                arrayList.add(new Cdo(sb));
                z = true;
                obj = null;
                if (obj != null) {
                }
            }
        }
        if (!z) {
            return (Cdo[]) arrayList.toArray(new Cdo[arrayList.size()]);
        }
        throw new IllegalArgumentException("Unmatched quote in format: " + str);
    }

    /* renamed from: case, reason: not valid java name */
    public static String m32670case(long j, boolean z, boolean z2) {
        String strM32676if = m32676if(j, "d' days 'H' hours 'm' minutes 's' seconds'");
        if (z) {
            strM32676if = Cclass.f28652do + strM32676if;
            String strT0 = Cclass.T0(strM32676if, " 0 days", "");
            if (strT0.length() != strM32676if.length()) {
                String strT02 = Cclass.T0(strT0, " 0 hours", "");
                if (strT02.length() != strT0.length()) {
                    strM32676if = Cclass.T0(strT02, " 0 minutes", "");
                    if (strM32676if.length() != strM32676if.length()) {
                        strM32676if = Cclass.T0(strM32676if, " 0 seconds", "");
                    }
                } else {
                    strM32676if = strT0;
                }
            }
            if (strM32676if.length() != 0) {
                strM32676if = strM32676if.substring(1);
            }
        }
        if (z2) {
            String strT03 = Cclass.T0(strM32676if, " 0 seconds", "");
            if (strT03.length() != strM32676if.length()) {
                strM32676if = Cclass.T0(strT03, " 0 minutes", "");
                if (strM32676if.length() != strT03.length()) {
                    String strT04 = Cclass.T0(strM32676if, " 0 hours", "");
                    if (strT04.length() != strM32676if.length()) {
                        strM32676if = Cclass.T0(strT04, " 0 days", "");
                    }
                } else {
                    strM32676if = strT03;
                }
            }
        }
        return Cclass.T0(Cclass.T0(Cclass.T0(Cclass.T0(Cclass.f28652do + strM32676if, " 1 seconds", " 1 second"), " 1 minutes", " 1 minute"), " 1 hours", " 1 hour"), " 1 days", " 1 day").trim();
    }

    /* renamed from: catch, reason: not valid java name */
    private static String m32671catch(long j, boolean z, int i) {
        String string = Long.toString(j);
        return z ? Cclass.p0(string, i, '0') : string;
    }

    /* renamed from: do, reason: not valid java name */
    public static String m32672do(Cdo[] cdoArr, long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z) {
        int i;
        int i2;
        Cdo[] cdoArr2 = cdoArr;
        StringBuilder sb = new StringBuilder();
        int length = cdoArr2.length;
        int i3 = 0;
        boolean z2 = false;
        while (i3 < length) {
            Cdo cdo = cdoArr2[i3];
            Object objM32681for = cdo.m32681for();
            int iM32682if = cdo.m32682if();
            if (objM32681for instanceof StringBuilder) {
                sb.append(objM32681for.toString());
                i2 = length;
                i = i3;
            } else {
                if (objM32681for == f28840if) {
                    sb.append(m32671catch(j, z, iM32682if));
                    i2 = length;
                    i = i3;
                } else {
                    if (objM32681for == f28838for) {
                        i = i3;
                        sb.append(m32671catch(j2, z, iM32682if));
                    } else {
                        i = i3;
                        if (objM32681for == f28841new) {
                            sb.append(m32671catch(j3, z, iM32682if));
                        } else if (objM32681for == f28842try) {
                            sb.append(m32671catch(j4, z, iM32682if));
                            i2 = length;
                        } else if (objM32681for == f28835case) {
                            sb.append(m32671catch(j5, z, iM32682if));
                            i2 = length;
                        } else {
                            if (objM32681for == f28837else) {
                                i2 = length;
                                sb.append(m32671catch(j6, z, iM32682if));
                                z2 = true;
                            } else {
                                i2 = length;
                                if (objM32681for == f28839goto) {
                                    if (z2) {
                                        sb.append(m32671catch(j7, true, z ? Math.max(3, iM32682if) : 3));
                                    } else {
                                        sb.append(m32671catch(j7, z, iM32682if));
                                    }
                                    z2 = false;
                                }
                            }
                            i3 = i + 1;
                            length = i2;
                            cdoArr2 = cdoArr;
                        }
                    }
                    i2 = length;
                }
                z2 = false;
            }
            i3 = i + 1;
            length = i2;
            cdoArr2 = cdoArr;
        }
        return sb.toString();
    }

    /* renamed from: else, reason: not valid java name */
    public static String m32673else(long j, long j2, String str) {
        return m32675goto(j, j2, str, true, TimeZone.getDefault());
    }

    /* renamed from: for, reason: not valid java name */
    public static String m32674for(long j, String str, boolean z) {
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        Cdo[] cdoArrM32669break = m32669break(str);
        if (Cdo.m32680do(cdoArrM32669break, f28841new)) {
            j3 = j / 86400000;
            j2 = j - (86400000 * j3);
        } else {
            j2 = j;
            j3 = 0;
        }
        if (Cdo.m32680do(cdoArrM32669break, f28842try)) {
            j4 = j2 / org.apache.commons.lang3.time.Cdo.f28825for;
            j2 -= org.apache.commons.lang3.time.Cdo.f28825for * j4;
        } else {
            j4 = 0;
        }
        if (Cdo.m32680do(cdoArrM32669break, f28835case)) {
            j5 = j2 / org.apache.commons.lang3.time.Cdo.f28827if;
            j2 -= org.apache.commons.lang3.time.Cdo.f28827if * j5;
        } else {
            j5 = 0;
        }
        if (Cdo.m32680do(cdoArrM32669break, f28837else)) {
            long j8 = j2 / 1000;
            j7 = j2 - (1000 * j8);
            j6 = j8;
        } else {
            j6 = 0;
            j7 = j2;
        }
        return m32672do(cdoArrM32669break, 0L, 0L, j3, j4, j5, j6, j7, z);
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m32675goto(long j, long j2, String str, boolean z, TimeZone timeZone) {
        Cdo[] cdoArrM32669break = m32669break(str);
        Calendar calendar = Calendar.getInstance(timeZone);
        calendar.setTime(new Date(j));
        Calendar calendar2 = Calendar.getInstance(timeZone);
        calendar2.setTime(new Date(j2));
        int i = calendar2.get(14) - calendar.get(14);
        int i2 = calendar2.get(13) - calendar.get(13);
        int i3 = calendar2.get(12) - calendar.get(12);
        int i4 = calendar2.get(11) - calendar.get(11);
        int actualMaximum = calendar2.get(5) - calendar.get(5);
        int i5 = calendar2.get(2) - calendar.get(2);
        int i6 = calendar2.get(1) - calendar.get(1);
        while (i < 0) {
            i += 1000;
            i2--;
        }
        while (i2 < 0) {
            i2 += 60;
            i3--;
        }
        while (i3 < 0) {
            i3 += 60;
            i4--;
        }
        while (i4 < 0) {
            i4 += 24;
            actualMaximum--;
        }
        int i7 = 0;
        if (Cdo.m32680do(cdoArrM32669break, f28838for)) {
            while (actualMaximum < 0) {
                actualMaximum += calendar.getActualMaximum(5);
                i5--;
                calendar.add(2, 1);
            }
            while (i5 < 0) {
                i5 += 12;
                i6--;
            }
            if (!Cdo.m32680do(cdoArrM32669break, f28840if) && i6 != 0) {
                while (i6 != 0) {
                    i5 += i6 * 12;
                    i6 = 0;
                }
            }
        } else {
            if (!Cdo.m32680do(cdoArrM32669break, f28840if)) {
                int i8 = calendar2.get(1);
                if (i5 < 0) {
                    i8--;
                }
                while (calendar.get(1) != i8) {
                    int actualMaximum2 = actualMaximum + (calendar.getActualMaximum(6) - calendar.get(6));
                    if ((calendar instanceof GregorianCalendar) && calendar.get(2) == 1 && calendar.get(5) == 29) {
                        actualMaximum2++;
                    }
                    calendar.add(1, 1);
                    actualMaximum = actualMaximum2 + calendar.get(6);
                }
                i6 = 0;
            }
            while (calendar.get(2) != calendar2.get(2)) {
                actualMaximum += calendar.getActualMaximum(5);
                calendar.add(2, 1);
            }
            i5 = 0;
            while (actualMaximum < 0) {
                actualMaximum += calendar.getActualMaximum(5);
                i5--;
                calendar.add(2, 1);
            }
        }
        if (!Cdo.m32680do(cdoArrM32669break, f28841new)) {
            i4 += actualMaximum * 24;
            actualMaximum = 0;
        }
        if (!Cdo.m32680do(cdoArrM32669break, f28842try)) {
            i3 += i4 * 60;
            i4 = 0;
        }
        if (!Cdo.m32680do(cdoArrM32669break, f28835case)) {
            i2 += i3 * 60;
            i3 = 0;
        }
        if (Cdo.m32680do(cdoArrM32669break, f28837else)) {
            i7 = i2;
        } else {
            i += i2 * 1000;
        }
        return m32672do(cdoArrM32669break, i6, i5, actualMaximum, i4, i3, i7, i, z);
    }

    /* renamed from: if, reason: not valid java name */
    public static String m32676if(long j, String str) {
        return m32674for(j, str, true);
    }

    /* renamed from: new, reason: not valid java name */
    public static String m32677new(long j) {
        return m32676if(j, "H:mm:ss.SSS");
    }

    /* renamed from: this, reason: not valid java name */
    public static String m32678this(long j, long j2) {
        return m32675goto(j, j2, f28836do, false, TimeZone.getDefault());
    }

    /* renamed from: try, reason: not valid java name */
    public static String m32679try(long j) {
        return m32674for(j, f28836do, false);
    }

    /* renamed from: org.apache.commons.lang3.time.if$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private final Object f28843do;

        /* renamed from: if, reason: not valid java name */
        private int f28844if;

        public Cdo(Object obj) {
            this.f28843do = obj;
            this.f28844if = 1;
        }

        /* renamed from: do, reason: not valid java name */
        public static boolean m32680do(Cdo[] cdoArr, Object obj) {
            for (Cdo cdo : cdoArr) {
                if (cdo.m32681for() == obj) {
                    return true;
                }
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Cdo)) {
                return false;
            }
            Cdo cdo = (Cdo) obj;
            if (this.f28843do.getClass() != cdo.f28843do.getClass() || this.f28844if != cdo.f28844if) {
                return false;
            }
            Object obj2 = this.f28843do;
            return obj2 instanceof StringBuilder ? obj2.toString().equals(cdo.f28843do.toString()) : obj2 instanceof Number ? obj2.equals(cdo.f28843do) : obj2 == cdo.f28843do;
        }

        /* renamed from: for, reason: not valid java name */
        public Object m32681for() {
            return this.f28843do;
        }

        public int hashCode() {
            return this.f28843do.hashCode();
        }

        /* renamed from: if, reason: not valid java name */
        public int m32682if() {
            return this.f28844if;
        }

        /* renamed from: new, reason: not valid java name */
        public void m32683new() {
            this.f28844if++;
        }

        public String toString() {
            return Cclass.K0(this.f28843do.toString(), this.f28844if);
        }

        public Cdo(Object obj, int i) {
            this.f28843do = obj;
            this.f28844if = i;
        }
    }
}
