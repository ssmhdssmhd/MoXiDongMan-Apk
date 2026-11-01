.class public final Landroid/support/v4/jx1;
.super Landroid/support/v4/b;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;
.implements Lkotlin/jvm/internal/markers/KMutableSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/b<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;",
        "Lkotlin/jvm/internal/markers/KMutableSet;"
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010)\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u0003B\u001b\u0008\u0000\u0012\u0010\u0010\u001b\u001a\u000c\u0012\u0004\u0012\u00028\u0000\u0012\u0002\u0008\u00030\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001dB\t\u0008\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001eB\u0011\u0008\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u001c\u0010 J\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\r\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\nJ\u000f\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000fH\u0096\u0002J\u0016\u0010\u0013\u001a\u00020\u00062\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0011H\u0016J\u0016\u0010\u0014\u001a\u00020\u00062\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0011H\u0016J\u0016\u0010\u0015\u001a\u00020\u00062\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0011H\u0016R\u0016\u0010\u0019\u001a\u00020\u00168V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006!"
    }
    d2 = {
        "Landroid/support/v4/jx1;",
        "E",
        "",
        "Landroid/support/v4/b;",
        "",
        "if",
        "",
        "isEmpty",
        "element",
        "contains",
        "(Ljava/lang/Object;)Z",
        "Landroid/support/v4/ub2;",
        "clear",
        "add",
        "remove",
        "",
        "iterator",
        "",
        "elements",
        "addAll",
        "removeAll",
        "retainAll",
        "",
        "do",
        "()I",
        "size",
        "Lkotlin/collections/builders/for;",
        "backing",
        "<init>",
        "(Lkotlin/collections/builders/for;)V",
        "()V",
        "initialCapacity",
        "(I)V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final do:Lkotlin/collections/builders/for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/for<",
            "TE;*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Lkotlin/collections/builders/for;

    invoke-direct {v0}, Lkotlin/collections/builders/for;-><init>()V

    invoke-direct {p0, v0}, Landroid/support/v4/jx1;-><init>(Lkotlin/collections/builders/for;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    new-instance v0, Lkotlin/collections/builders/for;

    invoke-direct {v0, p1}, Lkotlin/collections/builders/for;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/support/v4/jx1;-><init>(Lkotlin/collections/builders/for;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/collections/builders/for;)V
    .locals 1
    .param p1    # Lkotlin/collections/builders/for;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/builders/for<",
            "TE;*>;)V"
        }
    .end annotation

    const-string v0, "backing"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/support/v4/b;-><init>()V

    iput-object p1, p0, Landroid/support/v4/jx1;->do:Lkotlin/collections/builders/for;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/jx1;->do:Lkotlin/collections/builders/for;

    invoke-virtual {v0, p1}, Lkotlin/collections/builders/for;->catch(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroid/support/v4/jx1;->do:Lkotlin/collections/builders/for;

    invoke-virtual {v0}, Lkotlin/collections/builders/for;->final()V

    .line 2
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/jx1;->do:Lkotlin/collections/builders/for;

    invoke-virtual {v0}, Lkotlin/collections/builders/for;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/jx1;->do:Lkotlin/collections/builders/for;

    invoke-virtual {v0, p1}, Lkotlin/collections/builders/for;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public do()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/jx1;->do:Lkotlin/collections/builders/for;

    invoke-virtual {v0}, Lkotlin/collections/builders/for;->size()I

    move-result v0

    return v0
.end method

.method public final if()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/jx1;->do:Lkotlin/collections/builders/for;

    invoke-virtual {v0}, Lkotlin/collections/builders/for;->const()Ljava/util/Map;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/jx1;->do:Lkotlin/collections/builders/for;

    invoke-virtual {v0}, Lkotlin/collections/builders/for;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/jx1;->do:Lkotlin/collections/builders/for;

    invoke-virtual {v0}, Lkotlin/collections/builders/for;->continue()Lkotlin/collections/builders/for$try;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/jx1;->do:Lkotlin/collections/builders/for;

    invoke-virtual {v0, p1}, Lkotlin/collections/builders/for;->instanceof(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroid/support/v4/jx1;->do:Lkotlin/collections/builders/for;

    invoke-virtual {v0}, Lkotlin/collections/builders/for;->final()V

    .line 2
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroid/support/v4/jx1;->do:Lkotlin/collections/builders/for;

    invoke-virtual {v0}, Lkotlin/collections/builders/for;->final()V

    .line 2
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
