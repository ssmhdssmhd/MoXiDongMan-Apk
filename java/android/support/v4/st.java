package android.support.v4;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.security.SecureRandom;
import org.bouncycastle.crypto.modes.Cdo;
import org.bouncycastle.crypto.paddings.Cnew;
import org.bouncycastle.util.encoders.Cfor;

/* loaded from: classes3.dex */
public class st {

    /* renamed from: do, reason: not valid java name */
    private boolean f6243do;

    /* renamed from: for, reason: not valid java name */
    private BufferedInputStream f6244for;

    /* renamed from: if, reason: not valid java name */
    private Cnew f6245if;

    /* renamed from: new, reason: not valid java name */
    private BufferedOutputStream f6246new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f6247try;

    public st() {
        this.f6243do = true;
        this.f6245if = null;
        this.f6244for = null;
        this.f6246new = null;
        this.f6247try = null;
    }

    public st(String str, String str2, String str3, boolean z) throws IOException {
        SecureRandom secureRandom;
        PrintStream printStream;
        StringBuilder sb;
        String str4;
        this.f6243do = true;
        SecureRandom secureRandom2 = null;
        this.f6245if = null;
        this.f6244for = null;
        this.f6246new = null;
        this.f6247try = null;
        this.f6243do = z;
        try {
            this.f6244for = new BufferedInputStream(new FileInputStream(str));
        } catch (FileNotFoundException unused) {
            System.err.println("Input file not found [" + str + "]");
            System.exit(1);
        }
        try {
            this.f6246new = new BufferedOutputStream(new FileOutputStream(str2));
        } catch (IOException unused2) {
            System.err.println("Output file not created [" + str2 + "]");
            System.exit(1);
        }
        if (z) {
            try {
                secureRandom = new SecureRandom();
            } catch (Exception unused3) {
            }
            try {
                secureRandom.setSeed("www.bouncycastle.org".getBytes());
            } catch (Exception unused4) {
                secureRandom2 = secureRandom;
                try {
                    System.err.println("Hmmm, no SHA1PRNG, you need the Sun implementation");
                    System.exit(1);
                    secureRandom = secureRandom2;
                    dr0 dr0Var = new dr0(secureRandom, 192);
                    xt xtVar = new xt();
                    xtVar.mo4915if(dr0Var);
                    this.f6247try = xtVar.mo4914do();
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str3));
                    byte[] bArrM36327case = Cfor.m36327case(this.f6247try);
                    bufferedOutputStream.write(bArrM36327case, 0, bArrM36327case.length);
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                    return;
                } catch (IOException unused5) {
                    printStream = System.err;
                    sb = new StringBuilder();
                    str4 = "Could not decryption create key file [";
                }
            }
            dr0 dr0Var2 = new dr0(secureRandom, 192);
            xt xtVar2 = new xt();
            xtVar2.mo4915if(dr0Var2);
            this.f6247try = xtVar2.mo4914do();
            BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(str3));
            byte[] bArrM36327case2 = Cfor.m36327case(this.f6247try);
            bufferedOutputStream2.write(bArrM36327case2, 0, bArrM36327case2.length);
            bufferedOutputStream2.flush();
            bufferedOutputStream2.close();
            return;
        }
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str3));
            int iAvailable = bufferedInputStream.available();
            byte[] bArr = new byte[iAvailable];
            bufferedInputStream.read(bArr, 0, iAvailable);
            this.f6247try = Cfor.m36330for(bArr);
            return;
        } catch (IOException unused6) {
            printStream = System.err;
            sb = new StringBuilder();
            str4 = "Decryption key file not found, or not valid [";
        }
        sb.append(str4);
        sb.append(str3);
        sb.append("]");
        printStream.println(sb.toString());
        System.exit(1);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m7576do(String[] strArr) throws IllegalStateException, tw, IOException, IllegalArgumentException {
        String str;
        boolean z = true;
        if (strArr.length < 2) {
            new st();
            System.err.println("Usage: java " + st.class.getName() + " infile outfile [keyfile]");
            System.exit(1);
        }
        String str2 = strArr[0];
        String str3 = strArr[1];
        if (strArr.length > 2) {
            str = strArr[2];
            z = false;
        } else {
            str = "deskey.dat";
        }
        new st(str2, str3, str, z).m7579new();
    }

    /* renamed from: for, reason: not valid java name */
    private void m7577for(byte[] bArr) throws IllegalStateException, tw, IOException, IllegalArgumentException {
        this.f6245if.mo7550case(true, new gr0(bArr));
        byte[] bArr2 = new byte[47];
        byte[] bArr3 = new byte[this.f6245if.mo7553for(47)];
        while (true) {
            try {
                int i = this.f6244for.read(bArr2, 0, 47);
                if (i <= 0) {
                    try {
                        break;
                    } catch (xs unused) {
                        return;
                    }
                }
                int iMo7554goto = this.f6245if.mo7554goto(bArr2, 0, i, bArr3, 0);
                if (iMo7554goto > 0) {
                    byte[] bArrM36329else = Cfor.m36329else(bArr3, 0, iMo7554goto);
                    this.f6246new.write(bArrM36329else, 0, bArrM36329else.length);
                    this.f6246new.write(10);
                }
            } catch (IOException e) {
                e.printStackTrace();
                return;
            }
        }
        int iMo7551do = this.f6245if.mo7551do(bArr3, 0);
        if (iMo7551do > 0) {
            byte[] bArrM36329else2 = Cfor.m36329else(bArr3, 0, iMo7551do);
            this.f6246new.write(bArrM36329else2, 0, bArrM36329else2.length);
            this.f6246new.write(10);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m7578if(byte[] bArr) throws IllegalStateException, tw, IOException, IllegalArgumentException {
        this.f6245if.mo7550case(false, new gr0(bArr));
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.f6244for));
        byte[] bArr2 = null;
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    try {
                        break;
                    } catch (xs unused) {
                        return;
                    }
                }
                byte[] bArrM36332if = Cfor.m36332if(line);
                bArr2 = new byte[this.f6245if.mo7553for(bArrM36332if.length)];
                int iMo7554goto = this.f6245if.mo7554goto(bArrM36332if, 0, bArrM36332if.length, bArr2, 0);
                if (iMo7554goto > 0) {
                    this.f6246new.write(bArr2, 0, iMo7554goto);
                }
            } catch (IOException e) {
                e.printStackTrace();
                return;
            }
        }
        int iMo7551do = this.f6245if.mo7551do(bArr2, 0);
        if (iMo7551do > 0) {
            this.f6246new.write(bArr2, 0, iMo7551do);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private void m7579new() throws IllegalStateException, tw, IOException, IllegalArgumentException {
        this.f6245if = new Cnew(new Cdo(new wt()));
        if (this.f6243do) {
            m7577for(this.f6247try);
        } else {
            m7578if(this.f6247try);
        }
        try {
            this.f6244for.close();
            this.f6246new.flush();
            this.f6246new.close();
        } catch (IOException e) {
            System.err.println("exception closing resources: " + e.getMessage());
        }
    }
}
