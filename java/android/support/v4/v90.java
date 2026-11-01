package android.support.v4;

import java.text.Format;
import java.text.MessageFormat;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.lang3.Cgoto;
import org.apache.commons.lang3.text.Cnew;
import org.apache.commons.lang3.text.FormatFactory;

/* loaded from: classes3.dex */
public class v90 extends MessageFormat {

    /* renamed from: case, reason: not valid java name */
    private static final char f7118case = '{';

    /* renamed from: do, reason: not valid java name */
    private static final int f7119do = 31;

    /* renamed from: else, reason: not valid java name */
    private static final char f7120else = '\'';

    /* renamed from: for, reason: not valid java name */
    private static final String f7121for = "''";

    /* renamed from: if, reason: not valid java name */
    private static final String f7122if = "";

    /* renamed from: new, reason: not valid java name */
    private static final char f7123new = ',';
    private static final long serialVersionUID = -2362048321261811743L;

    /* renamed from: try, reason: not valid java name */
    private static final char f7124try = '}';
    private final Map<String, ? extends FormatFactory> registry;
    private String toPattern;

    public v90(String str) {
        this(str, Locale.getDefault());
    }

    /* renamed from: case, reason: not valid java name */
    private ParsePosition m8801case(ParsePosition parsePosition) {
        parsePosition.setIndex(parsePosition.getIndex() + 1);
        return parsePosition;
    }

    /* renamed from: do, reason: not valid java name */
    private StringBuilder m8802do(String str, ParsePosition parsePosition, StringBuilder sb, boolean z) {
        int index = parsePosition.getIndex();
        char[] charArray = str.toCharArray();
        if (z && charArray[index] == '\'') {
            m8801case(parsePosition);
            if (sb == null) {
                return null;
            }
            sb.append(f7120else);
            return sb;
        }
        int index2 = index;
        for (int index3 = parsePosition.getIndex(); index3 < str.length(); index3++) {
            if (z && str.substring(index3).startsWith(f7121for)) {
                sb.append(charArray, index2, parsePosition.getIndex() - index2);
                sb.append(f7120else);
                parsePosition.setIndex(index3 + 2);
                index2 = parsePosition.getIndex();
            } else {
                if (charArray[parsePosition.getIndex()] == '\'') {
                    m8801case(parsePosition);
                    if (sb == null) {
                        return null;
                    }
                    sb.append(charArray, index2, parsePosition.getIndex() - index2);
                    return sb;
                }
                m8801case(parsePosition);
            }
        }
        throw new IllegalArgumentException("Unterminated quoted string at position " + index);
    }

    /* renamed from: else, reason: not valid java name */
    private String m8803else(String str, ParsePosition parsePosition) {
        int index = parsePosition.getIndex();
        m8808this(str, parsePosition);
        int index2 = parsePosition.getIndex();
        int i = 1;
        while (parsePosition.getIndex() < str.length()) {
            char cCharAt = str.charAt(parsePosition.getIndex());
            if (cCharAt == '\'') {
                m8807new(str, parsePosition, false);
            } else if (cCharAt == '{') {
                i++;
            } else if (cCharAt == '}' && i - 1 == 0) {
                return str.substring(index2, parsePosition.getIndex());
            }
            m8801case(parsePosition);
        }
        throw new IllegalArgumentException("Unterminated format element at position " + index);
    }

    /* renamed from: for, reason: not valid java name */
    private Format m8804for(String str) {
        String strTrim;
        if (this.registry != null) {
            int iIndexOf = str.indexOf(44);
            if (iIndexOf > 0) {
                String strTrim2 = str.substring(0, iIndexOf).trim();
                strTrim = str.substring(iIndexOf + 1).trim();
                str = strTrim2;
            } else {
                strTrim = null;
            }
            FormatFactory formatFactory = this.registry.get(str);
            if (formatFactory != null) {
                return formatFactory.getFormat(str, strTrim, getLocale());
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003d A[PHI: r2
      0x003d: PHI (r2v5 char) = (r2v4 char), (r2v9 char), (r2v9 char) binds: [B:7:0x002a, B:9:0x0037, B:10:0x0039] A[DONT_GENERATE, DONT_INLINE]] */
    /* renamed from: goto, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int m8805goto(String str, ParsePosition parsePosition) {
        int index = parsePosition.getIndex();
        m8808this(str, parsePosition);
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        while (!z && parsePosition.getIndex() < str.length()) {
            char cCharAt = str.charAt(parsePosition.getIndex());
            if (Character.isWhitespace(cCharAt)) {
                m8808this(str, parsePosition);
                cCharAt = str.charAt(parsePosition.getIndex());
                if (cCharAt == ',' || cCharAt == '}') {
                    if ((cCharAt == ',' || cCharAt == '}') && sb.length() > 0) {
                        try {
                            return Integer.parseInt(sb.toString());
                        } catch (NumberFormatException unused) {
                        }
                    }
                    boolean z2 = !Character.isDigit(cCharAt);
                    sb.append(cCharAt);
                    z = z2;
                } else {
                    z = true;
                }
            }
            m8801case(parsePosition);
        }
        if (!z) {
            throw new IllegalArgumentException("Unterminated format element at position " + index);
        }
        throw new IllegalArgumentException("Invalid format argument index at position " + index + ": " + str.substring(index, parsePosition.getIndex()));
    }

    /* renamed from: if, reason: not valid java name */
    private boolean m8806if(Collection<?> collection) {
        if (collection != null && !collection.isEmpty()) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (it.next() != null) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    private void m8807new(String str, ParsePosition parsePosition, boolean z) {
        m8802do(str, parsePosition, null, z);
    }

    /* renamed from: this, reason: not valid java name */
    private void m8808this(String str, ParsePosition parsePosition) {
        char[] charArray = str.toCharArray();
        do {
            int iM32568case = Cnew.m32557class().m32568case(charArray, parsePosition.getIndex());
            parsePosition.setIndex(parsePosition.getIndex() + iM32568case);
            if (iM32568case <= 0) {
                return;
            }
        } while (parsePosition.getIndex() < str.length());
    }

    /* renamed from: try, reason: not valid java name */
    private String m8809try(String str, ArrayList<String> arrayList) {
        String str2;
        if (!m8806if(arrayList)) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length() * 2);
        ParsePosition parsePosition = new ParsePosition(0);
        int i = -1;
        int i2 = 0;
        while (parsePosition.getIndex() < str.length()) {
            char cCharAt = str.charAt(parsePosition.getIndex());
            if (cCharAt == '\'') {
                m8802do(str, parsePosition, sb, false);
            } else if (cCharAt != '{') {
                if (cCharAt == '}') {
                    i2--;
                }
                sb.append(cCharAt);
                m8801case(parsePosition);
            } else {
                i2++;
                sb.append('{');
                sb.append(m8805goto(str, m8801case(parsePosition)));
                if (i2 == 1 && (str2 = arrayList.get((i = i + 1))) != null) {
                    sb.append(f7123new);
                    sb.append(str2);
                }
            }
        }
        return sb.toString();
    }

    @Override // java.text.MessageFormat
    public final void applyPattern(String str) {
        String strM8803else;
        Format formatM8804for;
        if (this.registry == null) {
            super.applyPattern(str);
            this.toPattern = super.toPattern();
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList<String> arrayList2 = new ArrayList<>();
        StringBuilder sb = new StringBuilder(str.length());
        int i = 0;
        ParsePosition parsePosition = new ParsePosition(0);
        char[] charArray = str.toCharArray();
        int i2 = 0;
        while (parsePosition.getIndex() < str.length()) {
            char c = charArray[parsePosition.getIndex()];
            if (c != '\'') {
                if (c == '{') {
                    i2++;
                    m8808this(str, parsePosition);
                    int index = parsePosition.getIndex();
                    int iM8805goto = m8805goto(str, m8801case(parsePosition));
                    sb.append('{');
                    sb.append(iM8805goto);
                    m8808this(str, parsePosition);
                    if (charArray[parsePosition.getIndex()] == ',') {
                        strM8803else = m8803else(str, m8801case(parsePosition));
                        formatM8804for = m8804for(strM8803else);
                        if (formatM8804for == null) {
                            sb.append(f7123new);
                            sb.append(strM8803else);
                        }
                    } else {
                        strM8803else = null;
                        formatM8804for = null;
                    }
                    arrayList.add(formatM8804for);
                    arrayList2.add(formatM8804for != null ? strM8803else : null);
                    ee2.m1852while(arrayList.size() == i2);
                    ee2.m1852while(arrayList2.size() == i2);
                    if (charArray[parsePosition.getIndex()] != '}') {
                        throw new IllegalArgumentException("Unreadable format element at position " + index);
                    }
                }
                sb.append(charArray[parsePosition.getIndex()]);
                m8801case(parsePosition);
            } else {
                m8802do(str, parsePosition, sb, true);
            }
        }
        super.applyPattern(sb.toString());
        this.toPattern = m8809try(super.toPattern(), arrayList2);
        if (m8806if(arrayList)) {
            Format[] formats = getFormats();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Format format = (Format) it.next();
                if (format != null) {
                    formats[i] = format;
                }
                i++;
            }
            super.setFormats(formats);
        }
    }

    @Override // java.text.MessageFormat
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !super.equals(obj) || Cgoto.m32378continue(getClass(), obj.getClass())) {
            return false;
        }
        v90 v90Var = (v90) obj;
        return (Cgoto.m32378continue(this.toPattern, v90Var.toPattern) || Cgoto.m32378continue(this.registry, v90Var.registry)) ? false : true;
    }

    @Override // java.text.MessageFormat
    public int hashCode() {
        return (((super.hashCode() * 31) + Cgoto.m32389native(this.registry)) * 31) + Cgoto.m32389native(this.toPattern);
    }

    @Override // java.text.MessageFormat
    public void setFormat(int i, Format format) {
        throw new UnsupportedOperationException();
    }

    @Override // java.text.MessageFormat
    public void setFormatByArgumentIndex(int i, Format format) {
        throw new UnsupportedOperationException();
    }

    @Override // java.text.MessageFormat
    public void setFormats(Format[] formatArr) {
        throw new UnsupportedOperationException();
    }

    @Override // java.text.MessageFormat
    public void setFormatsByArgumentIndex(Format[] formatArr) {
        throw new UnsupportedOperationException();
    }

    @Override // java.text.MessageFormat
    public String toPattern() {
        return this.toPattern;
    }

    public v90(String str, Locale locale) {
        this(str, locale, null);
    }

    public v90(String str, Map<String, ? extends FormatFactory> map) {
        this(str, Locale.getDefault(), map);
    }

    public v90(String str, Locale locale, Map<String, ? extends FormatFactory> map) {
        super("");
        setLocale(locale);
        this.registry = map;
        applyPattern(str);
    }
}
