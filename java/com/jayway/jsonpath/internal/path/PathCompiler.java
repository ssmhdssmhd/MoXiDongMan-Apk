package com.jayway.jsonpath.internal.path;

import com.jayway.jsonpath.InvalidPathException;
import com.jayway.jsonpath.Predicate;
import com.jayway.jsonpath.internal.CharacterIndex;
import com.jayway.jsonpath.internal.Path;
import com.jayway.jsonpath.internal.Utils;
import com.jayway.jsonpath.internal.filter.FilterCompiler;
import com.jayway.jsonpath.internal.function.ParamType;
import com.jayway.jsonpath.internal.function.Parameter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes2.dex */
public class PathCompiler {
    private static final char BEGIN_FILTER = '?';
    private static final char CLOSE_BRACE = '}';
    private static final char CLOSE_PARENTHESIS = ')';
    private static final char CLOSE_SQUARE_BRACKET = ']';
    private static final char COMMA = ',';
    private static final char CR = '\r';
    private static final char DOC_CONTEXT = '$';
    private static final char DOUBLE_QUOTE = '\"';
    private static final char EVAL_CONTEXT = '@';
    private static final char LF = '\n';
    private static final char MINUS = '-';
    private static final char OPEN_BRACE = '{';
    private static final char OPEN_PARENTHESIS = '(';
    private static final char OPEN_SQUARE_BRACKET = '[';
    private static final char PERIOD = '.';
    private static final char SINGLE_QUOTE = '\'';
    private static final char SPACE = ' ';
    private static final char SPLIT = ':';
    private static final char TAB = '\t';
    private static final char WILDCARD = '*';
    private final LinkedList<Predicate> filterStack;
    private final CharacterIndex path;

    /* renamed from: com.jayway.jsonpath.internal.path.PathCompiler$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$jayway$jsonpath$internal$function$ParamType;

        static {
            int[] iArr = new int[ParamType.values().length];
            $SwitchMap$com$jayway$jsonpath$internal$function$ParamType = iArr;
            try {
                iArr[ParamType.JSON.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jayway$jsonpath$internal$function$ParamType[ParamType.PATH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private PathCompiler(String str, LinkedList<Predicate> linkedList) {
        this(new CharacterIndex(str), linkedList);
    }

    private Path compile() {
        RootPathToken contextToken = readContextToken();
        return new CompiledPath(contextToken, contextToken.getPathFragment().equals("$"));
    }

    public static boolean fail(String str) {
        throw new InvalidPathException(str);
    }

    private Boolean isPathContext(char c) {
        return Boolean.valueOf(c == '$' || c == '@');
    }

    private boolean isWhitespace(char c) {
        return c == ' ' || c == '\t' || c == '\n' || c == '\r';
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x013b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private List<Parameter> parseFunctionParameters(String str) {
        Integer numValueOf = 1;
        Integer numValueOf2 = 0;
        Boolean bool = Boolean.FALSE;
        ArrayList arrayList = new ArrayList();
        StringBuffer stringBuffer = new StringBuffer();
        Integer numValueOf3 = numValueOf2;
        Boolean boolValueOf = bool;
        ParamType paramType = null;
        char c = 0;
        Integer numValueOf4 = numValueOf3;
        while (this.path.inBounds() && !boolValueOf.booleanValue()) {
            char cCurrentChar = this.path.currentChar();
            this.path.incrementPosition(1);
            if (paramType == null) {
                if (isWhitespace(cCurrentChar)) {
                    continue;
                } else if (cCurrentChar == '{' || Character.isDigit(cCurrentChar) || '\"' == cCurrentChar) {
                    paramType = ParamType.JSON;
                } else if (isPathContext(cCurrentChar).booleanValue()) {
                    paramType = ParamType.PATH;
                }
            }
            if (cCurrentChar != '\"') {
                if (cCurrentChar == ',') {
                    if (numValueOf3.intValue() == 0 && numValueOf2.intValue() == 0 && numValueOf4.intValue() == 0 && ((numValueOf.intValue() == 0 && ')' == cCurrentChar) || 1 == numValueOf.intValue())) {
                        boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                        if (paramType != null) {
                            int i = AnonymousClass1.$SwitchMap$com$jayway$jsonpath$internal$function$ParamType[paramType.ordinal()];
                            Parameter parameter = i != 1 ? i != 2 ? null : new Parameter(new PathCompiler(stringBuffer.toString(), (LinkedList<Predicate>) new LinkedList()).compile()) : new Parameter(stringBuffer.toString());
                            if (parameter != null) {
                                arrayList.add(parameter);
                            }
                            stringBuffer.delete(0, stringBuffer.length());
                            paramType = null;
                        }
                    }
                } else if (cCurrentChar == '[') {
                    numValueOf4 = Integer.valueOf(numValueOf4.intValue() + 1);
                } else if (cCurrentChar != ']') {
                    if (cCurrentChar == '{') {
                        numValueOf2 = Integer.valueOf(numValueOf2.intValue() + 1);
                    } else if (cCurrentChar != '}') {
                        if (cCurrentChar == '(') {
                            numValueOf = Integer.valueOf(numValueOf.intValue() + 1);
                        } else if (cCurrentChar == ')') {
                            numValueOf = Integer.valueOf(numValueOf.intValue() - 1);
                            if (numValueOf.intValue() != 0) {
                                stringBuffer.append(cCurrentChar);
                            }
                            if (numValueOf3.intValue() == 0) {
                                boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                                if (paramType != null) {
                                }
                            }
                        }
                    } else {
                        if (numValueOf2.intValue() == 0) {
                            throw new InvalidPathException("Unexpected close brace '}' at character position: " + this.path.position());
                        }
                        numValueOf2 = Integer.valueOf(numValueOf2.intValue() - 1);
                    }
                } else {
                    if (numValueOf4.intValue() == 0) {
                        throw new InvalidPathException("Unexpected close bracket ']' at character position: " + this.path.position());
                    }
                    numValueOf4 = Integer.valueOf(numValueOf4.intValue() - 1);
                }
            } else if (c == '\\' || numValueOf3.intValue() <= 0) {
                numValueOf3 = Integer.valueOf(numValueOf3.intValue() + 1);
            } else {
                if (numValueOf3.intValue() == 0) {
                    throw new InvalidPathException("Unexpected quote '\"' at character position: " + this.path.position());
                }
                numValueOf3 = Integer.valueOf(numValueOf3.intValue() - 1);
            }
            if (paramType != null && (cCurrentChar != ',' || numValueOf2.intValue() != 0 || numValueOf4.intValue() != 0 || 1 != numValueOf.intValue())) {
                stringBuffer.append(cCurrentChar);
            }
            c = cCurrentChar;
        }
        if (numValueOf2.intValue() == 0 && numValueOf.intValue() == 0 && numValueOf4.intValue() == 0) {
            return arrayList;
        }
        throw new InvalidPathException("Arguments to function: '" + str + "' are not closed properly.");
    }

    private boolean readArrayToken(PathTokenAppender pathTokenAppender) {
        int iPosition;
        int iNextIndexOf;
        if (!this.path.currentCharIs(OPEN_SQUARE_BRACKET)) {
            return false;
        }
        char cNextSignificantChar = this.path.nextSignificantChar();
        if ((!Character.isDigit(cNextSignificantChar) && cNextSignificantChar != '-' && cNextSignificantChar != ':') || (iNextIndexOf = this.path.nextIndexOf((iPosition = this.path.position() + 1), CLOSE_SQUARE_BRACKET)) == -1) {
            return false;
        }
        String strTrim = this.path.subSequence(iPosition, iNextIndexOf).toString().trim();
        if ("*".equals(strTrim)) {
            return false;
        }
        for (int i = 0; i < strTrim.length(); i++) {
            char cCharAt = strTrim.charAt(i);
            if (!Character.isDigit(cCharAt) && cCharAt != ',' && cCharAt != '-' && cCharAt != ':' && cCharAt != ' ') {
                return false;
            }
        }
        if (strTrim.contains(":")) {
            pathTokenAppender.appendPathToken(PathTokenFactory.createSliceArrayPathToken(ArraySliceOperation.parse(strTrim)));
        } else {
            pathTokenAppender.appendPathToken(PathTokenFactory.createIndexArrayPathToken(ArrayIndexOperation.parse(strTrim)));
        }
        this.path.setPosition(iNextIndexOf + 1);
        return this.path.currentIsTail() || readNextToken(pathTokenAppender);
    }

    private boolean readBracketPropertyToken(PathTokenAppender pathTokenAppender) {
        if (!this.path.currentCharIs(OPEN_SQUARE_BRACKET)) {
            return false;
        }
        char cNextSignificantChar = this.path.nextSignificantChar();
        if (cNextSignificantChar != '\'' && cNextSignificantChar != '\"') {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        int iPosition = this.path.position() + 1;
        int i = iPosition;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i2 = 0;
        while (true) {
            if (!this.path.inBounds(iPosition)) {
                break;
            }
            char cCharAt = this.path.charAt(iPosition);
            if (z) {
                z = false;
            } else if ('\\' == cCharAt) {
                z = true;
            } else if (cCharAt != ']' || z2) {
                if (cCharAt == cNextSignificantChar) {
                    if (!z2 || z) {
                        i = iPosition + 1;
                        z2 = true;
                        z3 = false;
                    } else {
                        char cNextSignificantChar2 = this.path.nextSignificantChar(iPosition);
                        if (cNextSignificantChar2 != ']' && cNextSignificantChar2 != ',') {
                            fail("Property must be separated by comma or Property must be terminated close square bracket at index " + iPosition);
                        }
                        arrayList.add(Utils.unescape(this.path.subSequence(i, iPosition).toString()));
                        i2 = iPosition;
                        z2 = false;
                    }
                } else if (cCharAt == ',') {
                    if (z3) {
                        fail("Found empty property at index " + iPosition);
                    }
                    z3 = true;
                }
            } else if (z3) {
                fail("Found empty property at index " + iPosition);
            }
            iPosition++;
        }
        this.path.setPosition(this.path.indexOfNextSignificantChar(i2, CLOSE_SQUARE_BRACKET) + 1);
        pathTokenAppender.appendPathToken(PathTokenFactory.createPropertyPathToken(arrayList, cNextSignificantChar));
        return this.path.currentIsTail() || readNextToken(pathTokenAppender);
    }

    private RootPathToken readContextToken() {
        readWhitespace();
        if (!isPathContext(this.path.currentChar()).booleanValue()) {
            throw new InvalidPathException("Path must start with '$' or '@'");
        }
        RootPathToken rootPathTokenCreateRootPathToken = PathTokenFactory.createRootPathToken(this.path.currentChar());
        if (this.path.currentIsTail()) {
            return rootPathTokenCreateRootPathToken;
        }
        this.path.incrementPosition(1);
        if (this.path.currentChar() != '.' && this.path.currentChar() != '[') {
            fail("Illegal character at position " + this.path.position() + " expected '.' or '[");
        }
        readNextToken(rootPathTokenCreateRootPathToken.getPathTokenAppender());
        return rootPathTokenCreateRootPathToken;
    }

    private boolean readDotToken(PathTokenAppender pathTokenAppender) {
        if (this.path.currentCharIs('.') && this.path.nextCharIs('.')) {
            pathTokenAppender.appendPathToken(PathTokenFactory.crateScanToken());
            this.path.incrementPosition(2);
        } else {
            if (!this.path.hasMoreCharacters()) {
                throw new InvalidPathException("Path must not end with a '.");
            }
            this.path.incrementPosition(1);
        }
        if (!this.path.currentCharIs('.')) {
            return readNextToken(pathTokenAppender);
        }
        throw new InvalidPathException("Character '.' on position " + this.path.position() + " is not valid.");
    }

    private boolean readFilterToken(PathTokenAppender pathTokenAppender) {
        int iIndexOfNextSignificantChar;
        int iIndexOfClosingBracket;
        if (!this.path.currentCharIs(OPEN_SQUARE_BRACKET) && !this.path.nextSignificantCharIs(BEGIN_FILTER)) {
            return false;
        }
        int iPosition = this.path.position();
        int iIndexOfNextSignificantChar2 = this.path.indexOfNextSignificantChar(BEGIN_FILTER);
        if (iIndexOfNextSignificantChar2 == -1 || (iIndexOfNextSignificantChar = this.path.indexOfNextSignificantChar(iIndexOfNextSignificantChar2, OPEN_PARENTHESIS)) == -1 || (iIndexOfClosingBracket = this.path.indexOfClosingBracket(iIndexOfNextSignificantChar, true, true)) == -1 || !this.path.nextSignificantCharIs(iIndexOfClosingBracket, CLOSE_SQUARE_BRACKET)) {
            return false;
        }
        int iIndexOfNextSignificantChar3 = this.path.indexOfNextSignificantChar(iIndexOfClosingBracket, CLOSE_SQUARE_BRACKET) + 1;
        pathTokenAppender.appendPathToken(PathTokenFactory.createPredicatePathToken(FilterCompiler.compile(this.path.subSequence(iPosition, iIndexOfNextSignificantChar3).toString())));
        this.path.setPosition(iIndexOfNextSignificantChar3);
        return this.path.currentIsTail() || readNextToken(pathTokenAppender);
    }

    private boolean readNextToken(PathTokenAppender pathTokenAppender) {
        char cCurrentChar = this.path.currentChar();
        if (cCurrentChar == '*') {
            if (!readWildCardToken(pathTokenAppender)) {
                if (!fail("Could not parse token starting at position " + this.path.position())) {
                    return false;
                }
            }
            return true;
        }
        if (cCurrentChar == '.') {
            if (!readDotToken(pathTokenAppender)) {
                if (!fail("Could not parse token starting at position " + this.path.position())) {
                    return false;
                }
            }
            return true;
        }
        if (cCurrentChar != '[') {
            if (!readPropertyOrFunctionToken(pathTokenAppender)) {
                if (!fail("Could not parse token starting at position " + this.path.position())) {
                    return false;
                }
            }
            return true;
        }
        if (!readBracketPropertyToken(pathTokenAppender) && !readArrayToken(pathTokenAppender) && !readWildCardToken(pathTokenAppender) && !readFilterToken(pathTokenAppender) && !readPlaceholderToken(pathTokenAppender)) {
            if (!fail("Could not parse token starting at position " + this.path.position() + ". Expected ?, ', 0-9, * ")) {
                return false;
            }
        }
        return true;
    }

    private boolean readPlaceholderToken(PathTokenAppender pathTokenAppender) {
        int iIndexOfNextSignificantChar;
        int iPosition;
        int iNextIndexOf;
        if (!this.path.currentCharIs(OPEN_SQUARE_BRACKET) || (iIndexOfNextSignificantChar = this.path.indexOfNextSignificantChar(BEGIN_FILTER)) == -1) {
            return false;
        }
        char cNextSignificantChar = this.path.nextSignificantChar(iIndexOfNextSignificantChar);
        if ((cNextSignificantChar != ']' && cNextSignificantChar != ',') || (iNextIndexOf = this.path.nextIndexOf((iPosition = this.path.position() + 1), CLOSE_SQUARE_BRACKET)) == -1) {
            return false;
        }
        String string = this.path.subSequence(iPosition, iNextIndexOf).toString();
        String[] strArrSplit = string.split(",");
        if (this.filterStack.size() < strArrSplit.length) {
            throw new InvalidPathException("Not enough predicates supplied for filter [" + string + "] at position " + this.path.position());
        }
        ArrayList arrayList = new ArrayList();
        int length = strArrSplit.length;
        for (int i = 0; i < length; i++) {
            String strTrim = strArrSplit[i];
            if (strTrim != null) {
                strTrim = strTrim.trim();
            }
            if (!"?".equals(strTrim == null ? "" : strTrim)) {
                throw new InvalidPathException("Expected '?' but found " + strTrim);
            }
            arrayList.add(this.filterStack.pop());
        }
        pathTokenAppender.appendPathToken(PathTokenFactory.createPredicatePathToken(arrayList));
        this.path.setPosition(iNextIndexOf + 1);
        return this.path.currentIsTail() || readNextToken(pathTokenAppender);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0053, code lost:
    
        r1 = r5;
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0076, code lost:
    
        if (r5 != 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0078, code lost:
    
        r5 = r9.path.length();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007e, code lost:
    
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007f, code lost:
    
        if (r3 == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0081, code lost:
    
        r8 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0089, code lost:
    
        if (r9.path.inBounds(r8) == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0093, code lost:
    
        if (r9.path.charAt(r8) == ')') goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0095, code lost:
    
        r9.path.setPosition(r5 + 1);
        r4 = parseFunctionParameters(r9.path.subSequence(r0, r5).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ab, code lost:
    
        r9.path.setPosition(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b1, code lost:
    
        r9.path.setPosition(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b7, code lost:
    
        r9.path.setPosition(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00bc, code lost:
    
        r0 = r9.path.subSequence(r0, r5).toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c6, code lost:
    
        if (r3 == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c8, code lost:
    
        r10.appendPathToken(com.jayway.jsonpath.internal.path.PathTokenFactory.createFunctionPathToken(r0, r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d0, code lost:
    
        r10.appendPathToken(com.jayway.jsonpath.internal.path.PathTokenFactory.createSinglePropertyPathToken(r0, com.jayway.jsonpath.internal.path.PathCompiler.SINGLE_QUOTE));
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00df, code lost:
    
        if (r9.path.currentIsTail() != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e5, code lost:
    
        if (readNextToken(r10) == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00e7, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:?, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean readPropertyOrFunctionToken(PathTokenAppender pathTokenAppender) {
        int i;
        boolean z;
        if (!this.path.currentCharIs(OPEN_SQUARE_BRACKET) && !this.path.currentCharIs(WILDCARD) && !this.path.currentCharIs('.') && !this.path.currentCharIs(SPACE)) {
            int iPosition = this.path.position();
            int length = iPosition;
            while (true) {
                if (!this.path.inBounds(length)) {
                    i = length;
                    z = false;
                    length = 0;
                    break;
                }
                char cCharAt = this.path.charAt(length);
                if (cCharAt == ' ') {
                    throw new InvalidPathException("Use bracket notion ['my prop'] if your property contains blank characters. position: " + this.path.position());
                }
                if (cCharAt == '.' || cCharAt == '[') {
                    break;
                }
                if (cCharAt == '(') {
                    i = length + 1;
                    z = true;
                    break;
                }
                length++;
            }
        } else {
            return false;
        }
    }

    private void readWhitespace() {
        while (this.path.inBounds() && isWhitespace(this.path.currentChar())) {
            this.path.incrementPosition(1);
        }
    }

    private boolean readWildCardToken(PathTokenAppender pathTokenAppender) {
        boolean zCurrentCharIs = this.path.currentCharIs(OPEN_SQUARE_BRACKET);
        if (zCurrentCharIs && !this.path.nextSignificantCharIs(WILDCARD)) {
            return false;
        }
        if (!this.path.currentCharIs(WILDCARD)) {
            CharacterIndex characterIndex = this.path;
            if (characterIndex.isOutOfBounds(characterIndex.position() + 1)) {
                return false;
            }
        }
        if (zCurrentCharIs) {
            int iIndexOfNextSignificantChar = this.path.indexOfNextSignificantChar(WILDCARD);
            if (!this.path.nextSignificantCharIs(iIndexOfNextSignificantChar, CLOSE_SQUARE_BRACKET)) {
                throw new InvalidPathException("Expected wildcard token to end with ']' on position " + iIndexOfNextSignificantChar + 1);
            }
            this.path.setPosition(this.path.indexOfNextSignificantChar(iIndexOfNextSignificantChar, CLOSE_SQUARE_BRACKET) + 1);
        } else {
            this.path.incrementPosition(1);
        }
        pathTokenAppender.appendPathToken(PathTokenFactory.createWildCardPathToken());
        return this.path.currentIsTail() || readNextToken(pathTokenAppender);
    }

    private PathCompiler(CharacterIndex characterIndex, LinkedList<Predicate> linkedList) {
        this.filterStack = linkedList;
        this.path = characterIndex;
    }

    public static Path compile(String str, Predicate... predicateArr) {
        try {
            CharacterIndex characterIndex = new CharacterIndex(str);
            characterIndex.trim();
            if (characterIndex.charAt(0) != '$' && characterIndex.charAt(0) != '@') {
                characterIndex = new CharacterIndex("$." + str);
                characterIndex.trim();
            }
            if (characterIndex.lastCharIs('.')) {
                fail("Path must not end with a '.' or '..'");
            }
            return new PathCompiler(characterIndex, (LinkedList<Predicate>) new LinkedList(Arrays.asList(predicateArr))).compile();
        } catch (Exception e) {
            if (e instanceof InvalidPathException) {
                throw ((InvalidPathException) e);
            }
            throw new InvalidPathException(e);
        }
    }
}
