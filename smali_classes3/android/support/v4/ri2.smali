.class public Landroid/support/v4/ri2;
.super Landroid/support/v4/is0;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field public static final abstract:I = 0x2

.field public static final b:Lorg/antlr/v4/runtime/Vocabulary;

.field public static final c:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final continue:I = 0x3

.field public static implements:[Ljava/lang/String; = null

.field public static final instanceof:[Ljava/lang/String;

.field public static final interface:I = 0x6

.field public static final private:I = 0x1

.field public static final protected:I = 0x7

.field public static final strictfp:I = 0x4

.field private static final synchronized:[Ljava/lang/String;

.field public static final transient:I = 0x8

.field public static final volatile:I = 0x5


# instance fields
.field public finally:I

.field public package:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-string v0, "DEFAULT_MODE"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/ri2;->implements:[Ljava/lang/String;

    const-string v1, "ANYWHERE"

    const-string v2, "ROOT"

    const-string v3, "WILDCARD"

    const-string v4, "BANG"

    const-string v5, "ID"

    const-string v6, "NameChar"

    const-string v7, "NameStartChar"

    const-string v8, "STRING"

    .line 2
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/ri2;->instanceof:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "\'//\'"

    const-string v5, "\'/\'"

    const-string v6, "\'*\'"

    const-string v7, "\'!\'"

    .line 3
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/ri2;->synchronized:[Ljava/lang/String;

    const-string v2, "TOKEN_REF"

    const-string v3, "RULE_REF"

    const-string v4, "ANYWHERE"

    const-string v5, "ROOT"

    const-string v6, "WILDCARD"

    const-string v7, "BANG"

    const-string v8, "ID"

    const-string v9, "STRING"

    .line 4
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/support/v4/ri2;->a:[Ljava/lang/String;

    .line 5
    new-instance v2, Landroid/support/v4/cf2;

    invoke-direct {v2, v0, v1}, Landroid/support/v4/cf2;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, Landroid/support/v4/ri2;->b:Lorg/antlr/v4/runtime/Vocabulary;

    .line 6
    array-length v0, v1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/support/v4/ri2;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    :goto_0
    sget-object v1, Landroid/support/v4/ri2;->c:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 8
    sget-object v2, Landroid/support/v4/ri2;->b:Lorg/antlr/v4/runtime/Vocabulary;

    invoke-interface {v2, v0}, Lorg/antlr/v4/runtime/Vocabulary;->getLiteralName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 9
    aget-object v3, v1, v0

    if-nez v3, :cond_0

    .line 10
    invoke-interface {v2, v0}, Lorg/antlr/v4/runtime/Vocabulary;->getSymbolicName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 11
    :cond_0
    aget-object v2, v1, v0

    if-nez v2, :cond_1

    const-string v2, "<INVALID>"

    .line 12
    aput-object v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/CharStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/is0;-><init>(Lorg/antlr/v4/runtime/CharStream;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Landroid/support/v4/ri2;->finally:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroid/support/v4/ri2;->package:I

    return-void
.end method


# virtual methods
.method public class()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/ri2;->instanceof:[Ljava/lang/String;

    return-object v0
.end method

.method public else()Ljava/lang/String;
    .locals 1

    const-string v0, "XPathLexer.g4"

    return-object v0
.end method

.method public for()Landroid/support/v4/static;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharPositionInLine()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ri2;->package:I

    return v0
.end method

.method public implements()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/ri2;->implements:[Ljava/lang/String;

    return-object v0
.end method

.method public native()Lorg/antlr/v4/runtime/Vocabulary;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/ri2;->b:Lorg/antlr/v4/runtime/Vocabulary;

    return-object v0
.end method

.method public nextToken()Lorg/antlr/v4/runtime/Token;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v0

    iput v0, p0, Landroid/support/v4/is0;->catch:I

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_8

    .line 2
    iget-object v1, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/IntStream;->LA(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    const/16 v3, 0x21

    if-eq v1, v3, :cond_6

    const/16 v3, 0x27

    if-eq v1, v3, :cond_5

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_4

    const/16 v3, 0x2f

    if-eq v1, v3, :cond_2

    .line 3
    iget-object v1, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/IntStream;->LA(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/ri2;->s(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/ri2;->t()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/support/v4/fp;

    invoke-direct {v3, v2, v1}, Landroid/support/v4/fp;-><init>(ILjava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_0
    new-instance v3, Landroid/support/v4/fp;

    const/4 v2, 0x2

    invoke-direct {v3, v2, v1}, Landroid/support/v4/fp;-><init>(ILjava/lang/String;)V

    :goto_1
    move-object v1, v3

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Landroid/support/v4/ss0;

    iget-object v2, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    iget v3, p0, Landroid/support/v4/is0;->catch:I

    invoke-direct {v1, p0, v2, v3, v0}, Landroid/support/v4/ss0;-><init>(Landroid/support/v4/is0;Lorg/antlr/v4/runtime/CharStream;ILandroid/support/v4/throws;)V

    throw v1

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/ri2;->q()V

    .line 9
    iget-object v1, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/IntStream;->LA(I)I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/support/v4/ri2;->q()V

    .line 11
    new-instance v1, Landroid/support/v4/fp;

    const/4 v2, 0x3

    const-string v3, "//"

    invoke-direct {v1, v2, v3}, Landroid/support/v4/fp;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_3
    new-instance v1, Landroid/support/v4/fp;

    const/4 v2, 0x4

    const-string v3, "/"

    invoke-direct {v1, v2, v3}, Landroid/support/v4/fp;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/ri2;->q()V

    .line 14
    new-instance v1, Landroid/support/v4/fp;

    const/4 v2, 0x5

    const-string v3, "*"

    invoke-direct {v1, v2, v3}, Landroid/support/v4/fp;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {p0}, Landroid/support/v4/ri2;->u()Ljava/lang/String;

    move-result-object v1

    .line 16
    new-instance v2, Landroid/support/v4/fp;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Landroid/support/v4/fp;-><init>(ILjava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_0

    .line 17
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/ri2;->q()V

    .line 18
    new-instance v1, Landroid/support/v4/fp;

    const/4 v2, 0x6

    const-string v3, "!"

    invoke-direct {v1, v2, v3}, Landroid/support/v4/fp;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 19
    :cond_7
    new-instance v0, Landroid/support/v4/fp;

    const-string v1, "<EOF>"

    invoke-direct {v0, v3, v1}, Landroid/support/v4/fp;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 20
    :cond_8
    iget v0, p0, Landroid/support/v4/is0;->catch:I

    invoke-virtual {v1, v0}, Landroid/support/v4/fp;->setStartIndex(I)V

    .line 21
    iget v0, p0, Landroid/support/v4/is0;->catch:I

    invoke-virtual {v1, v0}, Landroid/support/v4/fp;->setCharPositionInLine(I)V

    .line 22
    iget v0, p0, Landroid/support/v4/ri2;->finally:I

    invoke-virtual {v1, v0}, Landroid/support/v4/fp;->setLine(I)V

    return-object v1
.end method

.method public q()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/IntStream;->LA(I)I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 2
    iget v0, p0, Landroid/support/v4/ri2;->finally:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/ri2;->finally:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/support/v4/ri2;->package:I

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Landroid/support/v4/ri2;->package:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/ri2;->package:I

    .line 5
    :goto_0
    iget-object v0, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/IntStream;->consume()V

    return-void
.end method

.method public r(I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->isUnicodeIdentifierPart(I)Z

    move-result p1

    return p1
.end method

.method public s(I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->isUnicodeIdentifierStart(I)Z

    move-result p1

    return p1
.end method

.method public t()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/ri2;->q()V

    .line 3
    :goto_0
    iget-object v1, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/IntStream;->LA(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/ri2;->r(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/ri2;->q()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v1}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Landroid/support/v4/rn0;->case(II)Landroid/support/v4/rn0;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/antlr/v4/runtime/CharStream;->getText(Landroid/support/v4/rn0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public throw()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/ri2;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/ri2;->q()V

    .line 3
    :goto_0
    iget-object v1, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/IntStream;->LA(I)I

    move-result v1

    const/16 v3, 0x27

    if-eq v1, v3, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/ri2;->q()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/ri2;->q()V

    .line 6
    iget-object v1, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v1}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Landroid/support/v4/rn0;->case(II)Landroid/support/v4/rn0;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/antlr/v4/runtime/CharStream;->getText(Landroid/support/v4/rn0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
