package freemarker.ext.dom;

import freemarker.core.d0;
import freemarker.template.Cdo;
import freemarker.template.Cstatic;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.Locale;
import java.util.StringTokenizer;

@Deprecated
/* renamed from: freemarker.ext.dom.final, reason: invalid class name */
/* loaded from: classes.dex */
public class Cfinal {

    /* renamed from: case, reason: not valid java name */
    private Cdo f24690case;

    /* renamed from: do, reason: not valid java name */
    private File f24691do;

    /* renamed from: for, reason: not valid java name */
    private File f24692for;

    /* renamed from: if, reason: not valid java name */
    private File f24693if;

    /* renamed from: new, reason: not valid java name */
    private String f24694new;

    /* renamed from: try, reason: not valid java name */
    private Locale f24695try;

    public Cfinal(File file, File file2, File file3, Locale locale, String str) throws IOException {
        str = str == null ? System.getProperty("file.encoding") : str;
        locale = locale == null ? Locale.getDefault() : locale;
        this.f24694new = str;
        this.f24695try = locale;
        this.f24691do = file;
        this.f24693if = file2;
        this.f24692for = file3;
        File parentFile = file2.getAbsoluteFile().getParentFile();
        Cdo cdo = new Cdo();
        this.f24690case = cdo;
        cdo.K2(parentFile);
    }

    /* renamed from: do, reason: not valid java name */
    public static Locale m28787do(String str) {
        String str2;
        String strNextToken;
        str2 = "";
        if (str == null) {
            str = "";
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, "_-,");
        if (!stringTokenizer.hasMoreTokens()) {
            return Locale.getDefault();
        }
        String strNextToken2 = stringTokenizer.nextToken();
        if (stringTokenizer.hasMoreTokens()) {
            String strNextToken3 = stringTokenizer.nextToken();
            strNextToken = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : "";
            str2 = strNextToken3;
        } else {
            strNextToken = "";
        }
        return new Locale(strNextToken2, str2, strNextToken);
    }

    @Deprecated
    /* renamed from: if, reason: not valid java name */
    public static void m28788if(String[] strArr) {
        try {
            m28789new(strArr).m28791for();
        } catch (IllegalArgumentException e) {
            System.err.println(e.getMessage());
            m28790try();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static Cfinal m28789new(String[] strArr) throws IOException {
        File absoluteFile = null;
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        while (i < strArr.length) {
            int i2 = i + 1;
            String str6 = strArr[i];
            if (i2 >= strArr.length) {
                throw new IllegalArgumentException("");
            }
            int i3 = i2 + 1;
            String str7 = strArr[i2];
            if (str6.equals("-in")) {
                if (str != null) {
                    throw new IllegalArgumentException("The input file should only be specified once");
                }
                str = str7;
            } else if (str6.equals("-ftl")) {
                if (str2 != null) {
                    throw new IllegalArgumentException("The ftl file should only be specified once");
                }
                str2 = str7;
            } else if (str6.equals("-out")) {
                if (str3 != null) {
                    throw new IllegalArgumentException("The output file should only be specified once");
                }
                str3 = str7;
            } else if (str6.equals("-locale")) {
                if (str4 != null) {
                    throw new IllegalArgumentException("The locale should only be specified once");
                }
                str4 = str7;
            } else {
                if (!str6.equals("-encoding")) {
                    throw new IllegalArgumentException("Unknown input argument: " + str6);
                }
                if (str5 != null) {
                    throw new IllegalArgumentException("The encoding should only be specified once");
                }
                str5 = str7;
            }
            i = i3;
        }
        if (str == null) {
            throw new IllegalArgumentException("No input file specified.");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("No ftl file specified.");
        }
        File absoluteFile2 = new File(str).getAbsoluteFile();
        File absoluteFile3 = new File(str2).getAbsoluteFile();
        if (!absoluteFile2.exists()) {
            throw new IllegalArgumentException("Input file does not exist: " + str);
        }
        if (!absoluteFile3.exists()) {
            throw new IllegalArgumentException("FTL file does not exist: " + str2);
        }
        if (!absoluteFile2.isFile() || !absoluteFile2.canRead()) {
            throw new IllegalArgumentException("Input file must be a readable file: " + str);
        }
        if (!absoluteFile3.isFile() || !absoluteFile3.canRead()) {
            throw new IllegalArgumentException("FTL file must be a readable file: " + str2);
        }
        if (str3 != null) {
            absoluteFile = new File(str3).getAbsoluteFile();
            File parentFile = absoluteFile.getParentFile();
            if (!parentFile.exists() || !parentFile.canWrite()) {
                throw new IllegalArgumentException("The output directory must exist and be writable: " + parentFile);
            }
        }
        File file = absoluteFile;
        Locale localeM28787do = Locale.getDefault();
        if (str4 != null) {
            localeM28787do = m28787do(str4);
        }
        return new Cfinal(absoluteFile2, absoluteFile3, file, localeM28787do, str5);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m28790try() {
        System.err.println("Usage: java freemarker.ext.dom.Transform -in <xmlfile> -ftl <ftlfile> [-out <outfile>] [-locale <locale>] [-encoding <encoding>]");
        if (d0.w1() == null) {
            System.exit(-1);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m28791for() throws Exception {
        Cstatic cstaticQ1 = this.f24690case.Q1(this.f24693if.getName(), this.f24695try);
        Cbreak cbreakM28740class = Cbreak.m28740class(this.f24691do);
        OutputStream fileOutputStream = System.out;
        if (this.f24692for != null) {
            fileOutputStream = new FileOutputStream(this.f24692for);
        }
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream, this.f24694new);
        try {
            cstaticQ1.v1(null, outputStreamWriter, null, cbreakM28740class);
        } finally {
            if (this.f24692for != null) {
                outputStreamWriter.close();
            }
        }
    }
}
