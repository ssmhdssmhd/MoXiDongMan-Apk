package com.googlecode.protobuf.format;

import android.support.v4.i62;
import com.google.protobuf.ByteString;
import com.google.protobuf.Cprotected;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Message;
import com.google.protobuf.t1;
import freemarker.core.b2;
import freemarker.core.o3;
import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: com.googlecode.protobuf.format.try, reason: invalid class name */
/* loaded from: classes2.dex */
public class Ctry extends com.googlecode.protobuf.format.Cdo {

    /* renamed from: com.googlecode.protobuf.format.try$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f18011do;

        static {
            int[] iArr = new int[Descriptors.Celse.Cif.values().length];
            f18011do = iArr;
            try {
                iArr[Descriptors.Celse.Cif.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18011do[Descriptors.Celse.Cif.INT64.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18011do[Descriptors.Celse.Cif.SINT32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18011do[Descriptors.Celse.Cif.SINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18011do[Descriptors.Celse.Cif.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18011do[Descriptors.Celse.Cif.SFIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18011do[Descriptors.Celse.Cif.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f18011do[Descriptors.Celse.Cif.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f18011do[Descriptors.Celse.Cif.BOOL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f18011do[Descriptors.Celse.Cif.UINT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f18011do[Descriptors.Celse.Cif.FIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f18011do[Descriptors.Celse.Cif.UINT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f18011do[Descriptors.Celse.Cif.FIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f18011do[Descriptors.Celse.Cif.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f18011do[Descriptors.Celse.Cif.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f18011do[Descriptors.Celse.Cif.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f18011do[Descriptors.Celse.Cif.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f18011do[Descriptors.Celse.Cif.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* renamed from: com.googlecode.protobuf.format.try$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        private Appendable f18012do;

        /* renamed from: for, reason: not valid java name */
        private final StringBuilder f18013for;

        /* renamed from: if, reason: not valid java name */
        private boolean f18014if;

        public /* synthetic */ Cfor(Appendable appendable, Cdo cdo) {
            this(appendable);
        }

        /* renamed from: new, reason: not valid java name */
        private void m22623new(CharSequence charSequence, int i) throws IOException {
            if (i == 0) {
                return;
            }
            if (this.f18014if) {
                this.f18014if = false;
                this.f18012do.append(this.f18013for);
            }
            this.f18012do.append(charSequence);
        }

        /* renamed from: do, reason: not valid java name */
        public void m22624do(String str) {
            this.f18013for.append(str);
            this.f18013for.append(".");
        }

        /* renamed from: for, reason: not valid java name */
        public void m22625for(CharSequence charSequence) throws IOException {
            int length = charSequence.length();
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                if (charSequence.charAt(i2) == '\n') {
                    m22623new(charSequence.subSequence(i, length), (i2 - i) + 1);
                    i = i2 + 1;
                    this.f18014if = true;
                }
            }
            m22623new(charSequence.subSequence(i, length), length - i);
        }

        /* renamed from: if, reason: not valid java name */
        public void m22626if(String str) {
            int length = this.f18013for.length();
            int length2 = str.length() + 1;
            if (length == 0) {
                throw new IllegalArgumentException(" Outdent() without matching Indent().");
            }
            this.f18013for.delete(length - length2, length);
        }

        private Cfor(Appendable appendable) {
            this.f18014if = true;
            this.f18013for = new StringBuilder();
            this.f18012do = appendable;
        }
    }

    /* renamed from: com.googlecode.protobuf.format.try$if, reason: invalid class name */
    public static class Cif extends IOException {
        private static final long serialVersionUID = -8164033650142593304L;

        public Cif(String str) {
            super(str);
        }
    }

    /* renamed from: com.googlecode.protobuf.format.try$new, reason: invalid class name */
    public static class Cnew extends IOException {
        private static final long serialVersionUID = 3196188060225107702L;

        public Cnew(String str) {
            super(str);
        }
    }

    /* renamed from: com.googlecode.protobuf.format.try$try, reason: invalid class name and collision with other inner class name */
    public static final class C0171try {

        /* renamed from: case, reason: not valid java name */
        private int f18020case;

        /* renamed from: do, reason: not valid java name */
        private final CharSequence f18021do;

        /* renamed from: else, reason: not valid java name */
        private int f18022else;

        /* renamed from: for, reason: not valid java name */
        private String f18023for;

        /* renamed from: goto, reason: not valid java name */
        private int f18024goto;

        /* renamed from: if, reason: not valid java name */
        private final Matcher f18025if;

        /* renamed from: new, reason: not valid java name */
        private int f18026new;

        /* renamed from: try, reason: not valid java name */
        private int f18027try;

        /* renamed from: this, reason: not valid java name */
        private static final Pattern f18019this = Pattern.compile("(\\s|(#.*$))++", 8);

        /* renamed from: break, reason: not valid java name */
        private static final Pattern f18015break = Pattern.compile("[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|'([^'\n\\\\]|\\\\.)*+('|\\\\?$)", 8);

        /* renamed from: catch, reason: not valid java name */
        private static final Pattern f18016catch = Pattern.compile("-?inf(inity)?", 2);

        /* renamed from: class, reason: not valid java name */
        private static final Pattern f18017class = Pattern.compile("-?inf(inity)?f?", 2);

        /* renamed from: const, reason: not valid java name */
        private static final Pattern f18018const = Pattern.compile("nanf?", 2);

        public /* synthetic */ C0171try(CharSequence charSequence, Cdo cdo) {
            this(charSequence);
        }

        /* renamed from: final, reason: not valid java name */
        private Cnew m22627final(NumberFormatException numberFormatException) {
            return m22641import("Couldn't parse number: " + numberFormatException.getMessage());
        }

        /* renamed from: public, reason: not valid java name */
        private void m22628public() {
            this.f18025if.usePattern(f18019this);
            if (this.f18025if.lookingAt()) {
                Matcher matcher = this.f18025if;
                matcher.region(matcher.end(), this.f18025if.regionEnd());
            }
        }

        /* renamed from: super, reason: not valid java name */
        private Cnew m22629super(NumberFormatException numberFormatException) {
            return m22641import("Couldn't parse integer: " + numberFormatException.getMessage());
        }

        /* renamed from: try, reason: not valid java name */
        private void m22630try(List<ByteString> list) throws Cnew {
            char cCharAt = this.f18023for.length() > 0 ? this.f18023for.charAt(0) : (char) 0;
            if (cCharAt != '\"' && cCharAt != '\'') {
                throw m22641import("Expected string.");
            }
            if (this.f18023for.length() >= 2) {
                String str = this.f18023for;
                if (str.charAt(str.length() - 1) == cCharAt) {
                    try {
                        String str2 = this.f18023for;
                        ByteString byteStringM22619volatile = Ctry.m22619volatile(str2.substring(1, str2.length() - 1));
                        m22647while();
                        list.add(byteStringM22619volatile);
                        return;
                    } catch (Cif e) {
                        throw m22641import(e.getMessage());
                    }
                }
            }
            throw m22641import("String missing ending quote.");
        }

        /* renamed from: break, reason: not valid java name */
        public long m22631break() throws Cnew {
            try {
                long jM22615static = Ctry.m22615static(this.f18023for);
                m22647while();
                return jM22615static;
            } catch (NumberFormatException e) {
                throw m22629super(e);
            }
        }

        /* renamed from: case, reason: not valid java name */
        public double m22632case() throws Cnew, NumberFormatException {
            if (f18016catch.matcher(this.f18023for).matches()) {
                boolean zStartsWith = this.f18023for.startsWith("-");
                m22647while();
                return zStartsWith ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
            }
            if (this.f18023for.equalsIgnoreCase("nan")) {
                m22647while();
                return Double.NaN;
            }
            try {
                double d = Double.parseDouble(this.f18023for);
                m22647while();
                return d;
            } catch (NumberFormatException e) {
                throw m22627final(e);
            }
        }

        /* renamed from: catch, reason: not valid java name */
        public String m22633catch() throws Cnew {
            return m22643new().toStringUtf8();
        }

        /* renamed from: class, reason: not valid java name */
        public int m22634class() throws Cnew {
            try {
                int iM22618throws = Ctry.m22618throws(this.f18023for);
                m22647while();
                return iM22618throws;
            } catch (NumberFormatException e) {
                throw m22629super(e);
            }
        }

        /* renamed from: const, reason: not valid java name */
        public long m22635const() throws Cnew {
            try {
                long jM22607default = Ctry.m22607default(this.f18023for);
                m22647while();
                return jM22607default;
            } catch (NumberFormatException e) {
                throw m22629super(e);
            }
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m22636do() {
            return this.f18023for.length() == 0;
        }

        /* renamed from: else, reason: not valid java name */
        public float m22637else() throws Cnew, NumberFormatException {
            if (f18017class.matcher(this.f18023for).matches()) {
                boolean zStartsWith = this.f18023for.startsWith("-");
                m22647while();
                return zStartsWith ? Float.NEGATIVE_INFINITY : Float.POSITIVE_INFINITY;
            }
            if (f18018const.matcher(this.f18023for).matches()) {
                m22647while();
                return Float.NaN;
            }
            try {
                float f = Float.parseFloat(this.f18023for);
                m22647while();
                return f;
            } catch (NumberFormatException e) {
                throw m22627final(e);
            }
        }

        /* renamed from: for, reason: not valid java name */
        public boolean m22638for() throws Cnew {
            if (this.f18023for.equals(b2.f23511if)) {
                m22647while();
                return true;
            }
            if (!this.f18023for.equals(b2.f23510do)) {
                throw m22641import("Expected \"true\" or \"false\".");
            }
            m22647while();
            return false;
        }

        /* renamed from: goto, reason: not valid java name */
        public String m22639goto() throws Cnew {
            for (int i = 0; i < this.f18023for.length(); i++) {
                char cCharAt = this.f18023for.charAt(i);
                if (('a' > cCharAt || cCharAt > 'z') && (('A' > cCharAt || cCharAt > 'Z') && (('0' > cCharAt || cCharAt > '9') && cCharAt != '_'))) {
                    throw m22641import("Expected identifier.");
                }
            }
            String str = this.f18023for;
            m22647while();
            return str;
        }

        /* renamed from: if, reason: not valid java name */
        public void m22640if(String str) throws Cnew {
            if (m22644return(str)) {
                return;
            }
            throw m22641import("Expected \"" + str + "\".");
        }

        /* renamed from: import, reason: not valid java name */
        public Cnew m22641import(String str) {
            return new Cnew((this.f18027try + 1) + ":" + (this.f18020case + 1) + ": " + str);
        }

        /* renamed from: native, reason: not valid java name */
        public Cnew m22642native(String str) {
            return new Cnew((this.f18022else + 1) + ":" + (this.f18024goto + 1) + ": " + str);
        }

        /* renamed from: new, reason: not valid java name */
        public ByteString m22643new() throws Cnew {
            ArrayList arrayList = new ArrayList();
            m22630try(arrayList);
            while (true) {
                if (!this.f18023for.startsWith("'") && !this.f18023for.startsWith("\"")) {
                    return ByteString.copyFrom(arrayList);
                }
                m22630try(arrayList);
            }
        }

        /* renamed from: return, reason: not valid java name */
        public boolean m22644return(String str) {
            if (!this.f18023for.equals(str)) {
                return false;
            }
            m22647while();
            return true;
        }

        /* renamed from: this, reason: not valid java name */
        public int m22645this() throws Cnew {
            try {
                int iM22614return = Ctry.m22614return(this.f18023for);
                m22647while();
                return iM22614return;
            } catch (NumberFormatException e) {
                throw m22629super(e);
            }
        }

        /* renamed from: throw, reason: not valid java name */
        public boolean m22646throw() {
            if (this.f18023for.length() == 0) {
                return false;
            }
            char cCharAt = this.f18023for.charAt(0);
            return ('0' <= cCharAt && cCharAt <= '9') || cCharAt == '-' || cCharAt == '+';
        }

        /* renamed from: while, reason: not valid java name */
        public void m22647while() {
            this.f18022else = this.f18027try;
            this.f18024goto = this.f18020case;
            while (this.f18026new < this.f18025if.regionStart()) {
                if (this.f18021do.charAt(this.f18026new) == '\n') {
                    this.f18027try++;
                    this.f18020case = 0;
                } else {
                    this.f18020case++;
                }
                this.f18026new++;
            }
            if (this.f18025if.regionStart() == this.f18025if.regionEnd()) {
                this.f18023for = "";
                return;
            }
            this.f18025if.usePattern(f18015break);
            if (this.f18025if.lookingAt()) {
                this.f18023for = this.f18025if.group();
                Matcher matcher = this.f18025if;
                matcher.region(matcher.end(), this.f18025if.regionEnd());
            } else {
                this.f18023for = String.valueOf(this.f18021do.charAt(this.f18026new));
                Matcher matcher2 = this.f18025if;
                matcher2.region(this.f18026new + 1, matcher2.regionEnd());
            }
            m22628public();
        }

        private C0171try(CharSequence charSequence) {
            this.f18026new = 0;
            this.f18027try = 0;
            this.f18020case = 0;
            this.f18022else = 0;
            this.f18024goto = 0;
            this.f18021do = charSequence;
            this.f18025if = f18019this.matcher(charSequence);
            m22628public();
            m22647while();
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    private void m22605abstract(Descriptors.Celse celse, Object obj, Cfor cfor) throws IOException {
        switch (Cdo.f18011do[celse.m19296static().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                cfor.m22625for(obj.toString());
                break;
            case 10:
            case 11:
                cfor.m22625for(i62.m3293native(((Integer) obj).intValue()));
                break;
            case 12:
            case 13:
                cfor.m22625for(i62.m3295public(((Long) obj).longValue()));
                break;
            case 14:
                cfor.m22625for("\"");
                cfor.m22625for(m22612native((String) obj));
                cfor.m22625for("\"");
                break;
            case 15:
                cfor.m22625for("\"");
                cfor.m22625for(m22610import((ByteString) obj));
                cfor.m22625for("\"");
                break;
            case 16:
                cfor.m22625for(((Descriptors.Ccase) obj).mo19234for());
                break;
            case 17:
            case 18:
                m22608extends((Message) obj, cfor);
                break;
        }
    }

    /* renamed from: continue, reason: not valid java name */
    private void m22606continue(Descriptors.Celse celse, Object obj, Integer num, Cfor cfor) throws IOException {
        if (celse.m19286extends()) {
            cfor.m22625for("[");
            if (celse.m19282class().m19328native().getMessageSetWireFormat() && celse.m19296static() == Descriptors.Celse.Cif.MESSAGE && celse.m19292package() && celse.m19297super() == celse.m19291native()) {
                cfor.m22625for(celse.m19291native().mo19235if());
            } else {
                cfor.m22625for(celse.mo19235if());
            }
            cfor.m22625for("]");
        } else if (celse.m19296static() != Descriptors.Celse.Cif.GROUP && celse.m19296static() != Descriptors.Celse.Cif.MESSAGE) {
            cfor.m22625for(m22620while(celse.mo19234for(), num));
        }
        Descriptors.Celse.Cif cifM19296static = celse.m19296static();
        Descriptors.Celse.Cif cif = Descriptors.Celse.Cif.GROUP;
        if (cifM19296static == cif) {
            cfor.m22624do(m22620while(celse.m19291native().mo19234for(), num));
        } else if (celse.m19296static() == Descriptors.Celse.Cif.MESSAGE) {
            cfor.m22624do(m22620while(celse.mo19234for(), num));
        } else {
            cfor.m22625for("=");
        }
        m22605abstract(celse, obj, cfor);
        if (celse.m19296static() == Descriptors.Celse.Cif.MESSAGE) {
            cfor.m22626if(m22620while(celse.mo19234for(), num));
        } else if (celse.m19296static() == cif) {
            cfor.m22626if(m22620while(celse.m19291native().mo19234for(), num));
        } else {
            cfor.m22625for("\n");
        }
    }

    /* renamed from: default, reason: not valid java name */
    public static long m22607default(String str) throws NumberFormatException {
        return m22617switch(str, false, true);
    }

    /* renamed from: extends, reason: not valid java name */
    private void m22608extends(Message message, Cfor cfor) throws IOException {
        for (Map.Entry<Descriptors.Celse, Object> entry : message.getAllFields().entrySet()) {
            m22609finally(entry.getKey(), entry.getValue(), cfor);
        }
        m22616strictfp(message.getUnknownFields(), cfor);
    }

    /* renamed from: finally, reason: not valid java name */
    private void m22609finally(Descriptors.Celse celse, Object obj, Cfor cfor) throws IOException {
        if (!celse.isRepeated()) {
            m22606continue(celse, obj, null, cfor);
            return;
        }
        List list = (List) obj;
        for (int i = 0; i < list.size(); i++) {
            m22606continue(celse, list.get(i), Integer.valueOf(i), cfor);
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static String m22610import(ByteString byteString) {
        StringBuilder sb = new StringBuilder(byteString.size());
        for (int i = 0; i < byteString.size(); i++) {
            byte bByteAt = byteString.byteAt(i);
            if (bByteAt == 34) {
                sb.append("\\\"");
            } else if (bByteAt == 39) {
                sb.append("\\'");
            } else if (bByteAt != 92) {
                switch (bByteAt) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bByteAt >= 32) {
                            sb.append((char) bByteAt);
                            break;
                        } else {
                            sb.append('\\');
                            sb.append((char) (((bByteAt >>> 6) & 3) + 48));
                            sb.append((char) (((bByteAt >>> 3) & 7) + 48));
                            sb.append((char) ((bByteAt & 7) + 48));
                            break;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    /* renamed from: interface, reason: not valid java name */
    public static String m22611interface(String str) throws Cif {
        return m22619volatile(str).toStringUtf8();
    }

    /* renamed from: native, reason: not valid java name */
    public static String m22612native(String str) {
        return m22610import(ByteString.copyFromUtf8(str));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: public, reason: not valid java name */
    private void m22613public(C0171try c0171try, Cprotected cprotected, Map<String, Message> map, Message.Builder builder) throws Cnew {
        Descriptors.Celse celse;
        Cprotected.Cfor cforM20979final;
        Integer numValueOf;
        Descriptors.Cif descriptorForType = builder.getDescriptorForType();
        Object objValueOf = null;
        if (c0171try.m22644return("[")) {
            StringBuilder sb = new StringBuilder(c0171try.m22639goto());
            while (c0171try.m22644return(".")) {
                sb.append(org.apache.commons.lang3.Ctry.f28883do);
                sb.append(c0171try.m22639goto());
            }
            cforM20979final = cprotected.m20979final(sb.toString());
            if (cforM20979final == null) {
                throw c0171try.m22642native("Extension \"" + ((Object) sb) + "\" not found in the ExtensionRegistry.");
            }
            if (cforM20979final.f17160do.m19282class() != descriptorForType) {
                throw c0171try.m22642native("Extension \"" + ((Object) sb) + "\" does not extend message type \"" + descriptorForType.mo19235if() + "\".");
            }
            c0171try.m22640if("]");
            celse = cforM20979final.f17160do;
        } else {
            String strM22639goto = c0171try.m22639goto();
            Descriptors.Celse celseM19334this = descriptorForType.m19334this(strM22639goto);
            if (celseM19334this == null && (celseM19334this = descriptorForType.m19334this(strM22639goto.toLowerCase(Locale.US))) != null && celseM19334this.m19296static() != Descriptors.Celse.Cif.GROUP) {
                celseM19334this = null;
            }
            if (celseM19334this != null && celseM19334this.m19296static() == Descriptors.Celse.Cif.GROUP && !celseM19334this.m19291native().mo19234for().equals(strM22639goto)) {
                celseM19334this = null;
            }
            if (celseM19334this == null) {
                throw c0171try.m22642native("Message type \"" + descriptorForType.mo19235if() + "\" has no field named \"" + strM22639goto + "\".");
            }
            celse = celseM19334this;
            cforM20979final = null;
        }
        if (celse.isRepeated()) {
            c0171try.m22640if("[");
            numValueOf = Integer.valueOf(c0171try.m22645this());
            c0171try.m22640if("]");
        } else {
            numValueOf = null;
        }
        if (celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
            c0171try.m22640if(".");
            Message.Builder builderNewBuilderForField = cforM20979final == null ? builder.newBuilderForField(celse) : cforM20979final.f17161if.newBuilderForType();
            Message message = (Message) map.get(celse.mo19235if());
            if (message != null) {
                builderNewBuilderForField.mergeFrom(message);
            }
            m22613public(c0171try, cprotected, map, builderNewBuilderForField);
            objValueOf = builderNewBuilderForField.buildPartial();
            map.put(celse.mo19235if(), objValueOf);
        } else {
            c0171try.m22640if("=");
            switch (Cdo.f18011do[celse.m19296static().ordinal()]) {
                case 1:
                case 3:
                case 5:
                    objValueOf = Integer.valueOf(c0171try.m22645this());
                    break;
                case 2:
                case 4:
                case 6:
                    objValueOf = Long.valueOf(c0171try.m22631break());
                    break;
                case 7:
                    objValueOf = Float.valueOf(c0171try.m22637else());
                    break;
                case 8:
                    objValueOf = Double.valueOf(c0171try.m22632case());
                    break;
                case 9:
                    objValueOf = Boolean.valueOf(c0171try.m22638for());
                    break;
                case 10:
                case 11:
                    objValueOf = Integer.valueOf(c0171try.m22634class());
                    break;
                case 12:
                case 13:
                    objValueOf = Long.valueOf(c0171try.m22635const());
                    break;
                case 14:
                    objValueOf = c0171try.m22633catch();
                    break;
                case 15:
                    objValueOf = c0171try.m22643new();
                    break;
                case 16:
                    Descriptors.Ctry enumType = celse.getEnumType();
                    if (c0171try.m22646throw()) {
                        int iM22645this = c0171try.m22645this();
                        objValueOf = enumType.findValueByNumber(iM22645this);
                        if (objValueOf == null) {
                            throw c0171try.m22642native("Enum type \"" + enumType.mo19235if() + "\" has no value with number " + iM22645this + org.apache.commons.lang3.Ctry.f28883do);
                        }
                    } else {
                        String strM22639goto2 = c0171try.m22639goto();
                        objValueOf = enumType.m19353case(strM22639goto2);
                        if (objValueOf == null) {
                            throw c0171try.m22642native("Enum type \"" + enumType.mo19235if() + "\" has no value named \"" + strM22639goto2 + "\".");
                        }
                    }
                    break;
                case 17:
                case 18:
                    throw new RuntimeException("Can't get here.");
            }
        }
        if (!celse.isRepeated()) {
            builder.setField(celse, objValueOf);
        } else if (builder.getRepeatedFieldCount(celse) - 1 < numValueOf.intValue()) {
            builder.addRepeatedField(celse, objValueOf);
        } else {
            builder.setRepeatedField(celse, numValueOf.intValue(), objValueOf);
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static int m22614return(String str) throws NumberFormatException {
        return (int) m22617switch(str, true, false);
    }

    /* renamed from: static, reason: not valid java name */
    public static long m22615static(String str) throws NumberFormatException {
        return m22617switch(str, true, true);
    }

    /* renamed from: strictfp, reason: not valid java name */
    private void m22616strictfp(t1 t1Var, Cfor cfor) throws IOException {
        for (Map.Entry<Integer, t1.Cfor> entry : t1Var.m21196if().entrySet()) {
            t1.Cfor value = entry.getValue();
            Iterator<Long> it = value.m21225public().iterator();
            while (it.hasNext()) {
                long jLongValue = it.next().longValue();
                cfor.m22625for(entry.getKey().toString());
                cfor.m22625for("=");
                cfor.m22625for(i62.m3295public(jLongValue));
                cfor.m22625for("\n");
            }
            Iterator<Integer> it2 = value.m21219const().iterator();
            while (it2.hasNext()) {
                int iIntValue = it2.next().intValue();
                cfor.m22625for(entry.getKey().toString());
                cfor.m22625for("=");
                cfor.m22625for(String.format(null, "0x%08x", Integer.valueOf(iIntValue)));
                cfor.m22625for("\n");
            }
            Iterator<Long> it3 = value.m21221final().iterator();
            while (it3.hasNext()) {
                long jLongValue2 = it3.next().longValue();
                cfor.m22625for(entry.getKey().toString());
                cfor.m22625for("=");
                cfor.m22625for(String.format(null, "0x%016x", Long.valueOf(jLongValue2)));
                cfor.m22625for("\n");
            }
            for (ByteString byteString : value.m21229while()) {
                cfor.m22625for(entry.getKey().toString());
                cfor.m22625for("=\"");
                cfor.m22625for(m22610import(byteString));
                cfor.m22625for("\"\n");
            }
            for (t1 t1Var2 : value.m21226super()) {
                cfor.m22624do(entry.getKey().toString());
                m22616strictfp(t1Var2, cfor);
                cfor.m22626if(entry.getKey().toString());
                cfor.m22625for("\n");
            }
        }
    }

    /* renamed from: switch, reason: not valid java name */
    private static long m22617switch(String str, boolean z, boolean z2) throws NumberFormatException {
        int i = 0;
        boolean z3 = true;
        if (!str.startsWith("-", 0)) {
            z3 = false;
        } else {
            if (!z) {
                throw new NumberFormatException("Number must be positive: " + str);
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
                if (j <= 2147483647L && j >= -2147483648L) {
                    return j;
                }
                throw new NumberFormatException("Number out of range for 32-bit signed integer: " + str);
            }
            if (j < o3.f24027catch && j >= 0) {
                return j;
            }
            throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + str);
        }
        BigInteger bigInteger = new BigInteger(strSubstring, i2);
        if (z3) {
            bigInteger = bigInteger.negate();
        }
        if (z2) {
            if (z) {
                if (bigInteger.bitLength() > 63) {
                    throw new NumberFormatException("Number out of range for 64-bit signed integer: " + str);
                }
            } else if (bigInteger.bitLength() > 64) {
                throw new NumberFormatException("Number out of range for 64-bit unsigned integer: " + str);
            }
        } else if (z) {
            if (bigInteger.bitLength() > 31) {
                throw new NumberFormatException("Number out of range for 32-bit signed integer: " + str);
            }
        } else if (bigInteger.bitLength() > 32) {
            throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + str);
        }
        return bigInteger.longValue();
    }

    /* renamed from: throws, reason: not valid java name */
    public static int m22618throws(String str) throws NumberFormatException {
        return (int) m22617switch(str, false, false);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static ByteString m22619volatile(CharSequence charSequence) throws Cif {
        int i;
        int i2;
        byte[] bArr = new byte[charSequence.length()];
        int i3 = 0;
        int i4 = 0;
        while (i3 < charSequence.length()) {
            char cCharAt = charSequence.charAt(i3);
            if (cCharAt == '\\') {
                i3++;
                if (i3 >= charSequence.length()) {
                    throw new Cif("Invalid escape sequence: '\\' at end of string.");
                }
                char cCharAt2 = charSequence.charAt(i3);
                if (i62.m3299try(cCharAt2)) {
                    int iM3286do = i62.m3286do(cCharAt2);
                    int i5 = i3 + 1;
                    if (i5 < charSequence.length() && i62.m3299try(charSequence.charAt(i5))) {
                        iM3286do = (iM3286do * 8) + i62.m3286do(charSequence.charAt(i5));
                        i3 = i5;
                    }
                    int i6 = i3 + 1;
                    if (i6 < charSequence.length() && i62.m3299try(charSequence.charAt(i6))) {
                        iM3286do = (iM3286do * 8) + i62.m3286do(charSequence.charAt(i6));
                        i3 = i6;
                    }
                    i = i4 + 1;
                    bArr[i4] = (byte) iM3286do;
                } else {
                    if (cCharAt2 == '\"') {
                        i2 = i4 + 1;
                        bArr[i4] = 34;
                    } else if (cCharAt2 == '\'') {
                        i2 = i4 + 1;
                        bArr[i4] = 39;
                    } else if (cCharAt2 == '\\') {
                        i2 = i4 + 1;
                        bArr[i4] = 92;
                    } else if (cCharAt2 == 'f') {
                        i2 = i4 + 1;
                        bArr[i4] = 12;
                    } else if (cCharAt2 == 'n') {
                        i2 = i4 + 1;
                        bArr[i4] = 10;
                    } else if (cCharAt2 == 'r') {
                        i2 = i4 + 1;
                        bArr[i4] = 13;
                    } else if (cCharAt2 == 't') {
                        i2 = i4 + 1;
                        bArr[i4] = 9;
                    } else if (cCharAt2 == 'v') {
                        i2 = i4 + 1;
                        bArr[i4] = 11;
                    } else if (cCharAt2 == 'x') {
                        i3++;
                        if (i3 >= charSequence.length() || !i62.m3294new(charSequence.charAt(i3))) {
                            throw new Cif("Invalid escape sequence: '\\x' with no digits");
                        }
                        int iM3286do2 = i62.m3286do(charSequence.charAt(i3));
                        int i7 = i3 + 1;
                        if (i7 < charSequence.length() && i62.m3294new(charSequence.charAt(i7))) {
                            iM3286do2 = (iM3286do2 * 16) + i62.m3286do(charSequence.charAt(i7));
                            i3 = i7;
                        }
                        bArr[i4] = (byte) iM3286do2;
                        i2 = i4 + 1;
                    } else if (cCharAt2 == 'a') {
                        i2 = i4 + 1;
                        bArr[i4] = 7;
                    } else {
                        if (cCharAt2 != 'b') {
                            throw new Cif("Invalid escape sequence: '\\" + cCharAt2 + '\'');
                        }
                        i2 = i4 + 1;
                        bArr[i4] = 8;
                    }
                    i4 = i2;
                    i3++;
                }
            } else {
                i = i4 + 1;
                bArr[i4] = (byte) cCharAt;
            }
            i4 = i;
            i3++;
        }
        return ByteString.copyFrom(bArr, 0, i4);
    }

    /* renamed from: while, reason: not valid java name */
    private String m22620while(String str, Integer num) throws IOException {
        if (num == null) {
            return str;
        }
        return str + "[" + num.toString() + "]";
    }

    @Override // com.googlecode.protobuf.format.Cdo
    /* renamed from: const */
    public void mo22469const(CharSequence charSequence, Cprotected cprotected, Message.Builder builder) throws Cnew {
        C0171try c0171try = new C0171try(charSequence, null);
        HashMap map = new HashMap();
        while (!c0171try.m22636do()) {
            m22613public(c0171try, cprotected, map, builder);
        }
    }

    /* renamed from: package, reason: not valid java name */
    public void m22621package(Descriptors.Celse celse, Object obj, Appendable appendable) throws IOException {
        m22609finally(celse, obj, new Cfor(appendable, null));
    }

    /* renamed from: private, reason: not valid java name */
    public String m22622private(Descriptors.Celse celse, Object obj) {
        try {
            StringBuilder sb = new StringBuilder();
            m22621package(celse, obj, sb);
            return sb.toString();
        } catch (IOException e) {
            throw new RuntimeException("Writing to a StringBuilder threw an IOException (should never happen).", e);
        }
    }

    @Override // com.googlecode.protobuf.format.Cdo
    /* renamed from: super */
    public void mo22471super(Message message, Appendable appendable) throws IOException {
        m22608extends(message, new Cfor(appendable, null));
    }

    @Override // com.googlecode.protobuf.format.Cdo
    /* renamed from: throw */
    public void mo22472throw(t1 t1Var, Appendable appendable) throws IOException {
        m22616strictfp(t1Var, new Cfor(appendable, null));
    }
}
