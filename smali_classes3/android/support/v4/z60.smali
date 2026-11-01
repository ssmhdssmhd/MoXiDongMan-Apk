.class public Landroid/support/v4/z60;
.super Landroid/support/v4/d02;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 1
    invoke-direct {p0, v0, v1}, Landroid/support/v4/d02;-><init>(Lorg/antlr/v4/runtime/atn/else;I)V

    return-void
.end method


# virtual methods
.method public break(I)I
    .locals 0

    .line 1
    iget p1, p0, Landroid/support/v4/d02;->this:I

    return p1
.end method

.method public class()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public this(I)Lorg/antlr/v4/runtime/atn/else;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "$"

    return-object v0
.end method

.method public while()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
