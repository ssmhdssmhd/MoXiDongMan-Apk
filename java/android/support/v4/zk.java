package android.support.v4;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import org.mozilla.intl.chardet.nsICharsetDetectionObserver;

/* loaded from: classes2.dex */
public class zk {

    /* renamed from: do, reason: not valid java name */
    private static boolean f8581do = false;

    /* renamed from: for, reason: not valid java name */
    private static final String f8582for = "UTF-8";

    /* renamed from: if, reason: not valid java name */
    private static String f8583if;

    private zk() {
    }

    /* renamed from: for, reason: not valid java name */
    public static String m10223for(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return "UTF-8";
        }
        dm2 dm2Var = new dm2();
        dm2Var.Init(new nsICharsetDetectionObserver() { // from class: android.support.v4.yk
            @Override // org.mozilla.intl.chardet.nsICharsetDetectionObserver
            public final void Notify(String str) {
                zk.m10226try(str);
            }
        });
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        byte[] bArr = new byte[1024];
        boolean zM1440this = true;
        boolean zDoIt = false;
        while (true) {
            try {
                int i = bufferedInputStream.read(bArr, 0, 1024);
                if (i == -1) {
                    break;
                }
                if (zM1440this) {
                    zM1440this = dm2Var.m1440this(bArr, i);
                }
                if (!zM1440this && !zDoIt) {
                    zDoIt = dm2Var.DoIt(bArr, i, false);
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        dm2Var.m6122do();
        if (f8581do) {
            return f8583if;
        }
        if (zM1440this) {
            return "UTF-8";
        }
        String[] strArrM6123else = dm2Var.m6123else();
        return (strArrM6123else.length <= 0 || Objects.equals(strArrM6123else[0], "nomatch")) ? "UTF-8" : strArrM6123else[0];
    }

    /* renamed from: if, reason: not valid java name */
    public static String m10224if(File file) {
        try {
            return m10223for(new FileInputStream(file));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return "UTF-8";
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static String m10225new(String str) {
        return m10224if(new File(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public static /* synthetic */ void m10226try(String str) {
        f8581do = true;
        f8583if = str;
    }
}
