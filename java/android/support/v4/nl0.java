package android.support.v4;

import android.database.ContentObserver;
import org.repackage.com.vivo.identifier.Cdo;

/* loaded from: classes3.dex */
public class nl0 extends ContentObserver {

    /* renamed from: new, reason: not valid java name */
    private static final String f4255new = "VMS_IDLG_SDK_Observer";

    /* renamed from: do, reason: not valid java name */
    private String f4256do;

    /* renamed from: for, reason: not valid java name */
    private Cdo f4257for;

    /* renamed from: if, reason: not valid java name */
    private int f4258if;

    public nl0(Cdo cdo, int i, String str) {
        super(null);
        this.f4257for = cdo;
        this.f4258if = i;
        this.f4256do = str;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        Cdo cdo = this.f4257for;
        if (cdo != null) {
            cdo.m38072new(this.f4258if, this.f4256do);
        }
    }
}
