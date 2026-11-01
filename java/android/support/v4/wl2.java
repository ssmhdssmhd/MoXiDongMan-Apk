package android.support.v4;

import com.google.android.material.datepicker.Cbreak;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class wl2 {

    /* renamed from: do, reason: not valid java name */
    private final String f7569do;

    public wl2(String str) {
        this.f7569do = str;
    }

    /* renamed from: do, reason: not valid java name */
    public TimeZone m9228do() {
        TimeZone timeZone = TimeZone.getTimeZone(this.f7569do);
        if (!timeZone.getID().equals("GMT") || this.f7569do.equals("GMT") || this.f7569do.equals(Cbreak.f11820do) || this.f7569do.equals("GMT+00") || this.f7569do.equals("GMT+00:00") || this.f7569do.equals("GMT+0000")) {
            return timeZone;
        }
        throw new IllegalArgumentException("Unrecognized time zone: " + this.f7569do);
    }
}
