.class public final Landroid/support/v4/ms0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/atn/LexerAction;


# instance fields
.field private final do:I

.field private final if:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/ms0;->do:I

    .line 3
    iput p2, p0, Landroid/support/v4/ms0;->if:I

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ms0;->if:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Landroid/support/v4/ms0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Landroid/support/v4/ms0;

    .line 3
    iget v1, p0, Landroid/support/v4/ms0;->do:I

    iget v3, p1, Landroid/support/v4/ms0;->do:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/support/v4/ms0;->if:I

    iget p1, p1, Landroid/support/v4/ms0;->if:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public execute(Landroid/support/v4/is0;)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/v4/ms0;->do:I

    iget v1, p0, Landroid/support/v4/ms0;->if:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lorg/antlr/v4/runtime/this;->do(Landroid/support/v4/vo1;II)V

    return-void
.end method

.method public getActionType()Lorg/antlr/v4/runtime/atn/for;
    .locals 1

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/atn/for;->CUSTOM:Lorg/antlr/v4/runtime/atn/for;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/v4/y01;->for()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/ms0;->getActionType()Lorg/antlr/v4/runtime/atn/for;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/y01;->try(II)I

    move-result v0

    .line 3
    iget v1, p0, Landroid/support/v4/ms0;->do:I

    invoke-static {v0, v1}, Landroid/support/v4/y01;->try(II)I

    move-result v0

    .line 4
    iget v1, p0, Landroid/support/v4/ms0;->if:I

    invoke-static {v0, v1}, Landroid/support/v4/y01;->try(II)I

    move-result v0

    const/4 v1, 0x3

    .line 5
    invoke-static {v0, v1}, Landroid/support/v4/y01;->do(II)I

    move-result v0

    return v0
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ms0;->do:I

    return v0
.end method

.method public isPositionDependent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
