.class final Lcom/google/common/collect/f1$if;
.super Lcom/google/common/collect/m1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/m1<",
        "TC;>;"
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

.field public final synthetic this$0:Lcom/google/common/collect/f1;

.field private transient try:Ljava/lang/Integer;
    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/f1;Lcom/google/common/collect/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/f<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/f1$if;->this$0:Lcom/google/common/collect/f1;

    .line 2
    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/m1;-><init>(Ljava/util/Comparator;)V

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/f1$if;->domain:Lcom/google/common/collect/f;

    return-void
.end method

.method public static synthetic access$100(Lcom/google/common/collect/f1$if;)Lcom/google/common/collect/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/f1$if;->domain:Lcom/google/common/collect/f;

    return-object p0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    :try_start_0
    check-cast p1, Ljava/lang/Comparable;

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/f1$if;->this$0:Lcom/google/common/collect/f1;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/f1;->contains(Ljava/lang/Comparable;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public createDescendingSet()Lcom/google/common/collect/m1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/m1<",
            "TC;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/d;

    invoke-direct {v0, p0}, Lcom/google/common/collect/d;-><init>(Lcom/google/common/collect/m1;)V

    return-object v0
.end method

.method public descendingIterator()Landroid/support/v4/ac2;
    .locals 1
    .annotation build Landroid/support/v4/li0;
        value = "NavigableSet"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/ac2<",
            "TC;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/f1$if$if;

    invoke-direct {v0, p0}, Lcom/google/common/collect/f1$if$if;-><init>(Lcom/google/common/collect/f1$if;)V

    return-object v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroid/support/v4/li0;
        value = "NavigableSet"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/f1$if;->descendingIterator()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public headSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/m1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/m1<",
            "TC;>;"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lcom/google/common/collect/static;->forBoolean(Z)Lcom/google/common/collect/static;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/n2;->upTo(Ljava/lang/Comparable;Lcom/google/common/collect/static;)Lcom/google/common/collect/n2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/f1$if;->subSet(Lcom/google/common/collect/n2;)Lcom/google/common/collect/m1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/m1;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/f1$if;->headSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/m1;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/f1$if;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Ljava/lang/Comparable;

    const-wide/16 v0, 0x0

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/f1$if;->this$0:Lcom/google/common/collect/f1;

    invoke-static {v2}, Lcom/google/common/collect/f1;->access$000(Lcom/google/common/collect/f1;)Lcom/google/common/collect/v0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/v0;->iterator()Landroid/support/v4/ac2;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/n2;

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/common/collect/n2;->contains(Ljava/lang/Comparable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    iget-object v2, p0, Lcom/google/common/collect/f1$if;->domain:Lcom/google/common/collect/f;

    invoke-static {v3, v2}, Lcom/google/common/collect/instanceof;->create(Lcom/google/common/collect/n2;Lcom/google/common/collect/f;)Lcom/google/common/collect/instanceof;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/common/collect/m1;->indexOf(Ljava/lang/Object;)I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/this;->throws(J)I

    move-result p1

    return p1

    .line 6
    :cond_0
    iget-object v4, p0, Lcom/google/common/collect/f1$if;->domain:Lcom/google/common/collect/f;

    invoke-static {v3, v4}, Lcom/google/common/collect/instanceof;->create(Lcom/google/common/collect/n2;Lcom/google/common/collect/f;)Lcom/google/common/collect/instanceof;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "impossible"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public isPartialView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/f1$if;->this$0:Lcom/google/common/collect/f1;

    invoke-static {v0}, Lcom/google/common/collect/f1;->access$000(Lcom/google/common/collect/f1;)Lcom/google/common/collect/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/r0;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public iterator()Landroid/support/v4/ac2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/ac2<",
            "TC;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/f1$if$do;

    invoke-direct {v0, p0}, Lcom/google/common/collect/f1$if$do;-><init>(Lcom/google/common/collect/f1$if;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/f1$if;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/f1$if;->try:Ljava/lang/Integer;

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    .line 2
    iget-object v2, p0, Lcom/google/common/collect/f1$if;->this$0:Lcom/google/common/collect/f1;

    invoke-static {v2}, Lcom/google/common/collect/f1;->access$000(Lcom/google/common/collect/f1;)Lcom/google/common/collect/v0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/v0;->iterator()Landroid/support/v4/ac2;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/n2;

    .line 3
    iget-object v4, p0, Lcom/google/common/collect/f1$if;->domain:Lcom/google/common/collect/f;

    invoke-static {v3, v4}, Lcom/google/common/collect/instanceof;->create(Lcom/google/common/collect/n2;Lcom/google/common/collect/f;)Lcom/google/common/collect/instanceof;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    .line 4
    :cond_1
    invoke-static {v0, v1}, Lcom/google/common/primitives/this;->throws(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/f1$if;->try:Ljava/lang/Integer;

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public subSet(Lcom/google/common/collect/n2;)Lcom/google/common/collect/m1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;)",
            "Lcom/google/common/collect/m1<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/f1$if;->this$0:Lcom/google/common/collect/f1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/f1;->subRangeSet(Lcom/google/common/collect/n2;)Lcom/google/common/collect/f1;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/f1$if;->domain:Lcom/google/common/collect/f;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/f1;->asSet(Lcom/google/common/collect/f;)Lcom/google/common/collect/m1;

    move-result-object p1

    return-object p1
.end method

.method public subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/m1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;ZTC;Z)",
            "Lcom/google/common/collect/m1<",
            "TC;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    .line 2
    invoke-static {p1, p3}, Lcom/google/common/collect/n2;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/collect/m1;->of()Lcom/google/common/collect/m1;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-static {p2}, Lcom/google/common/collect/static;->forBoolean(Z)Lcom/google/common/collect/static;

    move-result-object p2

    .line 5
    invoke-static {p4}, Lcom/google/common/collect/static;->forBoolean(Z)Lcom/google/common/collect/static;

    move-result-object p4

    .line 6
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/collect/n2;->range(Ljava/lang/Comparable;Lcom/google/common/collect/static;Ljava/lang/Comparable;Lcom/google/common/collect/static;)Lcom/google/common/collect/n2;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/common/collect/f1$if;->subSet(Lcom/google/common/collect/n2;)Lcom/google/common/collect/m1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/m1;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/f1$if;->subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/m1;

    move-result-object p1

    return-object p1
.end method

.method public tailSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/m1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/m1<",
            "TC;>;"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lcom/google/common/collect/static;->forBoolean(Z)Lcom/google/common/collect/static;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/n2;->downTo(Ljava/lang/Comparable;Lcom/google/common/collect/static;)Lcom/google/common/collect/n2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/f1$if;->subSet(Lcom/google/common/collect/n2;)Lcom/google/common/collect/m1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/m1;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/f1$if;->tailSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/m1;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/f1$if;->this$0:Lcom/google/common/collect/f1;

    invoke-static {v0}, Lcom/google/common/collect/f1;->access$000(Lcom/google/common/collect/f1;)Lcom/google/common/collect/v0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/collect/f1$for;

    iget-object v1, p0, Lcom/google/common/collect/f1$if;->this$0:Lcom/google/common/collect/f1;

    invoke-static {v1}, Lcom/google/common/collect/f1;->access$000(Lcom/google/common/collect/f1;)Lcom/google/common/collect/v0;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/f1$if;->domain:Lcom/google/common/collect/f;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/f1$for;-><init>(Lcom/google/common/collect/v0;Lcom/google/common/collect/f;)V

    return-object v0
.end method
