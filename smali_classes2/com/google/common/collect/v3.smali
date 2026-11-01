.class public abstract Lcom/google/common/collect/v3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/v3$try;,
        Lcom/google/common/collect/v3$case;,
        Lcom/google/common/collect/v3$else;,
        Lcom/google/common/collect/v3$goto;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static else(Lcom/google/common/base/Function;)Lcom/google/common/collect/v3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function<",
            "TT;+",
            "Ljava/lang/Iterable<",
            "TT;>;>;)",
            "Lcom/google/common/collect/v3<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/collect/v3$do;

    invoke-direct {v0, p0}, Lcom/google/common/collect/v3$do;-><init>(Lcom/google/common/base/Function;)V

    return-object v0
.end method


# virtual methods
.method public final case(Ljava/lang/Object;)Lcom/google/common/collect/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/t<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/collect/v3$if;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/v3$if;-><init>(Lcom/google/common/collect/v3;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final do(Ljava/lang/Object;)Lcom/google/common/collect/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/t<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/collect/v3$new;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/v3$new;-><init>(Lcom/google/common/collect/v3;Ljava/lang/Object;)V

    return-object v0
.end method

.method public for(Ljava/lang/Object;)Landroid/support/v4/ac2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/support/v4/ac2<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/v3$case;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/v3$case;-><init>(Lcom/google/common/collect/v3;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract if(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final new(Ljava/lang/Object;)Lcom/google/common/collect/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/t<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/collect/v3$for;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/v3$for;-><init>(Lcom/google/common/collect/v3;Ljava/lang/Object;)V

    return-object v0
.end method

.method public try(Ljava/lang/Object;)Landroid/support/v4/ac2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/support/v4/ac2<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/v3$goto;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/v3$goto;-><init>(Lcom/google/common/collect/v3;Ljava/lang/Object;)V

    return-object v0
.end method
