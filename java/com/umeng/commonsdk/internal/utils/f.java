package com.umeng.commonsdk.internal.utils;

import android.os.Process;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;

/* loaded from: classes2.dex */
public class f {
    private static final String a = "\n";
    private static final byte[] b = "\nexit\n".getBytes();
    private static byte[] c = new byte[32];

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0061 A[PHI: r7 r9
      0x0061: PHI (r7v5 java.lang.StringBuilder) = (r7v13 java.lang.StringBuilder), (r7v14 java.lang.StringBuilder), (r7v15 java.lang.StringBuilder) binds: [B:61:0x00ca, B:70:0x00d7, B:20:0x005e] A[DONT_GENERATE, DONT_INLINE]
      0x0061: PHI (r9v19 java.lang.Process) = (r9v16 java.lang.Process), (r9v17 java.lang.Process), (r9v21 java.lang.Process) binds: [B:61:0x00ca, B:70:0x00d7, B:20:0x005e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00dc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00dd  */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v13, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v21, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String a(String... strArr) throws Throwable {
        OutputStream outputStream;
        ?? inputStream;
        ?? errorStream;
        InputStreamReader inputStreamReader;
        ?? bufferedReader;
        Throwable th;
        Process processStart;
        OutputStream outputStream2;
        OutputStream outputStream3;
        OutputStream outputStream4;
        InputStreamReader inputStreamReader2;
        OutputStream outputStream5;
        InputStreamReader inputStreamReader3;
        OutputStream outputStream6;
        OutputStream outputStream7;
        InputStreamReader inputStreamReader4;
        OutputStream outputStream8;
        StringBuilder sb;
        InputStreamReader inputStreamReader5;
        OutputStream outputStream9;
        StringBuilder sb2;
        InputStreamReader inputStreamReader6;
        ?? r2;
        InputStreamReader inputStreamReader7;
        ?? r22;
        StringBuilder sb3;
        StringBuilder sb4;
        StringBuilder sb5;
        try {
            processStart = new ProcessBuilder(new String[0]).command(strArr).start();
            try {
                outputStream = processStart.getOutputStream();
            } catch (IOException unused) {
                outputStream = null;
                outputStream3 = outputStream;
                errorStream = outputStream3;
                outputStream5 = outputStream3;
                inputStreamReader3 = errorStream;
                outputStream7 = outputStream5;
                bufferedReader = inputStreamReader3;
                outputStream9 = outputStream7;
                inputStreamReader5 = inputStreamReader3;
                sb2 = bufferedReader;
                r22 = outputStream9;
                inputStreamReader7 = inputStreamReader5;
                a(outputStream, errorStream, r22, inputStreamReader7, bufferedReader);
                sb4 = sb2;
                sb3 = sb2;
                if (processStart != null) {
                    c(processStart);
                    sb3 = sb4;
                }
                if (sb3 == null) {
                }
            } catch (Exception unused2) {
                outputStream = null;
                outputStream2 = outputStream;
                errorStream = outputStream2;
                outputStream4 = outputStream2;
                inputStreamReader2 = errorStream;
                outputStream6 = outputStream4;
                bufferedReader = inputStreamReader2;
                outputStream8 = outputStream6;
                inputStreamReader4 = inputStreamReader2;
                sb = bufferedReader;
                r2 = outputStream8;
                inputStreamReader6 = inputStreamReader4;
                a(outputStream, errorStream, r2, inputStreamReader6, bufferedReader);
                sb4 = sb;
                sb3 = sb;
                if (processStart != null) {
                }
                if (sb3 == null) {
                }
            } catch (Throwable th2) {
                inputStream = 0;
                errorStream = null;
                inputStreamReader = null;
                bufferedReader = null;
                th = th2;
                outputStream = null;
            }
        } catch (IOException unused3) {
            processStart = null;
            outputStream = null;
        } catch (Exception unused4) {
            processStart = null;
            outputStream = null;
        } catch (Throwable th3) {
            outputStream = null;
            inputStream = 0;
            errorStream = null;
            inputStreamReader = null;
            bufferedReader = null;
            th = th3;
            processStart = null;
        }
        try {
            inputStream = processStart.getInputStream();
            try {
                errorStream = processStart.getErrorStream();
            } catch (IOException unused5) {
                errorStream = null;
                outputStream5 = inputStream;
                inputStreamReader3 = errorStream;
                outputStream7 = outputStream5;
                bufferedReader = inputStreamReader3;
                outputStream9 = outputStream7;
                inputStreamReader5 = inputStreamReader3;
                sb2 = bufferedReader;
                r22 = outputStream9;
                inputStreamReader7 = inputStreamReader5;
                a(outputStream, errorStream, r22, inputStreamReader7, bufferedReader);
                sb4 = sb2;
                sb3 = sb2;
                if (processStart != null) {
                }
                if (sb3 == null) {
                }
            } catch (Exception unused6) {
                errorStream = null;
                outputStream4 = inputStream;
                inputStreamReader2 = errorStream;
                outputStream6 = outputStream4;
                bufferedReader = inputStreamReader2;
                outputStream8 = outputStream6;
                inputStreamReader4 = inputStreamReader2;
                sb = bufferedReader;
                r2 = outputStream8;
                inputStreamReader6 = inputStreamReader4;
                a(outputStream, errorStream, r2, inputStreamReader6, bufferedReader);
                sb4 = sb;
                sb3 = sb;
                if (processStart != null) {
                }
                if (sb3 == null) {
                }
            } catch (Throwable th4) {
                inputStreamReader = null;
                bufferedReader = null;
                th = th4;
                errorStream = null;
            }
        } catch (IOException unused7) {
            outputStream3 = null;
            errorStream = outputStream3;
            outputStream5 = outputStream3;
            inputStreamReader3 = errorStream;
            outputStream7 = outputStream5;
            bufferedReader = inputStreamReader3;
            outputStream9 = outputStream7;
            inputStreamReader5 = inputStreamReader3;
            sb2 = bufferedReader;
            r22 = outputStream9;
            inputStreamReader7 = inputStreamReader5;
            a(outputStream, errorStream, r22, inputStreamReader7, bufferedReader);
            sb4 = sb2;
            sb3 = sb2;
            if (processStart != null) {
            }
            if (sb3 == null) {
            }
        } catch (Exception unused8) {
            outputStream2 = null;
            errorStream = outputStream2;
            outputStream4 = outputStream2;
            inputStreamReader2 = errorStream;
            outputStream6 = outputStream4;
            bufferedReader = inputStreamReader2;
            outputStream8 = outputStream6;
            inputStreamReader4 = inputStreamReader2;
            sb = bufferedReader;
            r2 = outputStream8;
            inputStreamReader6 = inputStreamReader4;
            a(outputStream, errorStream, r2, inputStreamReader6, bufferedReader);
            sb4 = sb;
            sb3 = sb;
            if (processStart != null) {
            }
            if (sb3 == null) {
            }
        } catch (Throwable th5) {
            errorStream = null;
            inputStreamReader = null;
            bufferedReader = null;
            th = th5;
            inputStream = 0;
        }
        try {
            outputStream.write(b);
            outputStream.flush();
            processStart.waitFor();
            inputStreamReader = new InputStreamReader(inputStream);
        } catch (IOException unused9) {
            inputStreamReader3 = null;
            outputStream7 = inputStream;
            bufferedReader = inputStreamReader3;
            outputStream9 = outputStream7;
            inputStreamReader5 = inputStreamReader3;
            sb2 = bufferedReader;
            r22 = outputStream9;
            inputStreamReader7 = inputStreamReader5;
            a(outputStream, errorStream, r22, inputStreamReader7, bufferedReader);
            sb4 = sb2;
            sb3 = sb2;
            if (processStart != null) {
            }
            if (sb3 == null) {
            }
        } catch (Exception unused10) {
            inputStreamReader2 = null;
            outputStream6 = inputStream;
            bufferedReader = inputStreamReader2;
            outputStream8 = outputStream6;
            inputStreamReader4 = inputStreamReader2;
            sb = bufferedReader;
            r2 = outputStream8;
            inputStreamReader6 = inputStreamReader4;
            a(outputStream, errorStream, r2, inputStreamReader6, bufferedReader);
            sb4 = sb;
            sb3 = sb;
            if (processStart != null) {
            }
            if (sb3 == null) {
            }
        } catch (Throwable th6) {
            bufferedReader = null;
            th = th6;
            inputStreamReader = null;
        }
        try {
            bufferedReader = new BufferedReader(inputStreamReader);
            try {
                try {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        sb5 = new StringBuilder();
                        try {
                            sb5.append(line);
                            sb5.append(a);
                            while (true) {
                                String line2 = bufferedReader.readLine();
                                if (line2 == null) {
                                    break;
                                }
                                sb5.append(line2);
                                sb5.append(a);
                            }
                        } catch (IOException unused11) {
                            r22 = inputStream;
                            inputStreamReader7 = inputStreamReader;
                            sb2 = sb5;
                            a(outputStream, errorStream, r22, inputStreamReader7, bufferedReader);
                            sb4 = sb2;
                            sb3 = sb2;
                            if (processStart != null) {
                            }
                            if (sb3 == null) {
                            }
                        } catch (Exception unused12) {
                            r2 = inputStream;
                            inputStreamReader6 = inputStreamReader;
                            sb = sb5;
                            a(outputStream, errorStream, r2, inputStreamReader6, bufferedReader);
                            sb4 = sb;
                            sb3 = sb;
                            if (processStart != null) {
                            }
                            if (sb3 == null) {
                            }
                        }
                    } else {
                        sb5 = null;
                    }
                    do {
                    } while (errorStream.read(c) > 0);
                    a(outputStream, errorStream, inputStream, inputStreamReader, bufferedReader);
                    sb4 = sb5;
                } catch (Throwable th7) {
                    th = th7;
                    a(outputStream, errorStream, inputStream, inputStreamReader, bufferedReader);
                    if (processStart != null) {
                        c(processStart);
                    }
                    throw th;
                }
            } catch (IOException unused13) {
                sb2 = null;
                r22 = inputStream;
                inputStreamReader7 = inputStreamReader;
            } catch (Exception unused14) {
                sb = null;
                r2 = inputStream;
                inputStreamReader6 = inputStreamReader;
            }
        } catch (IOException unused15) {
            bufferedReader = null;
            outputStream9 = inputStream;
            inputStreamReader5 = inputStreamReader;
            sb2 = bufferedReader;
            r22 = outputStream9;
            inputStreamReader7 = inputStreamReader5;
            a(outputStream, errorStream, r22, inputStreamReader7, bufferedReader);
            sb4 = sb2;
            sb3 = sb2;
            if (processStart != null) {
            }
            if (sb3 == null) {
            }
        } catch (Exception unused16) {
            bufferedReader = null;
            outputStream8 = inputStream;
            inputStreamReader4 = inputStreamReader;
            sb = bufferedReader;
            r2 = outputStream8;
            inputStreamReader6 = inputStreamReader4;
            a(outputStream, errorStream, r2, inputStreamReader6, bufferedReader);
            sb4 = sb;
            sb3 = sb;
            if (processStart != null) {
            }
            if (sb3 == null) {
            }
        } catch (Throwable th8) {
            bufferedReader = null;
            th = th8;
        }
        c(processStart);
        sb3 = sb4;
        if (sb3 == null) {
            return null;
        }
        return sb3.toString();
    }

    private static int b(Process process) {
        String string = process.toString();
        try {
            return Integer.parseInt(string.substring(string.indexOf("=") + 1, string.indexOf("]")));
        } catch (Exception unused) {
            return 0;
        }
    }

    private static void c(Process process) {
        if (process != null) {
            try {
                if (process.exitValue() != 0) {
                    a(process);
                }
            } catch (IllegalThreadStateException unused) {
                a(process);
            }
        }
    }

    private static void a(OutputStream outputStream, InputStream inputStream, InputStream inputStream2, InputStreamReader inputStreamReader, BufferedReader bufferedReader) throws IOException {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException unused) {
            }
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused2) {
            }
        }
        if (inputStream2 != null) {
            try {
                inputStream2.close();
            } catch (IOException unused3) {
            }
        }
        if (inputStreamReader != null) {
            try {
                inputStreamReader.close();
            } catch (IOException unused4) {
            }
        }
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
            } catch (IOException unused5) {
            }
        }
    }

    private static void a(Process process) {
        int iB = b(process);
        if (iB != 0) {
            try {
                try {
                    Process.killProcess(iB);
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                process.destroy();
            }
        }
    }
}
