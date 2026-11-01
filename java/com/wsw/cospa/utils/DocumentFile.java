package com.wsw.cospa.utils;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.provider.DocumentsContract;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class DocumentFile {

    /* renamed from: do, reason: not valid java name */
    private final DocumentFile f22525do;

    /* loaded from: classes2.dex */
    public interface DocumentFileFilter {
        boolean call(DocumentFile documentFile);
    }

    public DocumentFile(DocumentFile documentFile) {
        this.f22525do = documentFile;
    }

    /* renamed from: break, reason: not valid java name */
    public static DocumentFile m26649break(Context context, Uri uri) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new a(null, context, DocumentsContract.buildDocumentUriUsingTree(uri, DocumentsContract.getTreeDocumentId(uri)));
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    public static DocumentFile m26650goto(File file) {
        return new Cprotected(null, file);
    }

    /* renamed from: this, reason: not valid java name */
    public static DocumentFile m26651this(Context context, Uri uri) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new a(null, context, uri);
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public abstract boolean mo26652case();

    /* renamed from: catch, reason: not valid java name */
    public abstract String mo26653catch();

    /* renamed from: class, reason: not valid java name */
    public DocumentFile m26654class() {
        return this.f22525do;
    }

    /* renamed from: const, reason: not valid java name */
    public abstract String mo26655const();

    /* renamed from: do, reason: not valid java name */
    public abstract boolean mo26656do();

    /* renamed from: else, reason: not valid java name */
    public abstract DocumentFile mo26657else(String str);

    /* renamed from: final, reason: not valid java name */
    public abstract Uri mo26658final();

    /* renamed from: for, reason: not valid java name */
    public abstract DocumentFile mo26659for(String str);

    /* renamed from: if, reason: not valid java name */
    public abstract boolean mo26660if();

    /* renamed from: import, reason: not valid java name */
    public List<DocumentFile> m26661import(DocumentFileFilter documentFileFilter) {
        return mo26662native(documentFileFilter, null);
    }

    /* renamed from: native, reason: not valid java name */
    public abstract List<DocumentFile> mo26662native(DocumentFileFilter documentFileFilter, Comparator<? super DocumentFile> comparator);

    /* renamed from: new, reason: not valid java name */
    public abstract DocumentFile mo26663new(String str);

    /* renamed from: public, reason: not valid java name */
    public abstract DocumentFile[] mo26664public();

    /* renamed from: return, reason: not valid java name */
    public DocumentFile[] m26665return(Comparator<? super DocumentFile> comparator) {
        DocumentFile[] documentFileArrMo26664public = mo26664public();
        Arrays.sort(documentFileArrMo26664public, comparator);
        return documentFileArrMo26664public;
    }

    /* renamed from: static, reason: not valid java name */
    public abstract InputStream mo26666static() throws FileNotFoundException;

    /* renamed from: super, reason: not valid java name */
    public abstract boolean mo26667super();

    /* renamed from: switch, reason: not valid java name */
    public abstract void mo26668switch();

    /* renamed from: throw, reason: not valid java name */
    public abstract boolean mo26669throw();

    /* renamed from: throws, reason: not valid java name */
    public abstract boolean mo26670throws(String str);

    /* renamed from: try, reason: not valid java name */
    public abstract boolean mo26671try();

    /* renamed from: while, reason: not valid java name */
    public abstract long mo26672while();
}
