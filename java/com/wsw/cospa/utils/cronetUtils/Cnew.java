package com.wsw.cospa.utils.cronetUtils;

import android.os.ConditionVariable;
import android.support.v4.rs;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.util.List;
import java.util.Map;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.chromium.net.Creturn;
import org.chromium.net.Cstatic;

/* renamed from: com.wsw.cospa.utils.cronetUtils.new, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cnew extends Creturn.Cif {

    /* renamed from: catch, reason: not valid java name */
    private static final String f22578catch = "Callback";

    /* renamed from: class, reason: not valid java name */
    private static final int f22579class = 20;

    /* renamed from: break, reason: not valid java name */
    private WritableByteChannel f22580break;

    /* renamed from: case, reason: not valid java name */
    private Response f22581case;

    /* renamed from: do, reason: not valid java name */
    private Request f22582do;

    /* renamed from: else, reason: not valid java name */
    @Nullable
    private IOException f22583else;

    /* renamed from: for, reason: not valid java name */
    @Nullable
    private EventListener f22584for;

    /* renamed from: goto, reason: not valid java name */
    private ConditionVariable f22585goto;

    /* renamed from: if, reason: not valid java name */
    private Call f22586if;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    private Callback f22587new;

    /* renamed from: this, reason: not valid java name */
    private ByteArrayOutputStream f22588this;

    /* renamed from: try, reason: not valid java name */
    private int f22589try;

    public Cnew(Request request, Call call) {
        this(request, call, null, null);
    }

    /* renamed from: else, reason: not valid java name */
    private static Headers m26741else(Cstatic cstatic) {
        List<Map.Entry<String, String>> listMo37702if = cstatic.mo37702if();
        Headers.Builder builder = new Headers.Builder();
        for (Map.Entry<String, String> entry : listMo37702if) {
            try {
                if (!entry.getKey().equalsIgnoreCase("content-encoding")) {
                    builder.add(entry.getKey(), entry.getValue());
                }
            } catch (Exception unused) {
                StringBuilder sb = new StringBuilder();
                sb.append("Invalid HTTP header/value: ");
                sb.append(entry.getKey());
                sb.append(entry.getValue());
            }
        }
        return builder.build();
    }

    /* renamed from: goto, reason: not valid java name */
    private static Protocol m26742goto(Cstatic cstatic) {
        String lowerCase = cstatic.mo37705try().toLowerCase();
        return lowerCase.contains("quic") ? Protocol.QUIC : lowerCase.contains("spdy") ? Protocol.SPDY_3 : lowerCase.contains("h2") ? Protocol.HTTP_2 : lowerCase.contains("1.1") ? Protocol.HTTP_1_1 : Protocol.HTTP_1_0;
    }

    /* renamed from: this, reason: not valid java name */
    private static Response m26743this(Response response, Cstatic cstatic) {
        Protocol protocolM26742goto = m26742goto(cstatic);
        return response.newBuilder().receivedResponseAtMillis(System.currentTimeMillis()).protocol(protocolM26742goto).code(cstatic.mo37700for()).message(cstatic.mo37703new()).headers(m26741else(cstatic)).build();
    }

    /* renamed from: break, reason: not valid java name */
    public Response m26744break() throws IOException {
        this.f22585goto.block();
        IOException iOException = this.f22583else;
        if (iOException == null) {
            return this.f22581case;
        }
        throw iOException;
    }

    @Override // org.chromium.net.Creturn.Cif
    /* renamed from: case, reason: not valid java name */
    public void mo26745case(Creturn creturn, Cstatic cstatic) {
        EventListener eventListener = this.f22584for;
        if (eventListener != null) {
            eventListener.responseBodyEnd(this.f22586if, cstatic.mo37699else());
        }
        String strHeader = this.f22581case.header("content-type");
        if (strHeader == null) {
            strHeader = "text/plain; charset=\"utf-8\"";
        }
        ResponseBody responseBodyCreate = ResponseBody.create(this.f22588this.toByteArray(), MediaType.parse(strHeader));
        this.f22581case = this.f22581case.newBuilder().body(responseBodyCreate).request(this.f22582do.newBuilder().url(cstatic.mo37701goto()).build()).build();
        this.f22585goto.open();
        EventListener eventListener2 = this.f22584for;
        if (eventListener2 != null) {
            eventListener2.callEnd(this.f22586if);
        }
        Callback callback = this.f22587new;
        if (callback != null) {
            try {
                callback.onResponse(this.f22586if, this.f22581case);
            } catch (IOException unused) {
            }
        }
    }

    @Override // org.chromium.net.Creturn.Cif
    /* renamed from: do, reason: not valid java name */
    public void mo26746do(Creturn creturn, Cstatic cstatic) {
        this.f22585goto.open();
        EventListener eventListener = this.f22584for;
        if (eventListener != null) {
            eventListener.callEnd(this.f22586if);
        }
    }

    @Override // org.chromium.net.Creturn.Cif
    /* renamed from: for, reason: not valid java name */
    public void mo26747for(Creturn creturn, Cstatic cstatic, ByteBuffer byteBuffer) throws Exception {
        byteBuffer.flip();
        try {
            this.f22580break.write(byteBuffer);
            byteBuffer.clear();
            creturn.mo37618try(byteBuffer);
        } catch (IOException e) {
            throw e;
        }
    }

    @Override // org.chromium.net.Creturn.Cif
    /* renamed from: if, reason: not valid java name */
    public void mo26748if(Creturn creturn, Cstatic cstatic, rs rsVar) {
        IOException iOException = new IOException("Cronet Exception Occurred", rsVar);
        this.f22583else = iOException;
        this.f22585goto.open();
        EventListener eventListener = this.f22584for;
        if (eventListener != null) {
            eventListener.callFailed(this.f22586if, iOException);
        }
        Callback callback = this.f22587new;
        if (callback != null) {
            callback.onFailure(this.f22586if, iOException);
        }
    }

    @Override // org.chromium.net.Creturn.Cif
    /* renamed from: new, reason: not valid java name */
    public void mo26749new(Creturn creturn, Cstatic cstatic, String str) {
        if (this.f22589try > 20) {
            creturn.mo37612do();
        }
        this.f22589try++;
        creturn.mo37614if();
    }

    @Override // org.chromium.net.Creturn.Cif
    /* renamed from: try, reason: not valid java name */
    public void mo26750try(Creturn creturn, Cstatic cstatic) {
        Response responseM26743this = m26743this(this.f22581case, cstatic);
        this.f22581case = responseM26743this;
        EventListener eventListener = this.f22584for;
        if (eventListener != null) {
            eventListener.responseHeadersEnd(this.f22586if, responseM26743this);
            this.f22584for.responseBodyStart(this.f22586if);
        }
        creturn.mo37618try(ByteBuffer.allocateDirect(32768));
    }

    public Cnew(Request request, Call call, @Nullable EventListener eventListener, @Nullable Callback callback) {
        this.f22585goto = new ConditionVariable();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f22588this = byteArrayOutputStream;
        this.f22580break = Channels.newChannel(byteArrayOutputStream);
        this.f22582do = request;
        this.f22586if = call;
        this.f22581case = new Response.Builder().sentRequestAtMillis(System.currentTimeMillis()).request(request).protocol(Protocol.HTTP_1_0).code(0).message("").build();
        this.f22587new = callback;
        this.f22584for = eventListener;
    }
}
