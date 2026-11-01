package freemarker.cache;

import android.support.v4.fx0;
import android.support.v4.on0;
import freemarker.template.utility.Csuper;

/* renamed from: freemarker.cache.throws, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cthrows {

    /* renamed from: do, reason: not valid java name */
    public static final Cthrows f23404do;

    /* renamed from: if, reason: not valid java name */
    public static final Cthrows f23405if;

    /* renamed from: freemarker.cache.throws$for, reason: invalid class name */
    public static final class Cfor extends Cthrows {
        private Cfor() {
            super();
        }

        /* renamed from: break, reason: not valid java name */
        private String m27778break(String str) {
            String strM;
            while (true) {
                strM = Csuper.m(str, "//", on0.f4694final);
                if (str == strM) {
                    break;
                }
                str = strM;
            }
            return strM.startsWith(on0.f4694final) ? strM.substring(1) : strM;
        }

        /* renamed from: catch, reason: not valid java name */
        private String m27779catch(String str) {
            int i;
            String str2;
            while (true) {
                int iIndexOf = str.indexOf("*/*");
                if (iIndexOf == -1) {
                    break;
                }
                if ((iIndexOf == 0 || str.charAt(iIndexOf - 1) == '/') && ((i = iIndexOf + 3) == str.length() || str.charAt(i) == '/')) {
                    str2 = str.substring(0, iIndexOf) + str.substring(iIndexOf + 2);
                } else {
                    str2 = str;
                }
                if (str == str2) {
                    str = str2;
                    break;
                }
                str = str2;
            }
            return str.startsWith("*") ? str.length() == 1 ? "" : str.charAt(1) == '/' ? str.substring(2) : str : str;
        }

        /* renamed from: class, reason: not valid java name */
        private String m27780class(String str, String str2) throws fx0 {
            boolean z;
            int i = 0;
            while (true) {
                int iIndexOf = str.indexOf("..", i);
                if (iIndexOf < 0) {
                    return str;
                }
                if (iIndexOf == 0) {
                    throw Cthrows.m27774new(str2);
                }
                if (str.charAt(iIndexOf - 1) == '/') {
                    int i2 = iIndexOf + 2;
                    if (i2 == str.length()) {
                        z = false;
                    } else if (str.charAt(i2) == '/') {
                        z = true;
                    }
                    int i3 = iIndexOf - 2;
                    boolean z2 = false;
                    while (i3 != -1) {
                        int iLastIndexOf = str.lastIndexOf(47, i3);
                        if (iLastIndexOf == -1) {
                            if (i3 == 0 && str.charAt(0) == '*') {
                                throw Cthrows.m27774new(str2);
                            }
                        } else if (str.charAt(iLastIndexOf + 1) == '*' && str.charAt(iLastIndexOf + 2) == '/') {
                            i3 = iLastIndexOf - 1;
                            z2 = true;
                        }
                        StringBuilder sb = new StringBuilder();
                        int i4 = iLastIndexOf + 1;
                        sb.append(str.substring(0, i4));
                        sb.append(z2 ? "*/" : "");
                        sb.append(str.substring(iIndexOf + (z ? 3 : 2)));
                        str = sb.toString();
                        i = i4;
                    }
                    throw Cthrows.m27774new(str2);
                }
                i = iIndexOf + 3;
            }
        }

        /* renamed from: goto, reason: not valid java name */
        private int m27781goto(String str) {
            int iIndexOf = str.indexOf(":");
            if (iIndexOf == -1 || str.lastIndexOf(47, iIndexOf - 1) != -1) {
                return 0;
            }
            int i = iIndexOf + 2;
            return (i < str.length() && str.charAt(iIndexOf + 1) == '/' && str.charAt(i) == '/') ? iIndexOf + 3 : iIndexOf + 1;
        }

        /* renamed from: this, reason: not valid java name */
        private String m27782this(String str) {
            boolean z;
            int length = str.length() - 1;
            while (true) {
                int iLastIndexOf = str.lastIndexOf(46, length);
                if (iLastIndexOf < 0) {
                    return str;
                }
                int i = iLastIndexOf - 1;
                if (iLastIndexOf == 0 || str.charAt(i) == '/') {
                    int i2 = iLastIndexOf + 1;
                    if (i2 == str.length()) {
                        z = false;
                    } else if (str.charAt(i2) == '/') {
                        z = true;
                    }
                    if (z) {
                        str = str.substring(0, iLastIndexOf) + str.substring(iLastIndexOf + 2);
                    } else {
                        str = str.substring(0, str.length() - 1);
                    }
                }
                length = i;
            }
        }

        @Override // freemarker.cache.Cthrows
        /* renamed from: case */
        public String mo27775case(String str) throws fx0 {
            if (m27781goto(str) != 0 || str.startsWith(on0.f4694final)) {
                return str;
            }
            return on0.f4694final + str;
        }

        @Override // freemarker.cache.Cthrows
        /* renamed from: else */
        public String mo27776else(String str, String str2) {
            if (m27781goto(str2) != 0) {
                return str2;
            }
            if (str2.startsWith(on0.f4694final)) {
                String strSubstring = str2.substring(1);
                int iM27781goto = m27781goto(str);
                if (iM27781goto == 0) {
                    return strSubstring;
                }
                return str.substring(0, iM27781goto) + strSubstring;
            }
            if (!str.endsWith(on0.f4694final)) {
                int iLastIndexOf = str.lastIndexOf(on0.f4694final) + 1;
                if (iLastIndexOf == 0) {
                    iLastIndexOf = m27781goto(str);
                }
                str = str.substring(0, iLastIndexOf);
            }
            return str + str2;
        }

        public String toString() {
            return "TemplateNameFormat.DEFAULT_2_4_0";
        }

        @Override // freemarker.cache.Cthrows
        /* renamed from: try */
        public String mo27777try(String str) throws fx0 {
            String strSubstring;
            String strSubstring2;
            Cthrows.m27772for(str);
            if (str.indexOf(92) != -1) {
                throw new fx0(str, "Backslash (\"\\\") is not allowed in template names. Use slash (\"/\") instead.");
            }
            int iM27781goto = m27781goto(str);
            if (iM27781goto == 0) {
                strSubstring = null;
                strSubstring2 = str;
            } else {
                strSubstring = str.substring(0, iM27781goto);
                strSubstring2 = str.substring(iM27781goto);
            }
            if (strSubstring2.indexOf(58) != -1) {
                throw new fx0(str, "The ':' character can only be used after the scheme name (if there's any), not in the path part");
            }
            String strM27779catch = m27779catch(m27780class(m27782this(m27778break(strSubstring2)), str));
            if (strSubstring == null) {
                return strM27779catch;
            }
            return strSubstring + strM27779catch;
        }
    }

    /* renamed from: freemarker.cache.throws$if, reason: invalid class name */
    public static final class Cif extends Cthrows {
        private Cif() {
            super();
        }

        @Override // freemarker.cache.Cthrows
        /* renamed from: case */
        public String mo27775case(String str) throws fx0 {
            if (str.indexOf("://") > 0 || str.startsWith(on0.f4694final)) {
                return str;
            }
            return on0.f4694final + str;
        }

        @Override // freemarker.cache.Cthrows
        /* renamed from: else */
        public String mo27776else(String str, String str2) {
            if (str2.indexOf("://") > 0) {
                return str2;
            }
            if (!str2.startsWith(on0.f4694final)) {
                if (!str.endsWith(on0.f4694final)) {
                    str = str.substring(0, str.lastIndexOf(on0.f4694final) + 1);
                }
                return str + str2;
            }
            int iIndexOf = str.indexOf("://");
            if (iIndexOf <= 0) {
                return str2.substring(1);
            }
            return str.substring(0, iIndexOf + 2) + str2;
        }

        public String toString() {
            return "TemplateNameFormat.DEFAULT_2_3_0";
        }

        @Override // freemarker.cache.Cthrows
        /* renamed from: try */
        public String mo27777try(String str) throws fx0 {
            Cthrows.m27772for(str);
            String strSubstring = str;
            while (true) {
                int iIndexOf = strSubstring.indexOf("/../");
                if (iIndexOf == 0) {
                    throw Cthrows.m27774new(str);
                }
                if (iIndexOf == -1) {
                    if (strSubstring.startsWith("../")) {
                        throw Cthrows.m27774new(str);
                    }
                    while (true) {
                        int iIndexOf2 = strSubstring.indexOf("/./");
                        if (iIndexOf2 == -1) {
                            break;
                        }
                        strSubstring = strSubstring.substring(0, iIndexOf2) + strSubstring.substring((iIndexOf2 + 3) - 1);
                    }
                    if (strSubstring.startsWith("./")) {
                        strSubstring = strSubstring.substring(2);
                    }
                    return (strSubstring.length() <= 1 || strSubstring.charAt(0) != '/') ? strSubstring : strSubstring.substring(1);
                }
                strSubstring = strSubstring.substring(0, strSubstring.lastIndexOf(47, iIndexOf - 1) + 1) + strSubstring.substring(iIndexOf + 4);
            }
        }
    }

    static {
        f23404do = new Cif();
        f23405if = new Cfor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public static void m27772for(String str) throws fx0 {
        if (str.indexOf(0) != -1) {
            throw new fx0(str, "Null character (\\u0000) in the name; possible attack attempt");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public static fx0 m27774new(String str) {
        return new fx0(str, "Backing out from the root directory is not allowed");
    }

    /* renamed from: case, reason: not valid java name */
    public abstract String mo27775case(String str) throws fx0;

    /* renamed from: else, reason: not valid java name */
    public abstract String mo27776else(String str, String str2) throws fx0;

    /* renamed from: try, reason: not valid java name */
    public abstract String mo27777try(String str) throws fx0;

    private Cthrows() {
    }
}
