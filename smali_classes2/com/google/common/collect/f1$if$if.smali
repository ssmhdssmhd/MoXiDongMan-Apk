.class Lcom/google/common/collect/f1$if$if;
.super Lcom/google/common/collect/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/f1$if;->descendingIterator()Landroid/support/v4/ac2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/for<",
        "TC;>;"
    }
.end annotation


# instance fields
.field public final for:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field public new:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final synthetic try:Lcom/google/common/collect/f1$if;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/f1$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/f1$if$if;->try:Lcom/google/common/collect/f1$if;

    invoke-direct {p0}, Lcom/google/common/collect/for;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/collect/f1$if;->this$0:Lcom/google/common/collect/f1;

    invoke-static {p1}, Lcom/google/common/collect/f1;->access$000(Lcom/google/common/collect/f1;)Lcom/google/common/collect/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/v0;->reverse()Lcom/google/common/collect/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/v0;->iterator()Landroid/support/v4/ac2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/f1$if$if;->for:Ljava/util/Iterator;

    .line 3
    invoke-static {}, Lcom/google/common/collect/s1;->return()Landroid/support/v4/ac2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/f1$if$if;->new:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public bridge synthetic do()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/f1$if$if;->new()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public new()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/f1$if$if;->new:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/f1$if$if;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/f1$if$if;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/n2;

    iget-object v1, p0, Lcom/google/common/collect/f1$if$if;->try:Lcom/google/common/collect/f1$if;

    invoke-static {v1}, Lcom/google/common/collect/f1$if;->access$100(Lcom/google/common/collect/f1$if;)Lcom/google/common/collect/f;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/instanceof;->create(Lcom/google/common/collect/n2;Lcom/google/common/collect/f;)Lcom/google/common/collect/instanceof;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/m1;->descendingIterator()Landroid/support/v4/ac2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/f1$if$if;->new:Ljava/util/Iterator;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/for;->if()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/f1$if$if;->new:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method
