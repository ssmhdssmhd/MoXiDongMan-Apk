package org.apache.commons.lang3;

import android.support.v4.ew0;
import android.support.v4.g51;
import android.support.v4.h51;
import android.support.v4.ip0;
import android.support.v4.o61;
import android.support.v4.on0;
import android.support.v4.qb2;
import android.support.v4.rb2;
import android.support.v4.rk;
import android.support.v4.wk;
import android.support.v4.x70;
import android.support.v4.y0;
import java.io.IOException;
import java.io.Writer;

/* renamed from: org.apache.commons.lang3.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccatch {

    /* renamed from: break, reason: not valid java name */
    public static final rk f28627break;

    /* renamed from: catch, reason: not valid java name */
    public static final rk f28629catch;

    /* renamed from: class, reason: not valid java name */
    public static final rk f28630class;

    /* renamed from: const, reason: not valid java name */
    public static final rk f28631const;

    /* renamed from: final, reason: not valid java name */
    public static final rk f28634final;

    /* renamed from: super, reason: not valid java name */
    public static final rk f28639super;

    /* renamed from: throw, reason: not valid java name */
    public static final rk f28641throw;

    /* renamed from: do, reason: not valid java name */
    public static final rk f28632do = new ew0(new String[]{"\"", "\\\""}, new String[]{"\\", "\\\\"}).m7021try(new ew0(x70.m9408this())).m7021try(ip0.m3534super(32, 127));

    /* renamed from: if, reason: not valid java name */
    public static final rk f28637if = new y0(new ew0(new String[]{"'", "\\'"}, new String[]{"\"", "\\\""}, new String[]{"\\", "\\\\"}, new String[]{on0.f4694final, "\\/"}), new ew0(x70.m9408this()), ip0.m3534super(32, 127));

    /* renamed from: for, reason: not valid java name */
    public static final rk f28635for = new y0(new ew0(new String[]{"\"", "\\\""}, new String[]{"\\", "\\\\"}, new String[]{on0.f4694final, "\\/"}), new ew0(x70.m9408this()), ip0.m3534super(32, 127));

    /* renamed from: new, reason: not valid java name */
    @Deprecated
    public static final rk f28638new = new y0(new ew0(x70.m9404for()), new ew0(x70.m9402do()));

    /* renamed from: try, reason: not valid java name */
    public static final rk f28642try = new y0(new ew0(x70.m9404for()), new ew0(x70.m9402do()), new ew0(new String[]{"\u0000", ""}, new String[]{"\u0001", ""}, new String[]{"\u0002", ""}, new String[]{"\u0003", ""}, new String[]{"\u0004", ""}, new String[]{"\u0005", ""}, new String[]{"\u0006", ""}, new String[]{"\u0007", ""}, new String[]{"\b", ""}, new String[]{"\u000b", ""}, new String[]{"\f", ""}, new String[]{"\u000e", ""}, new String[]{"\u000f", ""}, new String[]{"\u0010", ""}, new String[]{"\u0011", ""}, new String[]{"\u0012", ""}, new String[]{"\u0013", ""}, new String[]{"\u0014", ""}, new String[]{"\u0015", ""}, new String[]{"\u0016", ""}, new String[]{"\u0017", ""}, new String[]{"\u0018", ""}, new String[]{"\u0019", ""}, new String[]{"\u001a", ""}, new String[]{"\u001b", ""}, new String[]{"\u001c", ""}, new String[]{"\u001d", ""}, new String[]{"\u001e", ""}, new String[]{"\u001f", ""}, new String[]{"\ufffe", ""}, new String[]{"\uffff", ""}), g51.m2584this(127, 132), g51.m2584this(134, 159), new rb2());

    /* renamed from: case, reason: not valid java name */
    public static final rk f28628case = new y0(new ew0(x70.m9404for()), new ew0(x70.m9402do()), new ew0(new String[]{"\u0000", ""}, new String[]{"\u000b", "&#11;"}, new String[]{"\f", "&#12;"}, new String[]{"\ufffe", ""}, new String[]{"\uffff", ""}), g51.m2584this(1, 8), g51.m2584this(14, 31), g51.m2584this(127, 132), g51.m2584this(134, 159), new rb2());

    /* renamed from: else, reason: not valid java name */
    public static final rk f28633else = new y0(new ew0(x70.m9404for()), new ew0(x70.m9403else()));

    /* renamed from: goto, reason: not valid java name */
    public static final rk f28636goto = new y0(new ew0(x70.m9404for()), new ew0(x70.m9403else()), new ew0(x70.m9409try()));

    /* renamed from: this, reason: not valid java name */
    public static final rk f28640this = new Cdo();

    /* renamed from: org.apache.commons.lang3.catch$do, reason: invalid class name */
    public static class Cdo extends rk {

        /* renamed from: if, reason: not valid java name */
        private static final char f28645if = '\"';

        /* renamed from: for, reason: not valid java name */
        private static final String f28644for = String.valueOf('\"');

        /* renamed from: do, reason: not valid java name */
        private static final char f28643do = ',';

        /* renamed from: new, reason: not valid java name */
        private static final char[] f28646new = {f28643do, '\"', wk.f7547for, '\n'};

        @Override // android.support.v4.rk
        /* renamed from: if */
        public int mo2056if(CharSequence charSequence, int i, Writer writer) throws IOException {
            if (i != 0) {
                throw new IllegalStateException("CsvEscaper should never reach the [1] index");
            }
            if (Cclass.m32264return(charSequence.toString(), f28646new)) {
                writer.write(charSequence.toString());
            } else {
                writer.write(34);
                String string = charSequence.toString();
                String str = f28644for;
                writer.write(Cclass.M0(string, str, str + str));
                writer.write(34);
            }
            return Character.codePointCount(charSequence, 0, charSequence.length());
        }
    }

    /* renamed from: org.apache.commons.lang3.catch$if, reason: invalid class name */
    public static class Cif extends rk {

        /* renamed from: if, reason: not valid java name */
        private static final char f28649if = '\"';

        /* renamed from: for, reason: not valid java name */
        private static final String f28648for = String.valueOf('\"');

        /* renamed from: do, reason: not valid java name */
        private static final char f28647do = ',';

        /* renamed from: new, reason: not valid java name */
        private static final char[] f28650new = {f28647do, '\"', wk.f7547for, '\n'};

        @Override // android.support.v4.rk
        /* renamed from: if */
        public int mo2056if(CharSequence charSequence, int i, Writer writer) throws IOException {
            if (i != 0) {
                throw new IllegalStateException("CsvUnescaper should never reach the [1] index");
            }
            if (charSequence.charAt(0) != '\"' || charSequence.charAt(charSequence.length() - 1) != '\"') {
                writer.write(charSequence.toString());
                return Character.codePointCount(charSequence, 0, charSequence.length());
            }
            String string = charSequence.subSequence(1, charSequence.length() - 1).toString();
            if (Cclass.m32255import(string, f28650new)) {
                StringBuilder sb = new StringBuilder();
                String str = f28648for;
                sb.append(str);
                sb.append(str);
                writer.write(Cclass.M0(string, sb.toString(), str));
            } else {
                writer.write(charSequence.toString());
            }
            return Character.codePointCount(charSequence, 0, charSequence.length());
        }
    }

    static {
        y0 y0Var = new y0(new o61(), new qb2(), new ew0(x70.m9399break()), new ew0(new String[]{"\\\\", "\\"}, new String[]{"\\\"", "\""}, new String[]{"\\'", "'"}, new String[]{"\\", ""}));
        f28627break = y0Var;
        f28629catch = y0Var;
        f28630class = y0Var;
        f28631const = new y0(new ew0(x70.m9407new()), new ew0(x70.m9405goto()), new h51(new h51.Cdo[0]));
        f28634final = new y0(new ew0(x70.m9407new()), new ew0(x70.m9405goto()), new ew0(x70.m9400case()), new h51(new h51.Cdo[0]));
        f28639super = new y0(new ew0(x70.m9407new()), new ew0(x70.m9406if()), new h51(new h51.Cdo[0]));
        f28641throw = new Cif();
    }

    /* renamed from: break, reason: not valid java name */
    public static final String m32222break(String str) {
        return f28641throw.m7019for(str);
    }

    /* renamed from: case, reason: not valid java name */
    public static final String m32223case(String str) {
        return f28635for.m7019for(str);
    }

    /* renamed from: catch, reason: not valid java name */
    public static final String m32224catch(String str) {
        return f28629catch.m7019for(str);
    }

    /* renamed from: class, reason: not valid java name */
    public static final String m32225class(String str) {
        return f28631const.m7019for(str);
    }

    /* renamed from: const, reason: not valid java name */
    public static final String m32226const(String str) {
        return f28634final.m7019for(str);
    }

    /* renamed from: do, reason: not valid java name */
    public static final String m32227do(String str) {
        return f28640this.m7019for(str);
    }

    @Deprecated
    /* renamed from: else, reason: not valid java name */
    public static final String m32228else(String str) {
        return f28638new.m7019for(str);
    }

    /* renamed from: final, reason: not valid java name */
    public static final String m32229final(String str) {
        return f28627break.m7019for(str);
    }

    /* renamed from: for, reason: not valid java name */
    public static final String m32230for(String str) {
        return f28633else.m7019for(str);
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m32231goto(String str) {
        return f28642try.m7019for(str);
    }

    /* renamed from: if, reason: not valid java name */
    public static final String m32232if(String str) {
        return f28637if.m7019for(str);
    }

    /* renamed from: new, reason: not valid java name */
    public static final String m32233new(String str) {
        return f28636goto.m7019for(str);
    }

    /* renamed from: super, reason: not valid java name */
    public static final String m32234super(String str) {
        return f28630class.m7019for(str);
    }

    /* renamed from: this, reason: not valid java name */
    public static String m32235this(String str) {
        return f28628case.m7019for(str);
    }

    /* renamed from: throw, reason: not valid java name */
    public static final String m32236throw(String str) {
        return f28639super.m7019for(str);
    }

    /* renamed from: try, reason: not valid java name */
    public static final String m32237try(String str) {
        return f28632do.m7019for(str);
    }
}
