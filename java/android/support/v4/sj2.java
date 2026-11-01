package android.support.v4;

import android.support.v4.ba0;
import android.support.v4.ca0;
import android.support.v4.m0;
import android.support.v4.n0;
import android.support.v4.o0;
import android.support.v4.uf1;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import net.lingala.zip4j.io.inputstream.Cthis;

/* loaded from: classes3.dex */
public class sj2 {

    /* renamed from: case, reason: not valid java name */
    private char[] f6170case;

    /* renamed from: do, reason: not valid java name */
    private File f6171do;

    /* renamed from: else, reason: not valid java name */
    private gj0 f6172else;

    /* renamed from: for, reason: not valid java name */
    private boolean f6173for;

    /* renamed from: if, reason: not valid java name */
    private rk2 f6174if;

    /* renamed from: new, reason: not valid java name */
    private uf1 f6175new;

    /* renamed from: try, reason: not valid java name */
    private boolean f6176try;

    public sj2(String str) {
        this(new File(str), (char[]) null);
    }

    /* renamed from: catch, reason: not valid java name */
    private void m7424catch() throws IOException {
        if (this.f6174if == null) {
            m7426strictfp();
        }
    }

    /* renamed from: class, reason: not valid java name */
    private void m7425class() {
        rk2 rk2Var = new rk2();
        this.f6174if = rk2Var;
        rk2Var.m7042package(this.f6171do);
    }

    /* renamed from: strictfp, reason: not valid java name */
    private void m7426strictfp() throws IOException {
        if (!this.f6171do.exists()) {
            m7425class();
            return;
        }
        if (!this.f6171do.canRead()) {
            throw new rj2("no read access for the input zip file");
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(this.f6171do, el1.READ.getValue());
            try {
                rk2 rk2VarM1359else = new dj0().m1359else(randomAccessFile);
                this.f6174if = rk2VarM1359else;
                rk2VarM1359else.m7042package(this.f6171do);
                randomAccessFile.close();
            } finally {
            }
        } catch (IOException e) {
            throw new rj2(e);
        }
    }

    /* renamed from: this, reason: not valid java name */
    private void m7427this(File file, sk2 sk2Var, boolean z) throws IOException {
        m7424catch();
        rk2 rk2Var = this.f6174if;
        if (rk2Var == null) {
            throw new rj2("internal error: zip model is null");
        }
        if (z && rk2Var.m7029const()) {
            throw new rj2("This is a split archive. Zip file format does not allow updating split/spanned files");
        }
        new n0(this.f6175new, this.f6176try, this.f6174if, this.f6170case, this.f6172else).m2135for(new n0.Cdo(file, sk2Var));
    }

    /* renamed from: abstract, reason: not valid java name */
    public boolean m7428abstract() {
        if (!this.f6171do.exists()) {
            return false;
        }
        try {
            m7426strictfp();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public void m7429break(InputStream inputStream, sk2 sk2Var) throws IOException {
        if (inputStream == null) {
            throw new rj2("inputstream is null, cannot add file to zip");
        }
        if (sk2Var == null) {
            throw new rj2("zip parameters are null");
        }
        m7442implements(false);
        m7424catch();
        if (this.f6174if == null) {
            throw new rj2("internal error: zip model is null");
        }
        if (this.f6171do.exists() && this.f6174if.m7029const()) {
            throw new rj2("Zip file already exists. Zip file format does not allow updating split/spanned files");
        }
        new o0(this.f6175new, this.f6176try, this.f6174if, this.f6170case, this.f6172else).m2135for(new o0.Cdo(inputStream, sk2Var));
    }

    /* renamed from: case, reason: not valid java name */
    public void m7430case(List<File> list, sk2 sk2Var) throws IOException {
        if (list == null || list.size() == 0) {
            throw new rj2("input file List is null or empty");
        }
        if (sk2Var == null) {
            throw new rj2("input parameters are null");
        }
        if (this.f6175new.m8425this() == uf1.Cif.BUSY) {
            throw new rj2("invalid operation - Zip4j is in busy state");
        }
        db0.m1205new(list);
        m7424catch();
        if (this.f6174if == null) {
            throw new rj2("internal error: zip model is null");
        }
        if (this.f6171do.exists() && this.f6174if.m7029const()) {
            throw new rj2("Zip file already exists. Zip file format does not allow updating split/spanned files");
        }
        new m0(this.f6175new, this.f6176try, this.f6174if, this.f6170case, this.f6172else).m2135for(new m0.Cdo(list, sk2Var));
    }

    /* renamed from: const, reason: not valid java name */
    public void m7431const(List<File> list, sk2 sk2Var, boolean z, long j) throws rj2 {
        if (this.f6171do.exists()) {
            throw new rj2("zip file: " + this.f6171do + " already exists. To add files to existing zip file use addFile method");
        }
        if (list == null || list.size() == 0) {
            throw new rj2("input file List is null, cannot create zip file");
        }
        m7425class();
        this.f6174if.m7045static(z);
        this.f6174if.m7047switch(j);
        new m0(this.f6175new, this.f6176try, this.f6174if, this.f6170case, this.f6172else).m2135for(new m0.Cdo(list, sk2Var));
    }

    /* renamed from: continue, reason: not valid java name */
    public void m7432continue(File file) throws IOException {
        if (file == null) {
            throw new rj2("outputZipFile is null, cannot merge split files");
        }
        if (file.exists()) {
            throw new rj2("output Zip File already exists");
        }
        m7424catch();
        rk2 rk2Var = this.f6174if;
        if (rk2Var == null) {
            throw new rj2("zip model is null, corrupt zip file?");
        }
        new qz0(this.f6175new, this.f6176try, rk2Var).m2135for(file);
    }

    /* renamed from: default, reason: not valid java name */
    public uf1 m7433default() {
        return this.f6175new;
    }

    /* renamed from: do, reason: not valid java name */
    public void m7434do(File file) throws IOException {
        m7430case(Collections.singletonList(file), new sk2());
    }

    /* renamed from: else, reason: not valid java name */
    public void m7435else(File file) throws IOException {
        m7440goto(file, new sk2());
    }

    /* renamed from: extends, reason: not valid java name */
    public List<File> m7436extends() throws IOException {
        m7424catch();
        return db0.m1192break(this.f6174if);
    }

    /* renamed from: final, reason: not valid java name */
    public void m7437final(File file, sk2 sk2Var, boolean z, long j) throws IOException {
        if (file == null) {
            throw new rj2("folderToAdd is null, cannot create zip file from folder");
        }
        if (sk2Var == null) {
            throw new rj2("input parameters are null, cannot create zip file from folder");
        }
        if (this.f6171do.exists()) {
            throw new rj2("zip file: " + this.f6171do + " already exists. To add files to existing zip file use addFolder method");
        }
        m7425class();
        this.f6174if.m7045static(z);
        if (z) {
            this.f6174if.m7047switch(j);
        }
        m7427this(file, sk2Var, false);
    }

    /* renamed from: finally, reason: not valid java name */
    public boolean m7438finally() throws IOException {
        if (this.f6174if == null) {
            m7426strictfp();
            if (this.f6174if == null) {
                throw new rj2("Zip Model is null");
            }
        }
        if (this.f6174if.m7038if() == null || this.f6174if.m7038if().m9135if() == null) {
            throw new rj2("invalid zip file");
        }
        Iterator<oa0> it = this.f6174if.m7038if().m9135if().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            oa0 next = it.next();
            if (next != null && next.m8089public()) {
                this.f6173for = true;
                break;
            }
        }
        return this.f6173for;
    }

    /* renamed from: for, reason: not valid java name */
    public void m7439for(String str) throws IOException {
        m7446new(str, new sk2());
    }

    /* renamed from: goto, reason: not valid java name */
    public void m7440goto(File file, sk2 sk2Var) throws IOException {
        if (file == null) {
            throw new rj2("input path is null, cannot add folder to zip file");
        }
        if (!file.exists()) {
            throw new rj2("folder does not exist");
        }
        if (!file.isDirectory()) {
            throw new rj2("input folder is not a directory");
        }
        if (!file.canRead()) {
            throw new rj2("cannot read input folder");
        }
        if (sk2Var == null) {
            throw new rj2("input parameters are null, cannot add folder to zip file");
        }
        m7427this(file, sk2Var, true);
    }

    /* renamed from: if, reason: not valid java name */
    public void m7441if(File file, sk2 sk2Var) throws IOException {
        m7430case(Collections.singletonList(file), sk2Var);
    }

    /* renamed from: implements, reason: not valid java name */
    public void m7442implements(boolean z) {
        this.f6176try = z;
    }

    /* renamed from: import, reason: not valid java name */
    public void m7443import(String str, String str2) throws IOException {
        m7445native(str, str2, null);
    }

    /* renamed from: interface, reason: not valid java name */
    public void m7444interface(String str) throws IOException {
        if (!mj2.m4939try(str)) {
            throw new rj2("file name is empty or null, cannot remove file");
        }
        if (this.f6174if == null) {
            m7426strictfp();
        }
        if (this.f6174if.m7029const()) {
            throw new rj2("Zip file format does not allow updating split/spanned files");
        }
        oa0 oa0VarM2316if = fj0.m2316if(this.f6174if, str);
        if (oa0VarM2316if != null) {
            m7459volatile(oa0VarM2316if);
            return;
        }
        throw new rj2("could not find file header for file: " + str);
    }

    /* renamed from: native, reason: not valid java name */
    public void m7445native(String str, String str2, String str3) throws IOException {
        if (!mj2.m4939try(str)) {
            throw new rj2("file to extract is null or empty, cannot extract file");
        }
        m7426strictfp();
        oa0 oa0VarM2316if = fj0.m2316if(this.f6174if, str);
        if (oa0VarM2316if != null) {
            m7460while(oa0VarM2316if, str2, str3);
            return;
        }
        throw new rj2("No file found with name " + str + " in zip file");
    }

    /* renamed from: new, reason: not valid java name */
    public void m7446new(String str, sk2 sk2Var) throws IOException {
        if (!mj2.m4939try(str)) {
            throw new rj2("file to add is null or empty");
        }
        m7430case(Collections.singletonList(new File(str)), sk2Var);
    }

    /* renamed from: package, reason: not valid java name */
    public boolean m7447package() {
        return this.f6176try;
    }

    /* renamed from: private, reason: not valid java name */
    public boolean m7448private() throws IOException {
        if (this.f6174if == null) {
            m7426strictfp();
            if (this.f6174if == null) {
                throw new rj2("Zip Model is null");
            }
        }
        return this.f6174if.m7029const();
    }

    /* renamed from: protected, reason: not valid java name */
    public void m7449protected(String str) throws IOException {
        if (str == null) {
            throw new rj2("input comment is null, cannot update zip file");
        }
        if (!this.f6171do.exists()) {
            throw new rj2("zip file does not exist, cannot set comment for zip file");
        }
        m7426strictfp();
        rk2 rk2Var = this.f6174if;
        if (rk2Var == null) {
            throw new rj2("zipModel is null, cannot update zip file");
        }
        if (rk2Var.m7051try() == null) {
            throw new rj2("end of central directory is null, cannot set comment");
        }
        new kx1(this.f6175new, this.f6176try, this.f6174if).m2135for(str);
    }

    /* renamed from: public, reason: not valid java name */
    public String m7450public() throws IOException {
        if (!this.f6171do.exists()) {
            throw new rj2("zip file does not exist, cannot read comment");
        }
        m7424catch();
        rk2 rk2Var = this.f6174if;
        if (rk2Var == null) {
            throw new rj2("zip model is null, cannot read comment");
        }
        if (rk2Var.m7051try() != null) {
            return this.f6174if.m7051try().m9066for();
        }
        throw new rj2("end of central directory record is null, cannot read comment");
    }

    /* renamed from: return, reason: not valid java name */
    public File m7451return() {
        return this.f6171do;
    }

    /* renamed from: static, reason: not valid java name */
    public oa0 m7452static(String str) throws IOException {
        if (!mj2.m4939try(str)) {
            throw new rj2("input file name is emtpy or null, cannot get FileHeader");
        }
        m7426strictfp();
        rk2 rk2Var = this.f6174if;
        if (rk2Var == null || rk2Var.m7038if() == null) {
            return null;
        }
        return fj0.m2316if(this.f6174if, str);
    }

    /* renamed from: super, reason: not valid java name */
    public void m7453super(String str) throws IOException {
        if (!mj2.m4939try(str)) {
            throw new rj2("output path is null or invalid");
        }
        if (!mj2.m4937if(new File(str))) {
            throw new rj2("invalid output path");
        }
        if (this.f6174if == null) {
            m7426strictfp();
        }
        if (this.f6174if == null) {
            throw new rj2("Internal error occurred when extracting zip file");
        }
        if (this.f6175new.m8425this() == uf1.Cif.BUSY) {
            throw new rj2("invalid operation - Zip4j is in busy state");
        }
        new ba0(this.f6175new, this.f6176try, this.f6174if, this.f6170case).m2135for(new ba0.Cdo(str));
    }

    /* renamed from: switch, reason: not valid java name */
    public List<oa0> m7454switch() throws IOException {
        m7426strictfp();
        rk2 rk2Var = this.f6174if;
        return (rk2Var == null || rk2Var.m7038if() == null) ? Collections.emptyList() : this.f6174if.m7038if().m9135if();
    }

    /* renamed from: throw, reason: not valid java name */
    public void m7455throw(oa0 oa0Var, String str) throws IOException {
        m7460while(oa0Var, str, null);
    }

    /* renamed from: throws, reason: not valid java name */
    public Cthis m7456throws(oa0 oa0Var) throws IOException {
        if (oa0Var == null) {
            throw new rj2("FileHeader is null, cannot get InputStream");
        }
        m7424catch();
        rk2 rk2Var = this.f6174if;
        if (rk2Var != null) {
            return wc2.m9120if(rk2Var, oa0Var, this.f6170case);
        }
        throw new rj2("zip model is null, cannot get inputstream");
    }

    public String toString() {
        return this.f6171do.toString();
    }

    /* renamed from: transient, reason: not valid java name */
    public void m7457transient(char[] cArr) {
        this.f6170case = cArr;
    }

    /* renamed from: try, reason: not valid java name */
    public void m7458try(List<File> list) throws IOException {
        m7430case(list, new sk2());
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m7459volatile(oa0 oa0Var) throws IOException {
        if (oa0Var == null) {
            throw new rj2("input file header is null, cannot remove file");
        }
        if (this.f6174if == null) {
            m7426strictfp();
        }
        if (this.f6174if.m7029const()) {
            throw new rj2("Zip file format does not allow updating split/spanned files");
        }
        new wm1(this.f6175new, this.f6176try, this.f6174if).m2135for(oa0Var);
    }

    /* renamed from: while, reason: not valid java name */
    public void m7460while(oa0 oa0Var, String str, String str2) throws IOException {
        if (oa0Var == null) {
            throw new rj2("input file header is null, cannot extract file");
        }
        if (!mj2.m4939try(str)) {
            throw new rj2("destination path is empty or null, cannot extract file");
        }
        if (this.f6175new.m8425this() == uf1.Cif.BUSY) {
            throw new rj2("invalid operation - Zip4j is in busy state");
        }
        m7426strictfp();
        new ca0(this.f6175new, this.f6176try, this.f6174if, this.f6170case).m2135for(new ca0.Cdo(str, oa0Var, str2));
    }

    public sj2(String str, char[] cArr) {
        this(new File(str), cArr);
    }

    public sj2(File file) {
        this(file, (char[]) null);
    }

    public sj2(File file, char[] cArr) {
        this.f6172else = new gj0();
        this.f6171do = file;
        this.f6170case = cArr;
        this.f6176try = false;
        this.f6175new = new uf1();
    }
}
