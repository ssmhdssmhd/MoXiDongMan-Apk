package com.wsw.cospa.utils;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import androidx.annotation.RequiresApi;
import com.wsw.cospa.utils.DocumentFile;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@RequiresApi(21)
@TargetApi(21)
/* loaded from: classes2.dex */
class a extends DocumentFile {

    /* renamed from: case, reason: not valid java name */
    private Map<String, DocumentFile> f22530case;

    /* renamed from: for, reason: not valid java name */
    private Uri f22531for;

    /* renamed from: if, reason: not valid java name */
    private Context f22532if;

    /* renamed from: new, reason: not valid java name */
    private String f22533new;

    /* renamed from: try, reason: not valid java name */
    private String f22534try;

    private a(DocumentFile documentFile, Context context, Uri uri, String str, String str2) {
        super(documentFile);
        this.f22532if = context;
        this.f22531for = uri;
        this.f22533new = str;
        this.f22534try = str2;
    }

    /* renamed from: default, reason: not valid java name */
    private boolean m26673default() throws Exception {
        if (!mo26667super()) {
            return false;
        }
        if (this.f22530case != null) {
            return true;
        }
        m26675finally();
        return true;
    }

    /* renamed from: extends, reason: not valid java name */
    private static void m26674extends(AutoCloseable autoCloseable) throws Exception {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: finally, reason: not valid java name */
    private void m26675finally() throws Exception {
        this.f22530case = new HashMap();
        ContentResolver contentResolver = this.f22532if.getContentResolver();
        Uri uri = this.f22531for;
        Uri uriBuildChildDocumentsUriUsingTree = DocumentsContract.buildChildDocumentsUriUsingTree(uri, DocumentsContract.getDocumentId(uri));
        Cursor cursorQuery = null;
        try {
            cursorQuery = contentResolver.query(uriBuildChildDocumentsUriUsingTree, new String[]{"document_id", "_display_name", "mime_type"}, null, null, null);
            while (cursorQuery.moveToNext()) {
                Uri uriBuildDocumentUriUsingTree = DocumentsContract.buildDocumentUriUsingTree(this.f22531for, cursorQuery.getString(0));
                String string = cursorQuery.getString(1);
                this.f22530case.put(string, new a(this, this.f22532if, uriBuildDocumentUriUsingTree, string, cursorQuery.getString(2)));
            }
        } finally {
            m26674extends(cursorQuery);
        }
    }

    /* renamed from: package, reason: not valid java name */
    private void m26676package() throws Exception {
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = this.f22532if.getContentResolver().query(this.f22531for, new String[]{"_display_name", "mime_type"}, null, null, null);
                if (cursorQuery != null && cursorQuery.moveToNext()) {
                    this.f22533new = cursorQuery.getString(0);
                    this.f22534try = cursorQuery.getString(1);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            m26674extends(cursorQuery);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: case */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean mo26652case() throws Exception {
        boolean z;
        Cursor cursorQuery = null;
        try {
            cursorQuery = this.f22532if.getContentResolver().query(this.f22531for, new String[]{"document_id"}, null, null, null);
            if (cursorQuery != null) {
                z = cursorQuery.getCount() > 0;
            }
            return z;
        } finally {
            m26674extends(cursorQuery);
        }
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: catch */
    public String mo26653catch() {
        return this.f22533new;
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: const */
    public String mo26655const() {
        return this.f22534try;
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: do */
    public boolean mo26656do() {
        return this.f22532if.checkCallingOrSelfUriPermission(this.f22531for, 1) == 0;
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: else */
    public DocumentFile mo26657else(String str) {
        if (m26673default()) {
            return this.f22530case.get(str);
        }
        return null;
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: final */
    public Uri mo26658final() {
        return this.f22531for;
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: for */
    public DocumentFile mo26659for(String str) throws FileNotFoundException {
        DocumentFile documentFileMo26657else;
        if (!m26673default() || (documentFileMo26657else = mo26657else(str)) != null) {
            return null;
        }
        try {
            Uri uriCreateDocument = DocumentsContract.createDocument(this.f22532if.getContentResolver(), this.f22531for, "vnd.android.document/directory", str);
            if (uriCreateDocument == null) {
                return documentFileMo26657else;
            }
            a aVar = new a(this, this.f22532if, uriCreateDocument, str, "vnd.android.document/directory");
            try {
                this.f22530case.put(str, aVar);
            } catch (FileNotFoundException unused) {
            }
            return aVar;
        } catch (FileNotFoundException unused2) {
            return documentFileMo26657else;
        }
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: if */
    public boolean mo26660if() {
        return this.f22532if.checkCallingOrSelfUriPermission(this.f22531for, 2) == 0;
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: native */
    public List<DocumentFile> mo26662native(DocumentFile.DocumentFileFilter documentFileFilter, Comparator<? super DocumentFile> comparator) {
        if (!m26673default()) {
            return new ArrayList();
        }
        Iterator<Map.Entry<String, DocumentFile>> it = this.f22530case.entrySet().iterator();
        ArrayList arrayList = new ArrayList(this.f22530case.size());
        while (it.hasNext()) {
            DocumentFile value = it.next().getValue();
            if (documentFileFilter == null || documentFileFilter.call(value)) {
                arrayList.add(value);
            }
        }
        if (comparator != null) {
            Collections.sort(arrayList, comparator);
        }
        return arrayList;
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: new */
    public DocumentFile mo26663new(String str) throws FileNotFoundException {
        DocumentFile documentFileMo26657else;
        if (!m26673default() || (documentFileMo26657else = mo26657else(str)) != null) {
            return null;
        }
        try {
            Uri uriCreateDocument = DocumentsContract.createDocument(this.f22532if.getContentResolver(), this.f22531for, null, str);
            if (uriCreateDocument == null) {
                return documentFileMo26657else;
            }
            a aVar = new a(this, this.f22532if, uriCreateDocument, str, null);
            try {
                this.f22530case.put(str, aVar);
            } catch (FileNotFoundException unused) {
            }
            return aVar;
        } catch (FileNotFoundException unused2) {
            return documentFileMo26657else;
        }
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: public */
    public DocumentFile[] mo26664public() {
        if (!m26673default()) {
            return new DocumentFile[0];
        }
        int size = this.f22530case.size();
        Iterator<Map.Entry<String, DocumentFile>> it = this.f22530case.entrySet().iterator();
        DocumentFile[] documentFileArr = new DocumentFile[size];
        for (int i = 0; i != size; i++) {
            documentFileArr[i] = it.next().getValue();
        }
        return documentFileArr;
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: static */
    public InputStream mo26666static() throws FileNotFoundException {
        return this.f22532if.getContentResolver().openInputStream(this.f22531for);
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: super */
    public boolean mo26667super() {
        return "vnd.android.document/directory".equals(this.f22534try);
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: switch */
    public void mo26668switch() throws Exception {
        Map<String, DocumentFile> map = this.f22530case;
        if (map != null) {
            map.clear();
            m26675finally();
        }
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: throw */
    public boolean mo26669throw() {
        return !mo26667super();
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: throws */
    public boolean mo26670throws(String str) throws FileNotFoundException {
        try {
            Uri uriRenameDocument = DocumentsContract.renameDocument(this.f22532if.getContentResolver(), this.f22531for, str);
            if (uriRenameDocument == null) {
                return false;
            }
            this.f22531for = uriRenameDocument;
            return true;
        } catch (FileNotFoundException unused) {
            return false;
        }
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: try */
    public boolean mo26671try() {
        try {
            if (!DocumentsContract.deleteDocument(this.f22532if.getContentResolver(), this.f22531for)) {
                return false;
            }
            ((a) m26654class()).f22530case.remove(this.f22533new);
            return true;
        } catch (FileNotFoundException unused) {
            return false;
        }
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: while */
    public long mo26672while() throws Exception {
        Cursor cursorQuery = null;
        try {
            cursorQuery = this.f22532if.getContentResolver().query(this.f22531for, new String[]{"_size"}, null, null, null);
            if (!cursorQuery.moveToFirst() || cursorQuery.isNull(0)) {
                return 0L;
            }
            return cursorQuery.getLong(0);
        } catch (Exception e) {
            e.printStackTrace();
            return 0L;
        } finally {
            m26674extends(cursorQuery);
        }
    }

    public a(DocumentFile documentFile, Context context, Uri uri) throws Exception {
        super(documentFile);
        this.f22532if = context;
        this.f22531for = uri;
        m26676package();
    }
}
