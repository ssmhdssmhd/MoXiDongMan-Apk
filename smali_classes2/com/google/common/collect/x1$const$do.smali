.class Lcom/google/common/collect/x1$const$do;
.super Lcom/google/common/collect/p3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/x1$const;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/p3<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic if:Lcom/google/common/collect/x1$const;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/x1$const;Ljava/util/ListIterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/x1$const$do;->if:Lcom/google/common/collect/x1$const;

    invoke-direct {p0, p2}, Lcom/google/common/collect/p3;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x1$const$do;->if:Lcom/google/common/collect/x1$const;

    iget-object v0, v0, Lcom/google/common/collect/x1$const;->function:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
