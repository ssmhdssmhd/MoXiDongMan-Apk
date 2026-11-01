package android.support.v4;

import freemarker.template.utility.Csuper;
import java.io.Serializable;
import java.util.Date;

/* loaded from: classes3.dex */
public final class we2 implements Serializable {
    private final Date buildDate;
    private volatile String calculatedStringValue;
    private final String extraInfo;
    private final Boolean gaeCompliant;
    private int hashCode;
    private final int intValue;
    private final int major;
    private final int micro;
    private final int minor;
    private final String originalStringValue;

    public we2(String str) {
        this(str, (Boolean) null, (Date) null);
    }

    /* renamed from: do, reason: not valid java name */
    private int m9130do() {
        return intValueFor(this.major, this.minor, this.micro);
    }

    /* renamed from: for, reason: not valid java name */
    private boolean m9131for(char c) {
        return c >= '0' && c <= '9';
    }

    /* renamed from: if, reason: not valid java name */
    private String m9132if() {
        String str = this.originalStringValue;
        if (str != null) {
            return str;
        }
        String str2 = this.calculatedStringValue;
        if (str2 == null) {
            synchronized (this) {
                str2 = this.calculatedStringValue;
                if (str2 == null) {
                    str2 = this.major + "." + this.minor + "." + this.micro;
                    if (this.extraInfo != null) {
                        str2 = str2 + "-" + this.extraInfo;
                    }
                    this.calculatedStringValue = str2;
                }
            }
        }
        return str2;
    }

    public static int intValueFor(int i, int i2, int i3) {
        return (i * 1000000) + (i2 * 1000) + i3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || we2.class != obj.getClass()) {
            return false;
        }
        we2 we2Var = (we2) obj;
        if (this.intValue != we2Var.intValue || we2Var.hashCode() != hashCode()) {
            return false;
        }
        Date date = this.buildDate;
        if (date == null) {
            if (we2Var.buildDate != null) {
                return false;
            }
        } else if (!date.equals(we2Var.buildDate)) {
            return false;
        }
        String str = this.extraInfo;
        if (str == null) {
            if (we2Var.extraInfo != null) {
                return false;
            }
        } else if (!str.equals(we2Var.extraInfo)) {
            return false;
        }
        Boolean bool = this.gaeCompliant;
        if (bool == null) {
            if (we2Var.gaeCompliant != null) {
                return false;
            }
        } else if (!bool.equals(we2Var.gaeCompliant)) {
            return false;
        }
        return true;
    }

    public Date getBuildDate() {
        return this.buildDate;
    }

    public String getExtraInfo() {
        return this.extraInfo;
    }

    public int getMajor() {
        return this.major;
    }

    public int getMicro() {
        return this.micro;
    }

    public int getMinor() {
        return this.minor;
    }

    public int hashCode() {
        int i;
        int i2 = this.hashCode;
        if (i2 != 0) {
            return i2;
        }
        synchronized (this) {
            if (this.hashCode == 0) {
                Date date = this.buildDate;
                int iHashCode = 0;
                int iHashCode2 = ((date == null ? 0 : date.hashCode()) + 31) * 31;
                String str = this.extraInfo;
                int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
                Boolean bool = this.gaeCompliant;
                if (bool != null) {
                    iHashCode = bool.hashCode();
                }
                int i3 = ((iHashCode3 + iHashCode) * 31) + this.intValue;
                if (i3 == 0) {
                    i3 = -1;
                }
                this.hashCode = i3;
            }
            i = this.hashCode;
        }
        return i;
    }

    public int intValue() {
        return this.intValue;
    }

    public Boolean isGAECompliant() {
        return this.gaeCompliant;
    }

    public String toString() {
        return m9132if();
    }

    public we2(String str, Boolean bool, Date date) {
        String strSubstring;
        char cCharAt;
        String strTrim = str.trim();
        this.originalStringValue = strTrim;
        int[] iArr = new int[3];
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= strTrim.length()) {
                strSubstring = null;
                break;
            }
            char cCharAt2 = strTrim.charAt(i);
            if (m9131for(cCharAt2)) {
                iArr[i2] = (iArr[i2] * 10) + (cCharAt2 - '0');
            } else {
                if (i == 0) {
                    throw new IllegalArgumentException("The version number string " + Csuper.m29330synchronized(strTrim) + " doesn't start with a number.");
                }
                if (cCharAt2 != '.') {
                    strSubstring = strTrim.substring(i);
                    break;
                }
                int i3 = i + 1;
                char cCharAt3 = i3 >= strTrim.length() ? (char) 0 : strTrim.charAt(i3);
                if (cCharAt3 == '.') {
                    throw new IllegalArgumentException("The version number string " + Csuper.m29330synchronized(strTrim) + " contains multiple dots after a number.");
                }
                if (i2 == 2 || !m9131for(cCharAt3)) {
                    break;
                } else {
                    i2++;
                }
            }
            i++;
        }
        strSubstring = strTrim.substring(i);
        if (strSubstring != null && ((cCharAt = strSubstring.charAt(0)) == '.' || cCharAt == '-' || cCharAt == '_')) {
            strSubstring = strSubstring.substring(1);
            if (strSubstring.length() == 0) {
                throw new IllegalArgumentException("The version number string " + Csuper.m29330synchronized(strTrim) + " has an extra info section opened with \"" + cCharAt + "\", but it's empty.");
            }
        }
        this.extraInfo = strSubstring;
        this.major = iArr[0];
        this.minor = iArr[1];
        this.micro = iArr[2];
        this.intValue = m9130do();
        this.gaeCompliant = bool;
        this.buildDate = date;
    }

    public we2(int i, int i2, int i3) {
        this(i, i2, i3, null, null, null);
    }

    public we2(int i) {
        this.intValue = i;
        this.micro = i % 1000;
        this.minor = (i / 1000) % 1000;
        this.major = i / 1000000;
        this.extraInfo = null;
        this.gaeCompliant = null;
        this.buildDate = null;
        this.originalStringValue = null;
    }

    public we2(int i, int i2, int i3, String str, Boolean bool, Date date) {
        this.major = i;
        this.minor = i2;
        this.micro = i3;
        this.extraInfo = str;
        this.gaeCompliant = bool;
        this.buildDate = date;
        this.intValue = m9130do();
        this.originalStringValue = null;
    }
}
