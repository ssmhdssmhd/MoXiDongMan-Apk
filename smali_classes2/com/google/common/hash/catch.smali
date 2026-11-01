.class public final Lcom/google/common/hash/catch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/catch$try;,
        Lcom/google/common/hash/catch$for;,
        Lcom/google/common/hash/catch$new;,
        Lcom/google/common/hash/catch$if;,
        Lcom/google/common/hash/catch$case;,
        Lcom/google/common/hash/catch$else;,
        Lcom/google/common/hash/catch$do;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(Ljava/nio/charset/Charset;)Lcom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/google/common/hash/Funnel<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/hash/catch$case;

    invoke-direct {v0, p0}, Lcom/google/common/hash/catch$case;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static do(Lcom/google/common/hash/PrimitiveSink;)Ljava/io/OutputStream;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/hash/catch$try;

    invoke-direct {v0, p0}, Lcom/google/common/hash/catch$try;-><init>(Lcom/google/common/hash/PrimitiveSink;)V

    return-object v0
.end method

.method public static else()Lcom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/Funnel<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/hash/catch$else;->INSTANCE:Lcom/google/common/hash/catch$else;

    return-object v0
.end method

.method public static for()Lcom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/Funnel<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/hash/catch$if;->INSTANCE:Lcom/google/common/hash/catch$if;

    return-object v0
.end method

.method public static if()Lcom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/Funnel<",
            "[B>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/hash/catch$do;->INSTANCE:Lcom/google/common/hash/catch$do;

    return-object v0
.end method

.method public static new()Lcom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/Funnel<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/hash/catch$for;->INSTANCE:Lcom/google/common/hash/catch$for;

    return-object v0
.end method

.method public static try(Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/Funnel<",
            "TE;>;)",
            "Lcom/google/common/hash/Funnel<",
            "Ljava/lang/Iterable<",
            "+TE;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/hash/catch$new;

    invoke-direct {v0, p0}, Lcom/google/common/hash/catch$new;-><init>(Lcom/google/common/hash/Funnel;)V

    return-object v0
.end method
