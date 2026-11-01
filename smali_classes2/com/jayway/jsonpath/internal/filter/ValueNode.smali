.class public abstract Lcom/jayway/jsonpath/internal/filter/ValueNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;,
        Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;,
        Lcom/jayway/jsonpath/internal/filter/ValueNode$PredicateNode;,
        Lcom/jayway/jsonpath/internal/filter/ValueNode$UndefinedNode;,
        Lcom/jayway/jsonpath/internal/filter/ValueNode$NullNode;,
        Lcom/jayway/jsonpath/internal/filter/ValueNode$ClassNode;,
        Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;,
        Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;,
        Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;,
        Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;,
        Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;
    }
.end annotation


# static fields
.field public static final FALSE:Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

.field public static final NULL_NODE:Lcom/jayway/jsonpath/internal/filter/ValueNode$NullNode;

.field public static final TRUE:Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

.field public static final UNDEFINED:Lcom/jayway/jsonpath/internal/filter/ValueNode$UndefinedNode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$NullNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$NullNode;-><init>(Lcom/jayway/jsonpath/internal/filter/ValueNode$1;)V

    sput-object v0, Lcom/jayway/jsonpath/internal/filter/ValueNode;->NULL_NODE:Lcom/jayway/jsonpath/internal/filter/ValueNode$NullNode;

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    const-string v2, "true"

    invoke-direct {v0, v2, v1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;-><init>(Ljava/lang/CharSequence;Lcom/jayway/jsonpath/internal/filter/ValueNode$1;)V

    sput-object v0, Lcom/jayway/jsonpath/internal/filter/ValueNode;->TRUE:Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    .line 3
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    const-string v2, "false"

    invoke-direct {v0, v2, v1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;-><init>(Ljava/lang/CharSequence;Lcom/jayway/jsonpath/internal/filter/ValueNode$1;)V

    sput-object v0, Lcom/jayway/jsonpath/internal/filter/ValueNode;->FALSE:Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    .line 4
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$UndefinedNode;

    invoke-direct {v0}, Lcom/jayway/jsonpath/internal/filter/ValueNode$UndefinedNode;-><init>()V

    sput-object v0, Lcom/jayway/jsonpath/internal/filter/ValueNode;->UNDEFINED:Lcom/jayway/jsonpath/internal/filter/ValueNode$UndefinedNode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBooleanNode(Ljava/lang/CharSequence;)Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/jayway/jsonpath/internal/filter/ValueNode;->TRUE:Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/jayway/jsonpath/internal/filter/ValueNode;->FALSE:Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    :goto_0
    return-object p0
.end method

.method public static createClassNode(Ljava/lang/Class;)Lcom/jayway/jsonpath/internal/filter/ValueNode$ClassNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/jayway/jsonpath/internal/filter/ValueNode$ClassNode;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$ClassNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$ClassNode;-><init>(Ljava/lang/Class;Lcom/jayway/jsonpath/internal/filter/ValueNode$1;)V

    return-object v0
.end method

.method public static createJsonNode(Ljava/lang/CharSequence;)Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;-><init>(Ljava/lang/CharSequence;Lcom/jayway/jsonpath/internal/filter/ValueNode$1;)V

    return-object v0
.end method

.method public static createJsonNode(Ljava/lang/Object;)Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;
    .locals 1

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createNullNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$NullNode;
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/ValueNode;->NULL_NODE:Lcom/jayway/jsonpath/internal/filter/ValueNode$NullNode;

    return-object v0
.end method

.method public static createNumberNode(Ljava/lang/CharSequence;)Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;-><init>(Ljava/lang/CharSequence;Lcom/jayway/jsonpath/internal/filter/ValueNode$1;)V

    return-object v0
.end method

.method public static createPathNode(Ljava/lang/CharSequence;ZZ)Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;
    .locals 1

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;

    invoke-direct {v0, p0, p1, p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;-><init>(Ljava/lang/CharSequence;ZZ)V

    return-object v0
.end method

.method public static createPathNode(Lcom/jayway/jsonpath/internal/Path;)Lcom/jayway/jsonpath/internal/filter/ValueNode;
    .locals 1

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;-><init>(Lcom/jayway/jsonpath/internal/Path;)V

    return-object v0
.end method

.method public static createPatternNode(Ljava/lang/CharSequence;)Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;-><init>(Ljava/lang/CharSequence;Lcom/jayway/jsonpath/internal/filter/ValueNode$1;)V

    return-object v0
.end method

.method public static createPatternNode(Ljava/util/regex/Pattern;)Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;
    .locals 1

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method

.method public static createStringNode(Ljava/lang/CharSequence;Z)Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;-><init>(Ljava/lang/CharSequence;ZLcom/jayway/jsonpath/internal/filter/ValueNode$1;)V

    return-object v0
.end method

.method public static createUndefinedNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$UndefinedNode;
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/ValueNode;->UNDEFINED:Lcom/jayway/jsonpath/internal/filter/ValueNode$UndefinedNode;

    return-object v0
.end method

.method private static isJson(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1
    instance-of v1, p0, Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v1, v4, :cond_2

    const/16 v4, 0x5d

    if-eq v3, v4, :cond_3

    :cond_2
    const/16 v4, 0x7b

    if-ne v1, v4, :cond_4

    const/16 v1, 0x7d

    if-ne v3, v1, :cond_4

    .line 6
    :cond_3
    :try_start_0
    new-instance v1, Lnet/minidev/json/parser/do;

    const/4 v3, -0x1

    invoke-direct {v1, v3}, Lnet/minidev/json/parser/do;-><init>(I)V

    invoke-virtual {v1, p0}, Lnet/minidev/json/parser/do;->catch(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    :cond_4
    :goto_0
    return v0
.end method

.method private static isPath(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1
    instance-of v1, p0, Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_3

    const/16 v2, 0x24

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    :try_start_0
    new-array v1, v0, [Lcom/jayway/jsonpath/Predicate;

    .line 5
    invoke-static {p0, v1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->compile(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/internal/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_4
    :goto_1
    return v0
.end method

.method public static toValueNode(Ljava/lang/Object;)Lcom/jayway/jsonpath/internal/filter/ValueNode;
    .locals 2

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/jayway/jsonpath/internal/filter/ValueNode;->NULL_NODE:Lcom/jayway/jsonpath/internal/filter/ValueNode$NullNode;

    return-object p0

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jayway/jsonpath/internal/filter/ValueNode;

    return-object p0

    .line 3
    :cond_1
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createClassNode(Ljava/lang/Class;)Lcom/jayway/jsonpath/internal/filter/ValueNode$ClassNode;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    invoke-static {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isPath(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1, v1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;-><init>(Ljava/lang/CharSequence;ZZ)V

    return-object v0

    .line 5
    :cond_3
    invoke-static {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isJson(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createJsonNode(Ljava/lang/CharSequence;)Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;

    move-result-object p0

    return-object p0

    .line 6
    :cond_4
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createStringNode(Ljava/lang/CharSequence;Z)Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;

    move-result-object p0

    return-object p0

    .line 7
    :cond_5
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createStringNode(Ljava/lang/CharSequence;Z)Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;

    move-result-object p0

    return-object p0

    .line 8
    :cond_6
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createNumberNode(Ljava/lang/CharSequence;)Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;

    move-result-object p0

    return-object p0

    .line 9
    :cond_7
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createBooleanNode(Ljava/lang/CharSequence;)Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    move-result-object p0

    return-object p0

    .line 10
    :cond_8
    instance-of v0, p0, Ljava/util/regex/Pattern;

    if-eqz v0, :cond_9

    check-cast p0, Ljava/util/regex/Pattern;

    invoke-static {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createPatternNode(Ljava/util/regex/Pattern;)Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;

    move-result-object p0

    return-object p0

    .line 11
    :cond_9
    new-instance p0, Lcom/jayway/jsonpath/JsonPathException;

    const-string v0, "Could not determine value type"

    invoke-direct {p0, v0}, Lcom/jayway/jsonpath/JsonPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBooleanNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    const-string v1, "Expected boolean node"

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asClassNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$ClassNode;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    const-string v1, "Expected class node"

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asJsonNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    const-string v1, "Expected json node"

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asNullNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$NullNode;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    const-string v1, "Expected null node"

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asNumberNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    const-string v1, "Expected number node"

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asPathNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    const-string v1, "Expected path node"

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asPatternNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    const-string v1, "Expected regexp node"

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asPredicateNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$PredicateNode;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    const-string v1, "Expected predicate node"

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asStringNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    const-string v1, "Expected string node"

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asUndefinedNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$UndefinedNode;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    const-string v1, "Expected undefined node"

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asValueListNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    const-string v1, "Expected value list node"

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isBooleanNode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isClassNode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isJsonNode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNullNode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNumberNode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPathNode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPatternNode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPredicateNode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStringNode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUndefinedNode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValueListNode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract type(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jayway/jsonpath/Predicate$PredicateContext;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method
