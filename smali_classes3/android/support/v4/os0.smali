.class public final Landroid/support/v4/os0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/atn/LexerAction;


# instance fields
.field private final do:I

.field private final if:Lorg/antlr/v4/runtime/atn/LexerAction;


# direct methods
.method public constructor <init>(ILorg/antlr/v4/runtime/atn/LexerAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/os0;->do:I

    .line 3
    iput-object p2, p0, Landroid/support/v4/os0;->if:Lorg/antlr/v4/runtime/atn/LexerAction;

    return-void
.end method


# virtual methods
.method public do()Lorg/antlr/v4/runtime/atn/LexerAction;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/os0;->if:Lorg/antlr/v4/runtime/atn/LexerAction;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Landroid/support/v4/os0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Landroid/support/v4/os0;

    .line 3
    iget v1, p0, Landroid/support/v4/os0;->do:I

    iget v3, p1, Landroid/support/v4/os0;->do:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/support/v4/os0;->if:Lorg/antlr/v4/runtime/atn/LexerAction;

    iget-object p1, p1, Landroid/support/v4/os0;->if:Lorg/antlr/v4/runtime/atn/LexerAction;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public execute(Landroid/support/v4/is0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/os0;->if:Lorg/antlr/v4/runtime/atn/LexerAction;

    invoke-interface {v0, p1}, Lorg/antlr/v4/runtime/atn/LexerAction;->execute(Landroid/support/v4/is0;)V

    return-void
.end method

.method public getActionType()Lorg/antlr/v4/runtime/atn/for;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/os0;->if:Lorg/antlr/v4/runtime/atn/LexerAction;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/atn/LexerAction;->getActionType()Lorg/antlr/v4/runtime/atn/for;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/v4/y01;->for()I

    move-result v0

    .line 2
    iget v1, p0, Landroid/support/v4/os0;->do:I

    invoke-static {v0, v1}, Landroid/support/v4/y01;->try(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Landroid/support/v4/os0;->if:Lorg/antlr/v4/runtime/atn/LexerAction;

    invoke-static {v0, v1}, Landroid/support/v4/y01;->case(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/support/v4/y01;->do(II)I

    move-result v0

    return v0
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/os0;->do:I

    return v0
.end method

.method public isPositionDependent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
