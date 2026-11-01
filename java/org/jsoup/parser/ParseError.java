package org.jsoup.parser;

/* loaded from: classes3.dex */
public class ParseError {
    private String cursorPos;
    private String errorMsg;
    private int pos;

    public ParseError(CharacterReader characterReader, String str) {
        this.pos = characterReader.pos();
        this.cursorPos = characterReader.cursorPos();
        this.errorMsg = str;
    }

    public String getCursorPos() {
        return this.cursorPos;
    }

    public String getErrorMessage() {
        return this.errorMsg;
    }

    public int getPosition() {
        return this.pos;
    }

    public String toString() {
        return "<" + this.cursorPos + ">: " + this.errorMsg;
    }

    public ParseError(CharacterReader characterReader, String str, Object... objArr) {
        this.pos = characterReader.pos();
        this.cursorPos = characterReader.cursorPos();
        this.errorMsg = String.format(str, objArr);
    }

    public ParseError(int i, String str) {
        this.pos = i;
        this.cursorPos = String.valueOf(i);
        this.errorMsg = str;
    }

    public ParseError(int i, String str, Object... objArr) {
        this.pos = i;
        this.cursorPos = String.valueOf(i);
        this.errorMsg = String.format(str, objArr);
    }
}
