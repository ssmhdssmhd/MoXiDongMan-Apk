package fi.iki.elonen;

import android.support.v4.hy1;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.qy0;
import android.support.v4.wd;
import androidx.core.view.PointerIconCompat;
import fi.iki.elonen.NanoHTTPD;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import okio.Utf8;

/* renamed from: fi.iki.elonen.do, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cdo extends NanoHTTPD {
    public static final String HEADER_CONNECTION = "connection";
    public static final String HEADER_CONNECTION_VALUE = "Upgrade";
    public static final String HEADER_UPGRADE = "upgrade";
    public static final String HEADER_UPGRADE_VALUE = "websocket";
    public static final String HEADER_WEBSOCKET_ACCEPT = "sec-websocket-accept";
    public static final String HEADER_WEBSOCKET_KEY = "sec-websocket-key";
    public static final String HEADER_WEBSOCKET_PROTOCOL = "sec-websocket-protocol";
    public static final String HEADER_WEBSOCKET_VERSION = "sec-websocket-version";
    public static final String HEADER_WEBSOCKET_VERSION_VALUE = "13";
    private static final String WEBSOCKET_KEY_MAGIC = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    private static final Logger LOG = Logger.getLogger(Cdo.class.getName());
    private static final char[] ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();

    /* renamed from: fi.iki.elonen.do$for, reason: invalid class name */
    public static abstract class Cfor {
        private final NanoHTTPD.IHTTPSession handshakeRequest;
        private final NanoHTTPD.Response handshakeResponse;
        private final InputStream in;
        private OutputStream out;
        private Ctry.Cfor continuousOpCode = null;
        private final List<Ctry> continuousFrames = new LinkedList();
        private Cif state = Cif.UNCONNECTED;

        /* renamed from: fi.iki.elonen.do$for$do, reason: invalid class name and collision with other inner class name */
        public class C0238do extends NanoHTTPD.Response {
            public C0238do(NanoHTTPD.Response.IStatus iStatus, String str, InputStream inputStream, long j) {
                super(iStatus, str, inputStream, j);
            }

            @Override // fi.iki.elonen.NanoHTTPD.Response
            /* renamed from: catch */
            public void mo27567catch(OutputStream outputStream) throws IOException, NumberFormatException {
                Cfor.this.out = outputStream;
                Cfor.this.state = Cif.CONNECTING;
                super.mo27567catch(outputStream);
                Cfor.this.state = Cif.OPEN;
                Cfor.this.onOpen();
                Cfor.this.readWebsocket();
            }
        }

        public Cfor(NanoHTTPD.IHTTPSession iHTTPSession) {
            C0238do c0238do = new C0238do(NanoHTTPD.Response.Cfor.SWITCH_PROTOCOL, null, null, 0L);
            this.handshakeResponse = c0238do;
            this.handshakeRequest = iHTTPSession;
            this.in = iHTTPSession.getInputStream();
            c0238do.m27571if(Cdo.HEADER_UPGRADE, Cdo.HEADER_UPGRADE_VALUE);
            c0238do.m27571if(Cdo.HEADER_CONNECTION, "Upgrade");
        }

        private void doClose(Ctry.EnumC0239do enumC0239do, String str, boolean z) throws IOException {
            if (this.state == Cif.CLOSED) {
                return;
            }
            InputStream inputStream = this.in;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    Cdo.LOG.log(Level.FINE, "close failed", (Throwable) e);
                }
            }
            OutputStream outputStream = this.out;
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e2) {
                    Cdo.LOG.log(Level.FINE, "close failed", (Throwable) e2);
                }
            }
            this.state = Cif.CLOSED;
            onClose(enumC0239do, str, z);
        }

        private void handleCloseFrame(Ctry ctry) throws IOException {
            String strM27634throws;
            Ctry.EnumC0239do enumC0239doM27633switch = Ctry.EnumC0239do.NormalClosure;
            if (ctry instanceof Ctry.Cif) {
                Ctry.Cif cif = (Ctry.Cif) ctry;
                enumC0239doM27633switch = cif.m27633switch();
                strM27634throws = cif.m27634throws();
            } else {
                strM27634throws = "";
            }
            if (this.state == Cif.CLOSING) {
                doClose(enumC0239doM27633switch, strM27634throws, false);
            } else {
                close(enumC0239doM27633switch, strM27634throws, true);
            }
        }

        private void handleFrameFragment(Ctry ctry) throws IOException {
            if (ctry.m27619case() != Ctry.Cfor.Continuation) {
                if (this.continuousOpCode != null) {
                    throw new Cnew(Ctry.EnumC0239do.ProtocolError, "Previous continuous frame sequence not completed.");
                }
                this.continuousOpCode = ctry.m27619case();
                this.continuousFrames.clear();
                this.continuousFrames.add(ctry);
                return;
            }
            if (!ctry.m27622goto()) {
                if (this.continuousOpCode == null) {
                    throw new Cnew(Ctry.EnumC0239do.ProtocolError, "Continuous frame sequence was not started.");
                }
                this.continuousFrames.add(ctry);
            } else {
                if (this.continuousOpCode == null) {
                    throw new Cnew(Ctry.EnumC0239do.ProtocolError, "Continuous frame sequence was not started.");
                }
                this.continuousFrames.add(ctry);
                onMessage(new Ctry(this.continuousOpCode, this.continuousFrames));
                this.continuousOpCode = null;
                this.continuousFrames.clear();
            }
        }

        private void handleWebsocketFrame(Ctry ctry) throws IOException {
            debugFrameReceived(ctry);
            if (ctry.m27619case() == Ctry.Cfor.Close) {
                handleCloseFrame(ctry);
                return;
            }
            if (ctry.m27619case() == Ctry.Cfor.Ping) {
                sendFrame(new Ctry(Ctry.Cfor.Pong, true, ctry.m27625new()));
                return;
            }
            if (ctry.m27619case() == Ctry.Cfor.Pong) {
                onPong(ctry);
                return;
            }
            if (!ctry.m27622goto() || ctry.m27619case() == Ctry.Cfor.Continuation) {
                handleFrameFragment(ctry);
            } else {
                if (this.continuousOpCode != null) {
                    throw new Cnew(Ctry.EnumC0239do.ProtocolError, "Continuous frame sequence not completed.");
                }
                if (ctry.m27619case() != Ctry.Cfor.Text && ctry.m27619case() != Ctry.Cfor.Binary) {
                    throw new Cnew(Ctry.EnumC0239do.ProtocolError, "Non control or continuous frame expected.");
                }
                onMessage(ctry);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void readWebsocket() throws IOException {
            while (true) {
                try {
                    try {
                        if (this.state != Cif.OPEN) {
                            break;
                        } else {
                            handleWebsocketFrame(Ctry.m27612catch(this.in));
                        }
                    } catch (CharacterCodingException e) {
                        onException(e);
                        doClose(Ctry.EnumC0239do.InvalidFramePayloadData, e.toString(), false);
                    } catch (IOException e2) {
                        onException(e2);
                        if (e2 instanceof Cnew) {
                            doClose(((Cnew) e2).getCode(), ((Cnew) e2).getReason(), false);
                        }
                    }
                } finally {
                    doClose(Ctry.EnumC0239do.InternalServerError, "Handler terminated without closing the connection.", false);
                }
            }
        }

        public void close(Ctry.EnumC0239do enumC0239do, String str, boolean z) throws IOException {
            Cif cif = this.state;
            this.state = Cif.CLOSING;
            if (cif == Cif.OPEN) {
                sendFrame(new Ctry.Cif(enumC0239do, str));
            } else {
                doClose(enumC0239do, str, z);
            }
        }

        public void debugFrameReceived(Ctry ctry) {
        }

        public void debugFrameSent(Ctry ctry) {
        }

        public NanoHTTPD.IHTTPSession getHandshakeRequest() {
            return this.handshakeRequest;
        }

        public NanoHTTPD.Response getHandshakeResponse() {
            return this.handshakeResponse;
        }

        public boolean isOpen() {
            return this.state == Cif.OPEN;
        }

        public abstract void onClose(Ctry.EnumC0239do enumC0239do, String str, boolean z);

        public abstract void onException(IOException iOException);

        public abstract void onMessage(Ctry ctry);

        public abstract void onOpen();

        public abstract void onPong(Ctry ctry);

        public void ping(byte[] bArr) throws IOException {
            sendFrame(new Ctry(Ctry.Cfor.Ping, true, bArr));
        }

        public void send(byte[] bArr) throws IOException {
            sendFrame(new Ctry(Ctry.Cfor.Binary, true, bArr));
        }

        public synchronized void sendFrame(Ctry ctry) throws IOException {
            debugFrameSent(ctry);
            ctry.m27626return(this.out);
        }

        public void send(String str) throws IOException {
            sendFrame(new Ctry(Ctry.Cfor.Text, true, str));
        }
    }

    /* renamed from: fi.iki.elonen.do$if, reason: invalid class name */
    public enum Cif {
        UNCONNECTED,
        CONNECTING,
        OPEN,
        CLOSING,
        CLOSED
    }

    /* renamed from: fi.iki.elonen.do$new, reason: invalid class name */
    public static class Cnew extends IOException {
        private static final long serialVersionUID = 1;
        private final Ctry.EnumC0239do code;
        private final String reason;

        public Cnew(Ctry.EnumC0239do enumC0239do, String str) {
            this(enumC0239do, str, null);
        }

        public Ctry.EnumC0239do getCode() {
            return this.code;
        }

        public String getReason() {
            return this.reason;
        }

        public Cnew(Ctry.EnumC0239do enumC0239do, String str, Exception exc) {
            super(enumC0239do + ": " + str, exc);
            this.code = enumC0239do;
            this.reason = str;
        }

        public Cnew(Exception exc) {
            this(Ctry.EnumC0239do.InternalServerError, exc.toString(), exc);
        }
    }

    public Cdo(int i) {
        super(i);
    }

    private static String encodeBase64(byte[] bArr) {
        int i;
        byte b;
        byte b2;
        int length = bArr.length;
        char[] cArr = new char[((length + 2) / 3) * 4];
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = i2 + 1;
            byte b3 = bArr[i2];
            if (i4 < length) {
                i = i4 + 1;
                b = bArr[i4];
            } else {
                i = i4;
                b = 0;
            }
            if (i < length) {
                b2 = bArr[i];
                i++;
            } else {
                b2 = 0;
            }
            int i5 = i3 + 1;
            char[] cArr2 = ALPHABET;
            cArr[i3] = cArr2[(b3 >> 2) & 63];
            int i6 = i5 + 1;
            cArr[i5] = cArr2[((b3 << 4) | ((b & 255) >> 4)) & 63];
            int i7 = i6 + 1;
            cArr[i6] = cArr2[((b << 2) | ((b2 & 255) >> 6)) & 63];
            i3 = i7 + 1;
            cArr[i7] = cArr2[b2 & Utf8.REPLACEMENT_BYTE];
            i2 = i;
        }
        int i8 = length % 3;
        if (i8 != 1) {
            if (i8 == 2) {
            }
            return new String(cArr);
        }
        i3--;
        cArr[i3] = hy1.f2563new;
        cArr[i3 - 1] = hy1.f2563new;
        return new String(cArr);
    }

    private boolean isWebSocketConnectionHeader(Map<String, String> map) {
        String str = map.get(HEADER_CONNECTION);
        return str != null && str.toLowerCase().contains("Upgrade".toLowerCase());
    }

    public static String makeAcceptKey(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(qy0.f5539case);
        String str2 = str + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
        messageDigest.update(str2.getBytes(), 0, str2.length());
        return encodeBase64(messageDigest.digest());
    }

    public boolean isWebsocketRequested(NanoHTTPD.IHTTPSession iHTTPSession) {
        Map<String, String> headers = iHTTPSession.getHeaders();
        return HEADER_UPGRADE_VALUE.equalsIgnoreCase(headers.get(HEADER_UPGRADE)) && isWebSocketConnectionHeader(headers);
    }

    public abstract Cfor openWebSocket(NanoHTTPD.IHTTPSession iHTTPSession);

    @Override // fi.iki.elonen.NanoHTTPD
    public NanoHTTPD.Response serve(NanoHTTPD.IHTTPSession iHTTPSession) {
        Map<String, String> headers = iHTTPSession.getHeaders();
        if (!isWebsocketRequested(iHTTPSession)) {
            return serveHttp(iHTTPSession);
        }
        if (!HEADER_WEBSOCKET_VERSION_VALUE.equalsIgnoreCase(headers.get(HEADER_WEBSOCKET_VERSION))) {
            return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Cfor.BAD_REQUEST, NanoHTTPD.MIME_PLAINTEXT, "Invalid Websocket-Version " + headers.get(HEADER_WEBSOCKET_VERSION));
        }
        if (!headers.containsKey(HEADER_WEBSOCKET_KEY)) {
            return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Cfor.BAD_REQUEST, NanoHTTPD.MIME_PLAINTEXT, "Missing Websocket-Key");
        }
        NanoHTTPD.Response handshakeResponse = openWebSocket(iHTTPSession).getHandshakeResponse();
        try {
            handshakeResponse.m27571if(HEADER_WEBSOCKET_ACCEPT, makeAcceptKey(headers.get(HEADER_WEBSOCKET_KEY)));
            if (headers.containsKey(HEADER_WEBSOCKET_PROTOCOL)) {
                handshakeResponse.m27571if(HEADER_WEBSOCKET_PROTOCOL, headers.get(HEADER_WEBSOCKET_PROTOCOL).split(",")[0]);
            }
            return handshakeResponse;
        } catch (NoSuchAlgorithmException unused) {
            return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Cfor.INTERNAL_ERROR, NanoHTTPD.MIME_PLAINTEXT, "The SHA-1 Algorithm required for websockets is not available on the server.");
        }
    }

    public NanoHTTPD.Response serveHttp(NanoHTTPD.IHTTPSession iHTTPSession) {
        return super.serve(iHTTPSession);
    }

    @Override // fi.iki.elonen.NanoHTTPD
    public boolean useGzipWhenAccepted(NanoHTTPD.Response response) {
        return false;
    }

    public Cdo(String str, int i) {
        super(str, i);
    }

    /* renamed from: fi.iki.elonen.do$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: else, reason: not valid java name */
        public static final Charset f23281else = Charset.forName("UTF-8");

        /* renamed from: case, reason: not valid java name */
        private transient String f23282case;

        /* renamed from: do, reason: not valid java name */
        private Cfor f23283do;

        /* renamed from: for, reason: not valid java name */
        private byte[] f23284for;

        /* renamed from: if, reason: not valid java name */
        private boolean f23285if;

        /* renamed from: new, reason: not valid java name */
        private byte[] f23286new;

        /* renamed from: try, reason: not valid java name */
        private transient int f23287try;

        /* renamed from: fi.iki.elonen.do$try$do, reason: invalid class name and collision with other inner class name */
        public enum EnumC0239do {
            NormalClosure(1000),
            GoingAway(1001),
            ProtocolError(1002),
            UnsupportedData(1003),
            NoStatusRcvd(1005),
            AbnormalClosure(1006),
            InvalidFramePayloadData(1007),
            PolicyViolation(PointerIconCompat.TYPE_TEXT),
            MessageTooBig(PointerIconCompat.TYPE_VERTICAL_TEXT),
            MandatoryExt(PointerIconCompat.TYPE_ALIAS),
            InternalServerError(PointerIconCompat.TYPE_COPY),
            TLSHandshake(PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW);

            private final int code;

            EnumC0239do(int i) {
                this.code = i;
            }

            public static EnumC0239do find(int i) {
                for (EnumC0239do enumC0239do : values()) {
                    if (enumC0239do.getValue() == i) {
                        return enumC0239do;
                    }
                }
                return null;
            }

            public int getValue() {
                return this.code;
            }
        }

        /* renamed from: fi.iki.elonen.do$try$for, reason: invalid class name */
        public enum Cfor {
            Continuation(0),
            Text(1),
            Binary(2),
            Close(8),
            Ping(9),
            Pong(10);

            private final byte code;

            Cfor(int i) {
                this.code = (byte) i;
            }

            public static Cfor find(byte b) {
                for (Cfor cfor : values()) {
                    if (cfor.getValue() == b) {
                        return cfor;
                    }
                }
                return null;
            }

            public byte getValue() {
                return this.code;
            }

            public boolean isControlFrame() {
                return this == Close || this == Ping || this == Pong;
            }
        }

        /* renamed from: fi.iki.elonen.do$try$if, reason: invalid class name */
        public static class Cif extends Ctry {

            /* renamed from: break, reason: not valid java name */
            public static final /* synthetic */ boolean f23290break = false;

            /* renamed from: goto, reason: not valid java name */
            private EnumC0239do f23291goto;

            /* renamed from: this, reason: not valid java name */
            private String f23292this;

            /* renamed from: static, reason: not valid java name */
            private static byte[] m27632static(EnumC0239do enumC0239do, String str) throws CharacterCodingException {
                if (enumC0239do == null) {
                    return new byte[0];
                }
                byte[] bArrM27618public = Ctry.m27618public(str);
                byte[] bArr = new byte[bArrM27618public.length + 2];
                bArr[0] = (byte) ((enumC0239do.getValue() >> 8) & 255);
                bArr[1] = (byte) (enumC0239do.getValue() & 255);
                System.arraycopy(bArrM27618public, 0, bArr, 2, bArrM27618public.length);
                return bArr;
            }

            /* renamed from: switch, reason: not valid java name */
            public EnumC0239do m27633switch() {
                return this.f23291goto;
            }

            /* renamed from: throws, reason: not valid java name */
            public String m27634throws() {
                return this.f23292this;
            }

            public Cif(EnumC0239do enumC0239do, String str) throws CharacterCodingException {
                super(Cfor.Close, true, m27632static(enumC0239do, str));
            }

            private Cif(Ctry ctry) throws CharacterCodingException {
                super(ctry);
                if (ctry.m27625new().length >= 2) {
                    this.f23291goto = EnumC0239do.find((ctry.m27625new()[1] & 255) | ((ctry.m27625new()[0] & 255) << 8));
                    this.f23292this = Ctry.m27617if(m27625new(), 2, m27625new().length - 2);
                }
            }
        }

        private Ctry(Cfor cfor, boolean z) {
            m27631while(cfor);
            m27627super(z);
        }

        /* renamed from: break, reason: not valid java name */
        private String m27611break() {
            if (this.f23286new == null) {
                return "null";
            }
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            sb.append(this.f23286new.length);
            sb.append("b] ");
            if (m27619case() == Cfor.Text) {
                String strM27620else = m27620else();
                if (strM27620else.length() > 100) {
                    sb.append(strM27620else.substring(0, 100));
                    sb.append("...");
                } else {
                    sb.append(strM27620else);
                }
            } else {
                sb.append("0x");
                for (int i = 0; i < Math.min(this.f23286new.length, 50); i++) {
                    sb.append(Integer.toHexString(this.f23286new[i] & 255));
                }
                if (this.f23286new.length > 50) {
                    sb.append("...");
                }
            }
            return sb.toString();
        }

        /* renamed from: catch, reason: not valid java name */
        public static Ctry m27612catch(InputStream inputStream) throws IOException {
            byte bM27616for = (byte) m27616for(inputStream.read());
            boolean z = (bM27616for & 128) != 0;
            int i = bM27616for & 15;
            Cfor cforFind = Cfor.find((byte) i);
            int i2 = bM27616for & 112;
            if (i2 != 0) {
                throw new Cnew(EnumC0239do.ProtocolError, "The reserved bits (" + Integer.toBinaryString(i2) + ") must be 0.");
            }
            if (cforFind == null) {
                throw new Cnew(EnumC0239do.ProtocolError, "Received frame with reserved/unknown opcode " + i + ".");
            }
            if (cforFind.isControlFrame() && !z) {
                throw new Cnew(EnumC0239do.ProtocolError, "Fragmented control frame.");
            }
            Ctry ctry = new Ctry(cforFind, z);
            ctry.m27614const(inputStream);
            ctry.m27613class(inputStream);
            return ctry.m27619case() == Cfor.Close ? new Cif() : ctry;
        }

        /* renamed from: class, reason: not valid java name */
        private void m27613class(InputStream inputStream) throws IOException {
            this.f23286new = new byte[this.f23287try];
            int i = 0;
            int iM27616for = 0;
            while (true) {
                int i2 = this.f23287try;
                if (iM27616for >= i2) {
                    break;
                } else {
                    iM27616for += m27616for(inputStream.read(this.f23286new, iM27616for, i2 - iM27616for));
                }
            }
            if (m27628this()) {
                while (true) {
                    byte[] bArr = this.f23286new;
                    if (i >= bArr.length) {
                        break;
                    }
                    bArr[i] = (byte) (bArr[i] ^ this.f23284for[i % 4]);
                    i++;
                }
            }
            if (m27619case() == Cfor.Text) {
                this.f23282case = m27615do(m27625new());
            }
        }

        /* renamed from: const, reason: not valid java name */
        private void m27614const(InputStream inputStream) throws IOException {
            byte bM27616for = (byte) m27616for(inputStream.read());
            int iM27616for = 0;
            boolean z = (bM27616for & 128) != 0;
            byte b = (byte) (bM27616for & Byte.MAX_VALUE);
            this.f23287try = b;
            if (b == 126) {
                int iM27616for2 = ((m27616for(inputStream.read()) << 8) | m27616for(inputStream.read())) & 65535;
                this.f23287try = iM27616for2;
                if (iM27616for2 < 126) {
                    throw new Cnew(EnumC0239do.ProtocolError, "Invalid data frame 2byte length. (not using minimal length encoding)");
                }
            } else if (b == Byte.MAX_VALUE) {
                long jM27616for = (m27616for(inputStream.read()) << 56) | (m27616for(inputStream.read()) << 48) | (m27616for(inputStream.read()) << 40) | (m27616for(inputStream.read()) << 32) | (m27616for(inputStream.read()) << 24) | (m27616for(inputStream.read()) << 16) | (m27616for(inputStream.read()) << 8) | m27616for(inputStream.read());
                if (jM27616for < PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                    throw new Cnew(EnumC0239do.ProtocolError, "Invalid data frame 4byte length. (not using minimal length encoding)");
                }
                if (jM27616for < 0 || jM27616for > 2147483647L) {
                    throw new Cnew(EnumC0239do.MessageTooBig, "Max frame length has been exceeded.");
                }
                this.f23287try = (int) jM27616for;
            }
            if (this.f23283do.isControlFrame()) {
                int i = this.f23287try;
                if (i > 125) {
                    throw new Cnew(EnumC0239do.ProtocolError, "Control frame with payload length > 125 bytes.");
                }
                if (this.f23283do == Cfor.Close && i == 1) {
                    throw new Cnew(EnumC0239do.ProtocolError, "Received close frame with payload len 1.");
                }
            }
            if (!z) {
                return;
            }
            this.f23284for = new byte[4];
            while (true) {
                byte[] bArr = this.f23284for;
                if (iM27616for >= bArr.length) {
                    return;
                } else {
                    iM27616for += m27616for(inputStream.read(bArr, iM27616for, bArr.length - iM27616for));
                }
            }
        }

        /* renamed from: do, reason: not valid java name */
        public static String m27615do(byte[] bArr) throws CharacterCodingException {
            return new String(bArr, f23281else);
        }

        /* renamed from: for, reason: not valid java name */
        private static int m27616for(int i) throws IOException {
            if (i >= 0) {
                return i;
            }
            throw new EOFException();
        }

        /* renamed from: if, reason: not valid java name */
        public static String m27617if(byte[] bArr, int i, int i2) throws CharacterCodingException {
            return new String(bArr, i, i2, f23281else);
        }

        /* renamed from: public, reason: not valid java name */
        public static byte[] m27618public(String str) throws CharacterCodingException {
            return str.getBytes(f23281else);
        }

        /* renamed from: case, reason: not valid java name */
        public Cfor m27619case() {
            return this.f23283do;
        }

        /* renamed from: else, reason: not valid java name */
        public String m27620else() {
            if (this.f23282case == null) {
                try {
                    this.f23282case = m27615do(m27625new());
                } catch (CharacterCodingException e) {
                    throw new RuntimeException("Undetected CharacterCodingException", e);
                }
            }
            return this.f23282case;
        }

        /* renamed from: final, reason: not valid java name */
        public void m27621final(byte[] bArr) {
            this.f23286new = bArr;
            this.f23287try = bArr.length;
            this.f23282case = null;
        }

        /* renamed from: goto, reason: not valid java name */
        public boolean m27622goto() {
            return this.f23285if;
        }

        /* renamed from: import, reason: not valid java name */
        public void m27623import(String str) throws CharacterCodingException {
            this.f23286new = m27618public(str);
            this.f23287try = str.length();
            this.f23282case = str;
        }

        /* renamed from: native, reason: not valid java name */
        public void m27624native() {
            m27629throw(null);
        }

        /* renamed from: new, reason: not valid java name */
        public byte[] m27625new() {
            return this.f23286new;
        }

        /* renamed from: return, reason: not valid java name */
        public void m27626return(OutputStream outputStream) throws IOException {
            outputStream.write((byte) ((this.f23285if ? (byte) 128 : (byte) 0) | (this.f23283do.getValue() & 15)));
            int length = m27625new().length;
            this.f23287try = length;
            if (length <= 125) {
                outputStream.write(m27628this() ? ((byte) this.f23287try) | 128 : (byte) this.f23287try);
            } else if (length <= 65535) {
                outputStream.write(m27628this() ? wd.i2 : 126);
                outputStream.write(this.f23287try >>> 8);
                outputStream.write(this.f23287try);
            } else {
                outputStream.write(m27628this() ? 255 : 127);
                outputStream.write((this.f23287try >>> 56) & 0);
                outputStream.write((this.f23287try >>> 48) & 0);
                outputStream.write((this.f23287try >>> 40) & 0);
                outputStream.write((this.f23287try >>> 32) & 0);
                outputStream.write(this.f23287try >>> 24);
                outputStream.write(this.f23287try >>> 16);
                outputStream.write(this.f23287try >>> 8);
                outputStream.write(this.f23287try);
            }
            if (m27628this()) {
                outputStream.write(this.f23284for);
                for (int i = 0; i < this.f23287try; i++) {
                    outputStream.write(m27625new()[i] ^ this.f23284for[i % 4]);
                }
            } else {
                outputStream.write(m27625new());
            }
            outputStream.flush();
        }

        /* renamed from: super, reason: not valid java name */
        public void m27627super(boolean z) {
            this.f23285if = z;
        }

        /* renamed from: this, reason: not valid java name */
        public boolean m27628this() {
            byte[] bArr = this.f23284for;
            return bArr != null && bArr.length == 4;
        }

        /* renamed from: throw, reason: not valid java name */
        public void m27629throw(byte[] bArr) {
            if (bArr == null || bArr.length == 4) {
                this.f23284for = bArr;
                return;
            }
            throw new IllegalArgumentException("MaskingKey " + Arrays.toString(bArr) + " hasn't length 4");
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("WS[");
            sb.append(m27619case());
            sb.append(", ");
            sb.append(m27622goto() ? "fin" : "inter");
            sb.append(", ");
            sb.append(m27628this() ? "masked" : "unmasked");
            sb.append(", ");
            sb.append(m27611break());
            sb.append(']');
            return sb.toString();
        }

        /* renamed from: try, reason: not valid java name */
        public byte[] m27630try() {
            return this.f23284for;
        }

        /* renamed from: while, reason: not valid java name */
        public void m27631while(Cfor cfor) {
            this.f23283do = cfor;
        }

        public Ctry(Cfor cfor, boolean z, byte[] bArr) {
            this(cfor, z, bArr, (byte[]) null);
        }

        public Ctry(Cfor cfor, boolean z, byte[] bArr, byte[] bArr2) {
            this(cfor, z);
            m27629throw(bArr2);
            m27621final(bArr);
        }

        public Ctry(Cfor cfor, boolean z, String str) throws CharacterCodingException {
            this(cfor, z, str, (byte[]) null);
        }

        public Ctry(Cfor cfor, boolean z, String str, byte[] bArr) throws CharacterCodingException {
            this(cfor, z);
            m27629throw(bArr);
            m27623import(str);
        }

        public Ctry(Cfor cfor, List<Ctry> list) throws Cnew {
            m27631while(cfor);
            m27627super(true);
            long length = 0;
            while (list.iterator().hasNext()) {
                length += r7.next().m27625new().length;
            }
            if (length >= 0 && length <= 2147483647L) {
                int i = (int) length;
                this.f23287try = i;
                byte[] bArr = new byte[i];
                int length2 = 0;
                for (Ctry ctry : list) {
                    System.arraycopy(ctry.m27625new(), 0, bArr, length2, ctry.m27625new().length);
                    length2 += ctry.m27625new().length;
                }
                m27621final(bArr);
                return;
            }
            throw new Cnew(EnumC0239do.MessageTooBig, "Max frame length has been exceeded.");
        }

        public Ctry(Ctry ctry) {
            m27631while(ctry.m27619case());
            m27627super(ctry.m27622goto());
            m27621final(ctry.m27625new());
            m27629throw(ctry.m27630try());
        }
    }
}
