.class public Lcom/jayway/jsonpath/internal/CharacterIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CLOSE_PARENTHESIS:C = ')'

.field private static final CLOSE_SQUARE_BRACKET:C = ']'

.field private static final DOUBLE_QUOTE:C = '\"'

.field private static final ESCAPE:C = '\\'

.field private static final MINUS:C = '-'

.field private static final OPEN_PARENTHESIS:C = '('

.field private static final PERIOD:C = '.'

.field private static final REGEX:C = '/'

.field private static final SINGLE_QUOTE:C = '\''

.field private static final SPACE:C = ' '


# instance fields
.field private final charSequence:Ljava/lang/CharSequence;

.field private endPosition:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->charSequence:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->endPosition:I

    return-void
.end method

.method private setEndPosition(I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->endPosition:I

    return p1
.end method

.method private skipBlanksAtEnd()Lcom/jayway/jsonpath/internal/CharacterIndex;
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    iget v1, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->endPosition:I

    if-ge v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->lastCharIs(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->decrementEndPosition(I)I

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    return p1
.end method

.method public charAtOr(IC)C
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds(I)Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result p1

    return p1
.end method

.method public charSequence()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->charSequence:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public currentChar()C
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->charSequence:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public currentCharIs(C)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->charSequence:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public currentIsTail()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    iget v1, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->endPosition:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public decrementEndPosition(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->endPosition:I

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->setEndPosition(I)I

    move-result p1

    return p1
.end method

.method public hasMoreCharacters()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds(I)Z

    move-result v0

    return v0
.end method

.method public inBounds()Z
    .locals 1

    .line 2
    iget v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    invoke-virtual {p0, v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds(I)Z

    move-result v0

    return v0
.end method

.method public inBounds(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->endPosition:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public incrementPosition(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->setPosition(I)I

    move-result p1

    return p1
.end method

.method public indexOfClosingBracket(IZZ)I
    .locals 6

    const/16 v2, 0x28

    const/16 v3, 0x29

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/jayway/jsonpath/internal/CharacterIndex;->indexOfMatchingCloseChar(ICCZZ)I

    move-result p1

    return p1
.end method

.method public indexOfClosingSquareBracket(I)I
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public indexOfMatchingCloseChar(ICCZZ)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_8

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds(I)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_7

    if-eqz p4, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v1

    const/16 v3, 0x27

    if-eq v1, v3, :cond_0

    const/16 v3, 0x22

    if-ne v1, v3, :cond_2

    .line 4
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->nextIndexOfUnescaped(IC)I

    move-result p1

    if-eq p1, v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not find matching close quote for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, " when parsing : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->charSequence:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-eqz p5, :cond_4

    .line 6
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v1

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_4

    .line 7
    invoke-virtual {p0, p1, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->nextIndexOfUnescaped(IC)I

    move-result p1

    if-eq p1, v2, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 8
    :cond_3
    new-instance p1, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not find matching close for / when parsing regex in : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->charSequence:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_4
    :goto_2
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v1

    if-ne v1, p2, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 10
    :cond_5
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_6

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_6

    return p1

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_7
    return v2

    .line 11
    :cond_8
    new-instance p3, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Expected "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " but found "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p3

    :goto_4
    goto :goto_3
.end method

.method public indexOfNextSignificantChar(C)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    invoke-virtual {p0, v0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->indexOfNextSignificantChar(IC)I

    move-result p1

    return p1
.end method

.method public indexOfNextSignificantChar(IC)I
    .locals 2

    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->isOutOfBounds(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public indexOfPreviousSignificantChar()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    invoke-virtual {p0, v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->indexOfPreviousSignificantChar(I)I

    move-result v0

    return v0
.end method

.method public indexOfPreviousSignificantChar(I)I
    .locals 2

    add-int/lit8 p1, p1, -0x1

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->isOutOfBounds(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->isOutOfBounds(I)Z

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isNumberCharacter(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result p1

    .line 2
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2e

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

.method public isOutOfBounds(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public lastCharIs(C)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->charSequence:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->endPosition:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public length()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->endPosition:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public nextCharIs(C)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->charSequence:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    add-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public nextIndexOf(C)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->nextIndexOf(IC)I

    move-result p1

    return p1
.end method

.method public nextIndexOf(IC)I
    .locals 1

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->isOutOfBounds(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public nextIndexOfUnescaped(C)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    invoke-virtual {p0, v0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->nextIndexOfUnescaped(IC)I

    move-result p1

    return p1
.end method

.method public nextIndexOfUnescaped(IC)I
    .locals 5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->isOutOfBounds(I)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/16 v3, 0x5c

    .line 3
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v3

    if-ne p2, v3, :cond_2

    if-nez v2, :cond_2

    return p1

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public nextSignificantChar()C
    .locals 1

    .line 1
    iget v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    invoke-virtual {p0, v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->nextSignificantChar(I)C

    move-result v0

    return v0
.end method

.method public nextSignificantChar(I)C
    .locals 2

    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->isOutOfBounds(I)Z

    move-result v0

    const/16 v1, 0x20

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->isOutOfBounds(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public nextSignificantCharIs(C)Z
    .locals 1

    .line 3
    iget v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    invoke-virtual {p0, v0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->nextSignificantCharIs(IC)Z

    move-result p1

    return p1
.end method

.method public nextSignificantCharIs(IC)Z
    .locals 3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->isOutOfBounds(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->isOutOfBounds(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result p1

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    return v0
.end method

.method public previousSignificantChar()C
    .locals 1

    .line 3
    iget v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    invoke-virtual {p0, v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->previousSignificantChar(I)C

    move-result v0

    return v0
.end method

.method public previousSignificantChar(I)C
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->indexOfPreviousSignificantChar(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x20

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->charAt(I)C

    move-result p1

    return p1
.end method

.method public readSignificantChar(C)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->skipBlanks()Lcom/jayway/jsonpath/internal/CharacterIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->incrementPosition(I)I

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Expected character: %c"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readSignificantSubSequence(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->skipBlanks()Lcom/jayway/jsonpath/internal/CharacterIndex;

    .line 2
    iget v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v0, v3}, Lcom/jayway/jsonpath/internal/CharacterIndex;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/CharacterIndex;->incrementPosition(I)I

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "Expected: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "End of string reached while expecting: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPosition(I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    return p1
.end method

.method public skipBlanks()Lcom/jayway/jsonpath/internal/CharacterIndex;
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->inBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->position:I

    iget v1, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->endPosition:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->currentChar()C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->incrementPosition(I)I

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/CharacterIndex;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trim()Lcom/jayway/jsonpath/internal/CharacterIndex;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->skipBlanks()Lcom/jayway/jsonpath/internal/CharacterIndex;

    .line 2
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/CharacterIndex;->skipBlanksAtEnd()Lcom/jayway/jsonpath/internal/CharacterIndex;

    return-object p0
.end method
