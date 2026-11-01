.class Lcom/google/common/collect/f1$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
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
.field private final domain:Lcom/google/common/collect/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/f<",
            "TC;>;"
        }
    .end annotation
.end field

.field private final ranges:Lcom/google/common/collect/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v0<",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v0;Lcom/google/common/collect/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/v0<",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;",
            "Lcom/google/common/collect/f<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/f1$for;->ranges:Lcom/google/common/collect/v0;

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/f1$for;->domain:Lcom/google/common/collect/f;

    return-void
.end method


# virtual methods
.method public readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/f1;

    iget-object v1, p0, Lcom/google/common/collect/f1$for;->ranges:Lcom/google/common/collect/v0;

    invoke-direct {v0, v1}, Lcom/google/common/collect/f1;-><init>(Lcom/google/common/collect/v0;)V

    iget-object v1, p0, Lcom/google/common/collect/f1$for;->domain:Lcom/google/common/collect/f;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/f1;->asSet(Lcom/google/common/collect/f;)Lcom/google/common/collect/m1;

    move-result-object v0

    return-object v0
.end method
