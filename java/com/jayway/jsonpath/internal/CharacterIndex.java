package com.jayway.jsonpath.internal;

import com.jayway.jsonpath.InvalidPathException;

/* loaded from: classes2.dex */
public class CharacterIndex {
    private static final char CLOSE_PARENTHESIS = ')';
    private static final char CLOSE_SQUARE_BRACKET = ']';
    private static final char DOUBLE_QUOTE = '\"';
    private static final char ESCAPE = '\\';
    private static final char MINUS = '-';
    private static final char OPEN_PARENTHESIS = '(';
    private static final char PERIOD = '.';
    private static final char REGEX = '/';
    private static final char SINGLE_QUOTE = '\'';
    private static final char SPACE = ' ';
    private final CharSequence charSequence;
    private int endPosition;
    private int position = 0;

    public CharacterIndex(CharSequence charSequence) {
        this.charSequence = charSequence;
        this.endPosition = charSequence.length() - 1;
    }

    private int setEndPosition(int i) {
        this.endPosition = i;
        return i;
    }

    private CharacterIndex skipBlanksAtEnd() {
        while (inBounds() && this.position < this.endPosition && lastCharIs(SPACE)) {
            decrementEndPosition(1);
        }
        return this;
    }

    public char charAt(int i) {
        return this.charSequence.charAt(i);
    }

    public char charAtOr(int i, char c) {
        return !inBounds(i) ? c : charAt(i);
    }

    public CharSequence charSequence() {
        return this.charSequence;
    }

    public char currentChar() {
        return this.charSequence.charAt(this.position);
    }

    public boolean currentCharIs(char c) {
        return this.charSequence.charAt(this.position) == c;
    }

    public boolean currentIsTail() {
        return this.position >= this.endPosition;
    }

    public int decrementEndPosition(int i) {
        return setEndPosition(this.endPosition - i);
    }

    public boolean hasMoreCharacters() {
        return inBounds(this.position + 1);
    }

    public boolean inBounds(int i) {
        return i >= 0 && i <= this.endPosition;
    }

    public int incrementPosition(int i) {
        return setPosition(this.position + i);
    }

    public int indexOfClosingBracket(int i, boolean z, boolean z2) {
        return indexOfMatchingCloseChar(i, OPEN_PARENTHESIS, CLOSE_PARENTHESIS, z, z2);
    }

    public int indexOfClosingSquareBracket(int i) {
        while (inBounds(i)) {
            if (charAt(i) == ']') {
                return i;
            }
            i++;
        }
        return -1;
    }

    public int indexOfMatchingCloseChar(int i, char c, char c2, boolean z, boolean z2) {
        char cCharAt;
        if (charAt(i) != c) {
            throw new InvalidPathException("Expected " + c + " but found " + charAt(i));
        }
        int i2 = 1;
        int i3 = i + 1;
        while (inBounds(i3)) {
            if (z && ((cCharAt = charAt(i3)) == '\'' || cCharAt == '\"')) {
                int iNextIndexOfUnescaped = nextIndexOfUnescaped(i3, cCharAt);
                if (iNextIndexOfUnescaped == -1) {
                    throw new InvalidPathException("Could not find matching close quote for " + cCharAt + " when parsing : " + ((Object) this.charSequence));
                }
                i3 = iNextIndexOfUnescaped + 1;
            }
            if (z2 && charAt(i3) == '/') {
                int iNextIndexOfUnescaped2 = nextIndexOfUnescaped(i3, '/');
                if (iNextIndexOfUnescaped2 == -1) {
                    throw new InvalidPathException("Could not find matching close for / when parsing regex in : " + ((Object) this.charSequence));
                }
                i3 = iNextIndexOfUnescaped2 + 1;
            }
            if (charAt(i3) == c) {
                i2++;
            }
            if (charAt(i3) == c2 && i2 - 1 == 0) {
                return i3;
            }
            i3++;
        }
        return -1;
    }

    public int indexOfNextSignificantChar(char c) {
        return indexOfNextSignificantChar(this.position, c);
    }

    public int indexOfPreviousSignificantChar(int i) {
        do {
            i--;
            if (isOutOfBounds(i)) {
                break;
            }
        } while (charAt(i) == ' ');
        if (isOutOfBounds(i)) {
            return -1;
        }
        return i;
    }

    public boolean isNumberCharacter(int i) {
        char cCharAt = charAt(i);
        return Character.isDigit(cCharAt) || cCharAt == '-' || cCharAt == '.';
    }

    public boolean isOutOfBounds(int i) {
        return !inBounds(i);
    }

    public boolean lastCharIs(char c) {
        return this.charSequence.charAt(this.endPosition) == c;
    }

    public int length() {
        return this.endPosition + 1;
    }

    public boolean nextCharIs(char c) {
        return inBounds(this.position + 1) && this.charSequence.charAt(this.position + 1) == c;
    }

    public int nextIndexOf(char c) {
        return nextIndexOf(this.position + 1, c);
    }

    public int nextIndexOfUnescaped(char c) {
        return nextIndexOfUnescaped(this.position, c);
    }

    public char nextSignificantChar() {
        return nextSignificantChar(this.position);
    }

    public boolean nextSignificantCharIs(int i, char c) {
        int i2 = i + 1;
        while (!isOutOfBounds(i2) && charAt(i2) == ' ') {
            i2++;
        }
        return !isOutOfBounds(i2) && charAt(i2) == c;
    }

    public int position() {
        return this.position;
    }

    public char previousSignificantChar(int i) {
        int iIndexOfPreviousSignificantChar = indexOfPreviousSignificantChar(i);
        return iIndexOfPreviousSignificantChar == -1 ? SPACE : charAt(iIndexOfPreviousSignificantChar);
    }

    public void readSignificantChar(char c) {
        if (skipBlanks().currentChar() != c) {
            throw new InvalidPathException(String.format("Expected character: %c", Character.valueOf(c)));
        }
        incrementPosition(1);
    }

    public void readSignificantSubSequence(CharSequence charSequence) {
        skipBlanks();
        if (!inBounds((this.position + charSequence.length()) - 1)) {
            throw new InvalidPathException(String.format("End of string reached while expecting: %s", charSequence));
        }
        int i = this.position;
        if (!subSequence(i, charSequence.length() + i).equals(charSequence)) {
            throw new InvalidPathException(String.format("Expected: %s", charSequence));
        }
        incrementPosition(charSequence.length());
    }

    public int setPosition(int i) {
        this.position = i;
        return i;
    }

    public CharacterIndex skipBlanks() {
        while (inBounds() && this.position < this.endPosition && currentChar() == ' ') {
            incrementPosition(1);
        }
        return this;
    }

    public CharSequence subSequence(int i, int i2) {
        return this.charSequence.subSequence(i, i2);
    }

    public String toString() {
        return this.charSequence.toString();
    }

    public CharacterIndex trim() {
        skipBlanks();
        skipBlanksAtEnd();
        return this;
    }

    public boolean inBounds() {
        return inBounds(this.position);
    }

    public int indexOfNextSignificantChar(int i, char c) {
        do {
            i++;
            if (isOutOfBounds(i)) {
                break;
            }
        } while (charAt(i) == ' ');
        if (charAt(i) == c) {
            return i;
        }
        return -1;
    }

    public int nextIndexOf(int i, char c) {
        while (!isOutOfBounds(i)) {
            if (charAt(i) == c) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public int nextIndexOfUnescaped(int i, char c) {
        boolean z = false;
        for (int i2 = i + 1; !isOutOfBounds(i2); i2++) {
            if (z) {
                z = false;
            } else if ('\\' == charAt(i2)) {
                z = true;
            } else if (c == charAt(i2) && !z) {
                return i2;
            }
        }
        return -1;
    }

    public char nextSignificantChar(int i) {
        do {
            i++;
            if (isOutOfBounds(i)) {
                break;
            }
        } while (charAt(i) == ' ');
        return !isOutOfBounds(i) ? charAt(i) : SPACE;
    }

    public int indexOfPreviousSignificantChar() {
        return indexOfPreviousSignificantChar(this.position);
    }

    public boolean nextSignificantCharIs(char c) {
        return nextSignificantCharIs(this.position, c);
    }

    public char previousSignificantChar() {
        return previousSignificantChar(this.position);
    }
}
