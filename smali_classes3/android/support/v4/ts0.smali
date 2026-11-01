.class public final Landroid/support/v4/ts0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/atn/LexerAction;


# static fields
.field public static final do:Landroid/support/v4/ts0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/ts0;

    invoke-direct {v0}, Landroid/support/v4/ts0;-><init>()V

    sput-object v0, Landroid/support/v4/ts0;->do:Landroid/support/v4/ts0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public execute(Landroid/support/v4/is0;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/is0;->e()I

    return-void
.end method

.method public getActionType()Lorg/antlr/v4/runtime/atn/for;
    .locals 1

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/atn/for;->POP_MODE:Lorg/antlr/v4/runtime/atn/for;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/v4/y01;->for()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/ts0;->getActionType()Lorg/antlr/v4/runtime/atn/for;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/y01;->try(II)I

    move-result v0

    const/4 v1, 0x1

    .line 3
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
    .locals 1

    const-string v0, "popMode"

    return-object v0
.end method
