package freemarker.template.utility;

import freemarker.template.Cdo;
import freemarker.template.Cstatic;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

@Deprecated
/* renamed from: freemarker.template.utility.while, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cwhile {

    /* renamed from: do, reason: not valid java name */
    public static Cdo f25254do = Cdo.f1();

    /* renamed from: do, reason: not valid java name */
    public static void m29351do(File file) throws IOException {
        File absoluteFile = file.getAbsoluteFile();
        File parentFile = absoluteFile.getParentFile();
        String name = absoluteFile.getName();
        File file2 = new File(parentFile, name + ".canonical");
        f25254do.K2(parentFile);
        Cstatic cstaticO1 = f25254do.O1(name);
        FileWriter fileWriter = new FileWriter(file2);
        try {
            cstaticO1.X0(fileWriter);
        } finally {
            fileWriter.close();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m29352for() {
        System.err.println("Usage: java freemarker.template.utility.ToCanonical <filename(s)>");
    }

    @Deprecated
    /* renamed from: if, reason: not valid java name */
    public static void m29353if(String[] strArr) {
        f25254do.l3(false);
        if (strArr.length == 0) {
            m29352for();
        }
        for (String str : strArr) {
            File file = new File(str);
            if (!file.exists()) {
                System.err.println("File " + file + " doesn't exist.");
            }
            try {
                m29351do(file);
            } catch (Exception e) {
                System.err.println("Error converting file: " + file);
                e.printStackTrace();
            }
        }
    }
}
