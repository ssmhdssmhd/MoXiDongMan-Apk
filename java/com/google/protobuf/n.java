package com.google.protobuf;

import java.io.IOException;

/* loaded from: classes2.dex */
public class n extends IOException {
    private static final long serialVersionUID = -1616151763072450476L;
    private MessageLite unfinishedMessage;

    /* renamed from: com.google.protobuf.n$do, reason: invalid class name */
    public static class Cdo extends n {
        private static final long serialVersionUID = 3283890091615336259L;

        public Cdo(String str) {
            super(str);
        }
    }

    public n(String str) {
        super(str);
        this.unfinishedMessage = null;
    }

    public static n invalidEndTag() {
        return new n("Protocol message end-group tag did not match expected tag.");
    }

    public static n invalidTag() {
        return new n("Protocol message contained an invalid tag (zero).");
    }

    public static n invalidUtf8() {
        return new n("Protocol message had invalid UTF-8.");
    }

    public static Cdo invalidWireType() {
        return new Cdo("Protocol message tag had invalid wire type.");
    }

    public static n malformedVarint() {
        return new n("CodedInputStream encountered a malformed varint.");
    }

    public static n negativeSize() {
        return new n("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static n parseFailure() {
        return new n("Failed to parse the message.");
    }

    public static n recursionLimitExceeded() {
        return new n("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    public static n sizeLimitExceeded() {
        return new n("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    public static n truncatedMessage() {
        return new n("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public MessageLite getUnfinishedMessage() {
        return this.unfinishedMessage;
    }

    public n setUnfinishedMessage(MessageLite messageLite) {
        this.unfinishedMessage = messageLite;
        return this;
    }

    public IOException unwrapIOException() {
        return getCause() instanceof IOException ? (IOException) getCause() : this;
    }

    public n(IOException iOException) {
        super(iOException.getMessage(), iOException);
        this.unfinishedMessage = null;
    }

    public n(String str, IOException iOException) {
        super(str, iOException);
        this.unfinishedMessage = null;
    }
}
