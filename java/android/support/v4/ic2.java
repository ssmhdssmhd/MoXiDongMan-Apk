package android.support.v4;

import freemarker.template.utility.Csuper;

/* loaded from: classes3.dex */
public class ic2 extends Exception {
    private final String timeZoneName;

    public ic2(String str) {
        super("Unrecognized time zone: " + Csuper.m29330synchronized(str));
        this.timeZoneName = str;
    }

    public String getTimeZoneName() {
        return this.timeZoneName;
    }
}
