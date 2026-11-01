package kotlin.io;

import android.support.v4.m41;
import android.support.v4.ra0;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Cwhile;
import kotlin.collections.Cthrow;
import kotlin.jvm.internal.Csuper;
import kotlin.text.Cstatic;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0002¢\u0006\u0004\b\u0002\u0010\u0003\u001a\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0004H\u0000\u001a\u001c\u0010\t\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u0001H\u0000\"\u001a\u0010\f\u001a\u00020\u0000*\u00020\u00048@@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b\"\u001a\u0010\u000f\u001a\u00020\u0004*\u00020\u00048@@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e\"\u0017\u0010\u0013\u001a\u00020\u0010*\u00020\u00048F@\u0006¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"", "", "if", "(Ljava/lang/String;)I", "Ljava/io/File;", "Landroid/support/v4/ra0;", "case", "beginIndex", "endIndex", "try", "for", "(Ljava/io/File;)Ljava/lang/String;", "rootName", "do", "(Ljava/io/File;)Ljava/io/File;", "root", "", "new", "(Ljava/io/File;)Z", "isRooted", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/io/FilesKt")
/* renamed from: kotlin.io.try, reason: invalid class name */
/* loaded from: classes3.dex */
class Ctry {
    @m41
    /* renamed from: case, reason: not valid java name */
    public static final ra0 m30636case(@m41 File toComponents) {
        List listM30175continue;
        Csuper.m30700throw(toComponents, "$this$toComponents");
        String path = toComponents.getPath();
        Csuper.m30696super(path, "path");
        int iM30639if = m30639if(path);
        String strSubstring = path.substring(0, iM30639if);
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        String strSubstring2 = path.substring(iM30639if);
        Csuper.m30696super(strSubstring2, "(this as java.lang.String).substring(startIndex)");
        if (strSubstring2.length() == 0) {
            listM30175continue = Cthrow.m30175continue();
        } else {
            List listF4 = Cstatic.f4(strSubstring2, new char[]{File.separatorChar}, false, 0, 6, null);
            ArrayList arrayList = new ArrayList(kotlin.collections.Cwhile.l(listF4, 10));
            Iterator it = listF4.iterator();
            while (it.hasNext()) {
                arrayList.add(new File((String) it.next()));
            }
            listM30175continue = arrayList;
        }
        return new ra0(new File(strSubstring), listM30175continue);
    }

    @m41
    /* renamed from: do, reason: not valid java name */
    public static final File m30637do(@m41 File root) {
        Csuper.m30700throw(root, "$this$root");
        return new File(m30638for(root));
    }

    @m41
    /* renamed from: for, reason: not valid java name */
    public static final String m30638for(@m41 File rootName) {
        Csuper.m30700throw(rootName, "$this$rootName");
        String path = rootName.getPath();
        Csuper.m30696super(path, "path");
        String path2 = rootName.getPath();
        Csuper.m30696super(path2, "path");
        int iM30639if = m30639if(path2);
        Objects.requireNonNull(path, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = path.substring(0, iM30639if);
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    /* renamed from: if, reason: not valid java name */
    private static final int m30639if(String str) {
        int iD2;
        int iD22 = Cstatic.D2(str, File.separatorChar, 0, false, 4, null);
        if (iD22 != 0) {
            if (iD22 > 0 && str.charAt(iD22 - 1) == ':') {
                return iD22 + 1;
            }
            if (iD22 == -1 && Cstatic.n2(str, ':', false, 2, null)) {
                return str.length();
            }
            return 0;
        }
        if (str.length() > 1) {
            char cCharAt = str.charAt(1);
            char c = File.separatorChar;
            if (cCharAt == c && (iD2 = Cstatic.D2(str, c, 2, false, 4, null)) >= 0) {
                int iD23 = Cstatic.D2(str, File.separatorChar, iD2 + 1, false, 4, null);
                return iD23 >= 0 ? iD23 + 1 : str.length();
            }
        }
        return 1;
    }

    /* renamed from: new, reason: not valid java name */
    public static final boolean m30640new(@m41 File isRooted) {
        Csuper.m30700throw(isRooted, "$this$isRooted");
        String path = isRooted.getPath();
        Csuper.m30696super(path, "path");
        return m30639if(path) > 0;
    }

    @m41
    /* renamed from: try, reason: not valid java name */
    public static final File m30641try(@m41 File subPath, int i, int i2) {
        Csuper.m30700throw(subPath, "$this$subPath");
        return m30636case(subPath).m6861break(i, i2);
    }
}
