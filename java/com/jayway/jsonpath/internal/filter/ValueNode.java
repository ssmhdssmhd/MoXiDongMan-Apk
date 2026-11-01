package com.jayway.jsonpath.internal.filter;

import android.support.v4.ic1;
import android.support.v4.on0;
import com.jayway.jsonpath.Configuration;
import com.jayway.jsonpath.InvalidPathException;
import com.jayway.jsonpath.JsonPathException;
import com.jayway.jsonpath.Option;
import com.jayway.jsonpath.PathNotFoundException;
import com.jayway.jsonpath.Predicate;
import com.jayway.jsonpath.internal.Path;
import com.jayway.jsonpath.internal.Utils;
import com.jayway.jsonpath.internal.path.PathCompiler;
import com.jayway.jsonpath.internal.path.PredicateContextImpl;
import com.jayway.jsonpath.spi.json.JsonProvider;
import com.umeng.analytics.pro.ak;
import freemarker.core.b2;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import net.minidev.json.parser.Cdo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes2.dex */
public abstract class ValueNode {
    public static final BooleanNode FALSE;
    public static final NullNode NULL_NODE;
    public static final BooleanNode TRUE;
    public static final UndefinedNode UNDEFINED = new UndefinedNode();

    public static class BooleanNode extends ValueNode {
        private final Boolean value;

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public BooleanNode asBooleanNode() {
            return this;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BooleanNode)) {
                return false;
            }
            Boolean bool = this.value;
            Boolean bool2 = ((BooleanNode) obj).value;
            if (bool != null) {
                if (bool.equals(bool2)) {
                    return true;
                }
            } else if (bool2 == null) {
                return true;
            }
            return false;
        }

        public boolean getBoolean() {
            return this.value.booleanValue();
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public boolean isBooleanNode() {
            return true;
        }

        public String toString() {
            return this.value.toString();
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public Class<?> type(Predicate.PredicateContext predicateContext) {
            return Boolean.class;
        }

        private BooleanNode(CharSequence charSequence) {
            this.value = Boolean.valueOf(Boolean.parseBoolean(charSequence.toString()));
        }
    }

    public static class ClassNode extends ValueNode {
        private final Class clazz;

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public ClassNode asClassNode() {
            return this;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ClassNode)) {
                return false;
            }
            Class cls = this.clazz;
            Class cls2 = ((ClassNode) obj).clazz;
            if (cls != null) {
                if (cls.equals(cls2)) {
                    return true;
                }
            } else if (cls2 == null) {
                return true;
            }
            return false;
        }

        public Class getClazz() {
            return this.clazz;
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public boolean isClassNode() {
            return true;
        }

        public String toString() {
            return this.clazz.getName();
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public Class<?> type(Predicate.PredicateContext predicateContext) {
            return Class.class;
        }

        private ClassNode(Class cls) {
            this.clazz = cls;
        }
    }

    public static class JsonNode extends ValueNode {
        private final Object json;
        private final boolean parsed;

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public JsonNode asJsonNode() {
            return this;
        }

        public ValueNode asValueListNode(Predicate.PredicateContext predicateContext) {
            return !isArray(predicateContext) ? ValueNode.UNDEFINED : new ValueListNode(Collections.unmodifiableList((List) parse(predicateContext)));
        }

        public boolean equals(JsonNode jsonNode, Predicate.PredicateContext predicateContext) {
            if (this == jsonNode) {
                return true;
            }
            Object obj = this.json;
            if (obj != null) {
                if (obj.equals(jsonNode.parse(predicateContext))) {
                    return true;
                }
            } else if (jsonNode.json == null) {
                return true;
            }
            return false;
        }

        public Object getJson() {
            return this.json;
        }

        public boolean isArray(Predicate.PredicateContext predicateContext) {
            return predicateContext.configuration().jsonProvider().isArray(parse(predicateContext));
        }

        public boolean isEmpty(Predicate.PredicateContext predicateContext) {
            return (isArray(predicateContext) || isMap(predicateContext)) ? predicateContext.configuration().jsonProvider().length(parse(predicateContext)) == 0 : !(parse(predicateContext) instanceof String) || ((String) parse(predicateContext)).length() == 0;
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public boolean isJsonNode() {
            return true;
        }

        public boolean isMap(Predicate.PredicateContext predicateContext) {
            return predicateContext.configuration().jsonProvider().isMap(parse(predicateContext));
        }

        public boolean isParsed() {
            return this.parsed;
        }

        public int length(Predicate.PredicateContext predicateContext) {
            if (isArray(predicateContext)) {
                return predicateContext.configuration().jsonProvider().length(parse(predicateContext));
            }
            return -1;
        }

        public Object parse(Predicate.PredicateContext predicateContext) {
            try {
                return this.parsed ? this.json : new Cdo(-1).m31644catch(this.json.toString());
            } catch (ic1 e) {
                throw new IllegalArgumentException(e);
            }
        }

        public String toString() {
            return this.json.toString();
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public Class<?> type(Predicate.PredicateContext predicateContext) {
            return isArray(predicateContext) ? List.class : isMap(predicateContext) ? Map.class : parse(predicateContext) instanceof Number ? Number.class : parse(predicateContext) instanceof String ? String.class : parse(predicateContext) instanceof Boolean ? Boolean.class : Void.class;
        }

        private JsonNode(CharSequence charSequence) {
            this.json = charSequence.toString();
            this.parsed = false;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof JsonNode)) {
                return false;
            }
            Object obj2 = this.json;
            Object obj3 = ((JsonNode) obj).json;
            if (obj2 != null) {
                if (obj2.equals(obj3)) {
                    return true;
                }
            } else if (obj3 == null) {
                return true;
            }
            return false;
        }

        public JsonNode(Object obj) {
            this.json = obj;
            this.parsed = true;
        }
    }

    public static class NullNode extends ValueNode {
        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public NullNode asNullNode() {
            return this;
        }

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof NullNode);
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public boolean isNullNode() {
            return true;
        }

        public String toString() {
            return "null";
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public Class<?> type(Predicate.PredicateContext predicateContext) {
            return Void.class;
        }

        private NullNode() {
        }
    }

    public static class PathNode extends ValueNode {
        private static final Logger logger = LoggerFactory.getLogger((Class<?>) PathNode.class);
        private final boolean existsCheck;
        private final Path path;
        private final boolean shouldExist;

        public PathNode(Path path) {
            this(path, false, false);
        }

        public PathNode asExistsCheck(boolean z) {
            return new PathNode(this.path, true, z);
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public PathNode asPathNode() {
            return this;
        }

        public ValueNode evaluate(Predicate.PredicateContext predicateContext) {
            Object value;
            if (isExistsCheck()) {
                try {
                    return this.path.evaluate(predicateContext.item(), predicateContext.root(), Configuration.builder().jsonProvider(predicateContext.configuration().jsonProvider()).options(Option.REQUIRE_PROPERTIES).build()).getValue(false) == JsonProvider.UNDEFINED ? ValueNode.FALSE : ValueNode.TRUE;
                } catch (PathNotFoundException unused) {
                    return ValueNode.FALSE;
                }
            }
            try {
                if (predicateContext instanceof PredicateContextImpl) {
                    value = ((PredicateContextImpl) predicateContext).evaluate(this.path);
                } else {
                    value = this.path.evaluate(this.path.isRootPath() ? predicateContext.root() : predicateContext.item(), predicateContext.root(), predicateContext.configuration()).getValue();
                }
                Object objUnwrap = predicateContext.configuration().jsonProvider().unwrap(value);
                if (!(objUnwrap instanceof Number) && !(objUnwrap instanceof BigDecimal)) {
                    if (objUnwrap instanceof String) {
                        return ValueNode.createStringNode(objUnwrap.toString(), false);
                    }
                    if (objUnwrap instanceof Boolean) {
                        return ValueNode.createBooleanNode(objUnwrap.toString());
                    }
                    if (objUnwrap == null) {
                        return ValueNode.NULL_NODE;
                    }
                    if (!predicateContext.configuration().jsonProvider().isArray(objUnwrap) && !predicateContext.configuration().jsonProvider().isMap(objUnwrap)) {
                        throw new JsonPathException("Could not convert " + objUnwrap.toString() + " to a ValueNode");
                    }
                    return ValueNode.createJsonNode(objUnwrap);
                }
                return ValueNode.createNumberNode(objUnwrap.toString());
            } catch (PathNotFoundException unused2) {
                return ValueNode.UNDEFINED;
            }
        }

        public Path getPath() {
            return this.path;
        }

        public boolean isExistsCheck() {
            return this.existsCheck;
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public boolean isPathNode() {
            return true;
        }

        public boolean shouldExists() {
            return this.shouldExist;
        }

        public String toString() {
            return (!this.existsCheck || this.shouldExist) ? this.path.toString() : Utils.concat(org.antlr.v4.runtime.tree.xpath.Cdo.f28590try, this.path.toString());
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public Class<?> type(Predicate.PredicateContext predicateContext) {
            return Void.class;
        }

        public PathNode(CharSequence charSequence, boolean z, boolean z2) {
            this(PathCompiler.compile(charSequence.toString(), new Predicate[0]), z, z2);
        }

        public PathNode(Path path, boolean z, boolean z2) {
            this.path = path;
            this.existsCheck = z;
            this.shouldExist = z2;
            logger.trace("PathNode {} existsCheck: {}", path, Boolean.valueOf(z));
        }
    }

    public static class PatternNode extends ValueNode {
        private final Pattern compiledPattern;
        private final String pattern;

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public PatternNode asPatternNode() {
            return this;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PatternNode)) {
                return false;
            }
            Pattern pattern = this.compiledPattern;
            Pattern pattern2 = ((PatternNode) obj).compiledPattern;
            if (pattern != null) {
                if (pattern.equals(pattern2)) {
                    return true;
                }
            } else if (pattern2 == null) {
                return true;
            }
            return false;
        }

        public Pattern getCompiledPattern() {
            return this.compiledPattern;
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public boolean isPatternNode() {
            return true;
        }

        public String toString() {
            String str = (this.compiledPattern.flags() & 2) == 2 ? ak.aC : "";
            if (this.pattern.startsWith(on0.f4694final)) {
                return this.pattern;
            }
            return on0.f4694final + this.pattern + on0.f4694final + str;
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public Class<?> type(Predicate.PredicateContext predicateContext) {
            return Void.TYPE;
        }

        private PatternNode(CharSequence charSequence) {
            String string = charSequence.toString();
            int iIndexOf = string.indexOf(47);
            int iLastIndexOf = string.lastIndexOf(47);
            int i = string.endsWith("/i") ? 2 : 0;
            String strSubstring = string.substring(iIndexOf + 1, iLastIndexOf);
            this.pattern = strSubstring;
            this.compiledPattern = Pattern.compile(strSubstring, i);
        }

        public PatternNode(Pattern pattern) {
            this.pattern = pattern.pattern();
            this.compiledPattern = pattern;
        }
    }

    public static class PredicateNode extends ValueNode {
        private final Predicate predicate;

        public PredicateNode(Predicate predicate) {
            this.predicate = predicate;
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public PredicateNode asPredicateNode() {
            return this;
        }

        public boolean equals(Object obj) {
            return false;
        }

        public Predicate getPredicate() {
            return this.predicate;
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public boolean isPredicateNode() {
            return true;
        }

        public String toString() {
            return this.predicate.toString();
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public Class<?> type(Predicate.PredicateContext predicateContext) {
            return Void.class;
        }
    }

    public static class StringNode extends ValueNode {
        private final String string;
        private boolean useSingleQuote;

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public NumberNode asNumberNode() {
            try {
                return new NumberNode(new BigDecimal(this.string));
            } catch (NumberFormatException unused) {
                return NumberNode.NAN;
            }
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public StringNode asStringNode() {
            return this;
        }

        public boolean contains(String str) {
            return getString().contains(str);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StringNode) && !(obj instanceof NumberNode)) {
                return false;
            }
            StringNode stringNodeAsStringNode = ((ValueNode) obj).asStringNode();
            String str = this.string;
            String string = stringNodeAsStringNode.getString();
            if (str != null) {
                if (str.equals(string)) {
                    return true;
                }
            } else if (string == null) {
                return true;
            }
            return false;
        }

        public String getString() {
            return this.string;
        }

        public boolean isEmpty() {
            return getString().isEmpty();
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public boolean isStringNode() {
            return true;
        }

        public int length() {
            return getString().length();
        }

        public String toString() {
            String str = this.useSingleQuote ? "'" : "\"";
            return str + Utils.escape(this.string, true) + str;
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public Class<?> type(Predicate.PredicateContext predicateContext) {
            return String.class;
        }

        private StringNode(CharSequence charSequence, boolean z) {
            this.useSingleQuote = true;
            if (charSequence.length() > 1) {
                char cCharAt = charSequence.charAt(0);
                char cCharAt2 = charSequence.charAt(charSequence.length() - 1);
                if (cCharAt == '\'' && cCharAt2 == '\'') {
                    charSequence = charSequence.subSequence(1, charSequence.length() - 1);
                } else if (cCharAt == '\"' && cCharAt2 == '\"') {
                    charSequence = charSequence.subSequence(1, charSequence.length() - 1);
                    this.useSingleQuote = false;
                }
            }
            String string = charSequence.toString();
            this.string = z ? Utils.unescape(string) : string;
        }
    }

    public static class UndefinedNode extends ValueNode {
        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public UndefinedNode asUndefinedNode() {
            return this;
        }

        public boolean equals(Object obj) {
            return false;
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public boolean isUndefinedNode() {
            return true;
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public Class<?> type(Predicate.PredicateContext predicateContext) {
            return Void.class;
        }
    }

    public static class ValueListNode extends ValueNode implements Iterable<ValueNode> {
        private List<ValueNode> nodes = new ArrayList();

        public ValueListNode(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                this.nodes.add(ValueNode.toValueNode(it.next()));
            }
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public ValueListNode asValueListNode() {
            return this;
        }

        public boolean contains(ValueNode valueNode) {
            return this.nodes.contains(valueNode);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ValueListNode)) {
                return false;
            }
            ValueListNode valueListNode = (ValueListNode) obj;
            if (valueListNode != null) {
                if (this.nodes.equals(valueListNode.nodes)) {
                    return true;
                }
            } else if (valueListNode.nodes == null) {
                return true;
            }
            return false;
        }

        public List<ValueNode> getNodes() {
            return Collections.unmodifiableList(this.nodes);
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public boolean isValueListNode() {
            return true;
        }

        @Override // java.lang.Iterable
        public Iterator<ValueNode> iterator() {
            return this.nodes.iterator();
        }

        public boolean subsetof(ValueListNode valueListNode) {
            Iterator<ValueNode> it = this.nodes.iterator();
            while (it.hasNext()) {
                if (!valueListNode.nodes.contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return "[" + Utils.join(",", this.nodes) + "]";
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public Class<?> type(Predicate.PredicateContext predicateContext) {
            return List.class;
        }
    }

    static {
        NULL_NODE = new NullNode();
        TRUE = new BooleanNode(b2.f23511if);
        FALSE = new BooleanNode(b2.f23510do);
    }

    public static BooleanNode createBooleanNode(CharSequence charSequence) {
        return Boolean.parseBoolean(charSequence.toString()) ? TRUE : FALSE;
    }

    public static ClassNode createClassNode(Class<?> cls) {
        return new ClassNode(cls);
    }

    public static JsonNode createJsonNode(CharSequence charSequence) {
        return new JsonNode(charSequence);
    }

    public static NullNode createNullNode() {
        return NULL_NODE;
    }

    public static NumberNode createNumberNode(CharSequence charSequence) {
        return new NumberNode(charSequence);
    }

    public static PathNode createPathNode(CharSequence charSequence, boolean z, boolean z2) {
        return new PathNode(charSequence, z, z2);
    }

    public static PatternNode createPatternNode(CharSequence charSequence) {
        return new PatternNode(charSequence);
    }

    public static StringNode createStringNode(CharSequence charSequence, boolean z) {
        return new StringNode(charSequence, z);
    }

    public static UndefinedNode createUndefinedNode() {
        return UNDEFINED;
    }

    private static boolean isJson(Object obj) {
        if (obj != null && (obj instanceof String)) {
            String strTrim = obj.toString().trim();
            if (strTrim.length() <= 1) {
                return false;
            }
            char cCharAt = strTrim.charAt(0);
            char cCharAt2 = strTrim.charAt(strTrim.length() - 1);
            if ((cCharAt == '[' && cCharAt2 == ']') || (cCharAt == '{' && cCharAt2 == '}')) {
                try {
                    new Cdo(-1).m31644catch(strTrim);
                    return true;
                } catch (Exception unused) {
                }
            }
        }
        return false;
    }

    private static boolean isPath(Object obj) {
        if (obj != null && (obj instanceof String)) {
            String strTrim = obj.toString().trim();
            if (strTrim.length() <= 0) {
                return false;
            }
            char cCharAt = strTrim.charAt(0);
            if (cCharAt != '@' && cCharAt != '$') {
                return false;
            }
            try {
                PathCompiler.compile(strTrim, new Predicate[0]);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static ValueNode toValueNode(Object obj) {
        if (obj == null) {
            return NULL_NODE;
        }
        if (obj instanceof ValueNode) {
            return (ValueNode) obj;
        }
        if (obj instanceof Class) {
            return createClassNode((Class) obj);
        }
        if (isPath(obj)) {
            return new PathNode((CharSequence) obj.toString(), false, false);
        }
        if (isJson(obj)) {
            return createJsonNode((CharSequence) obj.toString());
        }
        if (obj instanceof String) {
            return createStringNode(obj.toString(), true);
        }
        if (obj instanceof Character) {
            return createStringNode(obj.toString(), false);
        }
        if (obj instanceof Number) {
            return createNumberNode(obj.toString());
        }
        if (obj instanceof Boolean) {
            return createBooleanNode(obj.toString());
        }
        if (obj instanceof Pattern) {
            return createPatternNode((Pattern) obj);
        }
        throw new JsonPathException("Could not determine value type");
    }

    public BooleanNode asBooleanNode() {
        throw new InvalidPathException("Expected boolean node");
    }

    public ClassNode asClassNode() {
        throw new InvalidPathException("Expected class node");
    }

    public JsonNode asJsonNode() {
        throw new InvalidPathException("Expected json node");
    }

    public NullNode asNullNode() {
        throw new InvalidPathException("Expected null node");
    }

    public NumberNode asNumberNode() {
        throw new InvalidPathException("Expected number node");
    }

    public PathNode asPathNode() {
        throw new InvalidPathException("Expected path node");
    }

    public PatternNode asPatternNode() {
        throw new InvalidPathException("Expected regexp node");
    }

    public PredicateNode asPredicateNode() {
        throw new InvalidPathException("Expected predicate node");
    }

    public StringNode asStringNode() {
        throw new InvalidPathException("Expected string node");
    }

    public UndefinedNode asUndefinedNode() {
        throw new InvalidPathException("Expected undefined node");
    }

    public ValueListNode asValueListNode() {
        throw new InvalidPathException("Expected value list node");
    }

    public boolean isBooleanNode() {
        return false;
    }

    public boolean isClassNode() {
        return false;
    }

    public boolean isJsonNode() {
        return false;
    }

    public boolean isNullNode() {
        return false;
    }

    public boolean isNumberNode() {
        return false;
    }

    public boolean isPathNode() {
        return false;
    }

    public boolean isPatternNode() {
        return false;
    }

    public boolean isPredicateNode() {
        return false;
    }

    public boolean isStringNode() {
        return false;
    }

    public boolean isUndefinedNode() {
        return false;
    }

    public boolean isValueListNode() {
        return false;
    }

    public abstract Class<?> type(Predicate.PredicateContext predicateContext);

    public static class NumberNode extends ValueNode {
        public static NumberNode NAN = new NumberNode((BigDecimal) null);
        private final BigDecimal number;

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public NumberNode asNumberNode() {
            return this;
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public StringNode asStringNode() {
            return new StringNode(this.number.toString(), false);
        }

        public boolean equals(Object obj) {
            NumberNode numberNodeAsNumberNode;
            if (this == obj) {
                return true;
            }
            return ((obj instanceof NumberNode) || (obj instanceof StringNode)) && (numberNodeAsNumberNode = ((ValueNode) obj).asNumberNode()) != NAN && this.number.compareTo(numberNodeAsNumberNode.number) == 0;
        }

        public BigDecimal getNumber() {
            return this.number;
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public boolean isNumberNode() {
            return true;
        }

        public String toString() {
            return this.number.toString();
        }

        @Override // com.jayway.jsonpath.internal.filter.ValueNode
        public Class<?> type(Predicate.PredicateContext predicateContext) {
            return Number.class;
        }

        private NumberNode(BigDecimal bigDecimal) {
            this.number = bigDecimal;
        }

        private NumberNode(CharSequence charSequence) {
            this.number = new BigDecimal(charSequence.toString());
        }
    }

    public static JsonNode createJsonNode(Object obj) {
        return new JsonNode(obj);
    }

    public static ValueNode createPathNode(Path path) {
        return new PathNode(path);
    }

    public static PatternNode createPatternNode(Pattern pattern) {
        return new PatternNode(pattern);
    }
}
