package android.support.v4;

import android.content.Intent;
import android.net.Uri;
import fi.iki.elonen.NanoHTTPD;
import java.io.File;

/* loaded from: classes2.dex */
public class s1 {
    /* renamed from: break, reason: not valid java name */
    public static Intent m7221break(String str, boolean z) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        if (z) {
            intent.setDataAndType(Uri.parse(str), NanoHTTPD.MIME_PLAINTEXT);
        } else {
            intent.setDataAndType(Uri.fromFile(new File(str)), NanoHTTPD.MIME_PLAINTEXT);
        }
        return intent;
    }

    /* renamed from: case, reason: not valid java name */
    public static Intent m7222case(String str) {
        Uri uriBuild = Uri.parse(str).buildUpon().encodedAuthority("com.android.htmlfileprovider").scheme("content").encodedPath(str).build();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(uriBuild, NanoHTTPD.MIME_HTML);
        return intent;
    }

    /* renamed from: catch, reason: not valid java name */
    public static Intent m7223catch(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(67108864);
        intent.putExtra("oneshot", 0);
        intent.putExtra("configchange", 0);
        intent.setDataAndType(Uri.fromFile(new File(str)), "video/*");
        return intent;
    }

    /* renamed from: class, reason: not valid java name */
    public static Intent m7224class(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/msword");
        return intent;
    }

    /* renamed from: const, reason: not valid java name */
    public static Intent m7225const(String str) {
        File file = new File(str);
        if (!file.exists()) {
            return null;
        }
        String lowerCase = file.getName().substring(file.getName().lastIndexOf(".") + 1, file.getName().length()).toLowerCase();
        return (lowerCase.equals("m4a") || lowerCase.equals("mp3") || lowerCase.equals("mid") || lowerCase.equals("xmf") || lowerCase.equals("ogg") || lowerCase.equals("wav")) ? m7228for(str) : (lowerCase.equals("3gp") || lowerCase.equals("mp4")) ? m7228for(str) : (lowerCase.equals("jpg") || lowerCase.equals("gif") || lowerCase.equals("png") || lowerCase.equals("jpeg") || lowerCase.equals("bmp")) ? m7227else(str) : lowerCase.equals("apk") ? m7230if(str) : lowerCase.equals("ppt") ? m7232this(str) : lowerCase.equals("xls") ? m7233try(str) : lowerCase.equals("doc") ? m7224class(str) : lowerCase.equals("pdf") ? m7229goto(str) : lowerCase.equals("chm") ? m7231new(str) : lowerCase.equals("txt") ? m7221break(str, false) : m7226do(str);
    }

    /* renamed from: do, reason: not valid java name */
    public static Intent m7226do(String str) {
        Intent intent = new Intent();
        intent.addFlags(268435456);
        intent.setAction("android.intent.action.VIEW");
        intent.setDataAndType(Uri.fromFile(new File(str)), "*/*");
        return intent;
    }

    /* renamed from: else, reason: not valid java name */
    public static Intent m7227else(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "image/*");
        return intent;
    }

    /* renamed from: for, reason: not valid java name */
    public static Intent m7228for(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(67108864);
        intent.putExtra("oneshot", 0);
        intent.putExtra("configchange", 0);
        intent.setDataAndType(Uri.fromFile(new File(str)), "audio/*");
        return intent;
    }

    /* renamed from: goto, reason: not valid java name */
    public static Intent m7229goto(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/pdf");
        return intent;
    }

    /* renamed from: if, reason: not valid java name */
    public static Intent m7230if(String str) {
        Intent intent = new Intent();
        intent.addFlags(268435456);
        intent.setAction("android.intent.action.VIEW");
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.android.package-archive");
        return intent;
    }

    /* renamed from: new, reason: not valid java name */
    public static Intent m7231new(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/x-chm");
        return intent;
    }

    /* renamed from: this, reason: not valid java name */
    public static Intent m7232this(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.ms-powerpoint");
        return intent;
    }

    /* renamed from: try, reason: not valid java name */
    public static Intent m7233try(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.ms-excel");
        return intent;
    }
}
