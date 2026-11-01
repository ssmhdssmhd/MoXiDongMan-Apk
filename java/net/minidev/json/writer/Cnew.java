package net.minidev.json.writer;

import android.support.v4.ca2;
import java.io.IOException;
import net.minidev.json.Cfor;
import org.slf4j.helpers.MessageFormatter;

/* renamed from: net.minidev.json.writer.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew extends Ccase<Cnew> {

    /* renamed from: case, reason: not valid java name */
    private boolean f28347case;

    /* renamed from: do, reason: not valid java name */
    private Appendable f28348do;

    /* renamed from: for, reason: not valid java name */
    private Boolean f28349for;

    /* renamed from: if, reason: not valid java name */
    private Cfor f28350if;

    /* renamed from: new, reason: not valid java name */
    private boolean f28351new;

    /* renamed from: try, reason: not valid java name */
    private boolean f28352try;

    public Cnew(Ctry ctry, Appendable appendable, Cfor cfor) {
        this(ctry, appendable, cfor, null);
    }

    /* renamed from: case, reason: not valid java name */
    private boolean m31731case() {
        return this.f28349for == Boolean.TRUE;
    }

    /* renamed from: do, reason: not valid java name */
    private void m31732do() throws IOException {
        if (this.f28351new) {
            this.f28348do.append(',');
        } else {
            this.f28351new = true;
        }
    }

    /* renamed from: else, reason: not valid java name */
    private void m31733else(Object obj) throws IOException {
        if (m31738try(obj)) {
            Cnew cnew = (Cnew) obj;
            if (cnew.f28352try) {
                return;
            }
            cnew.f28352try = true;
            if (cnew.m31731case()) {
                this.f28348do.append(MessageFormatter.DELIM_START);
                this.f28351new = false;
            } else if (cnew.m31736new()) {
                this.f28348do.append('[');
                this.f28351new = false;
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private void m31734goto(String str) throws IOException {
        m31732do();
        if (m31736new()) {
            return;
        }
        if (this.f28350if.m31588this(str)) {
            this.f28348do.append(ca2.f674do);
            net.minidev.json.Cnew.m31596case(str, this.f28348do, this.f28350if);
            this.f28348do.append(ca2.f674do);
        } else {
            this.f28348do.append(str);
        }
        this.f28348do.append(':');
    }

    /* renamed from: if, reason: not valid java name */
    private void m31735if(Object obj) throws IOException {
        if (m31738try(obj)) {
            Cnew cnew = (Cnew) obj;
            if (cnew.f28347case) {
                return;
            }
            cnew.f28347case = true;
            if (cnew.m31731case()) {
                this.f28348do.append(MessageFormatter.DELIM_STOP);
                this.f28351new = true;
            } else if (cnew.m31736new()) {
                this.f28348do.append(']');
                this.f28351new = true;
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    private boolean m31736new() {
        return this.f28349for == Boolean.FALSE;
    }

    /* renamed from: this, reason: not valid java name */
    private void m31737this(Object obj) throws IOException {
        if (obj instanceof String) {
            this.f28350if.m31586public(this.f28348do, (String) obj);
        } else if (m31738try(obj)) {
            m31735if(obj);
        } else {
            net.minidev.json.Cnew.b(obj, this.f28348do, this.f28350if);
        }
    }

    /* renamed from: try, reason: not valid java name */
    private boolean m31738try(Object obj) {
        return obj instanceof Cnew;
    }

    @Override // net.minidev.json.writer.Ccase
    public void addValue(Object obj, Object obj2) throws IOException {
        m31732do();
        m31737this(obj2);
    }

    @Override // net.minidev.json.writer.Ccase
    public Object createArray() {
        this.f28349for = Boolean.FALSE;
        try {
            m31733else(this);
        } catch (Exception unused) {
        }
        return this;
    }

    @Override // net.minidev.json.writer.Ccase
    public Object createObject() {
        this.f28349for = Boolean.TRUE;
        try {
            m31733else(this);
        } catch (Exception unused) {
        }
        return this;
    }

    @Override // net.minidev.json.writer.Ccase
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cnew convert(Object obj) {
        try {
            m31735if(obj);
        } catch (Exception unused) {
        }
        return this;
    }

    @Override // net.minidev.json.writer.Ccase
    public void setValue(Object obj, String str, Object obj2) throws IOException {
        if (m31738try(obj2)) {
            m31732do();
        } else {
            m31734goto(str);
            m31737this(obj2);
        }
    }

    @Override // net.minidev.json.writer.Ccase
    public Ccase<?> startArray(String str) throws IOException {
        m31733else(this);
        m31734goto(str);
        Cnew cnew = new Cnew(this.base, this.f28348do, this.f28350if, Boolean.FALSE);
        m31733else(cnew);
        return cnew;
    }

    @Override // net.minidev.json.writer.Ccase
    public Ccase<?> startObject(String str) throws IOException {
        m31733else(this);
        m31734goto(str);
        Cnew cnew = new Cnew(this.base, this.f28348do, this.f28350if, Boolean.TRUE);
        m31733else(cnew);
        return cnew;
    }

    public Cnew(Ctry ctry, Appendable appendable, Cfor cfor, Boolean bool) {
        super(ctry);
        this.f28351new = false;
        this.f28352try = false;
        this.f28347case = false;
        this.f28348do = appendable;
        this.f28350if = cfor;
        this.f28349for = bool;
    }
}
