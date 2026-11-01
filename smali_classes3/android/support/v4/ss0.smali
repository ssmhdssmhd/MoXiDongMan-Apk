.class public Landroid/support/v4/ss0;
.super Landroid/support/v4/ql1;
.source "SourceFile"


# instance fields
.field private final deadEndConfigs:Landroid/support/v4/throws;

.field private final startIndex:I


# direct methods
.method public constructor <init>(Landroid/support/v4/is0;Lorg/antlr/v4/runtime/CharStream;ILandroid/support/v4/throws;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/ql1;-><init>(Lorg/antlr/v4/runtime/this;Lorg/antlr/v4/runtime/IntStream;Landroid/support/v4/qc1;)V

    .line 2
    iput p3, p0, Landroid/support/v4/ss0;->startIndex:I

    .line 3
    iput-object p4, p0, Landroid/support/v4/ss0;->deadEndConfigs:Landroid/support/v4/throws;

    return-void
.end method


# virtual methods
.method public getDeadEndConfigs()Landroid/support/v4/throws;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ss0;->deadEndConfigs:Landroid/support/v4/throws;

    return-object v0
.end method

.method public getInputStream()Lorg/antlr/v4/runtime/CharStream;
    .locals 1

    .line 2
    invoke-super {p0}, Landroid/support/v4/ql1;->getInputStream()Lorg/antlr/v4/runtime/IntStream;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/CharStream;

    return-object v0
.end method

.method public bridge synthetic getInputStream()Lorg/antlr/v4/runtime/IntStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/ss0;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    return-object v0
.end method

.method public getStartIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ss0;->startIndex:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Landroid/support/v4/ss0;->startIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/ss0;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v2

    invoke-interface {v2}, Lorg/antlr/v4/runtime/IntStream;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/ss0;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    iget v2, p0, Landroid/support/v4/ss0;->startIndex:I

    invoke-static {v2, v2}, Landroid/support/v4/rn0;->case(II)Landroid/support/v4/rn0;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/antlr/v4/runtime/CharStream;->getText(Landroid/support/v4/rn0;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/for;->if(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 4
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-class v4, Landroid/support/v4/ss0;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v0, "%s(\'%s\')"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
