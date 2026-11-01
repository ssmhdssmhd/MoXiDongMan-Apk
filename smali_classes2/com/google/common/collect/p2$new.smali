.class final Lcom/google/common/collect/p2$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/p2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final domain:Lcom/google/common/collect/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/f<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final range:Lcom/google/common/collect/n2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/n2;Lcom/google/common/collect/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;",
            "Lcom/google/common/collect/f<",
            "TC;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/p2$new;->range:Lcom/google/common/collect/n2;

    .line 4
    iput-object p2, p0, Lcom/google/common/collect/p2$new;->domain:Lcom/google/common/collect/f;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/n2;Lcom/google/common/collect/f;Lcom/google/common/collect/p2$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/p2$new;-><init>(Lcom/google/common/collect/n2;Lcom/google/common/collect/f;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/collect/p2;

    iget-object v1, p0, Lcom/google/common/collect/p2$new;->range:Lcom/google/common/collect/n2;

    iget-object v2, p0, Lcom/google/common/collect/p2$new;->domain:Lcom/google/common/collect/f;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/p2;-><init>(Lcom/google/common/collect/n2;Lcom/google/common/collect/f;)V

    return-object v0
.end method
