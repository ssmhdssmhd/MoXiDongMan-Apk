package com.google.protobuf;

import android.support.v4.e62;
import android.support.v4.on0;
import com.google.protobuf.Cfinally;
import com.google.protobuf.Cprotected;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Message;
import com.google.protobuf.MessageReflection;
import com.google.protobuf.k1;
import com.google.protobuf.t1;
import com.umeng.analytics.pro.ak;
import freemarker.core.o3;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.Cclass;
import org.mozilla.javascript.ES6Iterator;

/* loaded from: classes2.dex */
public final class j1 {

    /* renamed from: do, reason: not valid java name */
    private static final Logger f17000do = Logger.getLogger(j1.class.getName());

    /* renamed from: if, reason: not valid java name */
    private static final Cnew f17001if = Cnew.m20702catch().m20717do();

    /* renamed from: com.google.protobuf.j1$case, reason: invalid class name */
    public static final class Ccase {

        /* renamed from: do, reason: not valid java name */
        private final Appendable f17002do;

        /* renamed from: for, reason: not valid java name */
        private final boolean f17003for;

        /* renamed from: if, reason: not valid java name */
        private final StringBuilder f17004if;

        /* renamed from: new, reason: not valid java name */
        private boolean f17005new;

        public /* synthetic */ Ccase(Appendable appendable, boolean z, Cdo cdo) {
            this(appendable, z);
        }

        /* renamed from: do, reason: not valid java name */
        public void m20663do() throws IOException {
            if (!this.f17003for) {
                this.f17002do.append("\n");
            }
            this.f17005new = true;
        }

        /* renamed from: for, reason: not valid java name */
        public void m20664for() {
            int length = this.f17004if.length();
            if (length == 0) {
                throw new IllegalArgumentException(" Outdent() without matching Indent().");
            }
            this.f17004if.setLength(length - 2);
        }

        /* renamed from: if, reason: not valid java name */
        public void m20665if() {
            this.f17004if.append("  ");
        }

        /* renamed from: new, reason: not valid java name */
        public void m20666new(CharSequence charSequence) throws IOException {
            if (this.f17005new) {
                this.f17005new = false;
                this.f17002do.append(this.f17003for ? Cclass.f28652do : this.f17004if);
            }
            this.f17002do.append(charSequence);
        }

        private Ccase(Appendable appendable, boolean z) {
            this.f17004if = new StringBuilder();
            this.f17005new = false;
            this.f17002do = appendable;
            this.f17003for = z;
        }
    }

    /* renamed from: com.google.protobuf.j1$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f17006do;

        /* renamed from: if, reason: not valid java name */
        public static final /* synthetic */ int[] f17007if;

        static {
            int[] iArr = new int[Descriptors.Celse.Cif.values().length];
            f17007if = iArr;
            try {
                iArr[Descriptors.Celse.Cif.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17007if[Descriptors.Celse.Cif.SINT32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17007if[Descriptors.Celse.Cif.SFIXED32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17007if[Descriptors.Celse.Cif.INT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17007if[Descriptors.Celse.Cif.SINT64.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17007if[Descriptors.Celse.Cif.SFIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17007if[Descriptors.Celse.Cif.BOOL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17007if[Descriptors.Celse.Cif.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17007if[Descriptors.Celse.Cif.DOUBLE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f17007if[Descriptors.Celse.Cif.UINT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f17007if[Descriptors.Celse.Cif.FIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f17007if[Descriptors.Celse.Cif.UINT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f17007if[Descriptors.Celse.Cif.FIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f17007if[Descriptors.Celse.Cif.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f17007if[Descriptors.Celse.Cif.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f17007if[Descriptors.Celse.Cif.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f17007if[Descriptors.Celse.Cif.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f17007if[Descriptors.Celse.Cif.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[Descriptors.Celse.Cdo.values().length];
            f17006do = iArr2;
            try {
                iArr2[Descriptors.Celse.Cdo.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f17006do[Descriptors.Celse.Cdo.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f17006do[Descriptors.Celse.Cdo.INT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f17006do[Descriptors.Celse.Cdo.STRING.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
        }
    }

    /* renamed from: com.google.protobuf.j1$else, reason: invalid class name */
    public static final class Celse {

        /* renamed from: case, reason: not valid java name */
        private int f17013case;

        /* renamed from: do, reason: not valid java name */
        private final CharSequence f17014do;

        /* renamed from: else, reason: not valid java name */
        private int f17015else;

        /* renamed from: for, reason: not valid java name */
        private String f17016for;

        /* renamed from: goto, reason: not valid java name */
        private int f17017goto;

        /* renamed from: if, reason: not valid java name */
        private final Matcher f17018if;

        /* renamed from: new, reason: not valid java name */
        private int f17019new;

        /* renamed from: try, reason: not valid java name */
        private int f17020try;

        /* renamed from: this, reason: not valid java name */
        private static final Pattern f17012this = Pattern.compile("(\\s|(#.*$))++", 8);

        /* renamed from: break, reason: not valid java name */
        private static final Pattern f17008break = Pattern.compile("[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|'([^'\n\\\\]|\\\\.)*+('|\\\\?$)", 8);

        /* renamed from: catch, reason: not valid java name */
        private static final Pattern f17009catch = Pattern.compile("-?inf(inity)?", 2);

        /* renamed from: class, reason: not valid java name */
        private static final Pattern f17010class = Pattern.compile("-?inf(inity)?f?", 2);

        /* renamed from: const, reason: not valid java name */
        private static final Pattern f17011const = Pattern.compile("nanf?", 2);

        public /* synthetic */ Celse(CharSequence charSequence, Cdo cdo) {
            this(charSequence);
        }

        /* renamed from: case, reason: not valid java name */
        private void m20667case(List<ByteString> list) throws Cfor {
            char cCharAt = this.f17016for.length() > 0 ? this.f17016for.charAt(0) : (char) 0;
            if (cCharAt != '\"' && cCharAt != '\'') {
                throw m20697throws("Expected string.");
            }
            if (this.f17016for.length() >= 2) {
                String str = this.f17016for;
                if (str.charAt(str.length() - 1) == cCharAt) {
                    try {
                        String str2 = this.f17016for;
                        ByteString byteStringD = j1.d(str2.substring(1, str2.length() - 1));
                        m20694switch();
                        list.add(byteStringD);
                        return;
                    } catch (Cif e) {
                        throw m20697throws(e.getMessage());
                    }
                }
            }
            throw m20697throws("String missing ending quote.");
        }

        /* renamed from: extends, reason: not valid java name */
        private void m20669extends() {
            this.f17018if.usePattern(f17012this);
            if (this.f17018if.lookingAt()) {
                Matcher matcher = this.f17018if;
                matcher.region(matcher.end(), this.f17018if.regionEnd());
            }
        }

        /* renamed from: public, reason: not valid java name */
        private Cfor m20670public(NumberFormatException numberFormatException) {
            String strValueOf = String.valueOf(numberFormatException.getMessage());
            return m20697throws(strValueOf.length() != 0 ? "Couldn't parse integer: ".concat(strValueOf) : new String("Couldn't parse integer: "));
        }

        /* renamed from: super, reason: not valid java name */
        private Cfor m20671super(NumberFormatException numberFormatException) {
            String strValueOf = String.valueOf(numberFormatException.getMessage());
            return m20697throws(strValueOf.length() != 0 ? "Couldn't parse number: ".concat(strValueOf) : new String("Couldn't parse number: "));
        }

        /* renamed from: abstract, reason: not valid java name */
        public boolean m20672abstract() {
            try {
                m20695this();
                return true;
            } catch (Cfor unused) {
                return false;
            }
        }

        /* renamed from: break, reason: not valid java name */
        public int m20673break() throws Cfor {
            try {
                int iM20644native = j1.m20644native(this.f17016for);
                m20694switch();
                return iM20644native;
            } catch (NumberFormatException e) {
                throw m20670public(e);
            }
        }

        /* renamed from: catch, reason: not valid java name */
        public long m20674catch() throws Cfor {
            try {
                long jM20649public = j1.m20649public(this.f17016for);
                m20694switch();
                return jM20649public;
            } catch (NumberFormatException e) {
                throw m20670public(e);
            }
        }

        /* renamed from: class, reason: not valid java name */
        public String m20675class() throws Cfor {
            return m20698try().toStringUtf8();
        }

        /* renamed from: const, reason: not valid java name */
        public int m20676const() throws Cfor {
            try {
                int iM20651static = j1.m20651static(this.f17016for);
                m20694switch();
                return iM20651static;
            } catch (NumberFormatException e) {
                throw m20670public(e);
            }
        }

        /* renamed from: continue, reason: not valid java name */
        public boolean m20677continue() {
            try {
                m20674catch();
                return true;
            } catch (Cfor unused) {
                return false;
            }
        }

        /* renamed from: default, reason: not valid java name */
        public Cfor m20678default(String str) {
            return new Cfor(this.f17015else + 1, this.f17017goto + 1, str);
        }

        /* renamed from: else, reason: not valid java name */
        public double m20679else() throws NumberFormatException, Cfor {
            if (f17009catch.matcher(this.f17016for).matches()) {
                boolean zStartsWith = this.f17016for.startsWith("-");
                m20694switch();
                return zStartsWith ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
            }
            if (this.f17016for.equalsIgnoreCase("nan")) {
                m20694switch();
                return Double.NaN;
            }
            try {
                double d = Double.parseDouble(this.f17016for);
                m20694switch();
                return d;
            } catch (NumberFormatException e) {
                throw m20671super(e);
            }
        }

        /* renamed from: final, reason: not valid java name */
        public long m20680final() throws Cfor {
            try {
                long jM20654switch = j1.m20654switch(this.f17016for);
                m20694switch();
                return jM20654switch;
            } catch (NumberFormatException e) {
                throw m20670public(e);
            }
        }

        /* renamed from: finally, reason: not valid java name */
        public boolean m20681finally(String str) {
            if (!this.f17016for.equals(str)) {
                return false;
            }
            m20694switch();
            return true;
        }

        /* renamed from: for, reason: not valid java name */
        public void m20682for(String str) throws Cfor {
            if (m20681finally(str)) {
                return;
            }
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
            sb.append("Expected \"");
            sb.append(str);
            sb.append("\".");
            throw m20697throws(sb.toString());
        }

        /* renamed from: goto, reason: not valid java name */
        public float m20683goto() throws NumberFormatException, Cfor {
            if (f17010class.matcher(this.f17016for).matches()) {
                boolean zStartsWith = this.f17016for.startsWith("-");
                m20694switch();
                return zStartsWith ? Float.NEGATIVE_INFINITY : Float.POSITIVE_INFINITY;
            }
            if (f17011const.matcher(this.f17016for).matches()) {
                m20694switch();
                return Float.NaN;
            }
            try {
                float f = Float.parseFloat(this.f17016for);
                m20694switch();
                return f;
            } catch (NumberFormatException e) {
                throw m20671super(e);
            }
        }

        /* renamed from: if, reason: not valid java name */
        public boolean m20684if() {
            return this.f17016for.length() == 0;
        }

        /* renamed from: import, reason: not valid java name */
        public int m20685import() {
            return this.f17017goto;
        }

        /* renamed from: interface, reason: not valid java name */
        public Cgoto m20686interface(String str, String str2) {
            return new Cgoto(this.f17015else + 1, this.f17017goto + 1, str, str2);
        }

        /* renamed from: native, reason: not valid java name */
        public int m20687native() {
            return this.f17015else;
        }

        /* renamed from: new, reason: not valid java name */
        public boolean m20688new() throws Cfor {
            if (this.f17016for.equals(freemarker.core.b2.f23511if) || this.f17016for.equals("True") || this.f17016for.equals(ak.aH) || this.f17016for.equals("1")) {
                m20694switch();
                return true;
            }
            if (this.f17016for.equals(freemarker.core.b2.f23510do) || this.f17016for.equals("False") || this.f17016for.equals("f") || this.f17016for.equals("0")) {
                m20694switch();
                return false;
            }
            String str = this.f17016for;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 37);
            sb.append("Expected \"true\" or \"false\". Found \"");
            sb.append(str);
            sb.append("\".");
            throw m20697throws(sb.toString());
        }

        /* renamed from: package, reason: not valid java name */
        public boolean m20689package() throws NumberFormatException {
            try {
                m20679else();
                return true;
            } catch (Cfor unused) {
                return false;
            }
        }

        /* renamed from: private, reason: not valid java name */
        public boolean m20690private() throws NumberFormatException {
            try {
                m20683goto();
                return true;
            } catch (Cfor unused) {
                return false;
            }
        }

        /* renamed from: return, reason: not valid java name */
        public boolean m20691return(String str) {
            return this.f17016for.equals(str);
        }

        /* renamed from: static, reason: not valid java name */
        public boolean m20692static() {
            if (this.f17016for.length() == 0) {
                return false;
            }
            char cCharAt = this.f17016for.charAt(0);
            return ('0' <= cCharAt && cCharAt <= '9') || cCharAt == '-' || cCharAt == '+';
        }

        /* renamed from: strictfp, reason: not valid java name */
        public boolean m20693strictfp() {
            try {
                m20675class();
                return true;
            } catch (Cfor unused) {
                return false;
            }
        }

        /* renamed from: switch, reason: not valid java name */
        public void m20694switch() {
            this.f17015else = this.f17020try;
            this.f17017goto = this.f17013case;
            while (this.f17019new < this.f17018if.regionStart()) {
                if (this.f17014do.charAt(this.f17019new) == '\n') {
                    this.f17020try++;
                    this.f17013case = 0;
                } else {
                    this.f17013case++;
                }
                this.f17019new++;
            }
            if (this.f17018if.regionStart() == this.f17018if.regionEnd()) {
                this.f17016for = "";
                return;
            }
            this.f17018if.usePattern(f17008break);
            if (this.f17018if.lookingAt()) {
                this.f17016for = this.f17018if.group();
                Matcher matcher = this.f17018if;
                matcher.region(matcher.end(), this.f17018if.regionEnd());
            } else {
                this.f17016for = String.valueOf(this.f17014do.charAt(this.f17019new));
                Matcher matcher2 = this.f17018if;
                matcher2.region(this.f17019new + 1, matcher2.regionEnd());
            }
            m20669extends();
        }

        /* renamed from: this, reason: not valid java name */
        public String m20695this() throws Cfor {
            for (int i = 0; i < this.f17016for.length(); i++) {
                char cCharAt = this.f17016for.charAt(i);
                if (('a' > cCharAt || cCharAt > 'z') && (('A' > cCharAt || cCharAt > 'Z') && !(('0' <= cCharAt && cCharAt <= '9') || cCharAt == '_' || cCharAt == '.'))) {
                    String str = this.f17016for;
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 29);
                    sb.append("Expected identifier. Found '");
                    sb.append(str);
                    sb.append("'");
                    throw m20697throws(sb.toString());
                }
            }
            String str2 = this.f17016for;
            m20694switch();
            return str2;
        }

        /* renamed from: throw, reason: not valid java name */
        public int m20696throw() {
            return this.f17013case;
        }

        /* renamed from: throws, reason: not valid java name */
        public Cfor m20697throws(String str) {
            return new Cfor(this.f17020try + 1, this.f17013case + 1, str);
        }

        /* renamed from: try, reason: not valid java name */
        public ByteString m20698try() throws Cfor {
            ArrayList arrayList = new ArrayList();
            m20667case(arrayList);
            while (true) {
                if (!this.f17016for.startsWith("'") && !this.f17016for.startsWith("\"")) {
                    return ByteString.copyFrom(arrayList);
                }
                m20667case(arrayList);
            }
        }

        /* renamed from: volatile, reason: not valid java name */
        public boolean m20699volatile() {
            try {
                m20680final();
                return true;
            } catch (Cfor unused) {
                return false;
            }
        }

        /* renamed from: while, reason: not valid java name */
        public int m20700while() {
            return this.f17020try;
        }

        private Celse(CharSequence charSequence) {
            this.f17019new = 0;
            this.f17020try = 0;
            this.f17013case = 0;
            this.f17015else = 0;
            this.f17017goto = 0;
            this.f17014do = charSequence;
            this.f17018if = f17012this.matcher(charSequence);
            m20669extends();
            m20694switch();
        }
    }

    /* renamed from: com.google.protobuf.j1$for, reason: invalid class name */
    public static class Cfor extends IOException {
        private static final long serialVersionUID = 3196188060225107702L;
        private final int column;
        private final int line;

        public Cfor(String str) {
            this(-1, -1, str);
        }

        public int getColumn() {
            return this.column;
        }

        public int getLine() {
            return this.line;
        }

        public Cfor(int i, int i2, String str) {
            String string = Integer.toString(i);
            StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 14 + String.valueOf(str).length());
            sb.append(string);
            sb.append(":");
            sb.append(i2);
            sb.append(": ");
            sb.append(str);
            super(sb.toString());
            this.line = i;
            this.column = i2;
        }
    }

    /* renamed from: com.google.protobuf.j1$goto, reason: invalid class name */
    public static class Cgoto extends Cfor {
        private final String unknownField;

        public Cgoto(String str) {
            this(-1, -1, "", str);
        }

        public String getUnknownField() {
            return this.unknownField;
        }

        public Cgoto(int i, int i2, String str, String str2) {
            super(i, i2, str2);
            this.unknownField = str;
        }
    }

    /* renamed from: com.google.protobuf.j1$if, reason: invalid class name */
    public static class Cif extends IOException {
        private static final long serialVersionUID = -8164033650142593304L;

        public Cif(String str) {
            super(str);
        }
    }

    /* renamed from: com.google.protobuf.j1$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: else, reason: not valid java name */
        private static final int f17021else = 4096;

        /* renamed from: case, reason: not valid java name */
        private k1.Cif f17022case;

        /* renamed from: do, reason: not valid java name */
        private final p1 f17023do;

        /* renamed from: for, reason: not valid java name */
        private final boolean f17024for;

        /* renamed from: if, reason: not valid java name */
        private final boolean f17025if;

        /* renamed from: new, reason: not valid java name */
        private final boolean f17026new;

        /* renamed from: try, reason: not valid java name */
        private final Cif f17027try;

        /* renamed from: com.google.protobuf.j1$new$do, reason: invalid class name */
        public static class Cdo {

            /* renamed from: do, reason: not valid java name */
            private boolean f17029do = false;

            /* renamed from: if, reason: not valid java name */
            private boolean f17031if = false;

            /* renamed from: for, reason: not valid java name */
            private boolean f17030for = false;

            /* renamed from: new, reason: not valid java name */
            private Cif f17032new = Cif.ALLOW_SINGULAR_OVERWRITES;

            /* renamed from: try, reason: not valid java name */
            private k1.Cif f17033try = null;

            /* renamed from: case, reason: not valid java name */
            private p1 f17028case = p1.m20943new();

            /* renamed from: case, reason: not valid java name */
            public Cdo m20716case(p1 p1Var) {
                this.f17028case = p1Var;
                return this;
            }

            /* renamed from: do, reason: not valid java name */
            public Cnew m20717do() {
                return new Cnew(this.f17028case, this.f17029do, this.f17031if, this.f17030for, this.f17032new, this.f17033try, null);
            }

            /* renamed from: for, reason: not valid java name */
            public Cdo m20718for(boolean z) {
                this.f17029do = z;
                return this;
            }

            /* renamed from: if, reason: not valid java name */
            public Cdo m20719if(boolean z) {
                this.f17030for = z;
                return this;
            }

            /* renamed from: new, reason: not valid java name */
            public Cdo m20720new(k1.Cif cif) {
                this.f17033try = cif;
                return this;
            }

            /* renamed from: try, reason: not valid java name */
            public Cdo m20721try(Cif cif) {
                this.f17032new = cif;
                return this;
            }
        }

        /* renamed from: com.google.protobuf.j1$new$for, reason: invalid class name */
        public static final class Cfor {

            /* renamed from: do, reason: not valid java name */
            public final String f17034do;

            /* renamed from: if, reason: not valid java name */
            public final Cdo f17035if;

            /* renamed from: com.google.protobuf.j1$new$for$do, reason: invalid class name */
            public enum Cdo {
                FIELD,
                EXTENSION
            }

            public Cfor(String str, Cdo cdo) {
                this.f17034do = str;
                this.f17035if = cdo;
            }
        }

        /* renamed from: com.google.protobuf.j1$new$if, reason: invalid class name */
        public enum Cif {
            ALLOW_SINGULAR_OVERWRITES,
            FORBID_SINGULAR_OVERWRITES
        }

        public /* synthetic */ Cnew(p1 p1Var, boolean z, boolean z2, boolean z3, Cif cif, k1.Cif cif2, Cdo cdo) {
            this(p1Var, z, z2, z3, cif, cif2);
        }

        /* renamed from: break, reason: not valid java name */
        private void m20701break(Celse celse, Cprotected cprotected, MessageReflection.MergeTarget mergeTarget, List<Cfor> list) throws Cfor {
            m20711this(celse, cprotected, mergeTarget, this.f17022case, list);
        }

        /* renamed from: catch, reason: not valid java name */
        public static Cdo m20702catch() {
            return new Cdo();
        }

        /* renamed from: class, reason: not valid java name */
        private static void m20703class(Celse celse) throws Cfor {
            if (celse.m20681finally("[")) {
                do {
                    celse.m20695this();
                } while (celse.m20681finally("."));
                celse.m20682for("]");
            } else {
                celse.m20695this();
            }
            if (!celse.m20681finally(":") || celse.m20691return("<") || celse.m20691return("{")) {
                m20704const(celse);
            } else {
                m20706final(celse);
            }
            if (celse.m20681finally(";")) {
                return;
            }
            celse.m20681finally(",");
        }

        /* renamed from: const, reason: not valid java name */
        private static void m20704const(Celse celse) throws Cfor {
            String str;
            if (celse.m20681finally("<")) {
                str = ">";
            } else {
                celse.m20682for("{");
                str = "}";
            }
            while (!celse.m20691return(">") && !celse.m20691return("}")) {
                m20703class(celse);
            }
            celse.m20682for(str);
        }

        /* renamed from: do, reason: not valid java name */
        private void m20705do(List<Cfor> list) throws Cfor {
            int i;
            boolean z;
            if (list.isEmpty()) {
                return;
            }
            StringBuilder sb = new StringBuilder("Input contains unknown fields and/or extensions:");
            for (Cfor cfor : list) {
                sb.append('\n');
                sb.append(cfor.f17034do);
            }
            if (this.f17025if) {
                j1.f17000do.warning(sb.toString());
                return;
            }
            if (this.f17026new) {
                Iterator<Cfor> it = list.iterator();
                i = 0;
                while (true) {
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    } else {
                        if (it.next().f17035if == Cfor.Cdo.FIELD) {
                            z = false;
                            break;
                        }
                        i++;
                    }
                }
                if (z) {
                    j1.f17000do.warning(sb.toString());
                    return;
                }
            } else {
                i = 0;
            }
            String[] strArrSplit = list.get(i).f17034do.split(":");
            throw new Cfor(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), sb.toString());
        }

        /* renamed from: final, reason: not valid java name */
        private static void m20706final(Celse celse) throws Cfor {
            if (celse.m20693strictfp()) {
                while (celse.m20693strictfp()) {
                }
                return;
            }
            if (celse.m20672abstract() || celse.m20677continue() || celse.m20699volatile() || celse.m20689package() || celse.m20690private()) {
                return;
            }
            String strValueOf = String.valueOf(celse.f17016for);
            throw celse.m20697throws(strValueOf.length() != 0 ? "Invalid field value: ".concat(strValueOf) : new String("Invalid field value: "));
        }

        /* renamed from: for, reason: not valid java name */
        private void m20707for(Celse celse, Cprotected cprotected, MessageReflection.MergeTarget mergeTarget, Descriptors.Celse celse2, Cprotected.Cfor cfor, k1.Cif cif, List<Cfor> list) throws Cfor {
            if (!celse2.isRepeated() || !celse.m20681finally("[")) {
                m20709if(celse, cprotected, mergeTarget, celse2, cfor, cif, list);
            } else {
                if (celse.m20681finally("]")) {
                    return;
                }
                while (true) {
                    m20709if(celse, cprotected, mergeTarget, celse2, cfor, cif, list);
                    if (celse.m20681finally("]")) {
                        return;
                    } else {
                        celse.m20682for(",");
                    }
                }
            }
        }

        /* renamed from: goto, reason: not valid java name */
        private void m20708goto(Celse celse, Cprotected cprotected, MessageReflection.MergeTarget mergeTarget, k1.Cif cif, List<Cfor> list, Descriptors.Cif cif2) throws Cfor {
            String str;
            StringBuilder sb = new StringBuilder();
            while (true) {
                sb.append(celse.m20695this());
                if (celse.m20681finally("]")) {
                    celse.m20681finally(":");
                    if (celse.m20681finally("<")) {
                        str = ">";
                    } else {
                        celse.m20682for("{");
                        str = "}";
                    }
                    String str2 = str;
                    String string = sb.toString();
                    try {
                        Descriptors.Cif cifM20945for = this.f17023do.m20945for(string);
                        if (cifM20945for == null) {
                            StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 115);
                            sb2.append("Unable to parse Any of type: ");
                            sb2.append(string);
                            sb2.append(". Please make sure that the TypeRegistry contains the descriptors for the given types.");
                            throw celse.m20697throws(sb2.toString());
                        }
                        Cfinally.Cif cifM20455break = Cfinally.m20453try(cifM20945for).newBuilderForType();
                        MessageReflection.Cif cif3 = new MessageReflection.Cif(cifM20455break);
                        while (!celse.m20681finally(str2)) {
                            m20711this(celse, cprotected, cif3, cif, list);
                        }
                        mergeTarget.setField(cif2.m19334this("type_url"), sb.toString());
                        mergeTarget.setField(cif2.m19334this(ES6Iterator.VALUE_PROPERTY), cifM20455break.build().toByteString());
                        return;
                    } catch (n unused) {
                        String strValueOf = String.valueOf(string);
                        throw celse.m20697throws(strValueOf.length() != 0 ? "Invalid valid type URL. Found: ".concat(strValueOf) : new String("Invalid valid type URL. Found: "));
                    }
                }
                if (celse.m20681finally(on0.f4694final)) {
                    sb.append(on0.f4694final);
                } else {
                    if (!celse.m20681finally(".")) {
                        throw celse.m20678default("Expected a valid type URL.");
                    }
                    sb.append(".");
                }
            }
        }

        /* renamed from: if, reason: not valid java name */
        private void m20709if(Celse celse, Cprotected cprotected, MessageReflection.MergeTarget mergeTarget, Descriptors.Celse celse2, Cprotected.Cfor cfor, k1.Cif cif, List<Cfor> list) throws Cfor {
            String str;
            Object objFinish;
            if (this.f17027try == Cif.FORBID_SINGULAR_OVERWRITES && !celse2.isRepeated()) {
                if (mergeTarget.hasField(celse2)) {
                    String strMo19235if = celse2.mo19235if();
                    StringBuilder sb = new StringBuilder(String.valueOf(strMo19235if).length() + 44);
                    sb.append("Non-repeated field \"");
                    sb.append(strMo19235if);
                    sb.append("\" cannot be overwritten.");
                    throw celse.m20678default(sb.toString());
                }
                if (celse2.m19281catch() != null && mergeTarget.hasOneof(celse2.m19281catch())) {
                    Descriptors.Cbreak cbreakM19281catch = celse2.m19281catch();
                    String strMo19235if2 = celse2.mo19235if();
                    String strMo19235if3 = mergeTarget.getOneofFieldDescriptor(cbreakM19281catch).mo19235if();
                    String strMo19234for = cbreakM19281catch.mo19234for();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(strMo19235if2).length() + 70 + String.valueOf(strMo19235if3).length() + String.valueOf(strMo19234for).length());
                    sb2.append("Field \"");
                    sb2.append(strMo19235if2);
                    sb2.append("\" is specified along with field \"");
                    sb2.append(strMo19235if3);
                    sb2.append("\", another member of oneof \"");
                    sb2.append(strMo19234for);
                    sb2.append("\".");
                    throw celse.m20678default(sb2.toString());
                }
            }
            Object objValueOf = null;
            if (celse2.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
                if (celse.m20681finally("<")) {
                    str = ">";
                } else {
                    celse.m20682for("{");
                    str = "}";
                }
                String str2 = str;
                if (celse2.m19291native().mo19235if().equals("google.protobuf.Any") && celse.m20681finally("[")) {
                    MessageReflection.MergeTarget mergeTargetNewMergeTargetForField = mergeTarget.newMergeTargetForField(celse2, Cfinally.m20453try(celse2.m19291native()));
                    m20708goto(celse, cprotected, mergeTargetNewMergeTargetForField, cif, list, celse2.m19291native());
                    objFinish = mergeTargetNewMergeTargetForField.finish();
                    celse.m20682for(str2);
                } else {
                    MessageReflection.MergeTarget mergeTargetNewMergeTargetForField2 = mergeTarget.newMergeTargetForField(celse2, cfor != null ? cfor.f17161if : null);
                    while (!celse.m20681finally(str2)) {
                        if (celse.m20684if()) {
                            StringBuilder sb3 = new StringBuilder(str2.length() + 12);
                            sb3.append("Expected \"");
                            sb3.append(str2);
                            sb3.append("\".");
                            throw celse.m20697throws(sb3.toString());
                        }
                        m20711this(celse, cprotected, mergeTargetNewMergeTargetForField2, cif, list);
                    }
                    objFinish = mergeTargetNewMergeTargetForField2.finish();
                }
                objValueOf = objFinish;
            } else {
                switch (Cdo.f17007if[celse2.m19296static().ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                        objValueOf = Integer.valueOf(celse.m20673break());
                        break;
                    case 4:
                    case 5:
                    case 6:
                        objValueOf = Long.valueOf(celse.m20674catch());
                        break;
                    case 7:
                        objValueOf = Boolean.valueOf(celse.m20688new());
                        break;
                    case 8:
                        objValueOf = Float.valueOf(celse.m20683goto());
                        break;
                    case 9:
                        objValueOf = Double.valueOf(celse.m20679else());
                        break;
                    case 10:
                    case 11:
                        objValueOf = Integer.valueOf(celse.m20676const());
                        break;
                    case 12:
                    case 13:
                        objValueOf = Long.valueOf(celse.m20680final());
                        break;
                    case 14:
                        objValueOf = celse.m20675class();
                        break;
                    case 15:
                        objValueOf = celse.m20698try();
                        break;
                    case 16:
                        Descriptors.Ctry enumType = celse2.getEnumType();
                        if (celse.m20692static()) {
                            int iM20673break = celse.m20673break();
                            objValueOf = enumType.findValueByNumber(iM20673break);
                            if (objValueOf == null) {
                                String strMo19235if4 = enumType.mo19235if();
                                StringBuilder sb4 = new StringBuilder(String.valueOf(strMo19235if4).length() + 50);
                                sb4.append("Enum type \"");
                                sb4.append(strMo19235if4);
                                sb4.append("\" has no value with number ");
                                sb4.append(iM20673break);
                                sb4.append(org.apache.commons.lang3.Ctry.f28883do);
                                String string = sb4.toString();
                                if (this.f17024for) {
                                    j1.f17000do.warning(string);
                                    return;
                                }
                                String strMo19235if5 = enumType.mo19235if();
                                StringBuilder sb5 = new StringBuilder(String.valueOf(strMo19235if5).length() + 50);
                                sb5.append("Enum type \"");
                                sb5.append(strMo19235if5);
                                sb5.append("\" has no value with number ");
                                sb5.append(iM20673break);
                                sb5.append(org.apache.commons.lang3.Ctry.f28883do);
                                throw celse.m20678default(sb5.toString());
                            }
                        } else {
                            String strM20695this = celse.m20695this();
                            objValueOf = enumType.m19353case(strM20695this);
                            if (objValueOf == null) {
                                String strMo19235if6 = enumType.mo19235if();
                                StringBuilder sb6 = new StringBuilder(String.valueOf(strMo19235if6).length() + 35 + String.valueOf(strM20695this).length());
                                sb6.append("Enum type \"");
                                sb6.append(strMo19235if6);
                                sb6.append("\" has no value named \"");
                                sb6.append(strM20695this);
                                sb6.append("\".");
                                String string2 = sb6.toString();
                                if (!this.f17024for) {
                                    throw celse.m20678default(string2);
                                }
                                j1.f17000do.warning(string2);
                                return;
                            }
                        }
                        break;
                    case 17:
                    case 18:
                        throw new RuntimeException("Can't get here.");
                }
            }
            if (celse2.isRepeated()) {
                mergeTarget.addRepeatedField(celse2, objValueOf);
            } else {
                mergeTarget.setField(celse2, objValueOf);
            }
        }

        /* renamed from: super, reason: not valid java name */
        private static StringBuilder m20710super(Readable readable) throws IOException {
            StringBuilder sb = new StringBuilder();
            CharBuffer charBufferAllocate = CharBuffer.allocate(4096);
            while (true) {
                int i = readable.read(charBufferAllocate);
                if (i == -1) {
                    return sb;
                }
                sb.append((CharSequence) charBufferAllocate, 0, i);
            }
        }

        /* renamed from: this, reason: not valid java name */
        private void m20711this(Celse celse, Cprotected cprotected, MessageReflection.MergeTarget mergeTarget, k1.Cif cif, List<Cfor> list) throws Cfor {
            Descriptors.Celse celse2;
            Cprotected.Cfor cfor;
            Descriptors.Celse celse3;
            int iM20700while = celse.m20700while();
            int iM20696throw = celse.m20696throw();
            Descriptors.Cif descriptorForType = mergeTarget.getDescriptorForType();
            if ("google.protobuf.Any".equals(descriptorForType.mo19235if()) && celse.m20681finally("[")) {
                m20708goto(celse, cprotected, mergeTarget, cif, list, descriptorForType);
                return;
            }
            if (celse.m20681finally("[")) {
                StringBuilder sb = new StringBuilder(celse.m20695this());
                while (celse.m20681finally(".")) {
                    sb.append(org.apache.commons.lang3.Ctry.f28883do);
                    sb.append(celse.m20695this());
                }
                Cprotected.Cfor cforFindExtensionByName = mergeTarget.findExtensionByName(cprotected, sb.toString());
                if (cforFindExtensionByName == null) {
                    int iM20687native = celse.m20687native() + 1;
                    int iM20685import = celse.m20685import() + 1;
                    String strMo19235if = descriptorForType.mo19235if();
                    String strValueOf = String.valueOf(sb);
                    StringBuilder sb2 = new StringBuilder(String.valueOf(strMo19235if).length() + 28 + strValueOf.length());
                    sb2.append(iM20687native);
                    sb2.append(":");
                    sb2.append(iM20685import);
                    sb2.append(":\t");
                    sb2.append(strMo19235if);
                    sb2.append(".[");
                    sb2.append(strValueOf);
                    sb2.append("]");
                    list.add(new Cfor(sb2.toString(), Cfor.Cdo.EXTENSION));
                    celse3 = null;
                } else {
                    if (cforFindExtensionByName.f17160do.m19282class() != descriptorForType) {
                        String strValueOf2 = String.valueOf(sb);
                        String strMo19235if2 = descriptorForType.mo19235if();
                        StringBuilder sb3 = new StringBuilder(strValueOf2.length() + 45 + String.valueOf(strMo19235if2).length());
                        sb3.append("Extension \"");
                        sb3.append(strValueOf2);
                        sb3.append("\" does not extend message type \"");
                        sb3.append(strMo19235if2);
                        sb3.append("\".");
                        throw celse.m20678default(sb3.toString());
                    }
                    celse3 = cforFindExtensionByName.f17160do;
                }
                celse.m20682for("]");
                cfor = cforFindExtensionByName;
                celse2 = celse3;
            } else {
                String strM20695this = celse.m20695this();
                Descriptors.Celse celseM19334this = descriptorForType.m19334this(strM20695this);
                if (celseM19334this == null && (celseM19334this = descriptorForType.m19334this(strM20695this.toLowerCase(Locale.US))) != null && celseM19334this.m19296static() != Descriptors.Celse.Cif.GROUP) {
                    celseM19334this = null;
                }
                if (celseM19334this != null && celseM19334this.m19296static() == Descriptors.Celse.Cif.GROUP && !celseM19334this.m19291native().mo19234for().equals(strM20695this)) {
                    celseM19334this = null;
                }
                if (celseM19334this == null) {
                    int iM20687native2 = celse.m20687native() + 1;
                    int iM20685import2 = celse.m20685import() + 1;
                    String strMo19235if3 = descriptorForType.mo19235if();
                    StringBuilder sb4 = new StringBuilder(String.valueOf(strMo19235if3).length() + 26 + String.valueOf(strM20695this).length());
                    sb4.append(iM20687native2);
                    sb4.append(":");
                    sb4.append(iM20685import2);
                    sb4.append(":\t");
                    sb4.append(strMo19235if3);
                    sb4.append(".");
                    sb4.append(strM20695this);
                    list.add(new Cfor(sb4.toString(), Cfor.Cdo.FIELD));
                }
                celse2 = celseM19334this;
                cfor = null;
            }
            if (celse2 == null) {
                if (!celse.m20681finally(":") || celse.m20691return("{") || celse.m20691return("<")) {
                    m20704const(celse);
                    return;
                } else {
                    m20706final(celse);
                    return;
                }
            }
            if (celse2.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
                celse.m20681finally(":");
                if (cif != null) {
                    m20707for(celse, cprotected, mergeTarget, celse2, cfor, cif.m20778if(celse2), list);
                } else {
                    m20707for(celse, cprotected, mergeTarget, celse2, cfor, cif, list);
                }
            } else {
                celse.m20682for(":");
                m20707for(celse, cprotected, mergeTarget, celse2, cfor, cif, list);
            }
            if (cif != null) {
                cif.m20777for(celse2, e62.m1662do(iM20700while, iM20696throw));
            }
            if (celse.m20681finally(";")) {
                return;
            }
            celse.m20681finally(",");
        }

        /* renamed from: case, reason: not valid java name */
        public void m20712case(Readable readable, Cprotected cprotected, Message.Builder builder) throws IOException {
            m20714new(m20710super(readable), cprotected, builder);
        }

        /* renamed from: else, reason: not valid java name */
        public void m20713else(Readable readable, Message.Builder builder) throws IOException {
            m20712case(readable, Cprotected.m20974static(), builder);
        }

        /* renamed from: new, reason: not valid java name */
        public void m20714new(CharSequence charSequence, Cprotected cprotected, Message.Builder builder) throws Cfor {
            Celse celse = new Celse(charSequence, null);
            MessageReflection.Cif cif = new MessageReflection.Cif(builder);
            ArrayList arrayList = new ArrayList();
            while (!celse.m20684if()) {
                m20701break(celse, cprotected, cif, arrayList);
            }
            m20705do(arrayList);
        }

        /* renamed from: try, reason: not valid java name */
        public void m20715try(CharSequence charSequence, Message.Builder builder) throws Cfor {
            m20714new(charSequence, Cprotected.m20974static(), builder);
        }

        private Cnew(p1 p1Var, boolean z, boolean z2, boolean z3, Cif cif, k1.Cif cif2) {
            this.f17023do = p1Var;
            this.f17025if = z;
            this.f17024for = z2;
            this.f17026new = z3;
            this.f17027try = cif;
            this.f17022case = cif2;
        }
    }

    /* renamed from: com.google.protobuf.j1$try, reason: invalid class name */
    public static final class Ctry {

        /* renamed from: for, reason: not valid java name */
        private static final Ctry f17038for = new Ctry(true, p1.m20943new());

        /* renamed from: do, reason: not valid java name */
        private final boolean f17039do;

        /* renamed from: if, reason: not valid java name */
        private final p1 f17040if;

        /* renamed from: com.google.protobuf.j1$try$do, reason: invalid class name */
        public static class Cdo implements Comparable<Cdo> {

            /* renamed from: do, reason: not valid java name */
            private Object f17041do;

            /* renamed from: for, reason: not valid java name */
            private final Descriptors.Celse.Cdo f17042for;

            /* renamed from: if, reason: not valid java name */
            private x f17043if;

            public Cdo(Object obj, Descriptors.Celse celse) {
                if (obj instanceof x) {
                    this.f17043if = (x) obj;
                } else {
                    this.f17041do = obj;
                }
                this.f17042for = m20745if(celse);
            }

            /* renamed from: if, reason: not valid java name */
            private static Descriptors.Celse.Cdo m20745if(Descriptors.Celse celse) {
                return celse.m19291native().m19332super().get(0).m19302while();
            }

            @Override // java.lang.Comparable
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public int compareTo(Cdo cdo) {
                if (m20748new() == null || cdo.m20748new() == null) {
                    j1.f17000do.info("Invalid key for map field.");
                    return -1;
                }
                int i = Cdo.f17006do[this.f17042for.ordinal()];
                if (i == 1) {
                    return Boolean.compare(((Boolean) m20748new()).booleanValue(), ((Boolean) cdo.m20748new()).booleanValue());
                }
                if (i == 2) {
                    return Long.compare(((Long) m20748new()).longValue(), ((Long) cdo.m20748new()).longValue());
                }
                if (i == 3) {
                    return Integer.compare(((Integer) m20748new()).intValue(), ((Integer) cdo.m20748new()).intValue());
                }
                if (i != 4) {
                    return 0;
                }
                String str = (String) m20748new();
                String str2 = (String) cdo.m20748new();
                if (str == null && str2 == null) {
                    return 0;
                }
                if (str == null && str2 != null) {
                    return -1;
                }
                if (str == null || str2 != null) {
                    return str.compareTo(str2);
                }
                return 1;
            }

            /* renamed from: for, reason: not valid java name */
            public Object m20747for() {
                x xVar = this.f17043if;
                return xVar != null ? xVar : this.f17041do;
            }

            /* renamed from: new, reason: not valid java name */
            public Object m20748new() {
                x xVar = this.f17043if;
                if (xVar != null) {
                    return xVar.m21553case();
                }
                return null;
            }
        }

        private Ctry(boolean z, p1 p1Var) {
            this.f17039do = z;
            this.f17040if = p1Var;
        }

        /* renamed from: catch, reason: not valid java name */
        private void m20722catch(Descriptors.Celse celse, Object obj, Ccase ccase) throws IOException {
            switch (Cdo.f17007if[celse.m19296static().ordinal()]) {
                case 1:
                case 2:
                case 3:
                    ccase.m20666new(((Integer) obj).toString());
                    break;
                case 4:
                case 5:
                case 6:
                    ccase.m20666new(((Long) obj).toString());
                    break;
                case 7:
                    ccase.m20666new(((Boolean) obj).toString());
                    break;
                case 8:
                    ccase.m20666new(((Float) obj).toString());
                    break;
                case 9:
                    ccase.m20666new(((Double) obj).toString());
                    break;
                case 10:
                case 11:
                    ccase.m20666new(j1.f(((Integer) obj).intValue()));
                    break;
                case 12:
                case 13:
                    ccase.m20666new(j1.g(((Long) obj).longValue()));
                    break;
                case 14:
                    ccase.m20666new("\"");
                    ccase.m20666new(this.f17039do ? TextFormatEscaper.m19670try((String) obj) : j1.m20633else((String) obj).replace("\n", "\\n"));
                    ccase.m20666new("\"");
                    break;
                case 15:
                    ccase.m20666new("\"");
                    if (obj instanceof ByteString) {
                        ccase.m20666new(j1.m20660try((ByteString) obj));
                    } else {
                        ccase.m20666new(j1.m20626case((byte[]) obj));
                    }
                    ccase.m20666new("\"");
                    break;
                case 16:
                    ccase.m20666new(((Descriptors.Ccase) obj).mo19234for());
                    break;
                case 17:
                case 18:
                    m20731new((Message) obj, ccase);
                    break;
            }
        }

        /* renamed from: const, reason: not valid java name */
        private void m20723const(MessageOrBuilder messageOrBuilder, Ccase ccase) throws IOException {
            for (Map.Entry<Descriptors.Celse, Object> entry : messageOrBuilder.getAllFields().entrySet()) {
                m20727goto(entry.getKey(), entry.getValue(), ccase);
            }
            m20730native(messageOrBuilder.getUnknownFields(), ccase);
        }

        /* renamed from: else, reason: not valid java name */
        private boolean m20725else(MessageOrBuilder messageOrBuilder, Ccase ccase) throws IOException {
            Descriptors.Cif descriptorForType = messageOrBuilder.getDescriptorForType();
            Descriptors.Celse celseM19320break = descriptorForType.m19320break(1);
            Descriptors.Celse celseM19320break2 = descriptorForType.m19320break(2);
            if (celseM19320break != null && celseM19320break.m19296static() == Descriptors.Celse.Cif.STRING && celseM19320break2 != null && celseM19320break2.m19296static() == Descriptors.Celse.Cif.BYTES) {
                String str = (String) messageOrBuilder.getField(celseM19320break);
                if (str.isEmpty()) {
                    return false;
                }
                Object field = messageOrBuilder.getField(celseM19320break2);
                try {
                    Descriptors.Cif cifM20945for = this.f17040if.m20945for(str);
                    if (cifM20945for == null) {
                        return false;
                    }
                    Cfinally.Cif cifM20455break = Cfinally.m20453try(cifM20945for).newBuilderForType();
                    cifM20455break.mergeFrom((ByteString) field);
                    ccase.m20666new("[");
                    ccase.m20666new(str);
                    ccase.m20666new("] {");
                    ccase.m20663do();
                    ccase.m20665if();
                    m20731new(cifM20455break, ccase);
                    ccase.m20664for();
                    ccase.m20666new("}");
                    ccase.m20663do();
                    return true;
                } catch (n unused) {
                }
            }
            return false;
        }

        /* renamed from: final, reason: not valid java name */
        private void m20726final(Descriptors.Celse celse, Object obj, Ccase ccase) throws IOException {
            if (celse.m19286extends()) {
                ccase.m20666new("[");
                if (celse.m19282class().m19328native().getMessageSetWireFormat() && celse.m19296static() == Descriptors.Celse.Cif.MESSAGE && celse.m19292package() && celse.m19297super() == celse.m19291native()) {
                    ccase.m20666new(celse.m19291native().mo19235if());
                } else {
                    ccase.m20666new(celse.mo19235if());
                }
                ccase.m20666new("]");
            } else if (celse.m19296static() == Descriptors.Celse.Cif.GROUP) {
                ccase.m20666new(celse.m19291native().mo19234for());
            } else {
                ccase.m20666new(celse.mo19234for());
            }
            Descriptors.Celse.Cdo cdoM19302while = celse.m19302while();
            Descriptors.Celse.Cdo cdo = Descriptors.Celse.Cdo.MESSAGE;
            if (cdoM19302while == cdo) {
                ccase.m20666new(" {");
                ccase.m20663do();
                ccase.m20665if();
            } else {
                ccase.m20666new(": ");
            }
            m20722catch(celse, obj, ccase);
            if (celse.m19302while() == cdo) {
                ccase.m20664for();
                ccase.m20666new("}");
            }
            ccase.m20663do();
        }

        /* renamed from: goto, reason: not valid java name */
        private void m20727goto(Descriptors.Celse celse, Object obj, Ccase ccase) throws IOException {
            if (!celse.m19288finally()) {
                if (!celse.isRepeated()) {
                    m20726final(celse, obj, ccase);
                    return;
                }
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    m20726final(celse, it.next(), ccase);
                }
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it2 = ((List) obj).iterator();
            while (it2.hasNext()) {
                arrayList.add(new Cdo(it2.next(), celse));
            }
            Collections.sort(arrayList);
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                m20726final(celse, ((Cdo) it3.next()).m20747for(), ccase);
            }
        }

        /* renamed from: import, reason: not valid java name */
        private static void m20729import(int i, Object obj, Ccase ccase) throws IOException {
            int iM19964if = c2.m19964if(i);
            if (iM19964if == 0) {
                ccase.m20666new(j1.g(((Long) obj).longValue()));
                return;
            }
            if (iM19964if == 1) {
                ccase.m20666new(String.format(null, "0x%016x", (Long) obj));
                return;
            }
            if (iM19964if != 2) {
                if (iM19964if == 3) {
                    m20730native((t1) obj, ccase);
                    return;
                } else {
                    if (iM19964if == 5) {
                        ccase.m20666new(String.format(null, "0x%08x", (Integer) obj));
                        return;
                    }
                    StringBuilder sb = new StringBuilder(20);
                    sb.append("Bad tag: ");
                    sb.append(i);
                    throw new IllegalArgumentException(sb.toString());
                }
            }
            try {
                t1 t1VarM21185class = t1.m21185class((ByteString) obj);
                ccase.m20666new("{");
                ccase.m20663do();
                ccase.m20665if();
                m20730native(t1VarM21185class, ccase);
                ccase.m20664for();
                ccase.m20666new("}");
            } catch (n unused) {
                ccase.m20666new("\"");
                ccase.m20666new(j1.m20660try((ByteString) obj));
                ccase.m20666new("\"");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: native, reason: not valid java name */
        public static void m20730native(t1 t1Var, Ccase ccase) throws IOException {
            for (Map.Entry<Integer, t1.Cfor> entry : t1Var.m21196if().entrySet()) {
                int iIntValue = entry.getKey().intValue();
                t1.Cfor value = entry.getValue();
                m20732while(iIntValue, 0, value.m21225public(), ccase);
                m20732while(iIntValue, 5, value.m21219const(), ccase);
                m20732while(iIntValue, 1, value.m21221final(), ccase);
                m20732while(iIntValue, 2, value.m21229while(), ccase);
                for (t1 t1Var2 : value.m21226super()) {
                    ccase.m20666new(entry.getKey().toString());
                    ccase.m20666new(" {");
                    ccase.m20663do();
                    ccase.m20665if();
                    m20730native(t1Var2, ccase);
                    ccase.m20664for();
                    ccase.m20666new("}");
                    ccase.m20663do();
                }
            }
        }

        /* renamed from: new, reason: not valid java name */
        private void m20731new(MessageOrBuilder messageOrBuilder, Ccase ccase) throws IOException {
            if (messageOrBuilder.getDescriptorForType().mo19235if().equals("google.protobuf.Any") && m20725else(messageOrBuilder, ccase)) {
                return;
            }
            m20723const(messageOrBuilder, ccase);
        }

        /* renamed from: while, reason: not valid java name */
        private static void m20732while(int i, int i2, List<?> list, Ccase ccase) throws IOException {
            for (Object obj : list) {
                ccase.m20666new(String.valueOf(i));
                ccase.m20666new(": ");
                m20729import(i2, obj, ccase);
                ccase.m20663do();
            }
        }

        /* renamed from: break, reason: not valid java name */
        public String m20733break(Descriptors.Celse celse, Object obj) {
            try {
                StringBuilder sb = new StringBuilder();
                m20742this(celse, obj, sb);
                return sb.toString();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        /* renamed from: case, reason: not valid java name */
        public void m20734case(t1 t1Var, Appendable appendable) throws IOException {
            m20730native(t1Var, j1.m20657throw(appendable));
        }

        /* renamed from: class, reason: not valid java name */
        public void m20735class(Descriptors.Celse celse, Object obj, Appendable appendable) throws IOException {
            m20722catch(celse, obj, j1.m20657throw(appendable));
        }

        /* renamed from: for, reason: not valid java name */
        public Ctry m20736for(boolean z) {
            return new Ctry(z, this.f17040if);
        }

        /* renamed from: public, reason: not valid java name */
        public String m20737public(Descriptors.Celse celse, Object obj) {
            try {
                StringBuilder sb = new StringBuilder();
                m20727goto(celse, obj, j1.c(sb));
                return sb.toString();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        /* renamed from: return, reason: not valid java name */
        public String m20738return(MessageOrBuilder messageOrBuilder) {
            try {
                StringBuilder sb = new StringBuilder();
                m20731new(messageOrBuilder, j1.c(sb));
                return sb.toString();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        /* renamed from: static, reason: not valid java name */
        public String m20739static(t1 t1Var) {
            try {
                StringBuilder sb = new StringBuilder();
                m20730native(t1Var, j1.c(sb));
                return sb.toString();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        /* renamed from: super, reason: not valid java name */
        public String m20740super(MessageOrBuilder messageOrBuilder) {
            try {
                StringBuilder sb = new StringBuilder();
                m20744try(messageOrBuilder, sb);
                return sb.toString();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        /* renamed from: switch, reason: not valid java name */
        public Ctry m20741switch(p1 p1Var) {
            if (this.f17040if == p1.m20943new()) {
                return new Ctry(this.f17039do, p1Var);
            }
            throw new IllegalArgumentException("Only one typeRegistry is allowed.");
        }

        /* renamed from: this, reason: not valid java name */
        public void m20742this(Descriptors.Celse celse, Object obj, Appendable appendable) throws IOException {
            m20727goto(celse, obj, j1.m20657throw(appendable));
        }

        /* renamed from: throw, reason: not valid java name */
        public String m20743throw(t1 t1Var) {
            try {
                StringBuilder sb = new StringBuilder();
                m20734case(t1Var, sb);
                return sb.toString();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        /* renamed from: try, reason: not valid java name */
        public void m20744try(MessageOrBuilder messageOrBuilder, Appendable appendable) throws IOException {
            m20731new(messageOrBuilder, j1.m20657throw(appendable));
        }
    }

    private j1() {
    }

    public static String a(MessageOrBuilder messageOrBuilder) {
        return m20642instanceof().m20738return(messageOrBuilder);
    }

    @Deprecated
    /* renamed from: abstract, reason: not valid java name */
    public static String m20624abstract(t1 t1Var) {
        return m20642instanceof().m20743throw(t1Var);
    }

    @Deprecated
    public static String b(t1 t1Var) {
        return m20642instanceof().m20739static(t1Var);
    }

    /* renamed from: break, reason: not valid java name */
    private static boolean m20625break(byte b) {
        return (48 <= b && b <= 57) || (97 <= b && b <= 102) || (65 <= b && b <= 70);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Ccase c(Appendable appendable) {
        return new Ccase(appendable, true, null);
    }

    /* renamed from: case, reason: not valid java name */
    public static String m20626case(byte[] bArr) {
        return TextFormatEscaper.m19667for(bArr);
    }

    /* renamed from: catch, reason: not valid java name */
    private static boolean m20627catch(byte b) {
        return 48 <= b && b <= 55;
    }

    /* renamed from: class, reason: not valid java name */
    public static void m20628class(CharSequence charSequence, Cprotected cprotected, Message.Builder builder) throws Cfor {
        f17001if.m20714new(charSequence, cprotected, builder);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m20629const(CharSequence charSequence, Message.Builder builder) throws Cfor {
        f17001if.m20715try(charSequence, builder);
    }

    @Deprecated
    /* renamed from: continue, reason: not valid java name */
    public static String m20630continue(MessageOrBuilder messageOrBuilder) {
        return m20642instanceof().m20736for(false).m20740super(messageOrBuilder);
    }

    public static ByteString d(CharSequence charSequence) throws Cif {
        int i;
        int i2;
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8(charSequence.toString());
        int size = byteStringCopyFromUtf8.size();
        byte[] bArr = new byte[size];
        int i3 = 0;
        int i4 = 0;
        while (i3 < byteStringCopyFromUtf8.size()) {
            byte bByteAt = byteStringCopyFromUtf8.byteAt(i3);
            if (bByteAt == 92) {
                i3++;
                if (i3 >= byteStringCopyFromUtf8.size()) {
                    throw new Cif("Invalid escape sequence: '\\' at end of string.");
                }
                byte bByteAt2 = byteStringCopyFromUtf8.byteAt(i3);
                if (m20627catch(bByteAt2)) {
                    int iM20645new = m20645new(bByteAt2);
                    int i5 = i3 + 1;
                    if (i5 < byteStringCopyFromUtf8.size() && m20627catch(byteStringCopyFromUtf8.byteAt(i5))) {
                        iM20645new = (iM20645new * 8) + m20645new(byteStringCopyFromUtf8.byteAt(i5));
                        i3 = i5;
                    }
                    int i6 = i3 + 1;
                    if (i6 < byteStringCopyFromUtf8.size() && m20627catch(byteStringCopyFromUtf8.byteAt(i6))) {
                        iM20645new = (iM20645new * 8) + m20645new(byteStringCopyFromUtf8.byteAt(i6));
                        i3 = i6;
                    }
                    i = i4 + 1;
                    bArr[i4] = (byte) iM20645new;
                } else {
                    if (bByteAt2 == 34) {
                        i2 = i4 + 1;
                        bArr[i4] = 34;
                    } else if (bByteAt2 == 39) {
                        i2 = i4 + 1;
                        bArr[i4] = 39;
                    } else if (bByteAt2 == 92) {
                        i2 = i4 + 1;
                        bArr[i4] = 92;
                    } else if (bByteAt2 == 102) {
                        i2 = i4 + 1;
                        bArr[i4] = 12;
                    } else if (bByteAt2 == 110) {
                        i2 = i4 + 1;
                        bArr[i4] = 10;
                    } else if (bByteAt2 == 114) {
                        i2 = i4 + 1;
                        bArr[i4] = 13;
                    } else if (bByteAt2 == 116) {
                        i2 = i4 + 1;
                        bArr[i4] = 9;
                    } else if (bByteAt2 == 118) {
                        i2 = i4 + 1;
                        bArr[i4] = 11;
                    } else if (bByteAt2 == 120) {
                        i3++;
                        if (i3 >= byteStringCopyFromUtf8.size() || !m20625break(byteStringCopyFromUtf8.byteAt(i3))) {
                            throw new Cif("Invalid escape sequence: '\\x' with no digits");
                        }
                        int iM20645new2 = m20645new(byteStringCopyFromUtf8.byteAt(i3));
                        int i7 = i3 + 1;
                        if (i7 < byteStringCopyFromUtf8.size() && m20625break(byteStringCopyFromUtf8.byteAt(i7))) {
                            iM20645new2 = (iM20645new2 * 16) + m20645new(byteStringCopyFromUtf8.byteAt(i7));
                            i3 = i7;
                        }
                        i = i4 + 1;
                        bArr[i4] = (byte) iM20645new2;
                    } else if (bByteAt2 == 97) {
                        i2 = i4 + 1;
                        bArr[i4] = 7;
                    } else {
                        if (bByteAt2 != 98) {
                            StringBuilder sb = new StringBuilder(29);
                            sb.append("Invalid escape sequence: '\\");
                            sb.append((char) bByteAt2);
                            sb.append('\'');
                            throw new Cif(sb.toString());
                        }
                        i2 = i4 + 1;
                        bArr[i4] = 8;
                    }
                    i4 = i2;
                    i3++;
                }
            } else {
                i = i4 + 1;
                bArr[i4] = bByteAt;
            }
            i4 = i;
            i3++;
        }
        return size == i4 ? ByteString.wrap(bArr) : ByteString.copyFrom(bArr, 0, i4);
    }

    @Deprecated
    /* renamed from: default, reason: not valid java name */
    public static void m20631default(t1 t1Var, Appendable appendable) throws IOException {
        m20642instanceof().m20734case(t1Var, appendable);
    }

    public static String e(String str) throws Cif {
        return d(str).toStringUtf8();
    }

    /* renamed from: else, reason: not valid java name */
    public static String m20633else(String str) {
        return TextFormatEscaper.m19669new(str);
    }

    @Deprecated
    /* renamed from: extends, reason: not valid java name */
    public static void m20634extends(Descriptors.Celse celse, Object obj, Appendable appendable) throws IOException {
        m20642instanceof().m20742this(celse, obj, appendable);
    }

    public static String f(int i) {
        return i >= 0 ? Integer.toString(i) : Long.toString(i & 4294967295L);
    }

    /* renamed from: final, reason: not valid java name */
    public static void m20635final(Readable readable, Cprotected cprotected, Message.Builder builder) throws IOException {
        f17001if.m20712case(readable, cprotected, builder);
    }

    @Deprecated
    /* renamed from: finally, reason: not valid java name */
    public static String m20636finally(Descriptors.Celse celse, Object obj) {
        return m20642instanceof().m20733break(celse, obj);
    }

    public static String g(long j) {
        return j >= 0 ? Long.toString(j) : BigInteger.valueOf(j & Long.MAX_VALUE).setBit(63).toString();
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m20638goto(String str) {
        return m20660try(ByteString.copyFromUtf8(str));
    }

    /* renamed from: implements, reason: not valid java name */
    public static void m20640implements(int i, Object obj, Appendable appendable) throws IOException {
        m20659transient(i, obj, m20657throw(appendable));
    }

    /* renamed from: import, reason: not valid java name */
    public static <T extends Message> T m20641import(CharSequence charSequence, Class<T> cls) throws Cfor {
        Message.Builder builderNewBuilderForType = ((Message) Internal.m19608break(cls)).newBuilderForType();
        m20629const(charSequence, builderNewBuilderForType);
        return (T) builderNewBuilderForType.build();
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static Ctry m20642instanceof() {
        return Ctry.f17038for;
    }

    @Deprecated
    /* renamed from: interface, reason: not valid java name */
    public static void m20643interface(t1 t1Var, Appendable appendable) throws IOException {
        m20642instanceof().m20736for(false).m20734case(t1Var, appendable);
    }

    /* renamed from: native, reason: not valid java name */
    public static int m20644native(String str) throws NumberFormatException {
        return (int) m20650return(str, true, false);
    }

    /* renamed from: new, reason: not valid java name */
    private static int m20645new(byte b) {
        if (48 > b || b > 57) {
            return ((97 > b || b > 122) ? b - 65 : b - 97) + 10;
        }
        return b - 48;
    }

    @Deprecated
    /* renamed from: package, reason: not valid java name */
    public static void m20646package(Descriptors.Celse celse, Object obj, Appendable appendable) throws IOException {
        m20642instanceof().m20735class(celse, obj, appendable);
    }

    @Deprecated
    /* renamed from: private, reason: not valid java name */
    public static String m20647private(MessageOrBuilder messageOrBuilder) {
        return m20642instanceof().m20740super(messageOrBuilder);
    }

    @Deprecated
    /* renamed from: protected, reason: not valid java name */
    public static void m20648protected(Descriptors.Celse celse, Object obj, Appendable appendable) throws IOException {
        m20642instanceof().m20736for(false).m20735class(celse, obj, appendable);
    }

    /* renamed from: public, reason: not valid java name */
    public static long m20649public(String str) throws NumberFormatException {
        return m20650return(str, true, true);
    }

    /* renamed from: return, reason: not valid java name */
    private static long m20650return(String str, boolean z, boolean z2) throws NumberFormatException {
        int i = 0;
        boolean z3 = true;
        if (!str.startsWith("-", 0)) {
            z3 = false;
        } else {
            if (!z) {
                throw new NumberFormatException(str.length() != 0 ? "Number must be positive: ".concat(str) : new String("Number must be positive: "));
            }
            i = 1;
        }
        int i2 = 10;
        if (str.startsWith("0x", i)) {
            i += 2;
            i2 = 16;
        } else if (str.startsWith("0", i)) {
            i2 = 8;
        }
        String strSubstring = str.substring(i);
        if (strSubstring.length() < 16) {
            long j = Long.parseLong(strSubstring, i2);
            if (z3) {
                j = -j;
            }
            if (z2) {
                return j;
            }
            if (z) {
                if (j > 2147483647L || j < -2147483648L) {
                    throw new NumberFormatException(str.length() != 0 ? "Number out of range for 32-bit signed integer: ".concat(str) : new String("Number out of range for 32-bit signed integer: "));
                }
                return j;
            }
            if (j >= o3.f24027catch || j < 0) {
                throw new NumberFormatException(str.length() != 0 ? "Number out of range for 32-bit unsigned integer: ".concat(str) : new String("Number out of range for 32-bit unsigned integer: "));
            }
            return j;
        }
        BigInteger bigInteger = new BigInteger(strSubstring, i2);
        if (z3) {
            bigInteger = bigInteger.negate();
        }
        if (z2) {
            if (z) {
                if (bigInteger.bitLength() > 63) {
                    throw new NumberFormatException(str.length() != 0 ? "Number out of range for 64-bit signed integer: ".concat(str) : new String("Number out of range for 64-bit signed integer: "));
                }
            } else if (bigInteger.bitLength() > 64) {
                throw new NumberFormatException(str.length() != 0 ? "Number out of range for 64-bit unsigned integer: ".concat(str) : new String("Number out of range for 64-bit unsigned integer: "));
            }
        } else if (z) {
            if (bigInteger.bitLength() > 31) {
                throw new NumberFormatException(str.length() != 0 ? "Number out of range for 32-bit signed integer: ".concat(str) : new String("Number out of range for 32-bit signed integer: "));
            }
        } else if (bigInteger.bitLength() > 32) {
            throw new NumberFormatException(str.length() != 0 ? "Number out of range for 32-bit unsigned integer: ".concat(str) : new String("Number out of range for 32-bit unsigned integer: "));
        }
        return bigInteger.longValue();
    }

    /* renamed from: static, reason: not valid java name */
    public static int m20651static(String str) throws NumberFormatException {
        return (int) m20650return(str, false, false);
    }

    @Deprecated
    /* renamed from: strictfp, reason: not valid java name */
    public static String m20652strictfp(t1 t1Var) {
        return m20642instanceof().m20736for(false).m20743throw(t1Var);
    }

    /* renamed from: super, reason: not valid java name */
    public static void m20653super(Readable readable, Message.Builder builder) throws IOException {
        f17001if.m20713else(readable, builder);
    }

    /* renamed from: switch, reason: not valid java name */
    public static long m20654switch(String str) throws NumberFormatException {
        return m20650return(str, false, true);
    }

    @Deprecated
    /* renamed from: synchronized, reason: not valid java name */
    public static String m20655synchronized(Descriptors.Celse celse, Object obj) {
        return m20642instanceof().m20737public(celse, obj);
    }

    /* renamed from: this, reason: not valid java name */
    public static Cnew m20656this() {
        return f17001if;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throw, reason: not valid java name */
    public static Ccase m20657throw(Appendable appendable) {
        return new Ccase(appendable, false, null);
    }

    @Deprecated
    /* renamed from: throws, reason: not valid java name */
    public static void m20658throws(MessageOrBuilder messageOrBuilder, Appendable appendable) throws IOException {
        m20642instanceof().m20744try(messageOrBuilder, appendable);
    }

    /* renamed from: transient, reason: not valid java name */
    private static void m20659transient(int i, Object obj, Ccase ccase) throws IOException {
        int iM19964if = c2.m19964if(i);
        if (iM19964if == 0) {
            ccase.m20666new(g(((Long) obj).longValue()));
            return;
        }
        if (iM19964if == 1) {
            ccase.m20666new(String.format(null, "0x%016x", (Long) obj));
            return;
        }
        if (iM19964if != 2) {
            if (iM19964if == 3) {
                Ctry.m20730native((t1) obj, ccase);
                return;
            } else {
                if (iM19964if == 5) {
                    ccase.m20666new(String.format(null, "0x%08x", (Integer) obj));
                    return;
                }
                StringBuilder sb = new StringBuilder(20);
                sb.append("Bad tag: ");
                sb.append(i);
                throw new IllegalArgumentException(sb.toString());
            }
        }
        try {
            t1 t1VarM21185class = t1.m21185class((ByteString) obj);
            ccase.m20666new("{");
            ccase.m20663do();
            ccase.m20665if();
            Ctry.m20730native(t1VarM21185class, ccase);
            ccase.m20664for();
            ccase.m20666new("}");
        } catch (n unused) {
            ccase.m20666new("\"");
            ccase.m20666new(m20660try((ByteString) obj));
            ccase.m20666new("\"");
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static String m20660try(ByteString byteString) {
        return TextFormatEscaper.m19666do(byteString);
    }

    @Deprecated
    /* renamed from: volatile, reason: not valid java name */
    public static void m20661volatile(MessageOrBuilder messageOrBuilder, Appendable appendable) throws IOException {
        m20642instanceof().m20736for(false).m20744try(messageOrBuilder, appendable);
    }

    /* renamed from: while, reason: not valid java name */
    public static <T extends Message> T m20662while(CharSequence charSequence, Cprotected cprotected, Class<T> cls) throws Cfor {
        Message.Builder builderNewBuilderForType = ((Message) Internal.m19608break(cls)).newBuilderForType();
        m20628class(charSequence, cprotected, builderNewBuilderForType);
        return (T) builderNewBuilderForType.build();
    }
}
