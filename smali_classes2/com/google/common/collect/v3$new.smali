.class Lcom/google/common/collect/v3$new;
.super Lcom/google/common/collect/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/v3;->do(Ljava/lang/Object;)Lcom/google/common/collect/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Lcom/google/common/collect/v3;

.field public final synthetic if:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v3;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/v3$new;->for:Lcom/google/common/collect/v3;

    iput-object p2, p0, Lcom/google/common/collect/v3$new;->if:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/t;-><init>()V

    return-void
.end method


# virtual methods
.method public instanceof()Landroid/support/v4/ac2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/ac2<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/v3$try;

    iget-object v1, p0, Lcom/google/common/collect/v3$new;->for:Lcom/google/common/collect/v3;

    iget-object v2, p0, Lcom/google/common/collect/v3$new;->if:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/v3$try;-><init>(Lcom/google/common/collect/v3;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/v3$new;->instanceof()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method
