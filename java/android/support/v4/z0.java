package android.support.v4;

/* loaded from: classes3.dex */
public class z0 {

    /* renamed from: abstract, reason: not valid java name */
    public static final short f8381abstract = 115;

    /* renamed from: break, reason: not valid java name */
    public static final short f8382break = 43;

    /* renamed from: case, reason: not valid java name */
    public static final short f8383case = 30;

    /* renamed from: catch, reason: not valid java name */
    public static final short f8384catch = 44;

    /* renamed from: class, reason: not valid java name */
    public static final short f8385class = 45;

    /* renamed from: const, reason: not valid java name */
    public static final short f8386const = 46;

    /* renamed from: continue, reason: not valid java name */
    public static final short f8387continue = 86;

    /* renamed from: default, reason: not valid java name */
    public static final short f8388default = 110;

    /* renamed from: do, reason: not valid java name */
    public static final short f8389do = 0;

    /* renamed from: else, reason: not valid java name */
    public static final short f8390else = 40;

    /* renamed from: extends, reason: not valid java name */
    public static final short f8391extends = 111;

    /* renamed from: final, reason: not valid java name */
    public static final short f8392final = 47;

    /* renamed from: finally, reason: not valid java name */
    public static final short f8393finally = 112;

    /* renamed from: for, reason: not valid java name */
    public static final short f8394for = 20;

    /* renamed from: goto, reason: not valid java name */
    public static final short f8395goto = 41;

    /* renamed from: if, reason: not valid java name */
    public static final short f8396if = 10;

    /* renamed from: import, reason: not valid java name */
    public static final short f8397import = 51;

    /* renamed from: native, reason: not valid java name */
    public static final short f8398native = 60;

    /* renamed from: new, reason: not valid java name */
    public static final short f8399new = 21;

    /* renamed from: package, reason: not valid java name */
    public static final short f8400package = 113;

    /* renamed from: private, reason: not valid java name */
    public static final short f8401private = 114;

    /* renamed from: public, reason: not valid java name */
    public static final short f8402public = 70;

    /* renamed from: return, reason: not valid java name */
    public static final short f8403return = 71;

    /* renamed from: static, reason: not valid java name */
    public static final short f8404static = 80;

    /* renamed from: super, reason: not valid java name */
    public static final short f8405super = 48;

    /* renamed from: switch, reason: not valid java name */
    public static final short f8406switch = 90;

    /* renamed from: this, reason: not valid java name */
    public static final short f8407this = 42;

    /* renamed from: throw, reason: not valid java name */
    public static final short f8408throw = 49;

    /* renamed from: throws, reason: not valid java name */
    public static final short f8409throws = 100;

    /* renamed from: try, reason: not valid java name */
    public static final short f8410try = 22;

    /* renamed from: while, reason: not valid java name */
    public static final short f8411while = 50;

    /* renamed from: do, reason: not valid java name */
    public static String m10002do(short s) {
        if (s == 0) {
            return "close_notify";
        }
        if (s == 10) {
            return "unexpected_message";
        }
        if (s == 30) {
            return "decompression_failure";
        }
        if (s == 60) {
            return "export_restriction";
        }
        if (s == 80) {
            return "internal_error";
        }
        if (s == 86) {
            return "inappropriate_fallback";
        }
        if (s == 90) {
            return "user_canceled";
        }
        if (s == 100) {
            return "no_renegotiation";
        }
        if (s == 70) {
            return "protocol_version";
        }
        if (s == 71) {
            return "insufficient_security";
        }
        switch (s) {
            case 20:
                return "bad_record_mac";
            case 21:
                return "decryption_failed";
            case 22:
                return "record_overflow";
            default:
                switch (s) {
                    case 40:
                        return "handshake_failure";
                    case 41:
                        return "no_certificate";
                    case 42:
                        return "bad_certificate";
                    case 43:
                        return "unsupported_certificate";
                    case 44:
                        return "certificate_revoked";
                    case 45:
                        return "certificate_expired";
                    case 46:
                        return "certificate_unknown";
                    case 47:
                        return "illegal_parameter";
                    case 48:
                        return "unknown_ca";
                    case 49:
                        return "access_denied";
                    case 50:
                        return "decode_error";
                    case 51:
                        return "decrypt_error";
                    default:
                        switch (s) {
                            case 110:
                                return "unsupported_extension";
                            case 111:
                                return "certificate_unobtainable";
                            case 112:
                                return "unrecognized_name";
                            case 113:
                                return "bad_certificate_status_response";
                            case 114:
                                return "bad_certificate_hash_value";
                            case 115:
                                return "unknown_psk_identity";
                            default:
                                return "UNKNOWN";
                        }
                }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static String m10003if(short s) {
        return m10002do(s) + "(" + ((int) s) + ")";
    }
}
