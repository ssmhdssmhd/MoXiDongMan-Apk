package com.google.protobuf;

/* loaded from: classes2.dex */
final class TextFormatEscaper {

    public interface ByteSequence {
        byte byteAt(int i);

        int size();
    }

    /* renamed from: com.google.protobuf.TextFormatEscaper$do, reason: invalid class name */
    public class Cdo implements ByteSequence {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ByteString f16590do;

        public Cdo(ByteString byteString) {
            this.f16590do = byteString;
        }

        @Override // com.google.protobuf.TextFormatEscaper.ByteSequence
        public byte byteAt(int i) {
            return this.f16590do.byteAt(i);
        }

        @Override // com.google.protobuf.TextFormatEscaper.ByteSequence
        public int size() {
            return this.f16590do.size();
        }
    }

    /* renamed from: com.google.protobuf.TextFormatEscaper$if, reason: invalid class name */
    public class Cif implements ByteSequence {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ byte[] f16591do;

        public Cif(byte[] bArr) {
            this.f16591do = bArr;
        }

        @Override // com.google.protobuf.TextFormatEscaper.ByteSequence
        public byte byteAt(int i) {
            return this.f16591do[i];
        }

        @Override // com.google.protobuf.TextFormatEscaper.ByteSequence
        public int size() {
            return this.f16591do.length;
        }
    }

    private TextFormatEscaper() {
    }

    /* renamed from: do, reason: not valid java name */
    public static String m19666do(ByteString byteString) {
        return m19668if(new Cdo(byteString));
    }

    /* renamed from: for, reason: not valid java name */
    public static String m19667for(byte[] bArr) {
        return m19668if(new Cif(bArr));
    }

    /* renamed from: if, reason: not valid java name */
    public static String m19668if(ByteSequence byteSequence) {
        StringBuilder sb = new StringBuilder(byteSequence.size());
        for (int i = 0; i < byteSequence.size(); i++) {
            byte bByteAt = byteSequence.byteAt(i);
            if (bByteAt == 34) {
                sb.append("\\\"");
            } else if (bByteAt == 39) {
                sb.append("\\'");
            } else if (bByteAt != 92) {
                switch (bByteAt) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bByteAt < 32 || bByteAt > 126) {
                            sb.append('\\');
                            sb.append((char) (((bByteAt >>> 6) & 3) + 48));
                            sb.append((char) (((bByteAt >>> 3) & 7) + 48));
                            sb.append((char) ((bByteAt & 7) + 48));
                            break;
                        } else {
                            sb.append((char) bByteAt);
                            break;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    /* renamed from: new, reason: not valid java name */
    public static String m19669new(String str) {
        return str.replace("\\", "\\\\").replace("\"", "\\\"");
    }

    /* renamed from: try, reason: not valid java name */
    public static String m19670try(String str) {
        return m19666do(ByteString.copyFromUtf8(str));
    }
}
