package net.minidev.json;

import android.support.v4.ca2;
import java.io.IOException;
import net.minidev.json.JStylerObj;
import org.slf4j.helpers.MessageFormatter;

/* renamed from: net.minidev.json.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor {

    /* renamed from: break, reason: not valid java name */
    public static final int f28198break = 4;

    /* renamed from: catch, reason: not valid java name */
    public static final int f28199catch = 8;

    /* renamed from: class, reason: not valid java name */
    public static final int f28200class = 16;

    /* renamed from: goto, reason: not valid java name */
    public static final int f28203goto = 1;

    /* renamed from: this, reason: not valid java name */
    public static final int f28205this = 2;

    /* renamed from: case, reason: not valid java name */
    private JStylerObj.MustProtect f28206case;

    /* renamed from: do, reason: not valid java name */
    private boolean f28207do;

    /* renamed from: else, reason: not valid java name */
    private JStylerObj.StringProtector f28208else;

    /* renamed from: for, reason: not valid java name */
    private boolean f28209for;

    /* renamed from: if, reason: not valid java name */
    private boolean f28210if;

    /* renamed from: new, reason: not valid java name */
    private boolean f28211new;

    /* renamed from: try, reason: not valid java name */
    private JStylerObj.MustProtect f28212try;

    /* renamed from: const, reason: not valid java name */
    public static final Cfor f28201const = new Cfor(0);

    /* renamed from: final, reason: not valid java name */
    public static final Cfor f28202final = new Cfor(-1);

    /* renamed from: super, reason: not valid java name */
    public static final Cfor f28204super = new Cfor(2);

    public Cfor(int i) {
        boolean z = (i & 1) == 0;
        this.f28207do = z;
        boolean z2 = (i & 4) == 0;
        this.f28209for = z2;
        boolean z3 = (i & 2) == 0;
        this.f28210if = z3;
        this.f28211new = (i & 16) > 0;
        JStylerObj.MustProtect mustProtect = (i & 8) > 0 ? JStylerObj.f28194for : JStylerObj.f28193do;
        if (z2) {
            this.f28206case = JStylerObj.f28195if;
        } else {
            this.f28206case = mustProtect;
        }
        if (z) {
            this.f28212try = JStylerObj.f28195if;
        } else {
            this.f28212try = mustProtect;
        }
        if (z3) {
            this.f28208else = JStylerObj.f28197try;
        } else {
            this.f28208else = JStylerObj.f28196new;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m31572break(String str) {
        return this.f28206case.mustBeProtect(str);
    }

    /* renamed from: case, reason: not valid java name */
    public void m31573case(String str, Appendable appendable) {
        this.f28208else.escape(str, appendable);
    }

    /* renamed from: catch, reason: not valid java name */
    public void m31574catch(Appendable appendable) throws IOException {
    }

    /* renamed from: class, reason: not valid java name */
    public void m31575class(Appendable appendable) throws IOException {
        appendable.append(':');
    }

    /* renamed from: const, reason: not valid java name */
    public void m31576const(Appendable appendable) throws IOException {
    }

    /* renamed from: do, reason: not valid java name */
    public void m31577do(Appendable appendable) throws IOException {
        appendable.append(',');
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m31578else() {
        return this.f28211new;
    }

    /* renamed from: final, reason: not valid java name */
    public void m31579final(Appendable appendable) throws IOException {
        appendable.append(',');
    }

    /* renamed from: for, reason: not valid java name */
    public void m31580for(Appendable appendable) throws IOException {
        appendable.append('[');
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m31581goto() {
        return false;
    }

    /* renamed from: if, reason: not valid java name */
    public void m31582if(Appendable appendable) throws IOException {
    }

    /* renamed from: import, reason: not valid java name */
    public boolean m31583import() {
        return this.f28207do;
    }

    /* renamed from: native, reason: not valid java name */
    public boolean m31584native() {
        return this.f28209for;
    }

    /* renamed from: new, reason: not valid java name */
    public void m31585new(Appendable appendable) throws IOException {
        appendable.append(']');
    }

    /* renamed from: public, reason: not valid java name */
    public void m31586public(Appendable appendable, String str) throws IOException {
        if (!m31572break(str)) {
            appendable.append(str);
            return;
        }
        appendable.append(ca2.f674do);
        Cnew.m31596case(str, appendable, this);
        appendable.append(ca2.f674do);
    }

    /* renamed from: super, reason: not valid java name */
    public void m31587super(Appendable appendable) throws IOException {
        appendable.append(MessageFormatter.DELIM_START);
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m31588this(String str) {
        return this.f28212try.mustBeProtect(str);
    }

    /* renamed from: throw, reason: not valid java name */
    public void m31589throw(Appendable appendable) throws IOException {
        appendable.append(MessageFormatter.DELIM_STOP);
    }

    /* renamed from: try, reason: not valid java name */
    public void m31590try(Appendable appendable) throws IOException {
    }

    /* renamed from: while, reason: not valid java name */
    public boolean m31591while() {
        return this.f28210if;
    }

    public Cfor() {
        this(0);
    }
}
