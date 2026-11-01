package android.support.v4;

import android.content.Context;
import android.net.Uri;
import androidx.documentfile.provider.DocumentFile;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class x10 {

    /* renamed from: do, reason: not valid java name */
    private static Pattern f7744do = Pattern.compile("[\\\\/:*?\"<>|]");

    /* renamed from: abstract, reason: not valid java name */
    public static byte[] m9324abstract(Context context, String str, Uri uri, String... strArr) {
        DocumentFile documentFileFindFile;
        DocumentFile documentFileM9328class = m9328class(context, uri, strArr);
        if (documentFileM9328class == null || (documentFileFindFile = documentFileM9328class.findFile(m9327catch(Uri.decode(str)))) == null) {
            return null;
        }
        return m9346package(context, documentFileFindFile.getUri());
    }

    /* renamed from: break, reason: not valid java name */
    public static boolean m9325break(String str, DocumentFile documentFile, String... strArr) {
        DocumentFile documentFileFindFile;
        DocumentFile documentFileM9335final = m9335final(documentFile, strArr);
        return documentFileM9335final != null && (documentFileFindFile = documentFileM9335final.findFile(m9327catch(Uri.decode(str)))) != null && documentFileFindFile.exists() && documentFileFindFile.delete();
    }

    /* renamed from: case, reason: not valid java name */
    public static DocumentFile m9326case(Context context, String str, String str2, String str3, String... strArr) {
        return m9360try(context, str, str2, str3.startsWith("content") ? Uri.parse(str3) : Uri.parse(Uri.decode(str3)), strArr);
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m9327catch(String str) {
        if (str == null) {
            return null;
        }
        return f7744do.matcher(str).replaceAll("_");
    }

    /* renamed from: class, reason: not valid java name */
    public static DocumentFile m9328class(Context context, Uri uri, String... strArr) {
        return m9335final("content".equals(uri.getScheme()) ? DocumentFile.fromTreeUri(context, uri) : DocumentFile.fromFile(new File(uri.getPath())), strArr);
    }

    /* renamed from: const, reason: not valid java name */
    public static DocumentFile m9329const(Context context, String str, String... strArr) {
        return m9328class(context, str.startsWith("content") ? Uri.parse(str) : Uri.parse(Uri.decode(str)), strArr);
    }

    /* renamed from: continue, reason: not valid java name */
    public static byte[] m9330continue(Context context, String str, DocumentFile documentFile, String... strArr) {
        DocumentFile documentFileFindFile;
        DocumentFile documentFileM9335final = m9335final(documentFile, strArr);
        if (documentFileM9335final == null || (documentFileFindFile = documentFileM9335final.findFile(m9327catch(Uri.decode(str)))) == null) {
            return null;
        }
        return m9346package(context, documentFileFindFile.getUri());
    }

    /* renamed from: default, reason: not valid java name */
    public static boolean m9331default(Context context, String str, Uri uri, String... strArr) {
        return m9336finally(str, "content".equals(uri.getScheme()) ? DocumentFile.fromTreeUri(context, uri) : DocumentFile.fromFile(new File(uri.getPath())), strArr);
    }

    /* renamed from: do, reason: not valid java name */
    public static DocumentFile m9332do(Context context, Uri uri, String... strArr) {
        return m9337for("content".equals(uri.getScheme()) ? DocumentFile.fromTreeUri(context, uri) : DocumentFile.fromFile(new File(uri.getPath())), strArr);
    }

    /* renamed from: else, reason: not valid java name */
    public static DocumentFile m9333else(Context context, String str, String str2, String... strArr) {
        return m9360try(context, "", str, str2.startsWith("content") ? Uri.parse(str2) : Uri.parse(Uri.decode(str2)), strArr);
    }

    /* renamed from: extends, reason: not valid java name */
    public static boolean m9334extends(Context context, String str, String str2, String... strArr) {
        return m9331default(context, str, str2.startsWith("content") ? Uri.parse(str2) : Uri.parse(Uri.decode(str2)), strArr);
    }

    /* renamed from: final, reason: not valid java name */
    public static DocumentFile m9335final(DocumentFile documentFile, String... strArr) {
        for (String str : strArr) {
            documentFile = documentFile.findFile(Uri.decode(str));
            if (documentFile == null) {
                return null;
            }
        }
        return documentFile;
    }

    /* renamed from: finally, reason: not valid java name */
    public static boolean m9336finally(String str, DocumentFile documentFile, String... strArr) {
        DocumentFile documentFileFindFile;
        DocumentFile documentFileM9335final = m9335final(documentFile, strArr);
        return (documentFileM9335final == null || (documentFileFindFile = documentFileM9335final.findFile(m9327catch(Uri.decode(str)))) == null || !documentFileFindFile.exists()) ? false : true;
    }

    /* renamed from: for, reason: not valid java name */
    public static DocumentFile m9337for(DocumentFile documentFile, String... strArr) {
        for (String str : strArr) {
            try {
                String strM9327catch = m9327catch(Uri.decode(str));
                DocumentFile documentFileFindFile = documentFile.findFile(strM9327catch);
                documentFile = documentFileFindFile == null ? documentFile.createDirectory(strM9327catch) : documentFileFindFile;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        return documentFile;
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m9338goto(Context context, String str, Uri uri, String... strArr) {
        return m9325break(str, "content".equals(uri.getScheme()) ? DocumentFile.fromTreeUri(context, uri) : DocumentFile.fromFile(new File(uri.getPath())), strArr);
    }

    /* renamed from: if, reason: not valid java name */
    public static DocumentFile m9339if(Context context, String str, String... strArr) {
        return m9332do(context, str.startsWith("content") ? Uri.parse(str) : Uri.parse(Uri.decode(str)), strArr);
    }

    /* renamed from: implements, reason: not valid java name */
    public static boolean m9340implements(Context context, byte[] bArr, String str, String str2, String... strArr) {
        DocumentFile documentFileM9329const = m9329const(context, str2, strArr);
        if (documentFileM9329const == null) {
            return false;
        }
        return m9361volatile(context, bArr, documentFileM9329const.findFile(str).getUri());
    }

    /* renamed from: import, reason: not valid java name */
    public static InputStream m9341import(Context context, String str, DocumentFile documentFile, String... strArr) {
        DocumentFile documentFileFindFile;
        DocumentFile documentFileM9335final = m9335final(documentFile, strArr);
        if (documentFileM9335final == null || (documentFileFindFile = documentFileM9335final.findFile(str)) == null) {
            return null;
        }
        return m9353super(context, documentFileFindFile.getUri());
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static boolean m9342instanceof(Context context, InputStream inputStream, Uri uri) throws IOException {
        try {
            OutputStream outputStreamOpenOutputStream = context.getContentResolver().openOutputStream(uri);
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStream.read(bArr);
                if (i <= 0) {
                    inputStream.close();
                    outputStreamOpenOutputStream.close();
                    return true;
                }
                outputStreamOpenOutputStream.write(bArr, 0, i);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public static boolean m9343interface(Context context, byte[] bArr, DocumentFile documentFile) {
        return m9361volatile(context, bArr, documentFile.getUri());
    }

    /* renamed from: native, reason: not valid java name */
    public static InputStream m9344native(Context context, String str, String str2, String... strArr) {
        DocumentFile documentFileFindFile;
        DocumentFile documentFileM9329const = m9329const(context, str2, strArr);
        if (documentFileM9329const == null || (documentFileFindFile = documentFileM9329const.findFile(str)) == null) {
            return null;
        }
        return m9353super(context, documentFileFindFile.getUri());
    }

    /* renamed from: new, reason: not valid java name */
    public static DocumentFile m9345new(Context context, String str, Uri uri, String... strArr) {
        return m9360try(context, "", str, uri, strArr);
    }

    /* renamed from: package, reason: not valid java name */
    public static byte[] m9346package(Context context, Uri uri) throws IOException {
        try {
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            byte[] bArr = new byte[inputStreamOpenInputStream.available()];
            inputStreamOpenInputStream.read(bArr);
            inputStreamOpenInputStream.close();
            return bArr;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: private, reason: not valid java name */
    public static byte[] m9347private(Context context, DocumentFile documentFile) {
        if (documentFile == null) {
            return null;
        }
        return m9346package(context, documentFile.getUri());
    }

    /* renamed from: protected, reason: not valid java name */
    public static boolean m9348protected(Context context, byte[] bArr, String str, Uri uri, String... strArr) {
        DocumentFile documentFileM9328class = m9328class(context, uri, strArr);
        if (documentFileM9328class == null) {
            return false;
        }
        return m9361volatile(context, bArr, documentFileM9328class.findFile(m9327catch(Uri.decode(str))).getUri());
    }

    /* renamed from: public, reason: not valid java name */
    public static OutputStream m9349public(Context context, Uri uri) {
        try {
            return context.getContentResolver().openOutputStream(uri);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static OutputStream m9350return(Context context, DocumentFile documentFile) {
        return m9349public(context, documentFile.getUri());
    }

    /* renamed from: static, reason: not valid java name */
    public static OutputStream m9351static(Context context, String str, Uri uri, String... strArr) {
        DocumentFile documentFileFindFile;
        DocumentFile documentFileM9328class = m9328class(context, uri, strArr);
        if (documentFileM9328class == null || (documentFileFindFile = documentFileM9328class.findFile(str)) == null) {
            return null;
        }
        return m9349public(context, documentFileFindFile.getUri());
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static byte[] m9352strictfp(Context context, String str, String str2, String... strArr) {
        DocumentFile documentFileFindFile;
        DocumentFile documentFileM9329const = m9329const(context, str2, strArr);
        if (documentFileM9329const == null || (documentFileFindFile = documentFileM9329const.findFile(str)) == null) {
            return null;
        }
        return m9346package(context, documentFileFindFile.getUri());
    }

    /* renamed from: super, reason: not valid java name */
    public static InputStream m9353super(Context context, Uri uri) {
        try {
            return context.getContentResolver().openInputStream(uri);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public static OutputStream m9354switch(Context context, String str, DocumentFile documentFile, String... strArr) {
        DocumentFile documentFileFindFile;
        DocumentFile documentFileM9335final = m9335final(documentFile, strArr);
        if (documentFileM9335final == null || (documentFileFindFile = documentFileM9335final.findFile(str)) == null) {
            return null;
        }
        return m9349public(context, documentFileFindFile.getUri());
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static boolean m9355synchronized(Context context, InputStream inputStream, DocumentFile documentFile) {
        return m9342instanceof(context, inputStream, documentFile.getUri());
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m9356this(Context context, String str, String str2, String... strArr) {
        return m9338goto(context, str, str2.startsWith("content") ? Uri.parse(str2) : Uri.parse(Uri.decode(str2)), strArr);
    }

    /* renamed from: throw, reason: not valid java name */
    public static InputStream m9357throw(Context context, DocumentFile documentFile) {
        return m9353super(context, documentFile.getUri());
    }

    /* renamed from: throws, reason: not valid java name */
    public static OutputStream m9358throws(Context context, String str, String str2, String... strArr) {
        DocumentFile documentFileFindFile;
        DocumentFile documentFileM9329const = m9329const(context, str2, strArr);
        if (documentFileM9329const == null || (documentFileFindFile = documentFileM9329const.findFile(str)) == null) {
            return null;
        }
        return m9349public(context, documentFileFindFile.getUri());
    }

    /* renamed from: transient, reason: not valid java name */
    public static boolean m9359transient(Context context, byte[] bArr, String str, DocumentFile documentFile, String... strArr) {
        DocumentFile documentFileM9335final = m9335final(documentFile, strArr);
        if (documentFileM9335final == null) {
            return false;
        }
        return m9361volatile(context, bArr, documentFileM9335final.findFile(m9327catch(Uri.decode(str))).getUri());
    }

    /* renamed from: try, reason: not valid java name */
    public static DocumentFile m9360try(Context context, String str, String str2, Uri uri, String... strArr) {
        DocumentFile documentFileM9332do = m9332do(context, uri, strArr);
        if (documentFileM9332do == null) {
            return null;
        }
        String strM9327catch = m9327catch(Uri.decode(str2));
        DocumentFile documentFileFindFile = documentFileM9332do.findFile(strM9327catch);
        return documentFileFindFile == null ? documentFileM9332do.createFile(str, strM9327catch) : documentFileFindFile;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static boolean m9361volatile(Context context, byte[] bArr, Uri uri) throws IOException {
        try {
            OutputStream outputStreamOpenOutputStream = context.getContentResolver().openOutputStream(uri);
            outputStreamOpenOutputStream.write(bArr);
            outputStreamOpenOutputStream.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static InputStream m9362while(Context context, String str, Uri uri, String... strArr) {
        DocumentFile documentFileFindFile;
        DocumentFile documentFileM9328class = m9328class(context, uri, strArr);
        if (documentFileM9328class == null || (documentFileFindFile = documentFileM9328class.findFile(m9327catch(Uri.decode(str)))) == null) {
            return null;
        }
        return m9353super(context, documentFileFindFile.getUri());
    }
}
