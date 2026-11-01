.class public Lcom/jayway/jsonpath/internal/path/PathCompiler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BEGIN_FILTER:C = '?'

.field private static final CLOSE_BRACE:C = '}'

.field private static final CLOSE_PARENTHESIS:C = ')'

.field private static final CLOSE_SQUARE_BRACKET:C = ']'

.field private static final COMMA:C = ','

.field private static final CR:C = '\r'

.field private static final DOC_CONTEXT:C = '$'

.field private static final DOUBLE_QUOTE:C = '\"'

.field private static final EVAL_CONTEXT:C = '@'

.field private static final LF:C = '\n'

.field private static final MINUS:C = '-'

.field private static final OPEN_BRACE:C = '{'

.field private static final OPEN_PARENTHESIS:C = '('

.field private static final OPEN_SQUARE_BRACKET:C = '['

.field private static final PERIOD:C = '.'

.field private static final SINGLE_QUOTE:C = '\''

.field private static final SPACE:C = ' '

.field private static final SPLIT:C = ':'

.field private static final TAB:C = '\t'

.field private static final WILDCARD:C = '*'


# instance fields
.field private final filterStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/jayway/jsonpath/Predicate;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Lcom/jayway/jsonpath/internal/CharacterIndex;


# direct methods
.method private constructor <init>(Lcom/jayway/jsonpath/internal/CharacterIndex;Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jayway/jsonpath/internal/CharacterIndex;",
            "Ljava/util/LinkedList<",
            "Lcom/jayway/jsonpath/Predicate;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->filterStack:Ljava/util/LinkedList;

    .line 4
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/jayway/jsonpath/Predicate;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0, p2}, Lcom/jayway/jsonpath/internal/path/PathCompiler;-><init>(Lcom/jayway/jsonpath/internal/CharacterIndex;Ljava/util/LinkedList;)V

    return-void
.end method

.method private compile()Lcom/jayway/jsonpath/internal/Path;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->readContextToken()Lcom/jayway/jsonpath/internal/path/RootPathToken;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/jayway/jsonpath/internal/path/CompiledPath;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/path/RootPathToken;->getPathFragment()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/jayway/jsonpath/internal/path/CompiledPath;-><init>(Lcom/jayway/jsonpath/internal/path/RootPathToken;Z)V

    return-object v1
.end method

.method public static varargs compile(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/internal/Path;
    .locals 4

    .line 3
    :try_start_0
    new-instance v0, Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/internal/CharacterIndex;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->trim()Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v2

    const/16 v3, 0x24

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_0

    .line 6
    new-instance v0, Lcom/jayway/jsonpath/internal/CharacterIndex;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/internal/CharacterIndex;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->trim()Lcom/jayway/jsonpath/internal/CharacterIndex;

    :cond_0
    const/16 p0, 0x2e

    .line 8
    invoke-virtual {v0, p0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->lastCharIs(C)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Path must not end with a \'.\' or \'..\'"

    .line 9
    invoke-static {p0}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->fail(Ljava/lang/String;)Z

    .line 10
    :cond_1
    new-instance p0, Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 11
    new-instance p1, Lcom/jayway/jsonpath/internal/path/PathCompiler;

    invoke-direct {p1, v0, p0}, Lcom/jayway/jsonpath/internal/path/PathCompiler;-><init>(Lcom/jayway/jsonpath/internal/CharacterIndex;Ljava/util/LinkedList;)V

    invoke-direct {p1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->compile()Lcom/jayway/jsonpath/internal/Path;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 12
    instance-of p1, p0, Lcom/jayway/jsonpath/InvalidPathException;

    if-eqz p1, :cond_2

    .line 13
    check-cast p0, Lcom/jayway/jsonpath/InvalidPathException;

    goto :goto_0

    .line 14
    :cond_2
    new-instance p1, Lcom/jayway/jsonpath/InvalidPathException;

    invoke-direct {p1, p0}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    .line 15
    :goto_0
    throw p0
.end method

.method public static fail(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isPathContext(C)Ljava/lang/Boolean;
    .locals 1

    const/16 v0, 0x24

    if-eq p1, v0, :cond_1

    const/16 v0, 0x40

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 1
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private isWhitespace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private parseFunctionParameters(Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/jayway/jsonpath/internal/function/Parameter;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v9, v4

    move-object v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v9

    .line 5
    :goto_0
    iget-object v13, v0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v13}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds()Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_19

    .line 6
    iget-object v13, v0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v13}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v13

    .line 7
    iget-object v14, v0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v14, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->incrementPosition(I)I

    const/16 v14, 0x7b

    const/16 v15, 0x22

    if-nez v11, :cond_3

    .line 8
    invoke-direct {v0, v13}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->isWhitespace(C)Z

    move-result v16

    if-eqz v16, :cond_0

    goto :goto_0

    :cond_0
    if-eq v13, v14, :cond_2

    .line 9
    invoke-static {v13}, Ljava/lang/Character;->isDigit(C)Z

    move-result v16

    if-nez v16, :cond_2

    if-ne v15, v13, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-direct {v0, v13}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->isPathContext(C)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 11
    sget-object v11, Lcom/jayway/jsonpath/internal/function/ParamType;->PATH:Lcom/jayway/jsonpath/internal/function/ParamType;

    goto :goto_2

    .line 12
    :cond_2
    :goto_1
    sget-object v11, Lcom/jayway/jsonpath/internal/function/ParamType;->JSON:Lcom/jayway/jsonpath/internal/function/ParamType;

    :cond_3
    :goto_2
    const/16 v8, 0x2c

    if-eq v13, v15, :cond_13

    const/16 v12, 0x29

    if-eq v13, v8, :cond_c

    const/16 v15, 0x5b

    if-eq v13, v15, :cond_b

    const/16 v15, 0x5d

    if-eq v13, v15, :cond_9

    if-eq v13, v14, :cond_8

    const/16 v14, 0x7d

    if-eq v13, v14, :cond_6

    const/16 v14, 0x28

    if-eq v13, v14, :cond_5

    if-eq v13, v12, :cond_4

    goto/16 :goto_6

    .line 13
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eqz v14, :cond_c

    .line 15
    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 16
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_6

    .line 17
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eqz v12, :cond_7

    .line 18
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_6

    .line 19
    :cond_7
    new-instance v1, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected close brace \'}\' at character position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_6

    .line 21
    :cond_9
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eqz v12, :cond_a

    .line 22
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_6

    .line 23
    :cond_a
    new-instance v1, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected close bracket \']\' at character position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_b
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_6

    .line 25
    :cond_c
    :goto_3
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v14, :cond_16

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v14, :cond_16

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v14, :cond_16

    .line 26
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v14, :cond_d

    if-eq v12, v13, :cond_e

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v1, v12, :cond_16

    .line 27
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v10, :cond_f

    const/4 v10, 0x1

    goto :goto_4

    :cond_f
    const/4 v10, 0x0

    :goto_4
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v11, :cond_16

    .line 28
    sget-object v12, Lcom/jayway/jsonpath/internal/path/PathCompiler$1;->$SwitchMap$com$jayway$jsonpath$internal$function$ParamType:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v12, v11

    if-eq v11, v1, :cond_11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_10

    const/4 v11, 0x0

    goto :goto_5

    .line 29
    :cond_10
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 30
    new-instance v12, Lcom/jayway/jsonpath/internal/path/PathCompiler;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14, v11}, Lcom/jayway/jsonpath/internal/path/PathCompiler;-><init>(Ljava/lang/String;Ljava/util/LinkedList;)V

    .line 31
    new-instance v11, Lcom/jayway/jsonpath/internal/function/Parameter;

    invoke-direct {v12}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->compile()Lcom/jayway/jsonpath/internal/Path;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/jayway/jsonpath/internal/function/Parameter;-><init>(Lcom/jayway/jsonpath/internal/Path;)V

    goto :goto_5

    .line 32
    :cond_11
    new-instance v11, Lcom/jayway/jsonpath/internal/function/Parameter;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/jayway/jsonpath/internal/function/Parameter;-><init>(Ljava/lang/String;)V

    :goto_5
    if-eqz v11, :cond_12

    .line 33
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_12
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    invoke-virtual {v7, v3, v11}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const/4 v11, 0x0

    goto :goto_6

    :cond_13
    const/16 v14, 0x5c

    if-eq v12, v14, :cond_15

    .line 35
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_15

    .line 36
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eqz v12, :cond_14

    .line 37
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_6

    .line 38
    :cond_14
    new-instance v1, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected quote \'\"\' at character position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_15
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :cond_16
    :goto_6
    if-eqz v11, :cond_18

    if-ne v13, v8, :cond_17

    .line 40
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_17

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_17

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v1, v8, :cond_18

    .line 41
    :cond_17
    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_18
    move v12, v13

    goto/16 :goto_0

    .line 42
    :cond_19
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1a

    return-object v6

    .line 43
    :cond_1a
    new-instance v1, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Arguments to function: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' are not closed properly."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7
.end method

.method private readArrayToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentCharIs(C)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->nextSignificantChar()C

    move-result v0

    .line 3
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    const/16 v3, 0x3a

    const/16 v4, 0x2d

    if-nez v2, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 5
    iget-object v5, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v6, 0x5d

    invoke-virtual {v5, v0, v6}, Lcom/jayway/jsonpath/internal/CharacterIndex;->nextIndexOf(IC)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    return v1

    .line 6
    :cond_2
    iget-object v6, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v6, v0, v5}, Lcom/jayway/jsonpath/internal/CharacterIndex;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v6, "*"

    .line 7
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v1

    :cond_3
    const/4 v6, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 9
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 10
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_4

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_4

    if-eq v7, v4, :cond_4

    if-eq v7, v3, :cond_4

    const/16 v8, 0x20

    if-eq v7, v8, :cond_4

    return v1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    const-string v3, ":"

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 12
    invoke-static {v0}, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;->parse(Ljava/lang/String;)Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/jayway/jsonpath/internal/path/PathTokenFactory;->createSliceArrayPathToken(Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;)Lcom/jayway/jsonpath/internal/path/PathToken;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/jayway/jsonpath/internal/path/PathTokenAppender;->appendPathToken(Lcom/jayway/jsonpath/internal/path/PathToken;)Lcom/jayway/jsonpath/internal/path/PathTokenAppender;

    goto :goto_1

    .line 14
    :cond_6
    invoke-static {v0}, Lcom/jayway/jsonpath/internal/path/ArrayIndexOperation;->parse(Ljava/lang/String;)Lcom/jayway/jsonpath/internal/path/ArrayIndexOperation;

    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/jayway/jsonpath/internal/path/PathTokenFactory;->createIndexArrayPathToken(Lcom/jayway/jsonpath/internal/path/ArrayIndexOperation;)Lcom/jayway/jsonpath/internal/path/PathToken;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/jayway/jsonpath/internal/path/PathTokenAppender;->appendPathToken(Lcom/jayway/jsonpath/internal/path/PathToken;)Lcom/jayway/jsonpath/internal/path/PathTokenAppender;

    .line 16
    :goto_1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    add-int/2addr v5, v2

    invoke-virtual {v0, v5}, Lcom/jayway/jsonpath/internal/CharacterIndex;->setPosition(I)I

    .line 17
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentIsTail()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->readNextToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method private readBracketPropertyToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentCharIs(C)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->nextSignificantChar()C

    move-result v0

    const/16 v2, 0x27

    if-eq v0, v2, :cond_1

    const/16 v2, 0x22

    if-eq v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v3, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    move v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 5
    :goto_0
    iget-object v10, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v10, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds(I)Z

    move-result v10

    const/16 v11, 0x5d

    if-eqz v10, :cond_a

    .line 6
    iget-object v10, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v10, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v10

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_2
    const/16 v12, 0x5c

    if-ne v12, v10, :cond_3

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_3
    const-string v12, "Found empty property at index "

    if-ne v10, v11, :cond_4

    if-nez v7, :cond_4

    if-eqz v8, :cond_a

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->fail(Ljava/lang/String;)Z

    goto :goto_2

    :cond_4
    const/16 v13, 0x2c

    if-ne v10, v0, :cond_7

    if-eqz v7, :cond_6

    if-nez v6, :cond_6

    .line 8
    iget-object v7, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v7, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->nextSignificantChar(I)C

    move-result v7

    if-eq v7, v11, :cond_5

    if-eq v7, v13, :cond_5

    .line 9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Property must be separated by comma or Property must be terminated close square bracket at index "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->fail(Ljava/lang/String;)Z

    .line 10
    :cond_5
    iget-object v7, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v7, v5, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-static {v7}, Lcom/jayway/jsonpath/internal/Utils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v9, v3

    const/4 v7, 0x0

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v3, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_1

    :cond_7
    if-ne v10, v13, :cond_9

    if-eqz v8, :cond_8

    .line 12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->fail(Ljava/lang/String;)Z

    :cond_8
    const/4 v8, 0x1

    :cond_9
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 13
    :cond_a
    :goto_2
    iget-object v3, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v3, v9, v11}, Lcom/jayway/jsonpath/internal/CharacterIndex;->indexOfNextSignificantChar(IC)I

    move-result v3

    add-int/2addr v3, v4

    .line 14
    iget-object v5, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v5, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->setPosition(I)I

    .line 15
    invoke-static {v2, v0}, Lcom/jayway/jsonpath/internal/path/PathTokenFactory;->createPropertyPathToken(Ljava/util/List;C)Lcom/jayway/jsonpath/internal/path/PathToken;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/jayway/jsonpath/internal/path/PathTokenAppender;->appendPathToken(Lcom/jayway/jsonpath/internal/path/PathToken;)Lcom/jayway/jsonpath/internal/path/PathTokenAppender;

    .line 16
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentIsTail()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->readNextToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method private readContextToken()Lcom/jayway/jsonpath/internal/path/RootPathToken;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->readWhitespace()V

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->isPathContext(C)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v0

    invoke-static {v0}, Lcom/jayway/jsonpath/internal/path/PathTokenFactory;->createRootPathToken(C)Lcom/jayway/jsonpath/internal/path/RootPathToken;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentIsTail()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->incrementPosition(I)I

    .line 6
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " expected \'.\' or \'["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->fail(Ljava/lang/String;)Z

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/path/RootPathToken;->getPathTokenAppender()Lcom/jayway/jsonpath/internal/path/PathTokenAppender;

    move-result-object v1

    .line 9
    invoke-direct {p0, v1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->readNextToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z

    return-object v0

    .line 10
    :cond_2
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    const-string v1, "Path must start with \'$\' or \'@\'"

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readDotToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentCharIs(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->nextCharIs(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/jayway/jsonpath/internal/path/PathTokenFactory;->crateScanToken()Lcom/jayway/jsonpath/internal/path/PathToken;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/jayway/jsonpath/internal/path/PathTokenAppender;->appendPathToken(Lcom/jayway/jsonpath/internal/path/PathToken;)Lcom/jayway/jsonpath/internal/path/PathTokenAppender;

    .line 3
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->incrementPosition(I)I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->hasMoreCharacters()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->incrementPosition(I)I

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentCharIs(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->readNextToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z

    move-result p1

    return p1

    .line 8
    :cond_1
    new-instance p1, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Character \'.\' on position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not valid."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Lcom/jayway/jsonpath/InvalidPathException;

    const-string v0, "Path must not end with a \'."

    invoke-direct {p1, v0}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readFilterToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentCharIs(C)Z

    move-result v0

    const/16 v1, 0x3f

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->nextSignificantCharIs(C)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    .line 3
    iget-object v3, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v3, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->indexOfNextSignificantChar(C)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    return v2

    .line 4
    :cond_1
    iget-object v4, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v5, 0x28

    invoke-virtual {v4, v1, v5}, Lcom/jayway/jsonpath/internal/CharacterIndex;->indexOfNextSignificantChar(IC)I

    move-result v1

    if-ne v1, v3, :cond_2

    return v2

    .line 5
    :cond_2
    iget-object v4, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5, v5}, Lcom/jayway/jsonpath/internal/CharacterIndex;->indexOfClosingBracket(IZZ)I

    move-result v1

    if-ne v1, v3, :cond_3

    return v2

    .line 6
    :cond_3
    iget-object v3, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v4, 0x5d

    invoke-virtual {v3, v1, v4}, Lcom/jayway/jsonpath/internal/CharacterIndex;->nextSignificantCharIs(IC)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    .line 7
    :cond_4
    iget-object v3, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v3, v1, v4}, Lcom/jayway/jsonpath/internal/CharacterIndex;->indexOfNextSignificantChar(IC)I

    move-result v1

    .line 8
    iget-object v3, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    add-int/2addr v1, v5

    invoke-virtual {v3, v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->compile(Ljava/lang/String;)Lcom/jayway/jsonpath/Filter;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/jayway/jsonpath/internal/path/PathTokenFactory;->createPredicatePathToken(Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/internal/path/PathToken;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/jayway/jsonpath/internal/path/PathTokenAppender;->appendPathToken(Lcom/jayway/jsonpath/internal/path/PathToken;)Lcom/jayway/jsonpath/internal/path/PathTokenAppender;

    .line 11
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->setPosition(I)I

    .line 12
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentIsTail()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->readNextToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    return v2
.end method

.method private readNextToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v0

    const/16 v1, 0x2a

    const/4 v2, 0x0

    const-string v3, "Could not parse token starting at position "

    const/4 v4, 0x1

    if-eq v0, v1, :cond_8

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_5

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_2

    .line 2
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->readPropertyOrFunctionToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    .line 3
    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->fail(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2

    .line 4
    :cond_2
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->readBracketPropertyToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->readArrayToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->readWildCardToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->readFilterToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->readPlaceholderToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    .line 9
    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Expected ?, \', 0-9, * "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->fail(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2

    .line 10
    :cond_5
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->readDotToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    .line 11
    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->fail(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const/4 v2, 0x1

    :cond_7
    return v2

    .line 12
    :cond_8
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->readWildCardToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z

    move-result p1

    if-nez p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    .line 13
    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->fail(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    const/4 v2, 0x1

    :cond_a
    return v2
.end method

.method private readPlaceholderToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentCharIs(C)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->indexOfNextSignificantChar(C)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v3, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v3, v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->nextSignificantChar(I)C

    move-result v0

    const/16 v3, 0x5d

    if-eq v0, v3, :cond_2

    const/16 v4, 0x2c

    if-eq v0, v4, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    const/4 v4, 0x1

    add-int/2addr v0, v4

    .line 5
    iget-object v5, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v5, v0, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->nextIndexOf(IC)I

    move-result v3

    if-ne v3, v2, :cond_3

    return v1

    .line 6
    :cond_3
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v2, v0, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object v5, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->filterStack:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    array-length v6, v2

    if-lt v5, v6, :cond_a

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_7

    aget-object v7, v2, v6

    if-eqz v7, :cond_4

    .line 11
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :cond_4
    if-nez v7, :cond_5

    const-string v8, ""

    goto :goto_1

    :cond_5
    move-object v8, v7

    :goto_1
    const-string v9, "?"

    .line 12
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 13
    iget-object v7, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->filterStack:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 14
    :cond_6
    new-instance p1, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \'?\' but found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_7
    invoke-static {v0}, Lcom/jayway/jsonpath/internal/path/PathTokenFactory;->createPredicatePathToken(Ljava/util/Collection;)Lcom/jayway/jsonpath/internal/path/PathToken;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/jayway/jsonpath/internal/path/PathTokenAppender;->appendPathToken(Lcom/jayway/jsonpath/internal/path/PathToken;)Lcom/jayway/jsonpath/internal/path/PathTokenAppender;

    .line 16
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->setPosition(I)I

    .line 17
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentIsTail()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->readNextToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    const/4 v1, 0x1

    :cond_9
    return v1

    .line 18
    :cond_a
    new-instance p1, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough predicates supplied for filter ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] at position "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private readPropertyOrFunctionToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentCharIs(C)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v3, 0x2a

    invoke-virtual {v0, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentCharIs(C)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentCharIs(C)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentCharIs(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    move v5, v0

    .line 3
    :goto_0
    iget-object v6, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v6, v5}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds(I)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    .line 4
    iget-object v6, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v6, v5}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v6

    if-eq v6, v4, :cond_4

    if-eq v6, v3, :cond_3

    if-ne v6, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v8, 0x28

    if-ne v6, v8, :cond_2

    add-int/lit8 v1, v5, 0x1

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move v1, v5

    const/4 v3, 0x0

    goto :goto_2

    .line 5
    :cond_4
    new-instance p1, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use bracket notion [\'my prop\'] if your property contains blank characters. position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    move v1, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_6

    .line 6
    iget-object v4, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v4}, Lcom/jayway/jsonpath/internal/CharacterIndex;->length()I

    move-result v5

    :cond_6
    const/4 v4, 0x0

    if-eqz v3, :cond_9

    .line 7
    iget-object v6, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v6, v8}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 8
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1, v8}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v1

    const/16 v6, 0x29

    if-eq v1, v6, :cond_7

    .line 9
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v1, v4}, Lcom/jayway/jsonpath/internal/CharacterIndex;->setPosition(I)I

    .line 10
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1, v0, v5}, Lcom/jayway/jsonpath/internal/CharacterIndex;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-direct {p0, v1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->parseFunctionParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto :goto_3

    .line 12
    :cond_7
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1, v8}, Lcom/jayway/jsonpath/internal/CharacterIndex;->setPosition(I)I

    goto :goto_3

    .line 13
    :cond_8
    iget-object v6, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v6, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->setPosition(I)I

    goto :goto_3

    .line 14
    :cond_9
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1, v5}, Lcom/jayway/jsonpath/internal/CharacterIndex;->setPosition(I)I

    .line 15
    :goto_3
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1, v0, v5}, Lcom/jayway/jsonpath/internal/CharacterIndex;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_a

    .line 16
    invoke-static {v0, v4}, Lcom/jayway/jsonpath/internal/path/PathTokenFactory;->createFunctionPathToken(Ljava/lang/String;Ljava/util/List;)Lcom/jayway/jsonpath/internal/path/PathToken;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/jayway/jsonpath/internal/path/PathTokenAppender;->appendPathToken(Lcom/jayway/jsonpath/internal/path/PathToken;)Lcom/jayway/jsonpath/internal/path/PathTokenAppender;

    goto :goto_4

    :cond_a
    const/16 v1, 0x27

    .line 17
    invoke-static {v0, v1}, Lcom/jayway/jsonpath/internal/path/PathTokenFactory;->createSinglePropertyPathToken(Ljava/lang/String;C)Lcom/jayway/jsonpath/internal/path/PathToken;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/jayway/jsonpath/internal/path/PathTokenAppender;->appendPathToken(Lcom/jayway/jsonpath/internal/path/PathToken;)Lcom/jayway/jsonpath/internal/path/PathTokenAppender;

    .line 18
    :goto_4
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentIsTail()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->readNextToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    const/4 v2, 0x1

    :cond_c
    :goto_5
    return v2
.end method

.method private readWhitespace()V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v0

    .line 3
    invoke-direct {p0, v0}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->incrementPosition(I)I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private readWildCardToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentCharIs(C)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x2a

    if-eqz v0, :cond_0

    .line 2
    iget-object v3, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v3, v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->nextSignificantCharIs(C)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v3, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v3, v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentCharIs(C)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Lcom/jayway/jsonpath/internal/CharacterIndex;->isOutOfBounds(I)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0, v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->indexOfNextSignificantChar(C)I

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v3, 0x5d

    invoke-virtual {v2, v0, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->nextSignificantCharIs(IC)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v2, v0, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->indexOfNextSignificantChar(IC)I

    move-result v0

    .line 7
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    add-int/2addr v0, v4

    invoke-virtual {v2, v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->setPosition(I)I

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected wildcard token to end with \']\' on position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0, v4}, Lcom/jayway/jsonpath/internal/CharacterIndex;->incrementPosition(I)I

    .line 10
    :goto_0
    invoke-static {}, Lcom/jayway/jsonpath/internal/path/PathTokenFactory;->createWildCardPathToken()Lcom/jayway/jsonpath/internal/path/PathToken;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/jayway/jsonpath/internal/path/PathTokenAppender;->appendPathToken(Lcom/jayway/jsonpath/internal/path/PathToken;)Lcom/jayway/jsonpath/internal/path/PathTokenAppender;

    .line 11
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathCompiler;->path:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentIsTail()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->readNextToken(Lcom/jayway/jsonpath/internal/path/PathTokenAppender;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method
