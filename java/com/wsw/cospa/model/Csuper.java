package com.wsw.cospa.model;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.support.v4.l22;
import android.support.v4.v02;
import android.support.v4.wq;
import android.text.TextUtils;
import com.wsw.cospa.bean.ComicContentImgBean;
import com.wsw.cospa.utils.Cswitch;
import com.wsw.cospa.utils.DocumentFile;
import io.reactivex.Cnew;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.wsw.cospa.model.super, reason: invalid class name */
/* loaded from: classes.dex */
public class Csuper {

    /* renamed from: do, reason: not valid java name */
    private static String f22398do = "download";

    /* renamed from: for, reason: not valid java name */
    private static String f22399for = "backup";

    /* renamed from: if, reason: not valid java name */
    private static String f22400if = "picture";

    /* renamed from: com.wsw.cospa.model.super$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cdo implements ObservableOnSubscribe<String> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ DocumentFile f22401do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ ContentResolver f22402for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ DocumentFile f22403if;

        public Cdo(DocumentFile documentFile, DocumentFile documentFile2, ContentResolver contentResolver) {
            this.f22401do = documentFile;
            this.f22403if = documentFile2;
            this.f22402for = contentResolver;
        }

        @Override // io.reactivex.ObservableOnSubscribe
        public void subscribe(ObservableEmitter<String> observableEmitter) throws Exception {
            if (this.f22401do.mo26656do() && !Csuper.m26462const(this.f22403if, this.f22401do)) {
                this.f22403if.mo26668switch();
                if (Csuper.m26471this(this.f22402for, this.f22403if, this.f22401do, Csuper.f22399for, observableEmitter) && Csuper.m26471this(this.f22402for, this.f22403if, this.f22401do, Csuper.f22398do, observableEmitter) && Csuper.m26471this(this.f22402for, this.f22403if, this.f22401do, Csuper.f22400if, observableEmitter)) {
                    Csuper.m26460catch(this.f22403if, Csuper.f22399for, observableEmitter);
                    Csuper.m26460catch(this.f22403if, Csuper.f22398do, observableEmitter);
                    Csuper.m26460catch(this.f22403if, Csuper.f22400if, observableEmitter);
                    observableEmitter.onComplete();
                }
            }
            observableEmitter.onError(new Exception());
        }
    }

    /* renamed from: com.wsw.cospa.model.super$if, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cif implements ObservableOnSubscribe<Uri> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ DocumentFile f22404do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ ContentResolver f22405for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ String f22406if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ InputStream f22407new;

        public Cif(DocumentFile documentFile, String str, ContentResolver contentResolver, InputStream inputStream) {
            this.f22404do = documentFile;
            this.f22406if = str;
            this.f22405for = contentResolver;
            this.f22407new = inputStream;
        }

        @Override // io.reactivex.ObservableOnSubscribe
        public void subscribe(ObservableEmitter<Uri> observableEmitter) throws Exception {
            try {
                DocumentFile documentFileM27094try = Cswitch.m27094try(this.f22404do, Csuper.f22400if);
                if (documentFileM27094try != null) {
                    DocumentFile documentFileM27092new = Cswitch.m27092new(documentFileM27094try, this.f22406if);
                    Cswitch.m27083break(this.f22405for, documentFileM27092new, this.f22407new);
                    observableEmitter.onNext(documentFileM27092new.mo26658final());
                    observableEmitter.onComplete();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            observableEmitter.onError(new Exception());
        }
    }

    /* renamed from: break, reason: not valid java name */
    private static boolean m26458break(ContentResolver contentResolver, DocumentFile documentFile, DocumentFile documentFile2, ObservableEmitter<String> observableEmitter) {
        DocumentFile documentFileM27092new = Cswitch.m27092new(documentFile2, documentFile.mo26653catch());
        if (documentFileM27092new != null) {
            observableEmitter.onNext(l22.m4553case("正在移动 %s...", documentFile.mo26658final().getLastPathSegment()));
            try {
                Cswitch.m27093this(contentResolver, documentFile, documentFileM27092new);
                return true;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public static void m26460catch(DocumentFile documentFile, String str, ObservableEmitter<String> observableEmitter) {
        DocumentFile documentFileMo26657else = documentFile.mo26657else(str);
        if (documentFileMo26657else == null || !documentFileMo26657else.mo26667super()) {
            return;
        }
        observableEmitter.onNext(l22.m4553case("正在删除 %s", documentFileMo26657else.mo26658final().getLastPathSegment()));
        documentFileMo26657else.mo26671try();
    }

    /* renamed from: class, reason: not valid java name */
    public static DocumentFile m26461class(Context context, String str) {
        if (str == null) {
            String strM8719try = v02.m8711if(context).m8719try(wq.f7610finally, "");
            File file = new File(strM8719try);
            if (TextUtils.isEmpty(strM8719try)) {
                file = new File(wq.f7618native);
            }
            if (!file.exists()) {
                file.mkdirs();
            }
            return DocumentFile.m26650goto(file);
        }
        if (str.startsWith("content")) {
            return DocumentFile.m26649break(context, Uri.parse(str));
        }
        if (str.startsWith("file")) {
            return DocumentFile.m26650goto(new File(Uri.parse(str).getPath()));
        }
        File file2 = new File(str);
        if (file2.exists()) {
            return DocumentFile.m26650goto(file2);
        }
        file2.mkdirs();
        return DocumentFile.m26650goto(file2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: const, reason: not valid java name */
    public static boolean m26462const(DocumentFile documentFile, DocumentFile documentFile2) {
        return (documentFile.mo26658final().getScheme().equals("file") && documentFile2.mo26658final().getPath().endsWith("primary:Cimoc")) || documentFile.mo26658final().getPath().equals(documentFile2.mo26658final().getPath());
    }

    /* renamed from: else, reason: not valid java name */
    public static List<ComicContentImgBean> m26464else(List<DocumentFile> list, String str) {
        ArrayList arrayList = new ArrayList(list.size());
        int i = 0;
        for (DocumentFile documentFile : list) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            try {
                BitmapFactory.decodeStream(documentFile.mo26666static(), null, options);
                String string = documentFile.mo26658final().toString();
                string.startsWith("file");
                i++;
                ComicContentImgBean comicContentImgBean = new ComicContentImgBean();
                comicContentImgBean.setImgurl(string);
                comicContentImgBean.setIndexPape(1);
                comicContentImgBean.setMaxPage(i);
                arrayList.add(comicContentImgBean);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return arrayList;
    }

    /* renamed from: final, reason: not valid java name */
    public static Cnew<String> m26465final(ContentResolver contentResolver, DocumentFile documentFile, DocumentFile documentFile2) {
        return Cnew.create(new Cdo(documentFile2, documentFile, contentResolver)).subscribeOn(io.reactivex.schedulers.Cdo.m29772new());
    }

    /* renamed from: goto, reason: not valid java name */
    private static boolean m26467goto(ContentResolver contentResolver, DocumentFile documentFile, DocumentFile documentFile2, ObservableEmitter<String> observableEmitter) {
        if (!documentFile.mo26667super()) {
            return true;
        }
        DocumentFile documentFileM27094try = Cswitch.m27094try(documentFile2, documentFile.mo26653catch());
        for (DocumentFile documentFile3 : documentFile.mo26664public()) {
            if (documentFile3.mo26667super()) {
                if (!m26467goto(contentResolver, documentFile3, documentFileM27094try, observableEmitter)) {
                    return false;
                }
            } else if (!m26458break(contentResolver, documentFile3, documentFileM27094try, observableEmitter)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: super, reason: not valid java name */
    public static Cnew<Uri> m26470super(ContentResolver contentResolver, DocumentFile documentFile, InputStream inputStream, String str) {
        return Cnew.create(new Cif(documentFile, str, contentResolver, inputStream));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public static boolean m26471this(ContentResolver contentResolver, DocumentFile documentFile, DocumentFile documentFile2, String str, ObservableEmitter<String> observableEmitter) {
        DocumentFile documentFileMo26657else = documentFile.mo26657else(str);
        if (documentFileMo26657else == null || !documentFileMo26657else.mo26667super()) {
            return true;
        }
        return m26467goto(contentResolver, documentFileMo26657else, documentFile2, observableEmitter);
    }
}
