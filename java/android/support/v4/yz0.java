package android.support.v4;

import android.net.Uri;
import android.webkit.MimeTypeMap;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.FileFilter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class yz0 implements FileFilter {

    /* renamed from: case, reason: not valid java name */
    private boolean f8374case;

    /* renamed from: new, reason: not valid java name */
    private MimeTypeMap f8378new;

    /* renamed from: try, reason: not valid java name */
    private boolean f8379try;

    /* renamed from: do, reason: not valid java name */
    private HashSet<String> f8375do = new HashSet<>();

    /* renamed from: if, reason: not valid java name */
    private HashSet<String> f8377if = new HashSet<>();

    /* renamed from: for, reason: not valid java name */
    private HashSet<String> f8376for = new HashSet<>();

    public yz0(@NonNull List<String> list, boolean z) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String lowerCase = it.next().trim().toLowerCase(Locale.US);
            if (lowerCase.startsWith(".")) {
                this.f8375do.add(lowerCase.substring(1));
            } else if (lowerCase.equals("*/*")) {
                this.f8379try = true;
            } else if (lowerCase.endsWith("/*")) {
                this.f8376for.add(lowerCase.substring(0, lowerCase.length() - 2));
            } else if (lowerCase.contains(on0.f4694final)) {
                this.f8377if.add(lowerCase);
            }
        }
        this.f8378new = MimeTypeMap.getSingleton();
        this.f8374case = z;
    }

    /* renamed from: for, reason: not valid java name */
    private String m9999for(@NonNull String str) {
        String mimeTypeFromExtension = this.f8378new.getMimeTypeFromExtension(str);
        if (mimeTypeFromExtension != null) {
            return mimeTypeFromExtension.toLowerCase(Locale.US);
        }
        return null;
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    private static String m10000if(@NonNull String str) {
        return str.split(on0.f4694final, 2)[0];
    }

    @Override // java.io.FileFilter
    public boolean accept(@NonNull File file) {
        return file.isDirectory() ? this.f8374case : m10001do(Uri.fromFile(file), null);
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m10001do(Uri uri, String str) {
        if (uri != null) {
            String lowerCase = MimeTypeMap.getFileExtensionFromUrl(uri.toString()).toLowerCase(Locale.US);
            if (this.f8375do.contains(lowerCase)) {
                return true;
            }
            if (str == null) {
                str = m9999for(lowerCase);
            }
        }
        if (str != null) {
            return this.f8379try || this.f8377if.contains(str) || this.f8376for.contains(m10000if(str));
        }
        return false;
    }
}
