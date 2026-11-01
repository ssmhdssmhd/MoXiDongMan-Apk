.class Lcom/google/common/collect/try$do;
.super Lcom/google/common/collect/try$new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/try;->valueIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/try<",
        "TK;TV;>.new<TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic case:Lcom/google/common/collect/try;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/try;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/try$do;->case:Lcom/google/common/collect/try;

    invoke-direct {p0, p1}, Lcom/google/common/collect/try$new;-><init>(Lcom/google/common/collect/try;)V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    return-object p2
.end method
