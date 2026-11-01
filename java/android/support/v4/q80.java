package android.support.v4;

import android.net.ParseException;
import com.google.gson.JsonParseException;
import com.wsw.cospa.CartoonApplication;
import java.net.ConnectException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.script.ScriptException;
import org.json.JSONException;
import retrofit2.HttpException;

/* loaded from: classes2.dex */
public class q80 {

    /* renamed from: do, reason: not valid java name */
    private static final int f5288do = 403;

    /* renamed from: for, reason: not valid java name */
    private static final int f5289for = 408;

    /* renamed from: if, reason: not valid java name */
    private static final int f5290if = 404;

    /* renamed from: new, reason: not valid java name */
    private static final int f5291new = 500;

    /* renamed from: try, reason: not valid java name */
    private static final int f5292try = 504;

    /* renamed from: android.support.v4.q80$do, reason: invalid class name */
    public class Cdo {

        /* renamed from: case, reason: not valid java name */
        public static final int f5293case = 1005;

        /* renamed from: else, reason: not valid java name */
        public static final int f5294else = 1006;

        /* renamed from: for, reason: not valid java name */
        public static final int f5295for = 1001;

        /* renamed from: goto, reason: not valid java name */
        public static final int f5296goto = 1007;

        /* renamed from: if, reason: not valid java name */
        public static final int f5297if = 1000;

        /* renamed from: new, reason: not valid java name */
        public static final int f5298new = 1002;

        /* renamed from: try, reason: not valid java name */
        public static final int f5299try = 1003;

        public Cdo() {
        }
    }

    /* renamed from: android.support.v4.q80$for, reason: invalid class name */
    public class Cfor extends RuntimeException {
        public int code;
        public String message;

        public Cfor(int i, String str) {
            this.code = i;
            this.message = str;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Cif m6440do(Throwable th) {
        if (!g31.m2570try(CartoonApplication.m24690do())) {
            Cif cif = new Cif(th, 1006);
            cif.message = "网络中断，请检查网络状态！";
            return cif;
        }
        if (th instanceof HttpException) {
            Cif cif2 = new Cif(th, 1003);
            int iCode = ((HttpException) th).code();
            if (iCode == 403) {
                cif2.message = "服务器已经理解请求，但是拒绝执行它";
            } else if (iCode == 404) {
                cif2.message = "服务器异常，请稍后再试";
            } else if (iCode == f5289for) {
                cif2.message = "请求超时,请重试";
            } else if (iCode == 500 || iCode == 504) {
                cif2.message = "服务器遇到了一个未曾预料的状况，无法完成对请求的处理";
            }
            return cif2;
        }
        if (th instanceof Cfor) {
            Cfor cfor = (Cfor) th;
            Cif cif3 = new Cif(cfor, cfor.code);
            cif3.message = cfor.message;
            return cif3;
        }
        if ((th instanceof JsonParseException) || (th instanceof JSONException) || (th instanceof ParseException)) {
            Cif cif4 = new Cif(th, 1001);
            cif4.message = "解析错误";
            return cif4;
        }
        if (th instanceof ConnectException) {
            Cif cif5 = new Cif(th, 1002);
            cif5.message = "连接失败，请重试";
            return cif5;
        }
        if (th instanceof SSLHandshakeException) {
            Cif cif6 = new Cif(th, 1005);
            cif6.message = "证书验证失败";
            return cif6;
        }
        if (th instanceof SocketTimeoutException) {
            Cif cif7 = new Cif(th, 1006);
            cif7.message = "连接超时，请检查当前网络！";
            return cif7;
        }
        if (th instanceof UnknownHostException) {
            Cif cif8 = new Cif(th, 1006);
            cif8.message = "无效的host，请检查源的域名";
            return cif8;
        }
        if (th instanceof SSLException) {
            Cif cif9 = new Cif(th, 1006);
            cif9.message = "网络中断，请检查网络状态！";
            return cif9;
        }
        if (th instanceof ScriptException) {
            Cif cif10 = new Cif(th, 1007);
            cif10.message = "JS解析错误";
            return cif10;
        }
        Cif cif11 = new Cif(th, 1000);
        cif11.message = th.getMessage();
        return cif11;
    }

    /* renamed from: android.support.v4.q80$if, reason: invalid class name */
    public static class Cif extends Exception {
        public int code;
        public String message;

        public Cif(Throwable th, int i) {
            super(th);
            this.code = i;
        }

        public Cif(String str, int i) {
            this.code = i;
            this.message = str;
        }
    }
}
