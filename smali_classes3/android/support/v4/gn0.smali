.class public Landroid/support/v4/gn0;
.super Lorg/antlr/v4/runtime/misc/do;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/antlr/v4/runtime/misc/do;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/misc/do;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/gn0;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/misc/do;-><init>(Lorg/antlr/v4/runtime/misc/do;)V

    return-void
.end method


# virtual methods
.method public final return()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/do;->throw()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/do;->catch(I)I

    move-result v0

    return v0
.end method

.method public final static()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/do;->throw()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/do;->const(I)I

    move-result v0

    return v0
.end method

.method public final switch(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    return-void
.end method
