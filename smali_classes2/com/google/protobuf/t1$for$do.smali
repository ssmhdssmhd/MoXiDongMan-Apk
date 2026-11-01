.class public final Lcom/google/protobuf/t1$for$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/t1$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field private do:Lcom/google/protobuf/t1$for;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Lcom/google/protobuf/t1$for$do;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/t1$for$do;->this()Lcom/google/protobuf/t1$for$do;

    move-result-object v0

    return-object v0
.end method

.method private static this()Lcom/google/protobuf/t1$for$do;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/protobuf/t1$for$do;

    invoke-direct {v0}, Lcom/google/protobuf/t1$for$do;-><init>()V

    .line 2
    new-instance v1, Lcom/google/protobuf/t1$for;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/t1$for;-><init>(Lcom/google/protobuf/t1$do;)V

    iput-object v1, v0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    return-object v0
.end method


# virtual methods
.method public break(Lcom/google/protobuf/t1$for;)Lcom/google/protobuf/t1$for$do;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/t1$for;->if(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->if(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/t1$for;->for(Lcom/google/protobuf/t1$for;Ljava/util/List;)Ljava/util/List;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->if(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/t1$for;->if(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/t1$for;->new(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->new(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/t1$for;->try(Lcom/google/protobuf/t1$for;Ljava/util/List;)Ljava/util/List;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->new(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/t1$for;->new(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    :cond_3
    invoke-static {p1}, Lcom/google/protobuf/t1$for;->case(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 10
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->case(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/t1$for;->else(Lcom/google/protobuf/t1$for;Ljava/util/List;)Ljava/util/List;

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->case(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/t1$for;->case(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_5
    invoke-static {p1}, Lcom/google/protobuf/t1$for;->goto(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 14
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->goto(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6

    .line 15
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/t1$for;->this(Lcom/google/protobuf/t1$for;Ljava/util/List;)Ljava/util/List;

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->goto(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/t1$for;->goto(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    :cond_7
    invoke-static {p1}, Lcom/google/protobuf/t1$for;->break(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 18
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->break(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    .line 19
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/t1$for;->catch(Lcom/google/protobuf/t1$for;Ljava/util/List;)Ljava/util/List;

    .line 20
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->break(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/t1$for;->break(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    return-object p0
.end method

.method public case(J)Lcom/google/protobuf/t1$for$do;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->if(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/t1$for;->for(Lcom/google/protobuf/t1$for;Ljava/util/List;)Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->if(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public else()Lcom/google/protobuf/t1$for;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->if(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/t1$for;->for(Lcom/google/protobuf/t1$for;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->if(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/t1$for;->for(Lcom/google/protobuf/t1$for;Ljava/util/List;)Ljava/util/List;

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->new(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/t1$for;->try(Lcom/google/protobuf/t1$for;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->new(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/t1$for;->try(Lcom/google/protobuf/t1$for;Ljava/util/List;)Ljava/util/List;

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->case(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/t1$for;->else(Lcom/google/protobuf/t1$for;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->case(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/t1$for;->else(Lcom/google/protobuf/t1$for;Ljava/util/List;)Ljava/util/List;

    .line 10
    :goto_2
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->goto(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/t1$for;->this(Lcom/google/protobuf/t1$for;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->goto(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/t1$for;->this(Lcom/google/protobuf/t1$for;Ljava/util/List;)Ljava/util/List;

    .line 13
    :goto_3
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->break(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/t1$for;->catch(Lcom/google/protobuf/t1$for;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->break(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/t1$for;->catch(Lcom/google/protobuf/t1$for;Ljava/util/List;)Ljava/util/List;

    .line 16
    :goto_4
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    return-object v0
.end method

.method public for(J)Lcom/google/protobuf/t1$for$do;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->case(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/t1$for;->else(Lcom/google/protobuf/t1$for;Ljava/util/List;)Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->case(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public goto()Lcom/google/protobuf/t1$for$do;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/t1$for;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/t1$for;-><init>(Lcom/google/protobuf/t1$do;)V

    iput-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    return-object p0
.end method

.method public if(I)Lcom/google/protobuf/t1$for$do;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->new(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/t1$for;->try(Lcom/google/protobuf/t1$for;Ljava/util/List;)Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->new(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public new(Lcom/google/protobuf/t1;)Lcom/google/protobuf/t1$for$do;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->break(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/t1$for;->catch(Lcom/google/protobuf/t1$for;Ljava/util/List;)Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->break(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public try(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/t1$for$do;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->goto(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/t1$for;->this(Lcom/google/protobuf/t1$for;Ljava/util/List;)Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/t1$for$do;->do:Lcom/google/protobuf/t1$for;

    invoke-static {v0}, Lcom/google/protobuf/t1$for;->goto(Lcom/google/protobuf/t1$for;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
