.class public abstract Lcom/google/common/math/try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/try$for;,
        Lcom/google/common/math/try$try;,
        Lcom/google/common/math/try$new;,
        Lcom/google/common/math/try$if;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(DD)Lcom/google/common/math/try$if;
    .locals 7

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/math/for;->new(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Lcom/google/common/math/for;->new(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/af1;->new(Z)V

    .line 2
    new-instance v0, Lcom/google/common/math/try$if;

    const/4 v6, 0x0

    move-object v1, v0

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/common/math/try$if;-><init>(DDLcom/google/common/math/try$do;)V

    return-object v0
.end method

.method public static do()Lcom/google/common/math/try;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/math/try$for;->do:Lcom/google/common/math/try$for;

    return-object v0
.end method

.method public static if(D)Lcom/google/common/math/try;
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/math/for;->new(D)Z

    move-result v0

    invoke-static {v0}, Landroid/support/v4/af1;->new(Z)V

    .line 2
    new-instance v0, Lcom/google/common/math/try$new;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/google/common/math/try$new;-><init>(DD)V

    return-object v0
.end method

.method public static this(D)Lcom/google/common/math/try;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/math/for;->new(D)Z

    move-result v0

    invoke-static {v0}, Landroid/support/v4/af1;->new(Z)V

    .line 2
    new-instance v0, Lcom/google/common/math/try$try;

    invoke-direct {v0, p0, p1}, Lcom/google/common/math/try$try;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public abstract else()D
.end method

.method public abstract for()Lcom/google/common/math/try;
.end method

.method public abstract goto(D)D
.end method

.method public abstract new()Z
.end method

.method public abstract try()Z
.end method
