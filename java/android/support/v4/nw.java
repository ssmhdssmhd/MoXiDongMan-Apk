package android.support.v4;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;

/* loaded from: classes3.dex */
public class nw {

    /* renamed from: break, reason: not valid java name */
    private static final int f4334break = 1;

    /* renamed from: case, reason: not valid java name */
    private static final String f4335case = "AAID";

    /* renamed from: catch, reason: not valid java name */
    private static final int f4336catch = 2;

    /* renamed from: class, reason: not valid java name */
    private static final int f4337class = 4;

    /* renamed from: else, reason: not valid java name */
    private static final String f4338else = "VAID";

    /* renamed from: for, reason: not valid java name */
    private static final String f4339for = "content://com.vivo.vms.IdProvider/IdentifierId";

    /* renamed from: goto, reason: not valid java name */
    private static final String f4340goto = "OAIDSTATUS";

    /* renamed from: if, reason: not valid java name */
    private static final String f4341if = "VMS_IDLG_SDK_DB";

    /* renamed from: new, reason: not valid java name */
    private static final String f4342new = "value";

    /* renamed from: this, reason: not valid java name */
    private static final int f4343this = 0;

    /* renamed from: try, reason: not valid java name */
    private static final String f4344try = "OAID";

    /* renamed from: do, reason: not valid java name */
    private Context f4345do;

    public nw(Context context) {
        this.f4345do = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0058  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String m5393do(int i, String str) {
        Uri uri;
        Uri uri2;
        Cursor cursorQuery;
        if (i == 0) {
            uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID");
        } else if (i == 1) {
            uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/VAID_" + str);
        } else if (i == 2) {
            uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/AAID_" + str);
        } else {
            if (i != 4) {
                uri2 = null;
                cursorQuery = this.f4345do.getContentResolver().query(uri2, null, null, null, null);
                if (cursorQuery != null) {
                    string = cursorQuery.moveToNext() ? cursorQuery.getString(cursorQuery.getColumnIndex("value")) : null;
                    cursorQuery.close();
                }
                return string;
            }
            uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAIDSTATUS");
        }
        uri2 = uri;
        cursorQuery = this.f4345do.getContentResolver().query(uri2, null, null, null, null);
        if (cursorQuery != null) {
        }
        return string;
    }
}
