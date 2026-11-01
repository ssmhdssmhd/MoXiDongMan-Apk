.class final Lcom/google/common/collect/r1$try;
.super Lcom/google/common/collect/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/r1;->super(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;
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
.field public final synthetic for:Lcom/google/common/base/Predicate;

.field public final synthetic if:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/r1$try;->if:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/google/common/collect/r1$try;->for:Lcom/google/common/base/Predicate;

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
    iget-object v0, p0, Lcom/google/common/collect/r1$try;->if:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/r1$try;->for:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/s1;->throws(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method
