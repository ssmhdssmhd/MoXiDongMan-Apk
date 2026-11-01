package com.wsw.cospa.utils;

import android.net.Uri;
import android.webkit.MimeTypeMap;
import com.wsw.cospa.utils.DocumentFile;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* renamed from: com.wsw.cospa.utils.protected, reason: invalid class name */
/* loaded from: classes2.dex */
class Cprotected extends DocumentFile {

    /* renamed from: if, reason: not valid java name */
    private File f22711if;

    public Cprotected(DocumentFile documentFile, File file) {
        super(documentFile);
        this.f22711if = file;
    }

    /* renamed from: default, reason: not valid java name */
    private static boolean m27026default(File file) {
        File[] fileArrListFiles = file.listFiles();
        boolean zM27026default = true;
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    zM27026default &= m27026default(file2);
                }
                if (!file2.delete()) {
                    zM27026default = false;
                }
            }
        }
        return zM27026default;
    }

    /* renamed from: extends, reason: not valid java name */
    private static String m27027extends(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf < 0) {
            return "application/octet-stream";
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str.substring(iLastIndexOf + 1).toLowerCase());
        return mimeTypeFromExtension != null ? mimeTypeFromExtension : "application/octet-stream";
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: case */
    public boolean mo26652case() {
        return this.f22711if.exists();
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: catch */
    public String mo26653catch() {
        return this.f22711if.getName();
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: const */
    public String mo26655const() {
        if (this.f22711if.isDirectory()) {
            return null;
        }
        return m27027extends(this.f22711if.getName());
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: do */
    public boolean mo26656do() {
        return this.f22711if.canRead();
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: else */
    public DocumentFile mo26657else(String str) {
        try {
            for (DocumentFile documentFile : mo26664public()) {
                if (str.equals(documentFile.mo26653catch())) {
                    return documentFile;
                }
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: final */
    public Uri mo26658final() {
        return Uri.fromFile(this.f22711if);
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: for */
    public DocumentFile mo26659for(String str) {
        File file = new File(this.f22711if, str);
        if (file.isDirectory() || file.mkdirs()) {
            return new Cprotected(this, file);
        }
        return null;
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: if */
    public boolean mo26660if() {
        return this.f22711if.canWrite();
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: native */
    public List<DocumentFile> mo26662native(DocumentFile.DocumentFileFilter documentFileFilter, Comparator<? super DocumentFile> comparator) {
        ArrayList arrayList = new ArrayList();
        File[] fileArrListFiles = this.f22711if.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                Cprotected cprotected = new Cprotected(this, file);
                if (documentFileFilter == null || documentFileFilter.call(cprotected)) {
                    arrayList.add(cprotected);
                }
            }
        }
        if (comparator != null) {
            Collections.sort(arrayList, comparator);
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0012, code lost:
    
        if (r0.createNewFile() == false) goto L7;
     */
    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: new */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public DocumentFile mo26663new(String str) {
        File file = new File(this.f22711if, str);
        if (!file.exists()) {
        }
        return new Cprotected(this, file);
        return null;
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: public */
    public DocumentFile[] mo26664public() {
        File[] fileArrListFiles = this.f22711if.listFiles();
        int i = 0;
        if (fileArrListFiles != null && fileArrListFiles.length > 0) {
            DocumentFile[] documentFileArr = new DocumentFile[fileArrListFiles.length];
            while (i < fileArrListFiles.length) {
                documentFileArr[i] = new Cprotected(this, fileArrListFiles[i]);
                i++;
            }
            return documentFileArr;
        }
        File[] fileArrListFiles2 = this.f22711if.getParentFile().listFiles();
        DocumentFile[] documentFileArr2 = new DocumentFile[fileArrListFiles2.length];
        while (i < fileArrListFiles2.length) {
            documentFileArr2[i] = new Cprotected(this, fileArrListFiles2[i]);
            i++;
        }
        return documentFileArr2;
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: static */
    public InputStream mo26666static() throws FileNotFoundException {
        return new BufferedInputStream(new FileInputStream(this.f22711if));
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: super */
    public boolean mo26667super() {
        return this.f22711if.isDirectory();
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: switch */
    public void mo26668switch() {
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: throw */
    public boolean mo26669throw() {
        return this.f22711if.isFile();
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: throws */
    public boolean mo26670throws(String str) {
        File file = new File(this.f22711if.getParentFile(), str);
        if (!this.f22711if.renameTo(file)) {
            return false;
        }
        this.f22711if = file;
        return true;
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: try */
    public boolean mo26671try() {
        m27026default(this.f22711if);
        return this.f22711if.delete();
    }

    @Override // com.wsw.cospa.utils.DocumentFile
    /* renamed from: while */
    public long mo26672while() {
        return this.f22711if.length();
    }
}
