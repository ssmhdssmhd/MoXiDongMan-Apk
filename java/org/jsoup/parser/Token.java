package org.jsoup.parser;

import android.support.v4.y41;
import org.apache.commons.lang3.Cclass;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attributes;

/* loaded from: classes3.dex */
abstract class Token {
    public TokenType type;

    public static final class CData extends Character {
        public CData(String str) {
            data(str);
        }

        @Override // org.jsoup.parser.Token.Character
        public String toString() {
            return "<![CDATA[" + getData() + "]]>";
        }
    }

    public static class Character extends Token {
        private String data;

        public Character() {
            super();
            this.type = TokenType.Character;
        }

        public Character data(String str) {
            this.data = str;
            return this;
        }

        public String getData() {
            return this.data;
        }

        @Override // org.jsoup.parser.Token
        public Token reset() {
            this.data = null;
            return this;
        }

        public String toString() {
            return getData();
        }
    }

    public static final class Doctype extends Token {
        public boolean forceQuirks;
        public final StringBuilder name;
        public String pubSysKey;
        public final StringBuilder publicIdentifier;
        public final StringBuilder systemIdentifier;

        public Doctype() {
            super();
            this.name = new StringBuilder();
            this.pubSysKey = null;
            this.publicIdentifier = new StringBuilder();
            this.systemIdentifier = new StringBuilder();
            this.forceQuirks = false;
            this.type = TokenType.Doctype;
        }

        public String getName() {
            return this.name.toString();
        }

        public String getPubSysKey() {
            return this.pubSysKey;
        }

        public String getPublicIdentifier() {
            return this.publicIdentifier.toString();
        }

        public String getSystemIdentifier() {
            return this.systemIdentifier.toString();
        }

        public boolean isForceQuirks() {
            return this.forceQuirks;
        }

        @Override // org.jsoup.parser.Token
        public Token reset() {
            Token.reset(this.name);
            this.pubSysKey = null;
            Token.reset(this.publicIdentifier);
            Token.reset(this.systemIdentifier);
            this.forceQuirks = false;
            return this;
        }

        public String toString() {
            return "<!doctype " + getName() + ">";
        }
    }

    public static final class EOF extends Token {
        public EOF() {
            super();
            this.type = TokenType.EOF;
        }

        @Override // org.jsoup.parser.Token
        public Token reset() {
            return this;
        }

        public String toString() {
            return "";
        }
    }

    public static final class EndTag extends Tag {
        public EndTag() {
            this.type = TokenType.EndTag;
        }

        @Override // org.jsoup.parser.Token.Tag
        public String toString() {
            return "</" + toStringName() + ">";
        }
    }

    public static final class StartTag extends Tag {
        public StartTag() {
            this.type = TokenType.StartTag;
        }

        public StartTag nameAttr(String str, Attributes attributes) {
            this.tagName = str;
            this.attributes = attributes;
            this.normalName = ParseSettings.normalName(str);
            return this;
        }

        @Override // org.jsoup.parser.Token.Tag
        public String toString() {
            if (!hasAttributes() || this.attributes.size() <= 0) {
                return "<" + toStringName() + ">";
            }
            return "<" + toStringName() + Cclass.f28652do + this.attributes.toString() + ">";
        }

        @Override // org.jsoup.parser.Token.Tag, org.jsoup.parser.Token
        public Tag reset() {
            super.reset();
            this.attributes = null;
            return this;
        }
    }

    public static abstract class Tag extends Token {
        private static final int MaxAttributes = 512;
        private final StringBuilder attrName;

        @y41
        private String attrNameS;
        private final StringBuilder attrValue;

        @y41
        private String attrValueS;

        @y41
        public Attributes attributes;
        private boolean hasAttrName;
        private boolean hasAttrValue;
        private boolean hasEmptyAttrValue;

        @y41
        public String normalName;
        public boolean selfClosing;

        @y41
        public String tagName;

        public Tag() {
            super();
            this.attrName = new StringBuilder();
            this.hasAttrName = false;
            this.attrValue = new StringBuilder();
            this.hasAttrValue = false;
            this.hasEmptyAttrValue = false;
            this.selfClosing = false;
        }

        private void ensureAttrName() {
            this.hasAttrName = true;
            String str = this.attrNameS;
            if (str != null) {
                this.attrName.append(str);
                this.attrNameS = null;
            }
        }

        private void ensureAttrValue() {
            this.hasAttrValue = true;
            String str = this.attrValueS;
            if (str != null) {
                this.attrValue.append(str);
                this.attrValueS = null;
            }
        }

        public final void appendAttributeName(String str) {
            String strReplace = str.replace((char) 0, (char) 65533);
            ensureAttrName();
            if (this.attrName.length() == 0) {
                this.attrNameS = strReplace;
            } else {
                this.attrName.append(strReplace);
            }
        }

        public final void appendAttributeValue(String str) {
            ensureAttrValue();
            if (this.attrValue.length() == 0) {
                this.attrValueS = str;
            } else {
                this.attrValue.append(str);
            }
        }

        public final void appendTagName(String str) {
            String strReplace = str.replace((char) 0, (char) 65533);
            String str2 = this.tagName;
            if (str2 != null) {
                strReplace = str2.concat(strReplace);
            }
            this.tagName = strReplace;
            this.normalName = ParseSettings.normalName(strReplace);
        }

        public final void finaliseTag() {
            if (this.hasAttrName) {
                newAttribute();
            }
        }

        public final boolean hasAttribute(String str) {
            Attributes attributes = this.attributes;
            return attributes != null && attributes.hasKey(str);
        }

        public final boolean hasAttributes() {
            return this.attributes != null;
        }

        public final boolean isSelfClosing() {
            return this.selfClosing;
        }

        public final String name() {
            String str = this.tagName;
            Validate.isFalse(str == null || str.length() == 0);
            return this.tagName;
        }

        public final void newAttribute() {
            if (this.attributes == null) {
                this.attributes = new Attributes();
            }
            if (this.hasAttrName && this.attributes.size() < 512) {
                String strTrim = (this.attrName.length() > 0 ? this.attrName.toString() : this.attrNameS).trim();
                if (strTrim.length() > 0) {
                    this.attributes.add(strTrim, this.hasAttrValue ? this.attrValue.length() > 0 ? this.attrValue.toString() : this.attrValueS : this.hasEmptyAttrValue ? "" : null);
                }
            }
            Token.reset(this.attrName);
            this.attrNameS = null;
            this.hasAttrName = false;
            Token.reset(this.attrValue);
            this.attrValueS = null;
            this.hasAttrValue = false;
            this.hasEmptyAttrValue = false;
        }

        public final String normalName() {
            return this.normalName;
        }

        public final void setEmptyAttributeValue() {
            this.hasEmptyAttrValue = true;
        }

        public abstract String toString();

        public final String toStringName() {
            String str = this.tagName;
            return str != null ? str : "[unset]";
        }

        @Override // org.jsoup.parser.Token
        public Tag reset() {
            this.tagName = null;
            this.normalName = null;
            Token.reset(this.attrName);
            this.attrNameS = null;
            this.hasAttrName = false;
            Token.reset(this.attrValue);
            this.attrValueS = null;
            this.hasEmptyAttrValue = false;
            this.hasAttrValue = false;
            this.selfClosing = false;
            this.attributes = null;
            return this;
        }

        public final Tag name(String str) {
            this.tagName = str;
            this.normalName = ParseSettings.normalName(str);
            return this;
        }

        public final void appendTagName(char c) {
            appendTagName(String.valueOf(c));
        }

        public final void appendAttributeValue(char c) {
            ensureAttrValue();
            this.attrValue.append(c);
        }

        public final void appendAttributeName(char c) {
            ensureAttrName();
            this.attrName.append(c);
        }

        public final void appendAttributeValue(char[] cArr) {
            ensureAttrValue();
            this.attrValue.append(cArr);
        }

        public final void appendAttributeValue(int[] iArr) {
            ensureAttrValue();
            for (int i : iArr) {
                this.attrValue.appendCodePoint(i);
            }
        }
    }

    public enum TokenType {
        Doctype,
        StartTag,
        EndTag,
        Comment,
        Character,
        EOF
    }

    public static void reset(StringBuilder sb) {
        if (sb != null) {
            sb.delete(0, sb.length());
        }
    }

    public final Character asCharacter() {
        return (Character) this;
    }

    public final Comment asComment() {
        return (Comment) this;
    }

    public final Doctype asDoctype() {
        return (Doctype) this;
    }

    public final EndTag asEndTag() {
        return (EndTag) this;
    }

    public final StartTag asStartTag() {
        return (StartTag) this;
    }

    public final boolean isCData() {
        return this instanceof CData;
    }

    public final boolean isCharacter() {
        return this.type == TokenType.Character;
    }

    public final boolean isComment() {
        return this.type == TokenType.Comment;
    }

    public final boolean isDoctype() {
        return this.type == TokenType.Doctype;
    }

    public final boolean isEOF() {
        return this.type == TokenType.EOF;
    }

    public final boolean isEndTag() {
        return this.type == TokenType.EndTag;
    }

    public final boolean isStartTag() {
        return this.type == TokenType.StartTag;
    }

    public abstract Token reset();

    public String tokenType() {
        return getClass().getSimpleName();
    }

    private Token() {
    }

    public static final class Comment extends Token {
        public boolean bogus;
        private final StringBuilder data;
        private String dataS;

        public Comment() {
            super();
            this.data = new StringBuilder();
            this.bogus = false;
            this.type = TokenType.Comment;
        }

        private void ensureData() {
            String str = this.dataS;
            if (str != null) {
                this.data.append(str);
                this.dataS = null;
            }
        }

        public final Comment append(String str) {
            ensureData();
            if (this.data.length() == 0) {
                this.dataS = str;
            } else {
                this.data.append(str);
            }
            return this;
        }

        public String getData() {
            String str = this.dataS;
            return str != null ? str : this.data.toString();
        }

        @Override // org.jsoup.parser.Token
        public Token reset() {
            Token.reset(this.data);
            this.dataS = null;
            this.bogus = false;
            return this;
        }

        public String toString() {
            return "<!--" + getData() + "-->";
        }

        public final Comment append(char c) {
            ensureData();
            this.data.append(c);
            return this;
        }
    }
}
