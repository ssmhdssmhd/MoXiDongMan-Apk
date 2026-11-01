package org.jsoup.nodes;

import android.support.v4.ca2;
import android.support.v4.hy1;
import android.support.v4.mk;
import java.io.IOException;
import java.nio.charset.CharsetEncoder;
import java.util.Arrays;
import java.util.HashMap;
import org.jsoup.SerializationException;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.parser.CharacterReader;
import org.jsoup.parser.Parser;

/* loaded from: classes3.dex */
public class Entities {
    public static final int codepointRadix = 36;
    private static final int empty = -1;
    private static final String emptyName = "";
    private static final char[] codeDelims = {',', ';'};
    private static final HashMap<String, String> multipoints = new HashMap<>();
    private static final Document.OutputSettings DefaultOutput = new Document.OutputSettings();

    /* renamed from: org.jsoup.nodes.Entities$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$org$jsoup$nodes$Entities$CoreCharset;

        static {
            int[] iArr = new int[CoreCharset.values().length];
            $SwitchMap$org$jsoup$nodes$Entities$CoreCharset = iArr;
            try {
                iArr[CoreCharset.ascii.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$jsoup$nodes$Entities$CoreCharset[CoreCharset.utf.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum CoreCharset {
        ascii,
        utf,
        fallback;

        public static CoreCharset byName(String str) {
            return str.equals(mk.f3931if) ? ascii : str.startsWith("UTF-") ? utf : fallback;
        }
    }

    public enum EscapeMode {
        xhtml(EntitiesData.xmlPoints, 4),
        base(EntitiesData.basePoints, 106),
        extended(EntitiesData.fullPoints, 2125);

        private int[] codeKeys;
        private int[] codeVals;
        private String[] nameKeys;
        private String[] nameVals;

        EscapeMode(String str, int i) {
            Entities.load(this, str, i);
        }

        private int size() {
            return this.nameKeys.length;
        }

        public int codepointForName(String str) {
            int iBinarySearch = Arrays.binarySearch(this.nameKeys, str);
            if (iBinarySearch >= 0) {
                return this.codeVals[iBinarySearch];
            }
            return -1;
        }

        public String nameForCodepoint(int i) {
            int iBinarySearch = Arrays.binarySearch(this.codeKeys, i);
            if (iBinarySearch < 0) {
                return "";
            }
            String[] strArr = this.nameVals;
            if (iBinarySearch < strArr.length - 1) {
                int i2 = iBinarySearch + 1;
                if (this.codeKeys[i2] == i) {
                    return strArr[i2];
                }
            }
            return strArr[iBinarySearch];
        }
    }

    private Entities() {
    }

    private static void appendEncoded(Appendable appendable, EscapeMode escapeMode, int i) throws IOException {
        String strNameForCodepoint = escapeMode.nameForCodepoint(i);
        if ("".equals(strNameForCodepoint)) {
            appendable.append("&#x").append(Integer.toHexString(i)).append(';');
        } else {
            appendable.append(ca2.f679for).append(strNameForCodepoint).append(';');
        }
    }

    private static boolean canEncode(CoreCharset coreCharset, char c, CharsetEncoder charsetEncoder) {
        int i = AnonymousClass1.$SwitchMap$org$jsoup$nodes$Entities$CoreCharset[coreCharset.ordinal()];
        if (i == 1) {
            return c < 128;
        }
        if (i != 2) {
            return charsetEncoder.canEncode(c);
        }
        return true;
    }

    public static int codepointsForName(String str, int[] iArr) {
        String str2 = multipoints.get(str);
        if (str2 != null) {
            iArr[0] = str2.codePointAt(0);
            iArr[1] = str2.codePointAt(1);
            return 2;
        }
        int iCodepointForName = EscapeMode.extended.codepointForName(str);
        if (iCodepointForName == -1) {
            return 0;
        }
        iArr[0] = iCodepointForName;
        return 1;
    }

    public static String escape(String str, Document.OutputSettings outputSettings) {
        if (str == null) {
            return "";
        }
        StringBuilder sbBorrowBuilder = StringUtil.borrowBuilder();
        try {
            escape(sbBorrowBuilder, str, outputSettings, false, false, false);
            return StringUtil.releaseBuilder(sbBorrowBuilder);
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    public static String getByName(String str) {
        String str2 = multipoints.get(str);
        if (str2 != null) {
            return str2;
        }
        int iCodepointForName = EscapeMode.extended.codepointForName(str);
        return iCodepointForName != -1 ? new String(new int[]{iCodepointForName}, 0, 1) : "";
    }

    public static boolean isBaseNamedEntity(String str) {
        return EscapeMode.base.codepointForName(str) != -1;
    }

    public static boolean isNamedEntity(String str) {
        return EscapeMode.extended.codepointForName(str) != -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void load(EscapeMode escapeMode, String str, int i) {
        int i2;
        escapeMode.nameKeys = new String[i];
        escapeMode.codeVals = new int[i];
        escapeMode.codeKeys = new int[i];
        escapeMode.nameVals = new String[i];
        CharacterReader characterReader = new CharacterReader(str);
        int i3 = 0;
        while (!characterReader.isEmpty()) {
            try {
                String strConsumeTo = characterReader.consumeTo(hy1.f2563new);
                characterReader.advance();
                int i4 = Integer.parseInt(characterReader.consumeToAny(codeDelims), 36);
                char cCurrent = characterReader.current();
                characterReader.advance();
                if (cCurrent == ',') {
                    i2 = Integer.parseInt(characterReader.consumeTo(';'), 36);
                    characterReader.advance();
                } else {
                    i2 = -1;
                }
                int i5 = Integer.parseInt(characterReader.consumeTo(ca2.f679for), 36);
                characterReader.advance();
                escapeMode.nameKeys[i3] = strConsumeTo;
                escapeMode.codeVals[i3] = i4;
                escapeMode.codeKeys[i5] = i4;
                escapeMode.nameVals[i5] = strConsumeTo;
                if (i2 != -1) {
                    multipoints.put(strConsumeTo, new String(new int[]{i4, i2}, 0, 2));
                }
                i3++;
            } finally {
                characterReader.close();
            }
        }
        Validate.isTrue(i3 == i, "Unexpected count of entities loaded");
    }

    public static String unescape(String str) {
        return unescape(str, false);
    }

    public static String unescape(String str, boolean z) {
        return Parser.unescapeEntities(str, z);
    }

    public static String escape(String str) {
        return escape(str, DefaultOutput);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void escape(Appendable appendable, String str, Document.OutputSettings outputSettings, boolean z, boolean z2, boolean z3) throws IOException {
        EscapeMode escapeMode = outputSettings.escapeMode();
        CharsetEncoder charsetEncoderEncoder = outputSettings.encoder();
        CoreCharset coreCharset = outputSettings.coreCharset;
        int length = str.length();
        int iCharCount = 0;
        boolean z4 = false;
        boolean z5 = false;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (z2) {
                if (!StringUtil.isWhitespace(iCodePointAt)) {
                    z4 = true;
                    z5 = false;
                    if (iCodePointAt >= 65536) {
                    }
                } else if ((!z3 || z4) && !z5) {
                    appendable.append(' ');
                    z5 = true;
                }
            } else if (iCodePointAt >= 65536) {
                char c = (char) iCodePointAt;
                if (c == '\t' || c == '\n' || c == '\r') {
                    appendable.append(c);
                } else if (c != '\"') {
                    if (c == '&') {
                        appendable.append("&amp;");
                    } else if (c != '<') {
                        if (c != '>') {
                            if (c != 160) {
                                if (c >= ' ' && canEncode(coreCharset, c, charsetEncoderEncoder)) {
                                    appendable.append(c);
                                } else {
                                    appendEncoded(appendable, escapeMode, iCodePointAt);
                                }
                            } else if (escapeMode != EscapeMode.xhtml) {
                                appendable.append("&nbsp;");
                            } else {
                                appendable.append("&#xa0;");
                            }
                        } else if (!z) {
                            appendable.append("&gt;");
                        } else {
                            appendable.append(c);
                        }
                    } else if (z && escapeMode != EscapeMode.xhtml && outputSettings.syntax() != Document.OutputSettings.Syntax.xml) {
                        appendable.append(c);
                    } else {
                        appendable.append("&lt;");
                    }
                } else if (z) {
                    appendable.append("&quot;");
                } else {
                    appendable.append(c);
                }
            } else {
                String str2 = new String(Character.toChars(iCodePointAt));
                if (charsetEncoderEncoder.canEncode(str2)) {
                    appendable.append(str2);
                } else {
                    appendEncoded(appendable, escapeMode, iCodePointAt);
                }
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
    }
}
