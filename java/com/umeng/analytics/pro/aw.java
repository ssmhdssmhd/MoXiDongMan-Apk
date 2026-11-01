package com.umeng.analytics.pro;

import com.umeng.analytics.pro.bm;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public class aw {
    private final bs a;
    private final cf b;

    public aw() {
        this(new bm.a());
    }

    private bn j(byte[] bArr, ba baVar, ba... baVarArr) throws az {
        this.b.a(bArr);
        int length = baVarArr.length + 1;
        ba[] baVarArr2 = new ba[length];
        int i = 0;
        baVarArr2[0] = baVar;
        int i2 = 0;
        while (i2 < baVarArr.length) {
            int i3 = i2 + 1;
            baVarArr2[i3] = baVarArr[i2];
            i2 = i3;
        }
        this.a.j();
        bn bnVarL = null;
        while (i < length) {
            bnVarL = this.a.l();
            if (bnVarL.b == 0 || bnVarL.c > baVarArr2[i].a()) {
                return null;
            }
            if (bnVarL.c != baVarArr2[i].a()) {
                bv.a(this.a, bnVarL.b);
                this.a.m();
            } else {
                i++;
                if (i < length) {
                    this.a.j();
                }
            }
        }
        return bnVarL;
    }

    public void a(at atVar, byte[] bArr) throws az {
        try {
            this.b.a(bArr);
            atVar.read(this.a);
        } finally {
            this.b.e();
            this.a.B();
        }
    }

    public Byte b(byte[] bArr, ba baVar, ba... baVarArr) throws az {
        return (Byte) a((byte) 3, bArr, baVar, baVarArr);
    }

    public Double c(byte[] bArr, ba baVar, ba... baVarArr) throws az {
        return (Double) a((byte) 4, bArr, baVar, baVarArr);
    }

    public Short d(byte[] bArr, ba baVar, ba... baVarArr) throws az {
        return (Short) a((byte) 6, bArr, baVar, baVarArr);
    }

    public Integer e(byte[] bArr, ba baVar, ba... baVarArr) throws az {
        return (Integer) a((byte) 8, bArr, baVar, baVarArr);
    }

    public Long f(byte[] bArr, ba baVar, ba... baVarArr) throws az {
        return (Long) a((byte) 10, bArr, baVar, baVarArr);
    }

    public String g(byte[] bArr, ba baVar, ba... baVarArr) throws az {
        return (String) a((byte) 11, bArr, baVar, baVarArr);
    }

    public ByteBuffer h(byte[] bArr, ba baVar, ba... baVarArr) throws az {
        return (ByteBuffer) a((byte) 100, bArr, baVar, baVarArr);
    }

    public Short i(byte[] bArr, ba baVar, ba... baVarArr) throws az {
        Short shValueOf;
        try {
            try {
                if (j(bArr, baVar, baVarArr) != null) {
                    this.a.j();
                    shValueOf = Short.valueOf(this.a.l().c);
                } else {
                    shValueOf = null;
                }
                return shValueOf;
            } catch (Exception e) {
                throw new az(e);
            }
        } finally {
            this.b.e();
            this.a.B();
        }
    }

    public aw(bu buVar) {
        cf cfVar = new cf();
        this.b = cfVar;
        this.a = buVar.a(cfVar);
    }

    public void a(at atVar, String str, String str2) throws az {
        try {
            try {
                a(atVar, str.getBytes(str2));
            } catch (UnsupportedEncodingException unused) {
                throw new az("JVM DOES NOT SUPPORT ENCODING: " + str2);
            }
        } finally {
            this.a.B();
        }
    }

    public void a(at atVar, byte[] bArr, ba baVar, ba... baVarArr) throws az {
        try {
            try {
                if (j(bArr, baVar, baVarArr) != null) {
                    atVar.read(this.a);
                }
            } catch (Exception e) {
                throw new az(e);
            }
        } finally {
            this.b.e();
            this.a.B();
        }
    }

    public Boolean a(byte[] bArr, ba baVar, ba... baVarArr) throws az {
        return (Boolean) a((byte) 2, bArr, baVar, baVarArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x009e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Object a(byte b, byte[] bArr, ba baVar, ba... baVarArr) throws az {
        Object objValueOf;
        try {
            try {
                bn bnVarJ = j(bArr, baVar, baVarArr);
                if (bnVarJ == null) {
                    objValueOf = null;
                } else if (b != 2) {
                    if (b != 3) {
                        if (b != 4) {
                            if (b != 6) {
                                if (b != 8) {
                                    if (b != 100) {
                                        if (b != 10) {
                                            if (b == 11 && bnVarJ.b == 11) {
                                                objValueOf = this.a.z();
                                            }
                                        } else if (bnVarJ.b == 10) {
                                            objValueOf = Long.valueOf(this.a.x());
                                        }
                                    } else if (bnVarJ.b == 11) {
                                        objValueOf = this.a.A();
                                    }
                                } else if (bnVarJ.b == 8) {
                                    objValueOf = Integer.valueOf(this.a.w());
                                }
                            } else if (bnVarJ.b == 6) {
                                objValueOf = Short.valueOf(this.a.v());
                            }
                        } else if (bnVarJ.b == 4) {
                            objValueOf = Double.valueOf(this.a.y());
                        }
                    } else if (bnVarJ.b == 3) {
                        objValueOf = Byte.valueOf(this.a.u());
                    }
                } else if (bnVarJ.b == 2) {
                    objValueOf = Boolean.valueOf(this.a.t());
                }
                return objValueOf;
            } catch (Exception e) {
                throw new az(e);
            }
        } finally {
            this.b.e();
            this.a.B();
        }
    }

    public void a(at atVar, String str) throws az {
        a(atVar, str.getBytes());
    }
}
