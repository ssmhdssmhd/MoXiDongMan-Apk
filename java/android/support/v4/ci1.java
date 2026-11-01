package android.support.v4;

import com.google.zxing.qrcode.decoder.Ccase;
import com.google.zxing.qrcode.decoder.Cgoto;
import com.google.zxing.qrcode.decoder.Cthis;

/* loaded from: classes2.dex */
public final class ci1 {

    /* renamed from: case, reason: not valid java name */
    public static final int f793case = 8;

    /* renamed from: do, reason: not valid java name */
    private Cgoto f794do;

    /* renamed from: for, reason: not valid java name */
    private Cthis f795for;

    /* renamed from: if, reason: not valid java name */
    private Ccase f796if;

    /* renamed from: new, reason: not valid java name */
    private int f797new = -1;

    /* renamed from: try, reason: not valid java name */
    private zd f798try;

    /* renamed from: case, reason: not valid java name */
    public static boolean m937case(int i) {
        return i >= 0 && i < 8;
    }

    /* renamed from: break, reason: not valid java name */
    public void m938break(Cgoto cgoto) {
        this.f794do = cgoto;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m939catch(Cthis cthis) {
        this.f795for = cthis;
    }

    /* renamed from: do, reason: not valid java name */
    public Ccase m940do() {
        return this.f796if;
    }

    /* renamed from: else, reason: not valid java name */
    public void m941else(Ccase ccase) {
        this.f796if = ccase;
    }

    /* renamed from: for, reason: not valid java name */
    public zd m942for() {
        return this.f798try;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m943goto(int i) {
        this.f797new = i;
    }

    /* renamed from: if, reason: not valid java name */
    public int m944if() {
        return this.f797new;
    }

    /* renamed from: new, reason: not valid java name */
    public Cgoto m945new() {
        return this.f794do;
    }

    /* renamed from: this, reason: not valid java name */
    public void m946this(zd zdVar) {
        this.f798try = zdVar;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(200);
        sb.append("<<\n");
        sb.append(" mode: ");
        sb.append(this.f794do);
        sb.append("\n ecLevel: ");
        sb.append(this.f796if);
        sb.append("\n version: ");
        sb.append(this.f795for);
        sb.append("\n maskPattern: ");
        sb.append(this.f797new);
        if (this.f798try == null) {
            sb.append("\n matrix: null\n");
        } else {
            sb.append("\n matrix:\n");
            sb.append(this.f798try);
        }
        sb.append(">>\n");
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public Cthis m947try() {
        return this.f795for;
    }
}
