.class public Lcom/jayway/jsonpath/internal/filter/FilterCompiler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jayway/jsonpath/internal/filter/FilterCompiler$CompiledFilter;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final AND:C = '&'

.field private static final CLOSE_ARRAY:C = ']'

.field private static final CLOSE_OBJECT:C = '}'

.field private static final CLOSE_PARENTHESIS:C = ')'

.field private static final CLOSE_SQUARE_BRACKET:C = ']'

.field private static final DOC_CONTEXT:C = '$'

.field private static final DOUBLE_QUOTE:C = '\"'

.field private static final EQ:C = '='

.field private static final EVAL_CONTEXT:C = '@'

.field private static final FALSE:C = 'f'

.field private static final GT:C = '>'

.field private static final IGNORE_CASE:C = 'i'

.field private static final LT:C = '<'

.field private static final MINUS:C = '-'

.field private static final NOT:C = '!'

.field private static final NULL:C = 'n'

.field private static final OPEN_ARRAY:C = '['

.field private static final OPEN_OBJECT:C = '{'

.field private static final OPEN_PARENTHESIS:C = '('

.field private static final OPEN_SQUARE_BRACKET:C = '['

.field private static final OR:C = '|'

.field private static final PATTERN:C = '/'

.field private static final PERIOD:C = '.'

.field private static final SINGLE_QUOTE:C = '\''

.field private static final SPACE:C = ' '

.field private static final TILDE:C = '~'

.field private static final TRUE:C = 't'

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private filter:Lcom/jayway/jsonpath/internal/CharacterIndex;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    .line 3
    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->trim()Lcom/jayway/jsonpath/internal/CharacterIndex;

    .line 4
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentCharIs(C)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->lastCharIs(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->incrementPosition(I)I

    .line 6
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->decrementEndPosition(I)I

    .line 7
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->trim()Lcom/jayway/jsonpath/internal/CharacterIndex;

    .line 8
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentCharIs(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->incrementPosition(I)I

    .line 10
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->trim()Lcom/jayway/jsonpath/internal/CharacterIndex;

    .line 11
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentCharIs(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->lastCharIs(C)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter must start with \'[?(\' and end with \')]\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_1
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter must start with \'[?\' and end with \']\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_2
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter must start with \'[\' and end with \']\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compile(Ljava/lang/String;)Lcom/jayway/jsonpath/Filter;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler$CompiledFilter;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->compile()Lcom/jayway/jsonpath/Predicate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler$CompiledFilter;-><init>(Lcom/jayway/jsonpath/Predicate;Lcom/jayway/jsonpath/internal/filter/FilterCompiler$1;)V

    return-object p0
.end method

.method private currentCharIsClosingFunctionBracket(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x29

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->indexOfPreviousSignificantChar()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 3
    iget-object v3, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v3, v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v2

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v2, v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-le v0, p1, :cond_3

    .line 5
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v2, v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method private expressionIsTerminated()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x29

    if-eq v0, v2, :cond_2

    .line 2
    invoke-direct {p0, v0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->isLogicalOperatorChar(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->nextSignificantChar()C

    move-result v0

    if-eq v0, v2, :cond_2

    .line 4
    invoke-direct {p0, v0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->isLogicalOperatorChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private isLogicalOperatorChar(C)Z
    .locals 1

    const/16 v0, 0x26

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7c

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

.method private isRelationalOperatorChar(C)Z
    .locals 1

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x21

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

.method private readBooleanLiteral()Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v1

    const/4 v2, 0x3

    const/16 v3, 0x74

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v3, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds(I)Z

    move-result v3

    const-string v4, "Expected boolean literal"

    if-eqz v3, :cond_3

    .line 4
    iget-object v3, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v0, v5}, Lcom/jayway/jsonpath/internal/CharacterIndex;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v5, "true"

    .line 5
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "false"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    invoke-direct {v0, v4}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/jayway/jsonpath/internal/CharacterIndex;->incrementPosition(I)I

    .line 8
    sget-object v4, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->logger:Lorg/slf4j/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const-string v0, "BooleanLiteral from {} to {} -> [{}]"

    invoke-interface {v4, v0, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-static {v3}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createBooleanNode(Ljava/lang/CharSequence;)Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    move-result-object v0

    return-object v0

    .line 10
    :cond_3
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    invoke-direct {v0, v4}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readExpression()Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readValueNode()Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readRelationalOperator()Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    move-result-object v2

    .line 4
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readValueNode()Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object v3

    .line 5
    new-instance v4, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;

    invoke-direct {v4, v0, v2, v3}, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;-><init>(Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/internal/filter/RelationalOperator;Lcom/jayway/jsonpath/internal/filter/ValueNode;)V
    :try_end_0
    .catch Lcom/jayway/jsonpath/InvalidPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    nop

    .line 6
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v2, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->setPosition(I)I

    .line 7
    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asPathNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->shouldExists()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->asExistsCheck(Z)Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;

    move-result-object v0

    .line 9
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->EXISTS:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 10
    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asPathNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->shouldExists()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/jayway/jsonpath/internal/filter/ValueNode;->TRUE:Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/jayway/jsonpath/internal/filter/ValueNode;->FALSE:Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    .line 11
    :goto_0
    new-instance v3, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;

    invoke-direct {v3, v0, v1, v2}, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;-><init>(Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/internal/filter/RelationalOperator;Lcom/jayway/jsonpath/internal/filter/ValueNode;)V

    return-object v3
.end method

.method private readJsonLiteral()Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v4

    const/16 v1, 0x5b

    if-ne v4, v1, :cond_0

    const/16 v1, 0x5d

    const/16 v5, 0x5d

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d

    const/16 v5, 0x7d

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/jayway/jsonpath/internal/CharacterIndex;->indexOfMatchingCloseChar(ICCZZ)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->setPosition(I)I

    .line 5
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->logger:Lorg/slf4j/Logger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v0, "JsonLiteral from {} to {} -> [{}]"

    invoke-interface {v2, v0, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-static {v1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createJsonNode(Ljava/lang/CharSequence;)Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;

    move-result-object v0

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String not closed. Expected \' in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readLiteral()Lcom/jayway/jsonpath/internal/filter/ValueNode;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->skipBlanks()Lcom/jayway/jsonpath/internal/CharacterIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_8

    const/16 v1, 0x27

    if-eq v0, v1, :cond_7

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_6

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_5

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_4

    const/16 v1, 0x66

    if-eq v0, v1, :cond_3

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x74

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readNumberLiteral()Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readJsonLiteral()Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readBooleanLiteral()Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    move-result-object v0

    return-object v0

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readNullLiteral()Lcom/jayway/jsonpath/internal/filter/ValueNode$NullNode;

    move-result-object v0

    return-object v0

    .line 6
    :cond_3
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readBooleanLiteral()Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    move-result-object v0

    return-object v0

    .line 7
    :cond_4
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readJsonLiteral()Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;

    move-result-object v0

    return-object v0

    .line 8
    :cond_5
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readPattern()Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;

    move-result-object v0

    return-object v0

    .line 9
    :cond_6
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readNumberLiteral()Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;

    move-result-object v0

    return-object v0

    .line 10
    :cond_7
    invoke-direct {p0, v1}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readStringLiteral(C)Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;

    move-result-object v0

    return-object v0

    .line 11
    :cond_8
    invoke-direct {p0, v1}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readStringLiteral(C)Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;

    move-result-object v0

    return-object v0
.end method

.method private readLogicalAND()Lcom/jayway/jsonpath/internal/filter/ExpressionNode;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readLogicalANDOperand()Lcom/jayway/jsonpath/internal/filter/ExpressionNode;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    sget-object v3, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->AND:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    invoke-virtual {v3}, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->getOperatorString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->readSignificantSubSequence(Ljava/lang/CharSequence;)V

    .line 5
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readLogicalANDOperand()Lcom/jayway/jsonpath/internal/filter/ExpressionNode;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/jayway/jsonpath/InvalidPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v2, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->setPosition(I)I

    const/4 v1, 0x1

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jayway/jsonpath/internal/filter/ExpressionNode;

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->createLogicalAnd(Ljava/util/Collection;)Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private readLogicalANDOperand()Lcom/jayway/jsonpath/internal/filter/ExpressionNode;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->skipBlanks()Lcom/jayway/jsonpath/internal/CharacterIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->skipBlanks()Lcom/jayway/jsonpath/internal/CharacterIndex;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentCharIs(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1, v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->readSignificantChar(C)V

    .line 4
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->skipBlanks()Lcom/jayway/jsonpath/internal/CharacterIndex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v1

    const/16 v2, 0x24

    if-eq v1, v2, :cond_0

    const/16 v2, 0x40

    if-eq v1, v2, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readLogicalANDOperand()Lcom/jayway/jsonpath/internal/filter/ExpressionNode;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->createLogicalNot(Lcom/jayway/jsonpath/internal/filter/ExpressionNode;)Lcom/jayway/jsonpath/internal/filter/ExpressionNode;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1, v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->setPosition(I)I

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->skipBlanks()Lcom/jayway/jsonpath/internal/CharacterIndex;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentCharIs(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->readSignificantChar(C)V

    .line 10
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readLogicalOR()Lcom/jayway/jsonpath/internal/filter/ExpressionNode;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->readSignificantChar(C)V

    return-object v0

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readExpression()Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;

    move-result-object v0

    return-object v0
.end method

.method private readLogicalOR()Lcom/jayway/jsonpath/internal/filter/ExpressionNode;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readLogicalAND()Lcom/jayway/jsonpath/internal/filter/ExpressionNode;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    sget-object v3, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->OR:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    invoke-virtual {v3}, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->getOperatorString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->readSignificantSubSequence(Ljava/lang/CharSequence;)V

    .line 5
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readLogicalAND()Lcom/jayway/jsonpath/internal/filter/ExpressionNode;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/jayway/jsonpath/InvalidPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v2, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->setPosition(I)I

    const/4 v1, 0x1

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jayway/jsonpath/internal/filter/ExpressionNode;

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->createLogicalOr(Ljava/util/Collection;)Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private readLogicalOperator()Lcom/jayway/jsonpath/internal/filter/LogicalOperator;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->skipBlanks()Lcom/jayway/jsonpath/internal/CharacterIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 2
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v2, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "||"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "&&"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    const-string v1, "Expected logical operator"

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/jayway/jsonpath/internal/CharacterIndex;->incrementPosition(I)I

    .line 7
    sget-object v3, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->logger:Lorg/slf4j/Logger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const-string v0, "LogicalOperator from {} to {} -> [{}]"

    invoke-interface {v3, v0, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->fromString(Ljava/lang/String;)Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    move-result-object v0

    return-object v0

    .line 9
    :cond_2
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    const-string v1, "Expected boolean literal"

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readNullLiteral()Lcom/jayway/jsonpath/internal/filter/ValueNode$NullNode;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v2

    const/4 v3, 0x3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v2

    iget-object v4, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v4}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v1, v2, v4}, Lcom/jayway/jsonpath/internal/CharacterIndex;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "null"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget-object v2, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->logger:Lorg/slf4j/Logger;

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v5}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v0

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v0, "NullLiteral from {} to {} -> [{}]"

    invoke-interface {v2, v0, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->incrementPosition(I)I

    .line 7
    invoke-static {}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createNullNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$NullNode;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    const-string v1, "Expected <null> value"

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readNumberLiteral()Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->isNumberCharacter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1, v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->incrementPosition(I)I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5
    sget-object v3, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->logger:Lorg/slf4j/Logger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v0, "NumberLiteral from {} to {} -> [{}]"

    invoke-interface {v3, v0, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-static {v1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createNumberNode(Ljava/lang/CharSequence;)Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;

    move-result-object v0

    return-object v0
.end method

.method private readPath()Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->previousSignificantChar()C

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->incrementPosition(I)I

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    .line 5
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v2

    const/16 v5, 0x5b

    if-ne v2, v5, :cond_1

    .line 6
    iget-object v6, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v6}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v7

    const/16 v8, 0x5b

    const/16 v9, 0x5d

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/jayway/jsonpath/internal/CharacterIndex;->indexOfMatchingCloseChar(ICCZZ)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 7
    iget-object v5, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->setPosition(I)I

    goto :goto_1

    .line 8
    :cond_0
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Square brackets does not match in filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v2

    const/16 v5, 0x29

    if-ne v2, v5, :cond_2

    invoke-direct {p0, v1}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->currentCharIsClosingFunctionBracket(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 10
    :goto_2
    iget-object v6, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v6}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v6

    if-ne v6, v5, :cond_3

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 11
    :goto_3
    iget-object v5, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v5}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v5}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v5

    invoke-direct {p0, v5}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->isRelationalOperatorChar(C)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v5}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_5

    if-eqz v2, :cond_4

    goto :goto_4

    .line 12
    :cond_4
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v2, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->incrementPosition(I)I

    goto/16 :goto_0

    :cond_5
    :goto_4
    const/16 v2, 0x21

    if-eq v0, v2, :cond_6

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    .line 13
    :goto_5
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 14
    invoke-static {v0, v4, v3}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createPathNode(Ljava/lang/CharSequence;ZZ)Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;

    move-result-object v0

    return-object v0
.end method

.method private readPattern()Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->nextIndexOfUnescaped(C)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v2, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v2

    const/16 v4, 0x69

    if-ne v2, v4, :cond_0

    move v1, v3

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->setPosition(I)I

    .line 5
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->logger:Lorg/slf4j/Logger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v0, "PatternNode from {} to {} -> [{}]"

    invoke-interface {v2, v0, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-static {v1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createPatternNode(Ljava/lang/CharSequence;)Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;

    move-result-object v0

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pattern not closed. Expected / in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readRelationalOperator()Lcom/jayway/jsonpath/internal/filter/RelationalOperator;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->skipBlanks()Lcom/jayway/jsonpath/internal/CharacterIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->isRelationalOperatorChar(C)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->isRelationalOperatorChar(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1, v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->incrementPosition(I)I

    goto :goto_0

    .line 5
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v1

    const/16 v3, 0x20

    if-eq v1, v3, :cond_1

    .line 6
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1, v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->incrementPosition(I)I

    goto :goto_1

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 8
    sget-object v3, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->logger:Lorg/slf4j/Logger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v0, "Operator from {} to {} -> [{}]"

    invoke-interface {v3, v0, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->fromString(Ljava/lang/String;)Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    move-result-object v0

    return-object v0
.end method

.method private readStringLiteral(C)Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->nextIndexOfUnescaped(C)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->setPosition(I)I

    .line 4
    iget-object p1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 5
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->logger:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const/4 v0, 0x2

    aput-object p1, v3, v0

    const-string v0, "StringLiteral from {} to {} -> [{}]"

    invoke-interface {v1, v0, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-static {p1, v2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createStringNode(Ljava/lang/CharSequence;Z)Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String literal does not have matching quotes. Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readValueNode()Lcom/jayway/jsonpath/internal/filter/ValueNode;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->skipBlanks()Lcom/jayway/jsonpath/internal/CharacterIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v0

    const/16 v1, 0x40

    const/16 v2, 0x24

    const/16 v3, 0x21

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readLiteral()Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readPath()Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readPath()Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;

    move-result-object v0

    return-object v0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/jayway/jsonpath/internal/CharacterIndex;->incrementPosition(I)I

    .line 6
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->skipBlanks()Lcom/jayway/jsonpath/internal/CharacterIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v0

    if-eq v0, v2, :cond_4

    if-ne v0, v1, :cond_3

    .line 7
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readPath()Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;

    move-result-object v0

    return-object v0

    .line 8
    :cond_3
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unexpected character: %c"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_4
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readPath()Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compile()Lcom/jayway/jsonpath/Predicate;
    .locals 7

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->readLogicalOR()Lcom/jayway/jsonpath/internal/filter/ExpressionNode;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->skipBlanks()Lcom/jayway/jsonpath/internal/CharacterIndex;

    .line 5
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    const-string v1, "Expected end of filter expression instead of: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    .line 7
    invoke-virtual {v4}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v5

    iget-object v6, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v6}, Lcom/jayway/jsonpath/internal/CharacterIndex;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/jayway/jsonpath/internal/CharacterIndex;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 8
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/jayway/jsonpath/InvalidPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse filter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", error on position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", char: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->filter:Lcom/jayway/jsonpath/internal/CharacterIndex;

    invoke-virtual {v2}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 10
    throw v0
.end method
