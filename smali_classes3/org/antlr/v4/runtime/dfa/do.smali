.class public Lorg/antlr/v4/runtime/dfa/do;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/support/v4/au;",
            "Landroid/support/v4/au;",
            ">;"
        }
    .end annotation
.end field

.field public final for:I

.field public volatile if:Landroid/support/v4/au;

.field public final new:Landroid/support/v4/jx;

.field private final try:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/jx;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/dfa/do;-><init>(Landroid/support/v4/jx;I)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/jx;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/dfa/do;->do:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lorg/antlr/v4/runtime/dfa/do;->new:Landroid/support/v4/jx;

    .line 5
    iput p2, p0, Lorg/antlr/v4/runtime/dfa/do;->for:I

    .line 6
    instance-of p2, p1, Landroid/support/v4/j12;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 7
    check-cast p1, Landroid/support/v4/j12;

    iget-boolean p1, p1, Landroid/support/v4/j12;->extends:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 8
    new-instance p2, Landroid/support/v4/au;

    new-instance v1, Landroid/support/v4/throws;

    invoke-direct {v1}, Landroid/support/v4/throws;-><init>()V

    invoke-direct {p2, v1}, Landroid/support/v4/au;-><init>(Landroid/support/v4/throws;)V

    new-array v1, v0, [Landroid/support/v4/au;

    .line 9
    iput-object v1, p2, Landroid/support/v4/au;->for:[Landroid/support/v4/au;

    .line 10
    iput-boolean v0, p2, Landroid/support/v4/au;->new:Z

    .line 11
    iput-boolean v0, p2, Landroid/support/v4/au;->else:Z

    .line 12
    iput-object p2, p0, Lorg/antlr/v4/runtime/dfa/do;->if:Landroid/support/v4/au;

    const/4 v0, 0x1

    .line 13
    :cond_0
    iput-boolean v0, p0, Lorg/antlr/v4/runtime/dfa/do;->try:Z

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/do;->if:Landroid/support/v4/au;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/ns0;

    invoke-direct {v0, p0}, Landroid/support/v4/ns0;-><init>(Lorg/antlr/v4/runtime/dfa/do;)V

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/zt;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final do(I)Landroid/support/v4/au;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/dfa/do;->for()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    .line 2
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/do;->if:Landroid/support/v4/au;

    iget-object v0, v0, Landroid/support/v4/au;->for:[Landroid/support/v4/au;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/do;->if:Landroid/support/v4/au;

    iget-object v0, v0, Landroid/support/v4/au;->for:[Landroid/support/v4/au;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Only precedence DFAs may contain a precedence start state."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public else(Lorg/antlr/v4/runtime/Vocabulary;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/do;->if:Landroid/support/v4/au;

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/zt;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/zt;-><init>(Lorg/antlr/v4/runtime/dfa/do;Lorg/antlr/v4/runtime/Vocabulary;)V

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/zt;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final for()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/dfa/do;->try:Z

    return v0
.end method

.method public goto([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/do;->if:Landroid/support/v4/au;

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/zt;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/zt;-><init>(Lorg/antlr/v4/runtime/dfa/do;[Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/zt;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public if()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/au;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/antlr/v4/runtime/dfa/do;->do:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance v1, Lorg/antlr/v4/runtime/dfa/do$do;

    invoke-direct {v1, p0}, Lorg/antlr/v4/runtime/dfa/do$do;-><init>(Lorg/antlr/v4/runtime/dfa/do;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final new(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/dfa/do;->for()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The precedenceDfa field cannot change after a DFA is constructed."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/cf2;->case:Landroid/support/v4/cf2;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/dfa/do;->else(Lorg/antlr/v4/runtime/Vocabulary;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final try(ILandroid/support/v4/au;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/dfa/do;->for()Z

    move-result v0

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/do;->if:Landroid/support/v4/au;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lorg/antlr/v4/runtime/dfa/do;->if:Landroid/support/v4/au;

    iget-object v1, v1, Landroid/support/v4/au;->for:[Landroid/support/v4/au;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 4
    iget-object v1, p0, Lorg/antlr/v4/runtime/dfa/do;->if:Landroid/support/v4/au;

    iget-object v2, p0, Lorg/antlr/v4/runtime/dfa/do;->if:Landroid/support/v4/au;

    iget-object v2, v2, Landroid/support/v4/au;->for:[Landroid/support/v4/au;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/support/v4/au;

    iput-object v2, v1, Landroid/support/v4/au;->for:[Landroid/support/v4/au;

    .line 5
    :cond_1
    iget-object v1, p0, Lorg/antlr/v4/runtime/dfa/do;->if:Landroid/support/v4/au;

    iget-object v1, v1, Landroid/support/v4/au;->for:[Landroid/support/v4/au;

    aput-object p2, v1, p1

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Only precedence DFAs may contain a precedence start state."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
