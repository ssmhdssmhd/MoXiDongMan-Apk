package android.support.v4;

import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes.dex */
public class ih {

    /* renamed from: do, reason: not valid java name */
    public String f2766do;

    /* renamed from: for, reason: not valid java name */
    public Object f2767for;

    /* renamed from: if, reason: not valid java name */
    public int f2768if;

    /* renamed from: new, reason: not valid java name */
    public int f2769new;

    public ih(String str) {
        this(str, 1, null);
    }

    /* renamed from: do, reason: not valid java name */
    public String m3425do() {
        return this.f2766do;
    }

    /* renamed from: for, reason: not valid java name */
    public void m3426for(String str) {
        this.f2766do = str;
    }

    /* renamed from: if, reason: not valid java name */
    public Object m3427if() {
        return this.f2767for;
    }

    /* renamed from: new, reason: not valid java name */
    public void m3428new(Object obj) {
        this.f2767for = obj;
    }

    public String toString() {
        return "Channel{channelName='" + this.f2766do + "', obj=" + this.f2767for + MessageFormatter.DELIM_STOP;
    }

    public ih(String str, int i, Object obj) {
        this.f2769new = -1;
        this.f2766do = str;
        this.f2768if = i;
        this.f2767for = obj;
    }

    public ih(String str, int i) {
        this(str, i, null);
    }

    public ih(String str, Object obj) {
        this(str, 1, obj);
    }
}
