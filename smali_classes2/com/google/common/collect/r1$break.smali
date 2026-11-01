.class final Lcom/google/common/collect/r1$break;
.super Lcom/google/common/collect/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/r1;->continue(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Ljava/util/Comparator;

.field public final synthetic if:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/r1$break;->if:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/google/common/collect/r1$break;->for:Ljava/util/Comparator;

    invoke-direct {p0}, Lcom/google/common/collect/t;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/r1$break;->if:Ljava/lang/Iterable;

    .line 2
    invoke-static {}, Lcom/google/common/collect/r1;->f()Lcom/google/common/base/Function;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/r1;->h(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/r1$break;->for:Ljava/util/Comparator;

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/s1;->b(Ljava/lang/Iterable;Ljava/util/Comparator;)Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method
