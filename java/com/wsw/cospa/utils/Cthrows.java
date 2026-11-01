package com.wsw.cospa.utils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/* renamed from: com.wsw.cospa.utils.throws, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cthrows {
    /* renamed from: do, reason: not valid java name */
    public static void m27128do(String str, String str2) throws IOException {
        new String();
        String str3 = new String();
        try {
            File file = new File(str);
            if (!file.exists()) {
                if (!file.getParentFile().exists() || !file.getParentFile().isDirectory()) {
                    file.getParentFile().mkdirs();
                }
                file.createNewFile();
            }
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    String str4 = str3 + str2;
                    BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file));
                    bufferedWriter.write(str4);
                    bufferedWriter.flush();
                    bufferedWriter.close();
                    return;
                }
                str3 = str3 + line + "\n";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static String m27129for(File file) throws Exception {
        FileReader fileReader;
        Throwable th;
        BufferedReader bufferedReader;
        String str;
        BufferedReader bufferedReader2 = null;
        String str2 = null;
        bufferedReader2 = null;
        bufferedReader2 = null;
        try {
            fileReader = new FileReader(file);
            try {
                try {
                    bufferedReader = new BufferedReader(fileReader);
                    boolean z = true;
                    while (true) {
                        try {
                            try {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                }
                                if (z) {
                                    z = false;
                                    str2 = line;
                                } else {
                                    str2 = str2 + "\r\n" + line;
                                }
                            } catch (Exception e) {
                                try {
                                    e.printStackTrace();
                                } catch (Exception e2) {
                                    e = e2;
                                    String str3 = str2;
                                    bufferedReader2 = bufferedReader;
                                    str = str3;
                                    e.printStackTrace();
                                    if (bufferedReader2 != null) {
                                        bufferedReader2.close();
                                    }
                                    if (fileReader != null) {
                                        fileReader.close();
                                    }
                                    return str;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            if (fileReader != null) {
                                fileReader.close();
                            }
                            throw th;
                        }
                    }
                    bufferedReader.close();
                    fileReader.close();
                    return str2;
                } catch (Exception e3) {
                    e = e3;
                    str = null;
                }
            } catch (Throwable th3) {
                BufferedReader bufferedReader3 = bufferedReader2;
                th = th3;
                bufferedReader = bufferedReader3;
            }
        } catch (Exception e4) {
            e = e4;
            str = null;
            fileReader = null;
        } catch (Throwable th4) {
            fileReader = null;
            th = th4;
            bufferedReader = null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m27130if(File file) throws Exception {
        try {
            if (file.exists()) {
                return true;
            }
            file.createNewFile();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m27131new(String str, File file) throws Exception {
        boolean z;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(str.getBytes("GBK"));
            fileOutputStream.flush();
            fileOutputStream.close();
            z = true;
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }
}
