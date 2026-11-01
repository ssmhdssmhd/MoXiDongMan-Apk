.class public Lcom/google/protobuf/j1$new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/j1$new$for;,
        Lcom/google/protobuf/j1$new$do;,
        Lcom/google/protobuf/j1$new$if;
    }
.end annotation


# static fields
.field private static final else:I = 0x1000


# instance fields
.field private case:Lcom/google/protobuf/k1$if;

.field private final do:Lcom/google/protobuf/p1;

.field private final for:Z

.field private final if:Z

.field private final new:Z

.field private final try:Lcom/google/protobuf/j1$new$if;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/p1;ZZZLcom/google/protobuf/j1$new$if;Lcom/google/protobuf/k1$if;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/j1$new;->do:Lcom/google/protobuf/p1;

    .line 4
    iput-boolean p2, p0, Lcom/google/protobuf/j1$new;->if:Z

    .line 5
    iput-boolean p3, p0, Lcom/google/protobuf/j1$new;->for:Z

    .line 6
    iput-boolean p4, p0, Lcom/google/protobuf/j1$new;->new:Z

    .line 7
    iput-object p5, p0, Lcom/google/protobuf/j1$new;->try:Lcom/google/protobuf/j1$new$if;

    .line 8
    iput-object p6, p0, Lcom/google/protobuf/j1$new;->case:Lcom/google/protobuf/k1$if;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/p1;ZZZLcom/google/protobuf/j1$new$if;Lcom/google/protobuf/k1$if;Lcom/google/protobuf/j1$do;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/protobuf/j1$new;-><init>(Lcom/google/protobuf/p1;ZZZLcom/google/protobuf/j1$new$if;Lcom/google/protobuf/k1$if;)V

    return-void
.end method

.method private break(Lcom/google/protobuf/j1$else;Lcom/google/protobuf/protected;Lcom/google/protobuf/MessageReflection$MergeTarget;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/j1$else;",
            "Lcom/google/protobuf/protected;",
            "Lcom/google/protobuf/MessageReflection$MergeTarget;",
            "Ljava/util/List<",
            "Lcom/google/protobuf/j1$new$for;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    .line 1
    iget-object v4, p0, Lcom/google/protobuf/j1$new;->case:Lcom/google/protobuf/k1$if;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/j1$new;->this(Lcom/google/protobuf/j1$else;Lcom/google/protobuf/protected;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/k1$if;Ljava/util/List;)V

    return-void
.end method

.method public static catch()Lcom/google/protobuf/j1$new$do;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/j1$new$do;

    invoke-direct {v0}, Lcom/google/protobuf/j1$new$do;-><init>()V

    return-object v0
.end method

.method private static class(Lcom/google/protobuf/j1$else;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    const-string v0, "["

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->this()Ljava/lang/String;

    const-string v0, "."

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "]"

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/protobuf/j1$else;->for(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->this()Ljava/lang/String;

    :goto_0
    const-string v0, ":"

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "<"

    invoke-virtual {p0, v0}, Lcom/google/protobuf/j1$else;->return(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "{"

    invoke-virtual {p0, v0}, Lcom/google/protobuf/j1$else;->return(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-static {p0}, Lcom/google/protobuf/j1$new;->final(Lcom/google/protobuf/j1$else;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {p0}, Lcom/google/protobuf/j1$new;->const(Lcom/google/protobuf/j1$else;)V

    :goto_1
    const-string v0, ";"

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ","

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method private static const(Lcom/google/protobuf/j1$else;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    const-string v0, "<"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ">"

    const-string v2, "}"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "{"

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/protobuf/j1$else;->for(Ljava/lang/String;)V

    move-object v0, v2

    .line 3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/protobuf/j1$else;->return(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/protobuf/j1$else;->return(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    invoke-static {p0}, Lcom/google/protobuf/j1$new;->class(Lcom/google/protobuf/j1$else;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/j1$else;->for(Ljava/lang/String;)V

    return-void
.end method

.method private do(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/protobuf/j1$new$for;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input contains unknown fields and/or extensions:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/j1$new$for;

    const/16 v3, 0xa

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/google/protobuf/j1$new$for;->do:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v1, p0, Lcom/google/protobuf/j1$new;->if:Z

    if-eqz v1, :cond_2

    .line 6
    invoke-static {}, Lcom/google/protobuf/j1;->if()Ljava/util/logging/Logger;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    iget-boolean v1, p0, Lcom/google/protobuf/j1$new;->new:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/j1$new$for;

    .line 9
    iget-object v5, v5, Lcom/google/protobuf/j1$new$for;->if:Lcom/google/protobuf/j1$new$for$do;

    sget-object v6, Lcom/google/protobuf/j1$new$for$do;->FIELD:Lcom/google/protobuf/j1$new$for$do;

    if-ne v5, v6, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_6

    .line 10
    invoke-static {}, Lcom/google/protobuf/j1;->if()Ljava/util/logging/Logger;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    :cond_5
    const/4 v4, 0x0

    .line 11
    :cond_6
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/j1$new$for;

    iget-object p1, p1, Lcom/google/protobuf/j1$new$for;->do:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance v1, Lcom/google/protobuf/j1$for;

    aget-object v3, p1, v3

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, p1, v0}, Lcom/google/protobuf/j1$for;-><init>(IILjava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method private static final(Lcom/google/protobuf/j1$else;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->strictfp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->strictfp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->abstract()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->continue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->volatile()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->package()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->private()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Invalid field value: "

    .line 8
    invoke-static {p0}, Lcom/google/protobuf/j1$else;->do(Lcom/google/protobuf/j1$else;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/j1$else;->throws(Ljava/lang/String;)Lcom/google/protobuf/j1$for;

    move-result-object p0

    throw p0

    :cond_3
    return-void
.end method

.method private for(Lcom/google/protobuf/j1$else;Lcom/google/protobuf/protected;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/protected$for;Lcom/google/protobuf/k1$if;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/j1$else;",
            "Lcom/google/protobuf/protected;",
            "Lcom/google/protobuf/MessageReflection$MergeTarget;",
            "Lcom/google/protobuf/Descriptors$else;",
            "Lcom/google/protobuf/protected$for;",
            "Lcom/google/protobuf/k1$if;",
            "Ljava/util/List<",
            "Lcom/google/protobuf/j1$new$for;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "["

    invoke-virtual {p1, v0}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "]"

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    :goto_0
    invoke-direct/range {p0 .. p7}, Lcom/google/protobuf/j1$new;->if(Lcom/google/protobuf/j1$else;Lcom/google/protobuf/protected;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/protected$for;Lcom/google/protobuf/k1$if;Ljava/util/List;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, ","

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/protobuf/j1$else;->for(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct/range {p0 .. p7}, Lcom/google/protobuf/j1$new;->if(Lcom/google/protobuf/j1$else;Lcom/google/protobuf/protected;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/protected$for;Lcom/google/protobuf/k1$if;Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private goto(Lcom/google/protobuf/j1$else;Lcom/google/protobuf/protected;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/k1$if;Ljava/util/List;Lcom/google/protobuf/Descriptors$if;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/j1$else;",
            "Lcom/google/protobuf/protected;",
            "Lcom/google/protobuf/MessageReflection$MergeTarget;",
            "Lcom/google/protobuf/k1$if;",
            "Ljava/util/List<",
            "Lcom/google/protobuf/j1$new$for;",
            ">;",
            "Lcom/google/protobuf/Descriptors$if;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    move-object v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    .line 1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/j1$else;->this()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ":"

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    const-string v0, "<"

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ">"

    goto :goto_1

    :cond_0
    const-string v0, "{"

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/protobuf/j1$else;->for(Ljava/lang/String;)V

    const-string v0, "}"

    :goto_1
    move-object v10, v0

    .line 7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v11, p0

    .line 8
    :try_start_0
    iget-object v1, v11, Lcom/google/protobuf/j1$new;->do:Lcom/google/protobuf/p1;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/p1;->for(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$if;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    .line 9
    invoke-static {v1}, Lcom/google/protobuf/finally;->try(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/finally;->break()Lcom/google/protobuf/finally$if;

    move-result-object v12

    .line 10
    new-instance v13, Lcom/google/protobuf/MessageReflection$if;

    invoke-direct {v13, v12}, Lcom/google/protobuf/MessageReflection$if;-><init>(Lcom/google/protobuf/Message$Builder;)V

    .line 11
    :goto_2
    invoke-virtual {p1, v10}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v3, v13

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/j1$new;->this(Lcom/google/protobuf/j1$else;Lcom/google/protobuf/protected;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/k1$if;Ljava/util/List;)V

    goto :goto_2

    :cond_1
    const-string v0, "type_url"

    .line 13
    invoke-virtual {v8, v0}, Lcom/google/protobuf/Descriptors$if;->this(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Lcom/google/protobuf/MessageReflection$MergeTarget;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    const-string v0, "value"

    .line 14
    invoke-virtual {v8, v0}, Lcom/google/protobuf/Descriptors$if;->this(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    invoke-interface {v12}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/MessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 15
    invoke-interface {v7, v0, v1}, Lcom/google/protobuf/MessageReflection$MergeTarget;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    return-void

    .line 16
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x73

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unable to parse Any of type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Please make sure that the TypeRegistry contains the descriptors for the given types."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/j1$else;->throws(Ljava/lang/String;)Lcom/google/protobuf/j1$for;

    move-result-object v0

    throw v0

    :catch_0
    nop

    const-string v1, "Invalid valid type URL. Found: "

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p1, v0}, Lcom/google/protobuf/j1$else;->throws(Ljava/lang/String;)Lcom/google/protobuf/j1$for;

    move-result-object v0

    throw v0

    :cond_4
    move-object v11, p0

    const-string v0, "/"

    .line 18
    invoke-virtual {p1, v0}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 19
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    const-string v0, "."

    .line 20
    invoke-virtual {p1, v0}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 21
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    const-string v0, "Expected a valid type URL."

    .line 22
    invoke-virtual {p1, v0}, Lcom/google/protobuf/j1$else;->default(Ljava/lang/String;)Lcom/google/protobuf/j1$for;

    move-result-object v0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private if(Lcom/google/protobuf/j1$else;Lcom/google/protobuf/protected;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/protected$for;Lcom/google/protobuf/k1$if;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/j1$else;",
            "Lcom/google/protobuf/protected;",
            "Lcom/google/protobuf/MessageReflection$MergeTarget;",
            "Lcom/google/protobuf/Descriptors$else;",
            "Lcom/google/protobuf/protected$for;",
            "Lcom/google/protobuf/k1$if;",
            "Ljava/util/List<",
            "Lcom/google/protobuf/j1$new$for;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v0, p5

    .line 1
    iget-object v1, v7, Lcom/google/protobuf/j1$new;->try:Lcom/google/protobuf/j1$new$if;

    sget-object v2, Lcom/google/protobuf/j1$new$if;->FORBID_SINGULAR_OVERWRITES:Lcom/google/protobuf/j1$new$if;

    const-string v6, "\"."

    if-ne v1, v2, :cond_2

    .line 2
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    invoke-interface/range {p3 .. p4}, Lcom/google/protobuf/MessageReflection$MergeTarget;->hasField(Lcom/google/protobuf/Descriptors$else;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$else;->catch()Lcom/google/protobuf/Descriptors$break;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$else;->catch()Lcom/google/protobuf/Descriptors$break;

    move-result-object v1

    invoke-interface {v9, v1}, Lcom/google/protobuf/MessageReflection$MergeTarget;->hasOneof(Lcom/google/protobuf/Descriptors$break;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 6
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$else;->catch()Lcom/google/protobuf/Descriptors$break;

    move-result-object v0

    .line 7
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$else;->if()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-interface {v9, v0}, Lcom/google/protobuf/MessageReflection$MergeTarget;->getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Descriptors$else;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$else;->if()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$break;->for()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x46

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Field \""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" is specified along with field \""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", another member of oneof \""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/protobuf/j1$else;->default(Ljava/lang/String;)Lcom/google/protobuf/j1$for;

    move-result-object v0

    throw v0

    .line 11
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$else;->if()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Non-repeated field \""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" cannot be overwritten."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/google/protobuf/j1$else;->default(Ljava/lang/String;)Lcom/google/protobuf/j1$for;

    move-result-object v0

    throw v0

    .line 13
    :cond_2
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_8

    const-string v1, "<"

    .line 14
    invoke-virtual {p1, v1}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ">"

    goto :goto_1

    :cond_3
    const-string v1, "{"

    .line 15
    invoke-virtual {p1, v1}, Lcom/google/protobuf/j1$else;->for(Ljava/lang/String;)V

    const-string v1, "}"

    :goto_1
    move-object v11, v1

    .line 16
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object v1

    const-string v2, "google.protobuf.Any"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "["

    .line 17
    invoke-virtual {p1, v1}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/finally;->try(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally;

    move-result-object v0

    .line 19
    invoke-interface {v9, v10, v0}, Lcom/google/protobuf/MessageReflection$MergeTarget;->newMergeTargetForField(Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/Message;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    move-result-object v12

    .line 20
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v12

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    .line 21
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/j1$new;->goto(Lcom/google/protobuf/j1$else;Lcom/google/protobuf/protected;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/k1$if;Ljava/util/List;Lcom/google/protobuf/Descriptors$if;)V

    .line 22
    invoke-interface {v12}, Lcom/google/protobuf/MessageReflection$MergeTarget;->finish()Ljava/lang/Object;

    move-result-object v0

    .line 23
    invoke-virtual {p1, v11}, Lcom/google/protobuf/j1$else;->for(Ljava/lang/String;)V

    :goto_2
    move-object v3, v0

    goto/16 :goto_5

    :cond_4
    if-nez v0, :cond_5

    goto :goto_3

    .line 24
    :cond_5
    iget-object v3, v0, Lcom/google/protobuf/protected$for;->if:Lcom/google/protobuf/Message;

    .line 25
    :goto_3
    invoke-interface {v9, v10, v3}, Lcom/google/protobuf/MessageReflection$MergeTarget;->newMergeTargetForField(Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/Message;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    move-result-object v12

    .line 26
    :goto_4
    invoke-virtual {p1, v11}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 27
    invoke-virtual {p1}, Lcom/google/protobuf/j1$else;->if()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v12

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/j1$new;->this(Lcom/google/protobuf/j1$else;Lcom/google/protobuf/protected;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/k1$if;Ljava/util/List;)V

    goto :goto_4

    .line 29
    :cond_6
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Expected \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/j1$else;->throws(Ljava/lang/String;)Lcom/google/protobuf/j1$for;

    move-result-object v0

    throw v0

    .line 30
    :cond_7
    invoke-interface {v12}, Lcom/google/protobuf/MessageReflection$MergeTarget;->finish()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 31
    :cond_8
    sget-object v0, Lcom/google/protobuf/j1$do;->if:[I

    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 32
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t get here."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :pswitch_1
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$else;->final()Lcom/google/protobuf/Descriptors$try;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/google/protobuf/j1$else;->static()Z

    move-result v1

    const-string v2, "Enum type \""

    if-eqz v1, :cond_a

    .line 35
    invoke-virtual {p1}, Lcom/google/protobuf/j1$else;->break()I

    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$try;->else(I)Lcom/google/protobuf/Descriptors$case;

    move-result-object v3

    if-nez v3, :cond_c

    .line 37
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$try;->if()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" has no value with number "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 38
    iget-boolean v6, v7, Lcom/google/protobuf/j1$new;->for:Z

    if-eqz v6, :cond_9

    .line 39
    invoke-static {}, Lcom/google/protobuf/j1;->if()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 40
    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$try;->if()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x32

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Lcom/google/protobuf/j1$else;->default(Ljava/lang/String;)Lcom/google/protobuf/j1$for;

    move-result-object v0

    throw v0

    .line 42
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/j1$else;->this()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$try;->case(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$case;

    move-result-object v3

    if-nez v3, :cond_c

    .line 44
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$try;->if()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x23

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" has no value named \""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-boolean v1, v7, Lcom/google/protobuf/j1$new;->for:Z

    if-eqz v1, :cond_b

    .line 46
    invoke-static {}, Lcom/google/protobuf/j1;->if()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 47
    :cond_b
    invoke-virtual {p1, v0}, Lcom/google/protobuf/j1$else;->default(Ljava/lang/String;)Lcom/google/protobuf/j1$for;

    move-result-object v0

    throw v0

    .line 48
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/j1$else;->try()Lcom/google/protobuf/ByteString;

    move-result-object v3

    goto :goto_5

    .line 49
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/j1$else;->class()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 50
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/j1$else;->final()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_5

    .line 51
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/j1$else;->const()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5

    .line 52
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/j1$else;->else()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_5

    .line 53
    :pswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/j1$else;->goto()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_5

    .line 54
    :pswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/j1$else;->new()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_5

    .line 55
    :pswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/j1$else;->catch()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_5

    .line 56
    :pswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/j1$else;->break()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 57
    :cond_c
    :goto_5
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 58
    invoke-interface {v9, v10, v3}, Lcom/google/protobuf/MessageReflection$MergeTarget;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    goto :goto_6

    .line 59
    :cond_d
    invoke-interface {v9, v10, v3}, Lcom/google/protobuf/MessageReflection$MergeTarget;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static super(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1000

    .line 2
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {p0, v1}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private this(Lcom/google/protobuf/j1$else;Lcom/google/protobuf/protected;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/k1$if;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/j1$else;",
            "Lcom/google/protobuf/protected;",
            "Lcom/google/protobuf/MessageReflection$MergeTarget;",
            "Lcom/google/protobuf/k1$if;",
            "Ljava/util/List<",
            "Lcom/google/protobuf/j1$new$for;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move-object/from16 v7, p5

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/j1$else;->while()I

    move-result v10

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/j1$else;->throw()I

    move-result v11

    .line 3
    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/MessageReflection$MergeTarget;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

    move-result-object v6

    .line 4
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google.protobuf.Any"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "["

    if-eqz v0, :cond_0

    invoke-virtual {v8, v1}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/j1$new;->goto(Lcom/google/protobuf/j1$else;Lcom/google/protobuf/protected;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/k1$if;Ljava/util/List;Lcom/google/protobuf/Descriptors$if;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {v8, v1}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ":\t"

    const-string v2, "."

    const-string v4, ":"

    if-eqz v0, :cond_4

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/j1$else;->this()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-virtual {v8, v2}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x2e

    .line 9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/j1$else;->this()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, p2

    move-object/from16 v12, p3

    invoke-interface {v12, v5, v2}, Lcom/google/protobuf/MessageReflection$MergeTarget;->findExtensionByName(Lcom/google/protobuf/protected;Ljava/lang/String;)Lcom/google/protobuf/protected$for;

    move-result-object v2

    const-string v13, "]"

    if-nez v2, :cond_2

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/j1$else;->native()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/j1$else;->import()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    .line 14
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v17

    add-int v3, v16, v17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/protobuf/j1$new$for;

    sget-object v3, Lcom/google/protobuf/j1$new$for$do;->EXTENSION:Lcom/google/protobuf/j1$new$for$do;

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/j1$new$for;-><init>(Ljava/lang/String;Lcom/google/protobuf/j1$new$for$do;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto :goto_1

    .line 16
    :cond_2
    iget-object v1, v2, Lcom/google/protobuf/protected$for;->do:Lcom/google/protobuf/Descriptors$else;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object v1

    if-ne v1, v6, :cond_3

    .line 17
    iget-object v3, v2, Lcom/google/protobuf/protected$for;->do:Lcom/google/protobuf/Descriptors$else;

    .line 18
    :goto_1
    invoke-virtual {v8, v13}, Lcom/google/protobuf/j1$else;->for(Ljava/lang/String;)V

    move-object v5, v2

    move-object v13, v3

    goto/16 :goto_2

    .line 19
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Extension \""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" does not extend message type \""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {v8, v0}, Lcom/google/protobuf/j1$else;->default(Ljava/lang/String;)Lcom/google/protobuf/j1$for;

    move-result-object v0

    throw v0

    :cond_4
    move-object/from16 v12, p3

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/j1$else;->this()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {v6, v0}, Lcom/google/protobuf/Descriptors$if;->this(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$else;

    move-result-object v3

    if-nez v3, :cond_5

    .line 24
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual {v6, v3}, Lcom/google/protobuf/Descriptors$if;->this(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$else;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 26
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v5

    sget-object v13, Lcom/google/protobuf/Descriptors$else$if;->GROUP:Lcom/google/protobuf/Descriptors$else$if;

    if-eq v5, v13, :cond_5

    const/4 v3, 0x0

    :cond_5
    if-eqz v3, :cond_6

    .line 27
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v5

    sget-object v13, Lcom/google/protobuf/Descriptors$else$if;->GROUP:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v5, v13, :cond_6

    .line 28
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$if;->for()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v3, 0x0

    :cond_6
    if-nez v3, :cond_7

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/j1$else;->native()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/j1$else;->import()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    .line 31
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x1a

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/google/protobuf/j1$new$for;

    sget-object v2, Lcom/google/protobuf/j1$new$for$do;->FIELD:Lcom/google/protobuf/j1$new$for$do;

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/j1$new$for;-><init>(Ljava/lang/String;Lcom/google/protobuf/j1$new$for$do;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object v13, v3

    const/4 v5, 0x0

    :goto_2
    if-nez v13, :cond_9

    .line 33
    invoke-virtual {v8, v4}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "{"

    invoke-virtual {v8, v0}, Lcom/google/protobuf/j1$else;->return(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "<"

    invoke-virtual {v8, v0}, Lcom/google/protobuf/j1$else;->return(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 34
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/j1$new;->final(Lcom/google/protobuf/j1$else;)V

    goto :goto_3

    .line 35
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/j1$new;->const(Lcom/google/protobuf/j1$else;)V

    :goto_3
    return-void

    .line 36
    :cond_9
    invoke-virtual {v13}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v0, v1, :cond_b

    .line 37
    invoke-virtual {v8, v4}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    if-eqz v9, :cond_a

    .line 38
    invoke-virtual {v9, v13}, Lcom/google/protobuf/k1$if;->if(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/k1$if;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v13

    move-object/from16 v7, p5

    .line 39
    invoke-direct/range {v0 .. v7}, Lcom/google/protobuf/j1$new;->for(Lcom/google/protobuf/j1$else;Lcom/google/protobuf/protected;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/protected$for;Lcom/google/protobuf/k1$if;Ljava/util/List;)V

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v13

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 40
    invoke-direct/range {v0 .. v7}, Lcom/google/protobuf/j1$new;->for(Lcom/google/protobuf/j1$else;Lcom/google/protobuf/protected;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/protected$for;Lcom/google/protobuf/k1$if;Ljava/util/List;)V

    goto :goto_4

    .line 41
    :cond_b
    invoke-virtual {v8, v4}, Lcom/google/protobuf/j1$else;->for(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v13

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 42
    invoke-direct/range {v0 .. v7}, Lcom/google/protobuf/j1$new;->for(Lcom/google/protobuf/j1$else;Lcom/google/protobuf/protected;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/protected$for;Lcom/google/protobuf/k1$if;Ljava/util/List;)V

    :goto_4
    if-eqz v9, :cond_c

    .line 43
    invoke-static {v10, v11}, Landroid/support/v4/e62;->do(II)Landroid/support/v4/e62;

    move-result-object v0

    invoke-virtual {v9, v13, v0}, Lcom/google/protobuf/k1$if;->for(Lcom/google/protobuf/Descriptors$else;Landroid/support/v4/e62;)Lcom/google/protobuf/k1$if;

    :cond_c
    const-string v0, ";"

    .line 44
    invoke-virtual {v8, v0}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, ","

    .line 45
    invoke-virtual {v8, v0}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    :cond_d
    return-void
.end method


# virtual methods
.method public case(Ljava/lang/Readable;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/j1$new;->super(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/j1$new;->new(Ljava/lang/CharSequence;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method

.method public else(Ljava/lang/Readable;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/protected;->static()Lcom/google/protobuf/protected;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/protobuf/j1$new;->case(Ljava/lang/Readable;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method

.method public new(Ljava/lang/CharSequence;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/j1$else;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/j1$else;-><init>(Ljava/lang/CharSequence;Lcom/google/protobuf/j1$do;)V

    .line 2
    new-instance p1, Lcom/google/protobuf/MessageReflection$if;

    invoke-direct {p1, p3}, Lcom/google/protobuf/MessageReflection$if;-><init>(Lcom/google/protobuf/Message$Builder;)V

    .line 3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcom/google/protobuf/j1$else;->if()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/google/protobuf/j1$new;->break(Lcom/google/protobuf/j1$else;Lcom/google/protobuf/protected;Lcom/google/protobuf/MessageReflection$MergeTarget;Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/protobuf/j1$new;->do(Ljava/util/List;)V

    return-void
.end method

.method public try(Ljava/lang/CharSequence;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/protected;->static()Lcom/google/protobuf/protected;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/protobuf/j1$new;->new(Ljava/lang/CharSequence;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method
