package android.support.v4;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.UriPermission;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.DocumentsContract;
import androidx.annotation.RequiresApi;
import androidx.documentfile.provider.DocumentFile;

@RequiresApi(api = 21)
/* loaded from: classes2.dex */
public class am2 {

    /* renamed from: case, reason: not valid java name */
    private static final Uri f209case;

    /* renamed from: do, reason: not valid java name */
    public static String f210do = Environment.getExternalStorageDirectory().getPath() + on0.f4694final;

    /* renamed from: for, reason: not valid java name */
    private static final String f211for = "primary:Android";

    /* renamed from: if, reason: not valid java name */
    private static final String f212if = "com.android.externalstorage.documents";

    /* renamed from: new, reason: not valid java name */
    private static final String f213new = "primary:Android/data";

    /* renamed from: try, reason: not valid java name */
    private static final Uri f214try;

    static {
        Uri uriBuildTreeDocumentUri = DocumentsContract.buildTreeDocumentUri(f212if, f213new);
        f214try = uriBuildTreeDocumentUri;
        f209case = DocumentsContract.buildChildDocumentsUriUsingTree(uriBuildTreeDocumentUri, f213new);
    }

    /* renamed from: break, reason: not valid java name */
    public static String m279break(String str) {
        if (str.contains("content://com.android.externalstorage.documents/tree/primary%3AAndroid%2Fdata/document/primary")) {
            return str.replace("content://com.android.externalstorage.documents/tree/primary%3AAndroid%2Fdata/document/primary%3A", f210do).replace("%2F", on0.f4694final);
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public static DocumentFile m280case(Context context, String str) {
        if (str.endsWith(on0.f4694final)) {
            str = str.substring(0, str.length() - 1);
        }
        return DocumentFile.fromSingleUri(context, Uri.parse("content://com.android.externalstorage.documents/tree/primary%3AAndroid%2Fdata/document/primary%3A" + str.replace("/storage/emulated/0/", "").replace(on0.f4694final, "%2F")));
    }

    /* renamed from: do, reason: not valid java name */
    public static String m281do(String str) {
        if (str.endsWith(on0.f4694final)) {
            str = str.substring(0, str.length() - 1);
        }
        return "content://com.android.externalstorage.documents/tree/primary%3AAndroid%2Fdata/document/primary%3A" + str.replace("/storage/emulated/0/", "").replace(on0.f4694final, "%2F");
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m282else(Context context) {
        for (UriPermission uriPermission : context.getContentResolver().getPersistedUriPermissions()) {
            if (uriPermission.isReadPermission() && uriPermission.getUri().toString().equals("content://com.android.externalstorage.documents/tree/primary%3AAndroid%2Fdata")) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public static String m283for(String str) {
        return "content://com.android.externalstorage.documents/tree/primary%3A" + str.replace("/storage/emulated/0/", "").replace(on0.f4694final, "%2F");
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m284goto(String str, Activity activity, int i) {
        Uri uri = Uri.parse(m281do(str));
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
        intent.addFlags(195);
        if (Build.VERSION.SDK_INT >= 26) {
            intent.putExtra("android.provider.extra.INITIAL_URI", uri);
        }
        activity.startActivityForResult(intent, i);
    }

    /* renamed from: if, reason: not valid java name */
    public static String m285if(String str) {
        String[] strArrSplit = str.replaceAll("/storage/emulated/0/Android/data", "").split(on0.f4694final);
        StringBuilder sb = new StringBuilder("content://com.android.externalstorage.documents/tree/primary%3AAndroid%2Fdata/document/primary%3AAndroid%2Fdata");
        for (String str2 : strArrSplit) {
            if (str2.length() != 0) {
                sb.append("%2F");
                sb.append(str2);
            }
        }
        return sb.toString();
    }

    /* renamed from: new, reason: not valid java name */
    public static void m286new(ContentResolver contentResolver) {
        Cursor cursorQuery = contentResolver.query(f209case, new String[]{"_display_name", "document_id", "mime_type"}, null, null, null);
        while (cursorQuery.moveToNext()) {
            cursorQuery.getString(cursorQuery.getColumnIndex("_display_name"));
            String string = cursorQuery.getString(cursorQuery.getColumnIndex("document_id"));
            cursorQuery.getString(cursorQuery.getColumnIndex("mime_type"));
            cursorQuery.getString(cursorQuery.getColumnIndex("_size"));
            DocumentsContract.buildChildDocumentsUriUsingTree(f209case, string).toString();
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m287this(Activity activity, int i) {
        Uri uri = Uri.parse("content://com.android.externalstorage.documents/tree/primary%3AAndroid%2Fdata");
        Uri.parse(m281do(Environment.getExternalStorageDirectory().getPath()) + "/document/primary%3A" + Environment.getExternalStorageDirectory().getPath().replace("/storage/emulated/0/", "").replace(on0.f4694final, "%2F"));
        com.wsw.cospa.utils.DocumentFile documentFileM26649break = com.wsw.cospa.utils.DocumentFile.m26649break(activity, uri);
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
        intent.setFlags(195);
        intent.putExtra("android.provider.extra.INITIAL_URI", documentFileM26649break.mo26658final());
        activity.startActivityForResult(intent, i);
    }

    /* renamed from: try, reason: not valid java name */
    public static com.wsw.cospa.utils.DocumentFile m288try(Context context, String str, String str2) {
        com.wsw.cospa.utils.DocumentFile documentFileM26649break = com.wsw.cospa.utils.DocumentFile.m26649break(context, Uri.parse(str2));
        String[] strArrSplit = str.split(on0.f4694final);
        for (int i = 3; i < strArrSplit.length; i++) {
            documentFileM26649break = documentFileM26649break.mo26657else(strArrSplit[i]);
        }
        return documentFileM26649break;
    }
}
