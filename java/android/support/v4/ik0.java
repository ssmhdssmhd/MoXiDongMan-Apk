package android.support.v4;

import com.google.common.base.Cdefault;
import com.google.common.base.Cthrow;
import java.io.Serializable;

@fm0
@ki0
@o8
/* loaded from: classes2.dex */
public final class ik0 implements Serializable {

    /* renamed from: do, reason: not valid java name */
    private static final int f2796do = -1;
    private static final long serialVersionUID = 0;
    private final boolean hasBracketlessColons;
    private final String host;
    private final int port;

    private ik0(String str, int i, boolean z) {
        this.host = str;
        this.port = i;
        this.hasBracketlessColons = z;
    }

    /* renamed from: do, reason: not valid java name */
    private static String[] m3501do(String str) {
        af1.m225return(str.charAt(0) == '[', "Bracketed host-port string must start with a bracket: %s", str);
        int iIndexOf = str.indexOf(58);
        int iLastIndexOf = str.lastIndexOf(93);
        af1.m225return(iIndexOf > -1 && iLastIndexOf > iIndexOf, "Invalid bracketed host/port: %s", str);
        String strSubstring = str.substring(1, iLastIndexOf);
        int i = iLastIndexOf + 1;
        if (i == str.length()) {
            return new String[]{strSubstring, ""};
        }
        af1.m225return(str.charAt(i) == ':', "Only a colon may follow a close bracket: %s", str);
        int i2 = iLastIndexOf + 2;
        for (int i3 = i2; i3 < str.length(); i3++) {
            af1.m225return(Character.isDigit(str.charAt(i3)), "Port must be numeric: %s", str);
        }
        return new String[]{strSubstring, str.substring(i2)};
    }

    public static ik0 fromHost(String str) throws NumberFormatException {
        ik0 ik0VarFromString = fromString(str);
        af1.m225return(!ik0VarFromString.hasPort(), "Host has a port: %s", str);
        return ik0VarFromString;
    }

    public static ik0 fromParts(String str, int i) throws NumberFormatException {
        af1.m202catch(m3502if(i), "Port out of range: %s", i);
        ik0 ik0VarFromString = fromString(str);
        af1.m225return(!ik0VarFromString.hasPort(), "Host has a port: %s", str);
        return new ik0(ik0VarFromString.host, i, ik0VarFromString.hasBracketlessColons);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ik0 fromString(String str) throws NumberFormatException {
        String strSubstring;
        String strSubstring2;
        af1.m205continue(str);
        int i = -1;
        if (str.startsWith("[")) {
            String[] strArrM3501do = m3501do(str);
            strSubstring2 = strArrM3501do[0];
            strSubstring = strArrM3501do[1];
        } else {
            int iIndexOf = str.indexOf(58);
            if (iIndexOf >= 0) {
                int i2 = iIndexOf + 1;
                if (str.indexOf(58, i2) == -1) {
                    strSubstring2 = str.substring(0, iIndexOf);
                    strSubstring = str.substring(i2);
                } else {
                    z = iIndexOf >= 0;
                    strSubstring = null;
                    strSubstring2 = str;
                }
            }
        }
        if (!Cdefault.m15041new(strSubstring)) {
            af1.m225return(!strSubstring.startsWith("+"), "Unparseable port number: %s", str);
            try {
                i = Integer.parseInt(strSubstring);
                af1.m225return(m3502if(i), "Port number out of range: %s", str);
            } catch (NumberFormatException unused) {
                throw new IllegalArgumentException("Unparseable port number: " + str);
            }
        }
        return new ik0(strSubstring2, i, z);
    }

    /* renamed from: if, reason: not valid java name */
    private static boolean m3502if(int i) {
        return i >= 0 && i <= 65535;
    }

    public boolean equals(@b51 Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ik0)) {
            return false;
        }
        ik0 ik0Var = (ik0) obj;
        return Cthrow.m15205do(this.host, ik0Var.host) && this.port == ik0Var.port;
    }

    public String getHost() {
        return this.host;
    }

    public int getPort() {
        af1.t(hasPort());
        return this.port;
    }

    public int getPortOrDefault(int i) {
        return hasPort() ? this.port : i;
    }

    public boolean hasPort() {
        return this.port >= 0;
    }

    public int hashCode() {
        return Cthrow.m15206if(this.host, Integer.valueOf(this.port));
    }

    public ik0 requireBracketsForIPv6() {
        af1.m225return(!this.hasBracketlessColons, "Possible bracketless IPv6 literal: %s", this.host);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.host.length() + 8);
        if (this.host.indexOf(58) >= 0) {
            sb.append('[');
            sb.append(this.host);
            sb.append(']');
        } else {
            sb.append(this.host);
        }
        if (hasPort()) {
            sb.append(':');
            sb.append(this.port);
        }
        return sb.toString();
    }

    public ik0 withDefaultPort(int i) {
        af1.m220new(m3502if(i));
        return hasPort() ? this : new ik0(this.host, i, this.hasBracketlessColons);
    }
}
