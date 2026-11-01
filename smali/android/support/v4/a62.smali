.class public Landroid/support/v4/a62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/seimicrawler/xpath/core/NodeTest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/support/v4/es1;)Landroid/support/v4/dj2;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/es1;->do()Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/support/v4/es1;->case()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "allText"

    .line 5
    invoke-static {v0}, Landroid/support/v4/as1;->if(Ljava/lang/String;)Lorg/seimicrawler/xpath/core/NodeTest;

    move-result-object v0

    .line 6
    invoke-interface {v0, p1}, Lorg/seimicrawler/xpath/core/NodeTest;->call(Landroid/support/v4/es1;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 8
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "script"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->data()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->ownText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {v1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "text"

    return-object v0
.end method
