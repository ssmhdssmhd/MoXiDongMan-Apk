package org.antlr.v4.runtime;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.SeekableByteChannel;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import org.antlr.v4.runtime.Ctry;

/* renamed from: org.antlr.v4.runtime.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew {

    /* renamed from: do, reason: not valid java name */
    private static final int f28574do = 4096;

    private Cnew() {
    }

    /* renamed from: break, reason: not valid java name */
    public static Ccase m32054break(Reader reader, String str) throws IOException {
        try {
            Ctry.Cif cifM32107if = Ctry.m32107if(4096);
            CharBuffer charBufferAllocate = CharBuffer.allocate(4096);
            while (reader.read(charBufferAllocate) != -1) {
                charBufferAllocate.flip();
                cifM32107if.m32130do(charBufferAllocate);
                charBufferAllocate.compact();
            }
            return Ccase.m31961if(cifM32107if.m32126case(), str);
        } finally {
            reader.close();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static CharStream m32055case(String str, Charset charset) throws IOException {
        return m32063goto(Paths.get(str, new String[0]), charset);
    }

    /* renamed from: catch, reason: not valid java name */
    public static CharStream m32056catch(InputStream inputStream) throws IOException {
        return m32057class(inputStream, StandardCharsets.UTF_8);
    }

    /* renamed from: class, reason: not valid java name */
    public static CharStream m32057class(InputStream inputStream, Charset charset) throws IOException {
        return m32058const(inputStream, charset, -1L);
    }

    /* renamed from: const, reason: not valid java name */
    public static CharStream m32058const(InputStream inputStream, Charset charset, long j) throws IOException {
        ReadableByteChannel readableByteChannelNewChannel = Channels.newChannel(inputStream);
        try {
            Ccase ccaseM32065new = m32065new(readableByteChannelNewChannel, charset, 4096, CodingErrorAction.REPLACE, IntStream.UNKNOWN_SOURCE_NAME, j);
            if (readableByteChannelNewChannel != null) {
                readableByteChannelNewChannel.close();
            }
            return ccaseM32065new;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (readableByteChannelNewChannel != null) {
                    try {
                        readableByteChannelNewChannel.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static CharStream m32059do(ReadableByteChannel readableByteChannel) throws IOException {
        return m32064if(readableByteChannel, StandardCharsets.UTF_8);
    }

    /* renamed from: else, reason: not valid java name */
    public static CharStream m32060else(Path path) throws IOException {
        return m32063goto(path, StandardCharsets.UTF_8);
    }

    /* renamed from: final, reason: not valid java name */
    public static Ccase m32061final(String str) {
        return m32066super(str, IntStream.UNKNOWN_SOURCE_NAME);
    }

    /* renamed from: for, reason: not valid java name */
    public static Ccase m32062for(ReadableByteChannel readableByteChannel, int i, CodingErrorAction codingErrorAction, String str) throws IOException {
        return m32065new(readableByteChannel, StandardCharsets.UTF_8, i, codingErrorAction, str, -1L);
    }

    /* renamed from: goto, reason: not valid java name */
    public static CharStream m32063goto(Path path, Charset charset) throws IOException {
        long size = Files.size(path);
        SeekableByteChannel seekableByteChannelNewByteChannel = Files.newByteChannel(path, new OpenOption[0]);
        try {
            Ccase ccaseM32065new = m32065new(seekableByteChannelNewByteChannel, charset, 4096, CodingErrorAction.REPLACE, path.toString(), size);
            if (seekableByteChannelNewByteChannel != null) {
                seekableByteChannelNewByteChannel.close();
            }
            return ccaseM32065new;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (seekableByteChannelNewByteChannel != null) {
                    try {
                        seekableByteChannelNewByteChannel.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static CharStream m32064if(ReadableByteChannel readableByteChannel, Charset charset) throws IOException {
        return m32062for(readableByteChannel, 4096, CodingErrorAction.REPLACE, IntStream.UNKNOWN_SOURCE_NAME);
    }

    /* renamed from: new, reason: not valid java name */
    public static Ccase m32065new(ReadableByteChannel readableByteChannel, Charset charset, int i, CodingErrorAction codingErrorAction, String str, long j) throws IOException {
        try {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i);
            CharBuffer charBufferAllocate = CharBuffer.allocate(i);
            if (j == -1) {
                j = i;
            } else if (j > 2147483647L) {
                throw new IOException(String.format("inputSize %d larger than max %d", Long.valueOf(j), Integer.MAX_VALUE));
            }
            Ctry.Cif cifM32107if = Ctry.m32107if((int) j);
            CharsetDecoder charsetDecoderOnUnmappableCharacter = charset.newDecoder().onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
            boolean z = false;
            while (!z) {
                z = readableByteChannel.read(byteBufferAllocate) == -1;
                byteBufferAllocate.flip();
                CoderResult coderResultDecode = charsetDecoderOnUnmappableCharacter.decode(byteBufferAllocate, charBufferAllocate, z);
                if (coderResultDecode.isError() && codingErrorAction.equals(CodingErrorAction.REPORT)) {
                    coderResultDecode.throwException();
                }
                charBufferAllocate.flip();
                cifM32107if.m32130do(charBufferAllocate);
                byteBufferAllocate.compact();
                charBufferAllocate.compact();
            }
            CoderResult coderResultFlush = charsetDecoderOnUnmappableCharacter.flush(charBufferAllocate);
            if (coderResultFlush.isError() && codingErrorAction.equals(CodingErrorAction.REPORT)) {
                coderResultFlush.throwException();
            }
            charBufferAllocate.flip();
            cifM32107if.m32130do(charBufferAllocate);
            return Ccase.m31961if(cifM32107if.m32126case(), str);
        } finally {
            readableByteChannel.close();
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static Ccase m32066super(String str, String str2) {
        Ctry.Cif cifM32107if = Ctry.m32107if(str.length());
        CharBuffer charBufferAllocate = CharBuffer.allocate(str.length());
        charBufferAllocate.put(str);
        charBufferAllocate.flip();
        cifM32107if.m32130do(charBufferAllocate);
        return Ccase.m31961if(cifM32107if.m32126case(), str2);
    }

    /* renamed from: this, reason: not valid java name */
    public static Ccase m32067this(Reader reader) throws IOException {
        return m32054break(reader, IntStream.UNKNOWN_SOURCE_NAME);
    }

    /* renamed from: try, reason: not valid java name */
    public static CharStream m32068try(String str) throws IOException {
        return m32063goto(Paths.get(str, new String[0]), StandardCharsets.UTF_8);
    }
}
