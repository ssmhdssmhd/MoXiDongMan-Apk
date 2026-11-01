.class final Lcom/google/common/collect/g$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
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


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final domain:Lcom/google/common/collect/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/f<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/f<",
            "TC;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/g$if;->domain:Lcom/google/common/collect/f;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/f;Lcom/google/common/collect/g$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/g$if;-><init>(Lcom/google/common/collect/f;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/g;

    iget-object v1, p0, Lcom/google/common/collect/g$if;->domain:Lcom/google/common/collect/f;

    invoke-direct {v0, v1}, Lcom/google/common/collect/g;-><init>(Lcom/google/common/collect/f;)V

    return-object v0
.end method
