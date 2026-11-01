.class public Landroid/support/v4/throws;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/throws$do;,
        Landroid/support/v4/throws$if;,
        Landroid/support/v4/throws$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "Landroid/support/v4/switch;",
        ">;"
    }
.end annotation


# instance fields
.field public case:Z

.field public do:Z

.field public else:Z

.field public final for:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/switch;",
            ">;"
        }
    .end annotation
.end field

.field public final goto:Z

.field public if:Landroid/support/v4/throws$do;

.field public new:I

.field private this:I

.field public try:Ljava/util/BitSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, v0}, Landroid/support/v4/throws;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/throws;)V
    .locals 1

    .line 8
    iget-boolean v0, p1, Landroid/support/v4/throws;->goto:Z

    invoke-direct {p0, v0}, Landroid/support/v4/throws;-><init>(Z)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/support/v4/throws;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget v0, p1, Landroid/support/v4/throws;->new:I

    iput v0, p0, Landroid/support/v4/throws;->new:I

    .line 11
    iget-object v0, p1, Landroid/support/v4/throws;->try:Ljava/util/BitSet;

    iput-object v0, p0, Landroid/support/v4/throws;->try:Ljava/util/BitSet;

    .line 12
    iget-boolean v0, p1, Landroid/support/v4/throws;->case:Z

    iput-boolean v0, p0, Landroid/support/v4/throws;->case:Z

    .line 13
    iget-boolean p1, p1, Landroid/support/v4/throws;->else:Z

    iput-boolean p1, p0, Landroid/support/v4/throws;->else:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/throws;->do:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/throws;->for:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Landroid/support/v4/throws;->this:I

    .line 5
    new-instance v0, Landroid/support/v4/throws$for;

    invoke-direct {v0}, Landroid/support/v4/throws$for;-><init>()V

    iput-object v0, p0, Landroid/support/v4/throws;->if:Landroid/support/v4/throws$do;

    .line 6
    iput-boolean p1, p0, Landroid/support/v4/throws;->goto:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/switch;

    invoke-virtual {p0, p1}, Landroid/support/v4/throws;->do(Landroid/support/v4/switch;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroid/support/v4/switch;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/switch;

    invoke-virtual {p0, v0}, Landroid/support/v4/throws;->do(Landroid/support/v4/switch;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public break(Landroid/support/v4/extends;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/throws;->do:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Landroid/support/v4/throws;->if:Landroid/support/v4/throws$do;

    invoke-virtual {v0}, Landroid/support/v4/i3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/throws;->for:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/switch;

    .line 4
    iget-object v2, v1, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-virtual {p1, v2}, Landroid/support/v4/extends;->case(Lorg/antlr/v4/runtime/atn/else;)Lorg/antlr/v4/runtime/atn/else;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    goto :goto_0

    :cond_1
    return-void

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This set is readonly"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public case()Ljava/util/BitSet;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/support/v4/throws;->for:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/switch;

    .line 3
    iget v2, v2, Landroid/support/v4/switch;->if:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public catch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/throws;->do:Z

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroid/support/v4/throws;->if:Landroid/support/v4/throws$do;

    return-void
.end method

.method public class()[Landroid/support/v4/switch;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/throws;->if:Landroid/support/v4/throws$do;

    invoke-virtual {v0}, Landroid/support/v4/i3;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/switch;

    return-object v0
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/throws;->do:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/throws;->for:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/support/v4/throws;->this:I

    .line 4
    iget-object v0, p0, Landroid/support/v4/throws;->if:Landroid/support/v4/throws$do;

    invoke-virtual {v0}, Landroid/support/v4/i3;->clear()V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This set is readonly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/throws;->if:Landroid/support/v4/throws$do;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v4/i3;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not implemented for readonly sets."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public do(Landroid/support/v4/switch;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/throws;->if(Landroid/support/v4/switch;Landroid/support/v4/h20;)Z

    move-result p1

    return p1
.end method

.method public else()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/atn/break;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/support/v4/throws;->for:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/switch;

    .line 3
    iget-object v2, v2, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    sget-object v3, Lorg/antlr/v4/runtime/atn/break;->do:Lorg/antlr/v4/runtime/atn/break;

    if-eq v2, v3, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Landroid/support/v4/throws;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Landroid/support/v4/throws;

    .line 3
    iget-object v1, p0, Landroid/support/v4/throws;->for:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v3, p1, Landroid/support/v4/throws;->for:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v4/throws;->goto:Z

    iget-boolean v3, p1, Landroid/support/v4/throws;->goto:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/support/v4/throws;->new:I

    iget v3, p1, Landroid/support/v4/throws;->new:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/support/v4/throws;->try:Ljava/util/BitSet;

    iget-object v3, p1, Landroid/support/v4/throws;->try:Ljava/util/BitSet;

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroid/support/v4/throws;->case:Z

    iget-boolean v3, p1, Landroid/support/v4/throws;->case:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroid/support/v4/throws;->else:Z

    iget-boolean p1, p1, Landroid/support/v4/throws;->else:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public for(Landroid/support/v4/switch;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/throws;->if:Landroid/support/v4/throws$do;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v4/i3;->if(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not implemented for readonly sets."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public goto()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/support/v4/finally;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/support/v4/throws;->for:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/switch;

    .line 3
    iget-object v2, v2, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/throws;->this()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Landroid/support/v4/throws;->this:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Landroid/support/v4/throws;->for:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    iput v0, p0, Landroid/support/v4/throws;->this:I

    .line 4
    :cond_0
    iget v0, p0, Landroid/support/v4/throws;->this:I

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/support/v4/throws;->for:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    return v0
.end method

.method public if(Landroid/support/v4/switch;Landroid/support/v4/h20;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/switch;",
            "Landroid/support/v4/h20<",
            "Lorg/antlr/v4/runtime/atn/else;",
            "Lorg/antlr/v4/runtime/atn/else;",
            "Lorg/antlr/v4/runtime/atn/else;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/throws;->do:Z

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p1, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    sget-object v1, Lorg/antlr/v4/runtime/atn/break;->do:Lorg/antlr/v4/runtime/atn/break;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 3
    iput-boolean v2, p0, Landroid/support/v4/throws;->case:Z

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/switch;->if()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    iput-boolean v2, p0, Landroid/support/v4/throws;->else:Z

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/support/v4/throws;->if:Landroid/support/v4/throws$do;

    invoke-virtual {v0, p1}, Landroid/support/v4/i3;->goto(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/switch;

    if-ne v0, p1, :cond_2

    const/4 p2, -0x1

    .line 7
    iput p2, p0, Landroid/support/v4/throws;->this:I

    .line 8
    iget-object p2, p0, Landroid/support/v4/throws;->for:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v2

    .line 9
    :cond_2
    iget-boolean v1, p0, Landroid/support/v4/throws;->goto:Z

    xor-int/2addr v1, v2

    .line 10
    iget-object v3, v0, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    iget-object v4, p1, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-static {v3, v4, v1, p2}, Lorg/antlr/v4/runtime/atn/else;->const(Lorg/antlr/v4/runtime/atn/else;Lorg/antlr/v4/runtime/atn/else;ZLandroid/support/v4/h20;)Lorg/antlr/v4/runtime/atn/else;

    move-result-object p2

    .line 11
    iget v1, v0, Landroid/support/v4/switch;->new:I

    iget v3, p1, Landroid/support/v4/switch;->new:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/switch;->new:I

    .line 12
    invoke-virtual {p1}, Landroid/support/v4/switch;->for()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {v0, v2}, Landroid/support/v4/switch;->new(Z)V

    .line 14
    :cond_3
    iput-object p2, v0, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    return v2

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This set is readonly"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/throws;->for:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/support/v4/switch;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/throws;->for:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public new()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/switch;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/throws;->for:Ljava/util/ArrayList;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/throws;->for:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public this()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/throws;->do:Z

    return v0
.end method

.method public bridge synthetic toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/throws;->class()[Landroid/support/v4/switch;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroid/support/v4/throws;->if:Landroid/support/v4/throws$do;

    invoke-virtual {v0, p1}, Landroid/support/v4/i3;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/throws;->new()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-boolean v1, p0, Landroid/support/v4/throws;->case:Z

    if-eqz v1, :cond_0

    const-string v1, ",hasSemanticContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v4/throws;->case:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    iget v1, p0, Landroid/support/v4/throws;->new:I

    if-eqz v1, :cond_1

    const-string v1, ",uniqueAlt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/throws;->new:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    iget-object v1, p0, Landroid/support/v4/throws;->try:Ljava/util/BitSet;

    if-eqz v1, :cond_2

    const-string v1, ",conflictingAlts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/throws;->try:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    :cond_2
    iget-boolean v1, p0, Landroid/support/v4/throws;->else:Z

    if-eqz v1, :cond_3

    const-string v1, ",dipsIntoOuterContext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try(I)Landroid/support/v4/switch;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/throws;->for:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/switch;

    return-object p1
.end method
