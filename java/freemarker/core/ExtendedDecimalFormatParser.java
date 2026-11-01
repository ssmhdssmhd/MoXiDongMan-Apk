package freemarker.core;

import android.support.v4.hy1;
import android.support.v4.ml2;
import freemarker.template.utility.Csuper;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.ParseException;
import java.util.Arrays;
import java.util.Currency;
import java.util.HashMap;
import java.util.Locale;
import java.util.Set;
import org.mozilla.javascript.ES6Iterator;

/* loaded from: classes.dex */
class ExtendedDecimalFormatParser {

    /* renamed from: abstract, reason: not valid java name */
    private static final String f23412abstract = "[...]";

    /* renamed from: break, reason: not valid java name */
    private static final String f23413break = "monetaryDecimalSeparator";

    /* renamed from: case, reason: not valid java name */
    private static final String f23414case = "roundingMode";

    /* renamed from: catch, reason: not valid java name */
    private static final String f23415catch = "groupingSeparator";

    /* renamed from: class, reason: not valid java name */
    private static final String f23416class = "exponentSeparator";

    /* renamed from: const, reason: not valid java name */
    private static final String f23417const = "minusSign";

    /* renamed from: continue, reason: not valid java name */
    private static final int f23418continue = 10;

    /* renamed from: default, reason: not valid java name */
    private static final String f23419default = "halfDown";

    /* renamed from: else, reason: not valid java name */
    private static final String f23420else = "multipier";

    /* renamed from: extends, reason: not valid java name */
    private static final String f23421extends = "halfEven";

    /* renamed from: final, reason: not valid java name */
    private static final String f23422final = "infinity";

    /* renamed from: finally, reason: not valid java name */
    private static final String f23423finally = "halfUp";

    /* renamed from: goto, reason: not valid java name */
    private static final String f23424goto = "multiplier";

    /* renamed from: import, reason: not valid java name */
    private static final String f23425import = "zeroDigit";

    /* renamed from: native, reason: not valid java name */
    private static final String f23426native = "currencyCode";

    /* renamed from: package, reason: not valid java name */
    private static final String f23427package = "unnecessary";

    /* renamed from: private, reason: not valid java name */
    private static final HashMap<String, ? extends ParameterHandler> f23428private;

    /* renamed from: public, reason: not valid java name */
    private static final String f23429public = "currencySymbol";

    /* renamed from: return, reason: not valid java name */
    private static final String f23430return = "up";

    /* renamed from: static, reason: not valid java name */
    private static final String f23431static = "down";

    /* renamed from: super, reason: not valid java name */
    private static final String f23432super = "nan";

    /* renamed from: switch, reason: not valid java name */
    private static final String f23433switch = "ceiling";

    /* renamed from: this, reason: not valid java name */
    private static final String f23434this = "decimalSeparator";

    /* renamed from: throw, reason: not valid java name */
    private static final String f23435throw = "percent";

    /* renamed from: throws, reason: not valid java name */
    private static final String f23436throws = "floor";

    /* renamed from: while, reason: not valid java name */
    private static final String f23437while = "perMill";

    /* renamed from: do, reason: not valid java name */
    private final String f23438do;

    /* renamed from: for, reason: not valid java name */
    private final DecimalFormatSymbols f23439for;

    /* renamed from: if, reason: not valid java name */
    private int f23440if = 0;

    /* renamed from: new, reason: not valid java name */
    private RoundingMode f23441new;

    /* renamed from: try, reason: not valid java name */
    private Integer f23442try;

    public interface ParameterHandler {
        void handle(ExtendedDecimalFormatParser extendedDecimalFormatParser, String str) throws Cfinal;
    }

    /* renamed from: freemarker.core.ExtendedDecimalFormatParser$break, reason: invalid class name */
    public static class Cbreak implements ParameterHandler {
        @Override // freemarker.core.ExtendedDecimalFormatParser.ParameterHandler
        public void handle(ExtendedDecimalFormatParser extendedDecimalFormatParser, String str) throws Cfinal {
            _Java6 _java6 = ml2.f3943if;
            if (_java6 == null) {
                throw new Cfinal("For setting the exponent separator you need Java 6 or later.");
            }
            _java6.setExponentSeparator(extendedDecimalFormatParser.f23439for, str);
        }
    }

    /* renamed from: freemarker.core.ExtendedDecimalFormatParser$case, reason: invalid class name */
    public static class Ccase implements ParameterHandler {
        @Override // freemarker.core.ExtendedDecimalFormatParser.ParameterHandler
        public void handle(ExtendedDecimalFormatParser extendedDecimalFormatParser, String str) throws Cfinal {
            try {
                extendedDecimalFormatParser.f23442try = Integer.valueOf(str);
            } catch (NumberFormatException unused) {
                throw new Cfinal("Malformed integer.");
            }
        }
    }

    /* renamed from: freemarker.core.ExtendedDecimalFormatParser$catch, reason: invalid class name */
    public static class Ccatch implements ParameterHandler {
        @Override // freemarker.core.ExtendedDecimalFormatParser.ParameterHandler
        public void handle(ExtendedDecimalFormatParser extendedDecimalFormatParser, String str) throws Cfinal {
            if (str.length() != 1) {
                throw new Cfinal("Must contain exactly 1 character.");
            }
            extendedDecimalFormatParser.f23439for.setMinusSign(str.charAt(0));
        }
    }

    /* renamed from: freemarker.core.ExtendedDecimalFormatParser$class, reason: invalid class name */
    public static class Cclass implements ParameterHandler {
        @Override // freemarker.core.ExtendedDecimalFormatParser.ParameterHandler
        public void handle(ExtendedDecimalFormatParser extendedDecimalFormatParser, String str) throws Cfinal {
            extendedDecimalFormatParser.f23439for.setInfinity(str);
        }
    }

    /* renamed from: freemarker.core.ExtendedDecimalFormatParser$const, reason: invalid class name */
    public static class Cconst implements ParameterHandler {
        @Override // freemarker.core.ExtendedDecimalFormatParser.ParameterHandler
        public void handle(ExtendedDecimalFormatParser extendedDecimalFormatParser, String str) throws Cfinal {
            extendedDecimalFormatParser.f23439for.setNaN(str);
        }
    }

    /* renamed from: freemarker.core.ExtendedDecimalFormatParser$do, reason: invalid class name */
    public static class Cdo implements ParameterHandler {
        @Override // freemarker.core.ExtendedDecimalFormatParser.ParameterHandler
        public void handle(ExtendedDecimalFormatParser extendedDecimalFormatParser, String str) throws Cfinal {
            if (str.length() != 1) {
                throw new Cfinal("Must contain exactly 1 character.");
            }
            extendedDecimalFormatParser.f23439for.setPercent(str.charAt(0));
        }
    }

    /* renamed from: freemarker.core.ExtendedDecimalFormatParser$else, reason: invalid class name */
    public static class Celse implements ParameterHandler {
        @Override // freemarker.core.ExtendedDecimalFormatParser.ParameterHandler
        public void handle(ExtendedDecimalFormatParser extendedDecimalFormatParser, String str) throws Cfinal {
            if (str.length() != 1) {
                throw new Cfinal("Must contain exactly 1 character.");
            }
            extendedDecimalFormatParser.f23439for.setDecimalSeparator(str.charAt(0));
        }
    }

    /* renamed from: freemarker.core.ExtendedDecimalFormatParser$final, reason: invalid class name */
    public static class Cfinal extends Exception {
        private final String message;

        public Cfinal(String str) {
            this.message = str;
        }
    }

    /* renamed from: freemarker.core.ExtendedDecimalFormatParser$for, reason: invalid class name */
    public static class Cfor implements ParameterHandler {
        @Override // freemarker.core.ExtendedDecimalFormatParser.ParameterHandler
        public void handle(ExtendedDecimalFormatParser extendedDecimalFormatParser, String str) throws Cfinal {
            if (str.length() != 1) {
                throw new Cfinal("Must contain exactly 1 character.");
            }
            extendedDecimalFormatParser.f23439for.setZeroDigit(str.charAt(0));
        }
    }

    /* renamed from: freemarker.core.ExtendedDecimalFormatParser$goto, reason: invalid class name */
    public static class Cgoto implements ParameterHandler {
        @Override // freemarker.core.ExtendedDecimalFormatParser.ParameterHandler
        public void handle(ExtendedDecimalFormatParser extendedDecimalFormatParser, String str) throws Cfinal {
            if (str.length() != 1) {
                throw new Cfinal("Must contain exactly 1 character.");
            }
            extendedDecimalFormatParser.f23439for.setMonetaryDecimalSeparator(str.charAt(0));
        }
    }

    /* renamed from: freemarker.core.ExtendedDecimalFormatParser$if, reason: invalid class name */
    public static class Cif implements ParameterHandler {
        @Override // freemarker.core.ExtendedDecimalFormatParser.ParameterHandler
        public void handle(ExtendedDecimalFormatParser extendedDecimalFormatParser, String str) throws Cfinal {
            if (str.length() != 1) {
                throw new Cfinal("Must contain exactly 1 character.");
            }
            extendedDecimalFormatParser.f23439for.setPerMill(str.charAt(0));
        }
    }

    /* renamed from: freemarker.core.ExtendedDecimalFormatParser$new, reason: invalid class name */
    public static class Cnew implements ParameterHandler {
        @Override // freemarker.core.ExtendedDecimalFormatParser.ParameterHandler
        public void handle(ExtendedDecimalFormatParser extendedDecimalFormatParser, String str) throws Cfinal {
            try {
                extendedDecimalFormatParser.f23439for.setCurrency(Currency.getInstance(str));
            } catch (IllegalArgumentException unused) {
                throw new Cfinal("Not a known ISO 4217 code.");
            }
        }
    }

    /* renamed from: freemarker.core.ExtendedDecimalFormatParser$this, reason: invalid class name */
    public static class Cthis implements ParameterHandler {
        @Override // freemarker.core.ExtendedDecimalFormatParser.ParameterHandler
        public void handle(ExtendedDecimalFormatParser extendedDecimalFormatParser, String str) throws Cfinal {
            if (str.length() != 1) {
                throw new Cfinal("Must contain exactly 1 character.");
            }
            extendedDecimalFormatParser.f23439for.setGroupingSeparator(str.charAt(0));
        }
    }

    /* renamed from: freemarker.core.ExtendedDecimalFormatParser$try, reason: invalid class name */
    public static class Ctry implements ParameterHandler {
        @Override // freemarker.core.ExtendedDecimalFormatParser.ParameterHandler
        public void handle(ExtendedDecimalFormatParser extendedDecimalFormatParser, String str) throws Cfinal {
            RoundingMode roundingMode;
            if (str.equals(ExtendedDecimalFormatParser.f23430return)) {
                roundingMode = RoundingMode.UP;
            } else if (str.equals(ExtendedDecimalFormatParser.f23431static)) {
                roundingMode = RoundingMode.DOWN;
            } else if (str.equals(ExtendedDecimalFormatParser.f23433switch)) {
                roundingMode = RoundingMode.CEILING;
            } else if (str.equals(ExtendedDecimalFormatParser.f23436throws)) {
                roundingMode = RoundingMode.FLOOR;
            } else if (str.equals(ExtendedDecimalFormatParser.f23419default)) {
                roundingMode = RoundingMode.HALF_DOWN;
            } else if (str.equals(ExtendedDecimalFormatParser.f23421extends)) {
                roundingMode = RoundingMode.HALF_EVEN;
            } else if (str.equals(ExtendedDecimalFormatParser.f23423finally)) {
                roundingMode = RoundingMode.HALF_UP;
            } else {
                if (!str.equals(ExtendedDecimalFormatParser.f23427package)) {
                    throw new Cfinal("Should be one of: up, down, ceiling, floor, halfDown, halfEven, unnecessary");
                }
                roundingMode = RoundingMode.UNNECESSARY;
            }
            if (ml2.f3943if == null) {
                throw new Cfinal("For setting the rounding mode you need Java 6 or later.");
            }
            extendedDecimalFormatParser.f23441new = roundingMode;
        }
    }

    static {
        HashMap<String, ? extends ParameterHandler> map = new HashMap<>();
        map.put(f23414case, new Ctry());
        Ccase ccase = new Ccase();
        map.put(f23424goto, ccase);
        map.put(f23420else, ccase);
        map.put(f23434this, new Celse());
        map.put(f23413break, new Cgoto());
        map.put(f23415catch, new Cthis());
        map.put(f23416class, new Cbreak());
        map.put(f23417const, new Ccatch());
        map.put(f23422final, new Cclass());
        map.put(f23432super, new Cconst());
        map.put(f23435throw, new Cdo());
        map.put(f23437while, new Cif());
        map.put(f23425import, new Cfor());
        map.put(f23426native, new Cnew());
        f23428private = map;
    }

    private ExtendedDecimalFormatParser(String str, Locale locale) {
        this.f23438do = str;
        this.f23439for = new DecimalFormatSymbols(locale);
    }

    /* renamed from: break, reason: not valid java name */
    private ParseException m27791break(String str, String str2, int i, Cfinal cfinal) {
        return new ParseException(Csuper.m29330synchronized(str2) + " is an invalid value for the \"" + str + "\" parameter: " + cfinal.message, i);
    }

    /* renamed from: case, reason: not valid java name */
    private String m27792case() {
        String strSubstring;
        int i = this.f23440if;
        int length = this.f23438do.length();
        boolean z = false;
        int i2 = 0;
        while (i < length) {
            char cCharAt = this.f23438do.charAt(i);
            if (cCharAt == ';' && !z) {
                i2++;
                if (i2 == 2) {
                    break;
                }
            } else if (cCharAt == '\'') {
                if (z) {
                    int i3 = i + 1;
                    if (i3 >= length || this.f23438do.charAt(i3) != '\'') {
                        z = false;
                    } else {
                        i = i3;
                    }
                } else {
                    z = true;
                }
            }
            i++;
        }
        if (i2 < 2) {
            strSubstring = this.f23438do;
        } else {
            strSubstring = this.f23438do.substring(0, this.f23438do.charAt(i + (-1)) == ';' ? i - 1 : i);
        }
        if (i < length) {
            i++;
        }
        this.f23440if = i;
        return strSubstring;
    }

    /* renamed from: catch, reason: not valid java name */
    private ParseException m27793catch(String str, int i) throws ParseException {
        StringBuilder sb = new StringBuilder(128);
        sb.append("Unsupported parameter name, ");
        sb.append(Csuper.m29330synchronized(str));
        sb.append(". The supported names are: ");
        Set<String> setKeySet = f23428private.keySet();
        String[] strArr = (String[]) setKeySet.toArray(new String[setKeySet.size()]);
        Arrays.sort(strArr);
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (i2 != 0) {
                sb.append(", ");
            }
            sb.append(strArr[i2]);
        }
        return new ParseException(sb.toString(), i);
    }

    /* renamed from: class, reason: not valid java name */
    private DecimalFormat m27794class() throws ParseException {
        String strM27792case = m27792case();
        m27803super();
        m27798final();
        try {
            DecimalFormat decimalFormat = new DecimalFormat(strM27792case, this.f23439for);
            RoundingMode roundingMode = this.f23441new;
            if (roundingMode != null) {
                _Java6 _java6 = ml2.f3943if;
                if (_java6 == null) {
                    throw new ParseException("Setting rounding mode needs Java 6 or later", 0);
                }
                _java6.setRoundingMode(decimalFormat, roundingMode);
            }
            Integer num = this.f23442try;
            if (num != null) {
                decimalFormat.setMultiplier(num.intValue());
            }
            return decimalFormat;
        } catch (IllegalArgumentException e) {
            ParseException parseException = new ParseException(e.getMessage(), 0);
            if (e.getCause() == null) {
                throw parseException;
            }
            try {
                e.initCause(e.getCause());
                throw parseException;
            } catch (Exception unused) {
                throw parseException;
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static DecimalFormat m27795const(String str, Locale locale) throws ParseException {
        return new ExtendedDecimalFormatParser(str, locale).m27794class();
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0081, code lost:
    
        if (r2 != 0) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0083, code lost:
    
        r0 = r8.f23440if;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0085, code lost:
    
        if (r1 != r0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0087, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x008f, code lost:
    
        return r8.f23438do.substring(r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ac, code lost:
    
        throw new java.text.ParseException("The " + r2 + " quotation wasn't closed when the end of the source was reached.", r8.f23440if);
     */
    /* renamed from: else, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String m27797else() throws ParseException {
        int length = this.f23438do.length();
        int i = this.f23440if;
        char c = 0;
        boolean z = false;
        while (true) {
            int i2 = this.f23440if;
            if (i2 >= length) {
                break;
            }
            char cCharAt = this.f23438do.charAt(i2);
            if (cCharAt != '\'' && cCharAt != '\"') {
                if (c == 0 && !Character.isJavaIdentifierPart(cCharAt)) {
                    break;
                }
            } else if (c == 0) {
                if (i != this.f23440if) {
                    throw new ParseException("The " + cCharAt + " character can only be used for quoting values, but it was in the middle of an non-quoted value.", this.f23440if);
                }
                c = cCharAt;
            } else if (cCharAt == c) {
                int i3 = this.f23440if;
                if (i3 + 1 >= length || this.f23438do.charAt(i3 + 1) != c) {
                    break;
                }
                this.f23440if++;
                z = true;
            } else {
                continue;
            }
            this.f23440if++;
        }
        String strSubstring = this.f23438do.substring(i + 1, this.f23440if);
        this.f23440if++;
        return z ? m27805throw(strSubstring, c) : strSubstring;
    }

    /* renamed from: final, reason: not valid java name */
    private void m27798final() throws ParseException {
        int length = this.f23438do.length();
        if (this.f23440if == length) {
            return;
        }
        String str = null;
        while (true) {
            int i = this.f23440if;
            String strM27806try = m27806try();
            if (strM27806try == null) {
                throw m27804this("name");
            }
            m27803super();
            if (!m27802new(hy1.f2563new)) {
                throw m27804this("\"=\"");
            }
            m27803super();
            int i2 = this.f23440if;
            String strM27797else = m27797else();
            if (strM27797else == null) {
                throw m27804this(ES6Iterator.VALUE_PROPERTY);
            }
            int i3 = this.f23440if;
            ParameterHandler parameterHandler = f23428private.get(strM27806try);
            if (parameterHandler != null) {
                try {
                    parameterHandler.handle(this, strM27797else);
                } catch (Cfinal e) {
                    throw m27791break(strM27806try, strM27797else, i2, e);
                }
            } else {
                if (!strM27806try.equals(f23429public)) {
                    throw m27793catch(strM27806try, i);
                }
                str = strM27797else;
            }
            m27803super();
            if (m27802new(',')) {
                m27803super();
            } else {
                int i4 = this.f23440if;
                if (i4 == length) {
                    if (str != null) {
                        this.f23439for.setCurrencySymbol(str);
                        return;
                    }
                    return;
                } else if (i4 == i3) {
                    throw m27804this("parameter separator whitespace or comma");
                }
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private boolean m27800goto(char c) {
        return c == ' ' || c == '\t' || c == '\r' || c == '\n' || c == 160;
    }

    /* renamed from: new, reason: not valid java name */
    private boolean m27802new(char c) {
        if (this.f23440if >= this.f23438do.length() || this.f23438do.charAt(this.f23440if) != c) {
            return false;
        }
        this.f23440if++;
        return true;
    }

    /* renamed from: super, reason: not valid java name */
    private void m27803super() {
        int length = this.f23438do.length();
        while (true) {
            int i = this.f23440if;
            if (i >= length || !m27800goto(this.f23438do.charAt(i))) {
                return;
            } else {
                this.f23440if++;
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    private ParseException m27804this(String str) {
        String strSubstring;
        String str2;
        int length = this.f23438do.length() - 1;
        while (length >= 0 && Character.isWhitespace(this.f23438do.charAt(length))) {
            length--;
        }
        int i = length + 1;
        int i2 = this.f23440if;
        if (i2 < i) {
            int i3 = i2 + 10;
            if (i3 >= i) {
                strSubstring = this.f23438do.substring(i2, i);
            } else {
                strSubstring = this.f23438do.substring(this.f23440if, i3 - 5) + "[...]";
            }
        } else {
            strSubstring = null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Expected a(n) ");
        sb.append(str);
        sb.append(" at position ");
        sb.append(this.f23440if);
        sb.append(" (0-based), but ");
        if (strSubstring == null) {
            str2 = "reached the end of the input.";
        } else {
            str2 = "found: " + strSubstring;
        }
        sb.append(str2);
        return new ParseException(sb.toString(), this.f23440if);
    }

    /* renamed from: throw, reason: not valid java name */
    private String m27805throw(String str, char c) {
        String str2;
        String str3;
        if (c == '\'') {
            str2 = "''";
            str3 = "'";
        } else {
            str2 = "\"\"";
            str3 = "\"";
        }
        return Csuper.m(str, str2, str3);
    }

    /* renamed from: try, reason: not valid java name */
    private String m27806try() throws ParseException {
        int length = this.f23438do.length();
        int i = this.f23440if;
        boolean z = true;
        while (true) {
            int i2 = this.f23440if;
            if (i2 >= length) {
                break;
            }
            char cCharAt = this.f23438do.charAt(i2);
            if (z) {
                if (!Character.isJavaIdentifierStart(cCharAt)) {
                    break;
                }
                z = false;
                this.f23440if++;
            } else {
                if (!Character.isJavaIdentifierPart(cCharAt)) {
                    break;
                }
                this.f23440if++;
            }
        }
        if (z) {
            return null;
        }
        return this.f23438do.substring(i, this.f23440if);
    }
}
