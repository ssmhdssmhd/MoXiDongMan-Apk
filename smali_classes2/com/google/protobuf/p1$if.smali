.class public final Lcom/google/protobuf/p1$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private final do:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private if:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Descriptors$if;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/p1$if;->do:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/p1$if;->if:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/p1$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/p1$if;-><init>()V

    return-void
.end method

.method private for(Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/p1$if;->do:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->if()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->final()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-direct {p0, v1}, Lcom/google/protobuf/p1$if;->for(Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    .line 5
    invoke-direct {p0, v0}, Lcom/google/protobuf/p1$if;->new(Lcom/google/protobuf/Descriptors$if;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private new(Lcom/google/protobuf/Descriptors$if;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$if;->while()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$if;

    .line 2
    invoke-direct {p0, v1}, Lcom/google/protobuf/p1$if;->new(Lcom/google/protobuf/Descriptors$if;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/p1$if;->if:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/google/protobuf/p1;->do()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Type "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is added multiple times."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/p1$if;->if:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public do(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/p1$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/p1$if;->if:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$if;->do()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/p1$if;->for(Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A TypeRegistry.Builder can only be used once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public if(Ljava/lang/Iterable;)Lcom/google/protobuf/p1$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/protobuf/Descriptors$if;",
            ">;)",
            "Lcom/google/protobuf/p1$if;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/p1$if;->if:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->do()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/p1$if;->for(Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    goto :goto_0

    :cond_0
    return-object p0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A TypeRegistry.Builder can only be used once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public try()Lcom/google/protobuf/p1;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/p1;

    iget-object v1, p0, Lcom/google/protobuf/p1$if;->if:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/google/protobuf/p1;-><init>(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/google/protobuf/p1$if;->if:Ljava/util/Map;

    return-object v0
.end method
