.class public Landroid/support/v4/jz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/seimicrawler/xpath/core/AxisSelector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lorg/jsoup/select/Elements;)Landroid/support/v4/dj2;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    new-instance v1, Lorg/jsoup/select/Elements;

    invoke-direct {v1}, Lorg/jsoup/select/Elements;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 4
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->getAllElements()Lorg/jsoup/select/Elements;

    move-result-object v2

    .line 5
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-static {v1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "descendant-or-self"

    return-object v0
.end method
