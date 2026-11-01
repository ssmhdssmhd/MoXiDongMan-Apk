.class public final Landroid/support/v4/ls0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/atn/LexerAction;


# instance fields
.field private final do:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/ls0;->do:I

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ls0;->do:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Landroid/support/v4/ls0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    iget v1, p0, Landroid/support/v4/ls0;->do:I

    check-cast p1, Landroid/support/v4/ls0;

    iget p1, p1, Landroid/support/v4/ls0;->do:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public execute(Landroid/support/v4/is0;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ls0;->do:I

    invoke-virtual {p1, v0}, Landroid/support/v4/is0;->j(I)V

    return-void
.end method

.method public getActionType()Lorg/antlr/v4/runtime/atn/for;
    .locals 1

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/atn/for;->CHANNEL:Lorg/antlr/v4/runtime/atn/for;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/v4/y01;->for()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/ls0;->getActionType()Lorg/antlr/v4/runtime/atn/for;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/y01;->try(II)I

    move-result v0

    .line 3
    iget v1, p0, Landroid/support/v4/ls0;->do:I

    invoke-static {v0, v1}, Landroid/support/v4/y01;->try(II)I

    move-result v0

    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/support/v4/y01;->do(II)I

    move-result v0

    return v0
.end method

.method public isPositionDependent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Landroid/support/v4/ls0;->do:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "channel(%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
