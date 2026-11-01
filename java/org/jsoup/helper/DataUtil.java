package org.jsoup.helper;

import android.support.v4.mk;
import android.support.v4.y41;
import java.io.BufferedReader;
import java.io.CharArrayReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.util.Iterator;
import java.util.Locale;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import org.jsoup.UncheckedIOException;
import org.jsoup.internal.ConstrainableInputStream;
import org.jsoup.internal.Normalizer;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.XmlDeclaration;
import org.jsoup.parser.Parser;

/* loaded from: classes3.dex */
public final class DataUtil {
    public static final Charset UTF_8;
    public static final int boundaryLength = 32;
    public static final int bufferSize = 32768;
    private static final Pattern charsetPattern = Pattern.compile("(?i)\\bcharset=\\s*(?:[\"'])?([^\\s,;\"']*)");
    public static final String defaultCharsetName;
    private static final int firstReadBufferSize = 5120;
    private static final char[] mimeBoundaryChars;

    public static class BomCharset {
        private final String charset;
        private final boolean offset;

        public BomCharset(String str, boolean z) {
            this.charset = str;
            this.offset = z;
        }
    }

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        UTF_8 = charsetForName;
        defaultCharsetName = charsetForName.name();
        mimeBoundaryChars = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    }

    private DataUtil() {
    }

    public static void crossStreams(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[32768];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, i);
            }
        }
    }

    @y41
    private static BomCharset detectCharsetFromBom(ByteBuffer byteBuffer) {
        byteBuffer.mark();
        byte[] bArr = new byte[4];
        if (byteBuffer.remaining() >= 4) {
            byteBuffer.get(bArr);
            byteBuffer.rewind();
        }
        if ((bArr[0] == 0 && bArr[1] == 0 && bArr[2] == -2 && bArr[3] == -1) || (bArr[0] == -1 && bArr[1] == -2 && bArr[2] == 0 && bArr[3] == 0)) {
            return new BomCharset("UTF-32", false);
        }
        if ((bArr[0] == -2 && bArr[1] == -1) || (bArr[0] == -1 && bArr[1] == -2)) {
            return new BomCharset(mk.f3930for, false);
        }
        if (bArr[0] == -17 && bArr[1] == -69 && bArr[2] == -65) {
            return new BomCharset("UTF-8", true);
        }
        return null;
    }

    public static ByteBuffer emptyByteBuffer() {
        return ByteBuffer.allocate(0);
    }

    @y41
    public static String getCharsetFromContentType(@y41 String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = charsetPattern.matcher(str);
        if (matcher.find()) {
            return validateCharset(matcher.group(1).trim().replace("charset=", ""));
        }
        return null;
    }

    public static Document load(File file, @y41 String str, String str2) throws IOException {
        return load(file, str, str2, Parser.htmlParser());
    }

    public static String mimeBoundary() {
        StringBuilder sbBorrowBuilder = StringUtil.borrowBuilder();
        Random random = new Random();
        for (int i = 0; i < 32; i++) {
            char[] cArr = mimeBoundaryChars;
            sbBorrowBuilder.append(cArr[random.nextInt(cArr.length)]);
        }
        return StringUtil.releaseBuilder(sbBorrowBuilder);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Document parseInputStream(@y41 InputStream inputStream, @y41 String str, String str2, Parser parser) throws IOException {
        XmlDeclaration xmlDeclarationAsXmlDeclaration;
        if (inputStream == null) {
            return new Document(str2);
        }
        ConstrainableInputStream constrainableInputStreamWrap = ConstrainableInputStream.wrap(inputStream, 32768, 0);
        try {
            constrainableInputStreamWrap.mark(32768);
            ByteBuffer toByteBuffer = readToByteBuffer(constrainableInputStreamWrap, 5119);
            boolean z = constrainableInputStreamWrap.read() == -1;
            constrainableInputStreamWrap.reset();
            BomCharset bomCharsetDetectCharsetFromBom = detectCharsetFromBom(toByteBuffer);
            if (bomCharsetDetectCharsetFromBom != null) {
                str = bomCharsetDetectCharsetFromBom.charset;
            }
            Document input = null;
            if (str == null) {
                try {
                    CharBuffer charBufferDecode = UTF_8.decode(toByteBuffer);
                    Document input2 = charBufferDecode.hasArray() ? parser.parseInput(new CharArrayReader(charBufferDecode.array(), charBufferDecode.arrayOffset(), charBufferDecode.limit()), str2) : parser.parseInput(charBufferDecode.toString(), str2);
                    Iterator<Element> it = input2.select("meta[http-equiv=content-type], meta[charset]").iterator();
                    String strAttr = null;
                    while (it.hasNext()) {
                        Element next = it.next();
                        if (next.hasAttr("http-equiv")) {
                            strAttr = getCharsetFromContentType(next.attr("content"));
                        }
                        if (strAttr == null && next.hasAttr("charset")) {
                            strAttr = next.attr("charset");
                        }
                        if (strAttr != null) {
                            break;
                        }
                    }
                    if (strAttr == null && input2.childNodeSize() > 0) {
                        Node nodeChildNode = input2.childNode(0);
                        if (nodeChildNode instanceof XmlDeclaration) {
                            xmlDeclarationAsXmlDeclaration = (XmlDeclaration) nodeChildNode;
                        } else if (nodeChildNode instanceof Comment) {
                            Comment comment = (Comment) nodeChildNode;
                            xmlDeclarationAsXmlDeclaration = comment.isXmlDeclaration() ? comment.asXmlDeclaration() : null;
                        }
                        if (xmlDeclarationAsXmlDeclaration != null && xmlDeclarationAsXmlDeclaration.name().equalsIgnoreCase("xml")) {
                            strAttr = xmlDeclarationAsXmlDeclaration.attr("encoding");
                        }
                    }
                    String strValidateCharset = validateCharset(strAttr);
                    if (strValidateCharset != null && !strValidateCharset.equalsIgnoreCase(defaultCharsetName)) {
                        str = strValidateCharset.trim().replaceAll("[\"']", "");
                    } else if (z) {
                        input = input2;
                    }
                } catch (UncheckedIOException e) {
                    throw e.ioException();
                }
            } else {
                Validate.notEmpty(str, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML");
            }
            if (input == null) {
                if (str == null) {
                    str = defaultCharsetName;
                }
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(constrainableInputStreamWrap, str), 32768);
                if (bomCharsetDetectCharsetFromBom != null) {
                    try {
                        if (bomCharsetDetectCharsetFromBom.offset) {
                            Validate.isTrue(bufferedReader.skip(1L) == 1);
                        }
                    } finally {
                        bufferedReader.close();
                    }
                }
                try {
                    input = parser.parseInput(bufferedReader, str2);
                    Charset charsetForName = str.equals(defaultCharsetName) ? UTF_8 : Charset.forName(str);
                    input.outputSettings().charset(charsetForName);
                    if (!charsetForName.canEncode()) {
                        input.charset(UTF_8);
                    }
                } catch (UncheckedIOException e2) {
                    throw e2.ioException();
                }
            }
            return input;
        } finally {
            constrainableInputStreamWrap.close();
        }
    }

    public static ByteBuffer readToByteBuffer(InputStream inputStream, int i) throws IOException {
        Validate.isTrue(i >= 0, "maxSize must be 0 (unlimited) or larger");
        return ConstrainableInputStream.wrap(inputStream, 32768, i).readToByteBuffer(i);
    }

    @y41
    private static String validateCharset(@y41 String str) {
        if (str != null && str.length() != 0) {
            String strReplaceAll = str.trim().replaceAll("[\"']", "");
            try {
                if (Charset.isSupported(strReplaceAll)) {
                    return strReplaceAll;
                }
                String upperCase = strReplaceAll.toUpperCase(Locale.ENGLISH);
                if (Charset.isSupported(upperCase)) {
                    return upperCase;
                }
            } catch (IllegalCharsetNameException unused) {
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Document load(File file, @y41 String str, String str2, Parser parser) throws IOException {
        InputStream fileInputStream = new FileInputStream(file);
        String strLowerCase = Normalizer.lowerCase(file.getName());
        if (strLowerCase.endsWith(".gz") || strLowerCase.endsWith(".z")) {
            try {
                if (fileInputStream.read() == 31) {
                    boolean z = fileInputStream.read() == 139;
                    fileInputStream = z ? new GZIPInputStream(new FileInputStream(file)) : new FileInputStream(file);
                }
            } finally {
                fileInputStream.close();
            }
        }
        return parseInputStream(fileInputStream, str, str2, parser);
    }

    public static Document load(InputStream inputStream, @y41 String str, String str2) throws IOException {
        return parseInputStream(inputStream, str, str2, Parser.htmlParser());
    }

    public static Document load(InputStream inputStream, @y41 String str, String str2, Parser parser) throws IOException {
        return parseInputStream(inputStream, str, str2, parser);
    }
}
