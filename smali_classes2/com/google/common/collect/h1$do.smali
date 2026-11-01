.class public final Lcom/google/common/collect/h1$do;
.super Lcom/google/common/collect/b1$for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/b1$for<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/b1$for;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic break(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/b1$for;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/h1$do;->native(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/h1$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic case(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/b1$for;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/h1$do;->super(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h1$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic catch(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/b1$for;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/h1$do;->public(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/h1$do;

    move-result-object p1

    return-object p1
.end method

.method public class()Lcom/google/common/collect/h1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/h1<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/b1$for;->do:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/b1$for;->if:Ljava/util/Comparator;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lcom/google/common/collect/k2;->from(Ljava/util/Comparator;)Lcom/google/common/collect/k2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/k2;->onKeys()Lcom/google/common/collect/k2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/k2;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/v0;

    move-result-object v0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/b1$for;->for:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/h1;->fromMapEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/h1;

    move-result-object v0

    return-object v0
.end method

.method public const(Ljava/util/Comparator;)Lcom/google/common/collect/h1$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lcom/google/common/collect/h1$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/b1$for;->new(Ljava/util/Comparator;)Lcom/google/common/collect/b1$for;

    return-object p0
.end method

.method public bridge synthetic do()Lcom/google/common/collect/b1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/h1$do;->class()Lcom/google/common/collect/h1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic else(Ljava/util/Map$Entry;)Lcom/google/common/collect/b1$for;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/h1$do;->throw(Ljava/util/Map$Entry;)Lcom/google/common/collect/h1$do;

    move-result-object p1

    return-object p1
.end method

.method public final(Ljava/util/Comparator;)Lcom/google/common/collect/h1$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/h1$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/b1$for;->try(Ljava/util/Comparator;)Lcom/google/common/collect/b1$for;

    return-object p0
.end method

.method public for()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/l2;->goto()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic goto(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/b1$for;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/h1$do;->while(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/h1$do;

    move-result-object p1

    return-object p1
.end method

.method public import(Ljava/lang/Iterable;)Lcom/google/common/collect/h1$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation build Landroid/support/v4/o8;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/h1$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/b1$for;->this(Ljava/lang/Iterable;)Lcom/google/common/collect/b1$for;

    return-object p0
.end method

.method public native(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/h1$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lcom/google/common/collect/h1$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/b1$for;->break(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/b1$for;

    return-object p0
.end method

.method public bridge synthetic new(Ljava/util/Comparator;)Lcom/google/common/collect/b1$for;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/h1$do;->const(Ljava/util/Comparator;)Lcom/google/common/collect/h1$do;

    move-result-object p1

    return-object p1
.end method

.method public varargs public(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/h1$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lcom/google/common/collect/h1$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/h1$do;->native(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/h1$do;

    move-result-object p1

    return-object p1
.end method

.method public super(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h1$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/h1$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/b1$for;->case(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/b1$for;

    return-object p0
.end method

.method public bridge synthetic this(Ljava/lang/Iterable;)Lcom/google/common/collect/b1$for;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation build Landroid/support/v4/o8;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/h1$do;->import(Ljava/lang/Iterable;)Lcom/google/common/collect/h1$do;

    move-result-object p1

    return-object p1
.end method

.method public throw(Ljava/util/Map$Entry;)Lcom/google/common/collect/h1$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/h1$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/b1$for;->else(Ljava/util/Map$Entry;)Lcom/google/common/collect/b1$for;

    return-object p0
.end method

.method public bridge synthetic try(Ljava/util/Comparator;)Lcom/google/common/collect/b1$for;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/h1$do;->final(Ljava/util/Comparator;)Lcom/google/common/collect/h1$do;

    move-result-object p1

    return-object p1
.end method

.method public while(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/h1$do;
    .locals 2
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/h1$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/h1$do;->native(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/h1$do;

    goto :goto_0

    :cond_0
    return-object p0
.end method
