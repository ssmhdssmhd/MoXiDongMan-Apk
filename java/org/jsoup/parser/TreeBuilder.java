package org.jsoup.parser;

import android.support.v4.yb1;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.parser.Token;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class TreeBuilder {
    public String baseUri;
    public Token currentToken;
    public Document doc;
    public Parser parser;
    public CharacterReader reader;
    public Map<String, Tag> seenTags;
    public ParseSettings settings;
    public ArrayList<Element> stack;
    public Tokeniser tokeniser;
    private Token.StartTag start = new Token.StartTag();
    private Token.EndTag end = new Token.EndTag();

    public Element currentElement() {
        int size = this.stack.size();
        return size > 0 ? this.stack.get(size - 1) : this.doc;
    }

    public boolean currentElementIs(String str) {
        Element elementCurrentElement;
        return (this.stack.size() == 0 || (elementCurrentElement = currentElement()) == null || !elementCurrentElement.normalName().equals(str)) ? false : true;
    }

    public abstract ParseSettings defaultSettings();

    public void error(String str) {
        error(str, null);
    }

    @yb1
    public void initialiseParse(Reader reader, String str, Parser parser) {
        Validate.notNull(reader, "String input must not be null");
        Validate.notNull(str, "BaseURI must not be null");
        Validate.notNull(parser);
        Document document = new Document(str);
        this.doc = document;
        document.parser(parser);
        this.parser = parser;
        this.settings = parser.settings();
        CharacterReader characterReader = new CharacterReader(reader);
        this.reader = characterReader;
        characterReader.trackNewlines(parser.isTrackErrors());
        this.currentToken = null;
        this.tokeniser = new Tokeniser(this.reader, parser.getErrors());
        this.stack = new ArrayList<>(32);
        this.seenTags = new HashMap();
        this.baseUri = str;
    }

    public boolean isContentForTagData(String str) {
        return false;
    }

    public abstract TreeBuilder newInstance();

    @yb1
    public Document parse(Reader reader, String str, Parser parser) {
        initialiseParse(reader, str, parser);
        runParser();
        this.reader.close();
        this.reader = null;
        this.tokeniser = null;
        this.stack = null;
        this.seenTags = null;
        return this.doc;
    }

    public abstract List<Node> parseFragment(String str, Element element, String str2, Parser parser);

    public abstract boolean process(Token token);

    public boolean processEndTag(String str) {
        Token token = this.currentToken;
        Token.EndTag endTag = this.end;
        return token == endTag ? process(new Token.EndTag().name(str)) : process(endTag.reset().name(str));
    }

    public boolean processStartTag(String str) {
        Token.StartTag startTag = this.start;
        return this.currentToken == startTag ? process(new Token.StartTag().name(str)) : process(startTag.reset().name(str));
    }

    public void runParser() {
        Token token;
        Tokeniser tokeniser = this.tokeniser;
        Token.TokenType tokenType = Token.TokenType.EOF;
        do {
            token = tokeniser.read();
            process(token);
            token.reset();
        } while (token.type != tokenType);
    }

    public Tag tagFor(String str, ParseSettings parseSettings) {
        Tag tag = this.seenTags.get(str);
        if (tag != null) {
            return tag;
        }
        Tag tagValueOf = Tag.valueOf(str, parseSettings);
        this.seenTags.put(str, tagValueOf);
        return tagValueOf;
    }

    public void error(String str, Object... objArr) {
        ParseErrorList errors = this.parser.getErrors();
        if (errors.canAddError()) {
            errors.add(new ParseError(this.reader, str, objArr));
        }
    }

    public boolean processStartTag(String str, Attributes attributes) {
        Token.StartTag startTag = this.start;
        if (this.currentToken == startTag) {
            return process(new Token.StartTag().nameAttr(str, attributes));
        }
        startTag.reset();
        startTag.nameAttr(str, attributes);
        return process(startTag);
    }
}
