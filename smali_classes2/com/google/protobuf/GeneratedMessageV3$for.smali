.class public abstract Lcom/google/protobuf/GeneratedMessageV3$for;
.super Lcom/google/protobuf/GeneratedMessageV3$if;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/GeneratedMessageV3$new;",
        "BuilderType:",
        "Lcom/google/protobuf/GeneratedMessageV3$for<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/protobuf/GeneratedMessageV3$if<",
        "TBuilderType;>;",
        "Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessageOrBuilder<",
        "TMessageType;>;"
    }
.end annotation


# instance fields
.field private do:Lcom/google/protobuf/FieldSet$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/FieldSet$if<",
            "Lcom/google/protobuf/Descriptors$else;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private case()Lcom/google/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/Descriptors$else;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/protobuf/FieldSet;->native()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet$if;->if()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private class()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/protobuf/FieldSet;->instanceof()Lcom/google/protobuf/FieldSet$if;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    :cond_0
    return-void
.end method

.method private default(Lcom/google/protobuf/volatile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/volatile<",
            "TMessageType;*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3e

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Extension is for type \""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" which does not match message type \""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic do(Lcom/google/protobuf/GeneratedMessageV3$for;)Lcom/google/protobuf/FieldSet;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$for;->case()Lcom/google/protobuf/FieldSet;

    move-result-object p0

    return-object p0
.end method

.method private throws(Lcom/google/protobuf/Descriptors$else;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$for;->try(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$for;->try(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;

    move-result-object p1

    return-object p1
.end method

.method public break(Lcom/google/protobuf/GeneratedMessage$break;)Lcom/google/protobuf/GeneratedMessageV3$for;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$break<",
            "TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->this(Lcom/google/protobuf/interface;)Lcom/google/protobuf/GeneratedMessageV3$for;

    move-result-object p1

    return-object p1
.end method

.method public catch(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$for;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$else;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->throws(Lcom/google/protobuf/Descriptors$else;)V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$for;->class()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet$if;->for(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessageV3$for;

    return-object p1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$for;->else()Lcom/google/protobuf/GeneratedMessageV3$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$for;->else()Lcom/google/protobuf/GeneratedMessageV3$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$for;->else()Lcom/google/protobuf/GeneratedMessageV3$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$for;->else()Lcom/google/protobuf/GeneratedMessageV3$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->catch(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->catch(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$for;

    move-result-object p1

    return-object p1
.end method

.method public const()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet$if;->const()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public else()Lcom/google/protobuf/GeneratedMessageV3$for;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    .line 2
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clear()Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageV3$for;

    return-object v0
.end method

.method public final(Lcom/google/protobuf/FieldSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/Descriptors$else;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/FieldSet$if;->try(Lcom/google/protobuf/FieldSet;)Lcom/google/protobuf/FieldSet$if;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    return-void
.end method

.method public final for(Lcom/google/protobuf/interface;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/interface<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageV3;->access$500(Lcom/google/protobuf/interface;)Lcom/google/protobuf/volatile;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->default(Lcom/google/protobuf/volatile;)V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$for;->class()V

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/protobuf/volatile;->const(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/FieldSet$if;->do(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$else;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->access$900(Lcom/google/protobuf/GeneratedMessageV3$if;)Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/google/protobuf/FieldSet$if;->case()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getExtension(Lcom/google/protobuf/GeneratedMessage$break;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$break<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->getExtension(Lcom/google/protobuf/interface;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/google/protobuf/GeneratedMessage$break;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$break<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$for;->getExtension(Lcom/google/protobuf/interface;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/google/protobuf/interface;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/interface<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageV3;->access$500(Lcom/google/protobuf/interface;)Lcom/google/protobuf/volatile;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->default(Lcom/google/protobuf/volatile;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/protobuf/FieldSet$if;->else(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v1, v2, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->break()Lcom/google/protobuf/Message;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->const()Ljava/lang/Object;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/protobuf/volatile;->else(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :cond_3
    invoke-virtual {p1, v1}, Lcom/google/protobuf/volatile;->else(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/google/protobuf/interface;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/interface<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    .line 12
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageV3;->access$500(Lcom/google/protobuf/interface;)Lcom/google/protobuf/volatile;

    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->default(Lcom/google/protobuf/volatile;)V

    .line 14
    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1, v0, p2}, Lcom/google/protobuf/FieldSet$if;->this(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/volatile;->class(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final getExtension(Lcom/google/protobuf/volatile;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/volatile<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->getExtension(Lcom/google/protobuf/interface;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/google/protobuf/volatile;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/volatile<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$for;->getExtension(Lcom/google/protobuf/interface;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtensionCount(Lcom/google/protobuf/GeneratedMessage$break;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$break<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->getExtensionCount(Lcom/google/protobuf/interface;)I

    move-result p1

    return p1
.end method

.method public final getExtensionCount(Lcom/google/protobuf/interface;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/interface<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageV3;->access$500(Lcom/google/protobuf/interface;)Lcom/google/protobuf/volatile;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->default(Lcom/google/protobuf/volatile;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet$if;->catch(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final getExtensionCount(Lcom/google/protobuf/volatile;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/volatile<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->getExtensionCount(Lcom/google/protobuf/interface;)I

    move-result p1

    return p1
.end method

.method public getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->throws(Lcom/google/protobuf/Descriptors$else;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet$if;->else(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/finally;->try(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->const()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    .line 7
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFieldBuilder(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->throws(Lcom/google/protobuf/Descriptors$else;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v0, v1, :cond_3

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$for;->class()V

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet$if;->goto(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/finally;->goto(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally$if;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    invoke-virtual {v1, p1, v0}, Lcom/google/protobuf/FieldSet$if;->public(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object v0

    .line 9
    :cond_0
    instance-of v1, v0, Lcom/google/protobuf/Message$Builder;

    if-eqz v1, :cond_1

    .line 10
    check-cast v0, Lcom/google/protobuf/Message$Builder;

    return-object v0

    .line 11
    :cond_1
    instance-of v1, v0, Lcom/google/protobuf/Message;

    if-eqz v1, :cond_2

    .line 12
    check-cast v0, Lcom/google/protobuf/Message;

    invoke-interface {v0}, Lcom/google/protobuf/Message;->toBuilder()Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    invoke-virtual {v1, p1, v0}, Lcom/google/protobuf/FieldSet$if;->public(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object v0

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getRepeatedFieldBuilder() called on a non-Message type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getFieldBuilder() called on a non-Message type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->getFieldBuilder(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedField(Lcom/google/protobuf/Descriptors$else;I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->throws(Lcom/google/protobuf/Descriptors$else;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet$if;->this(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 6
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->getRepeatedField(Lcom/google/protobuf/Descriptors$else;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldBuilder(Lcom/google/protobuf/Descriptors$else;I)Lcom/google/protobuf/Message$Builder;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->throws(Lcom/google/protobuf/Descriptors$else;)V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$for;->class()V

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    const-string v2, "getRepeatedFieldBuilder() called on a non-Message type."

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet$if;->break(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/protobuf/Message$Builder;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Lcom/google/protobuf/Message$Builder;

    return-object v0

    .line 8
    :cond_0
    instance-of v1, v0, Lcom/google/protobuf/Message;

    if-eqz v1, :cond_1

    .line 9
    check-cast v0, Lcom/google/protobuf/Message;

    invoke-interface {v0}, Lcom/google/protobuf/Message;->toBuilder()Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/protobuf/FieldSet$if;->return(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object v0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->getRepeatedFieldBuilder(Lcom/google/protobuf/Descriptors$else;I)Lcom/google/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$else;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->throws(Lcom/google/protobuf/Descriptors$else;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet$if;->catch(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    :goto_0
    return p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$else;)I

    move-result p1

    return p1
.end method

.method public final goto(Lcom/google/protobuf/volatile;)Lcom/google/protobuf/GeneratedMessageV3$for;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/volatile<",
            "TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->this(Lcom/google/protobuf/interface;)Lcom/google/protobuf/GeneratedMessageV3$for;

    move-result-object p1

    return-object p1
.end method

.method public final hasExtension(Lcom/google/protobuf/GeneratedMessage$break;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$break<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->hasExtension(Lcom/google/protobuf/interface;)Z

    move-result p1

    return p1
.end method

.method public final hasExtension(Lcom/google/protobuf/interface;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/interface<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageV3;->access$500(Lcom/google/protobuf/interface;)Lcom/google/protobuf/volatile;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->default(Lcom/google/protobuf/volatile;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet$if;->class(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public final hasExtension(Lcom/google/protobuf/volatile;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/volatile<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->hasExtension(Lcom/google/protobuf/interface;)Z

    move-result p1

    return p1
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$else;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->throws(Lcom/google/protobuf/Descriptors$else;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet$if;->class(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    :goto_0
    return p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->hasField(Lcom/google/protobuf/Descriptors$else;)Z

    move-result p1

    return p1
.end method

.method public final if(Lcom/google/protobuf/volatile;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/volatile<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$for;->for(Lcom/google/protobuf/interface;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;

    move-result-object p1

    return-object p1
.end method

.method public final import(Lcom/google/protobuf/interface;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/interface<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageV3;->access$500(Lcom/google/protobuf/interface;)Lcom/google/protobuf/volatile;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->default(Lcom/google/protobuf/volatile;)V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$for;->class()V

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/protobuf/volatile;->const(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    invoke-virtual {v1, v0, p2, p1}, Lcom/google/protobuf/FieldSet$if;->return(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public isInitialized()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$for;->const()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final native(Lcom/google/protobuf/interface;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/interface<",
            "TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageV3;->access$500(Lcom/google/protobuf/interface;)Lcom/google/protobuf/volatile;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->default(Lcom/google/protobuf/volatile;)V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$for;->class()V

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/volatile;->final(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/FieldSet$if;->public(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public new(Lcom/google/protobuf/GeneratedMessage$break;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$break<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$for;->for(Lcom/google/protobuf/interface;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;

    move-result-object p1

    return-object p1
.end method

.method public newBuilderForField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/finally;->goto(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally$if;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->newBuilderForField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method public public(Lcom/google/protobuf/GeneratedMessage$break;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$break<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$for;->import(Lcom/google/protobuf/interface;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;

    move-result-object p1

    return-object p1
.end method

.method public return(Lcom/google/protobuf/GeneratedMessage$break;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$break<",
            "TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$for;->native(Lcom/google/protobuf/interface;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$for;->static(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$for;->static(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$for;->switch(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$for;->switch(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;

    move-result-object p1

    return-object p1
.end method

.method public static(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$else;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->throws(Lcom/google/protobuf/Descriptors$else;)V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$for;->class()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet$if;->public(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessageV3$for;

    return-object p1
.end method

.method public final super(Lcom/google/protobuf/GeneratedMessageV3$new;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageV3$new;->access$600(Lcom/google/protobuf/GeneratedMessageV3$new;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$for;->class()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageV3$new;->access$600(Lcom/google/protobuf/GeneratedMessageV3$new;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet$if;->final(Lcom/google/protobuf/FieldSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    :cond_0
    return-void
.end method

.method public switch(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$else;",
            "I",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->throws(Lcom/google/protobuf/Descriptors$else;)V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$for;->class()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/FieldSet$if;->return(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$if;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessageV3$for;

    return-object p1
.end method

.method public final this(Lcom/google/protobuf/interface;)Lcom/google/protobuf/GeneratedMessageV3$for;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/interface<",
            "TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageV3;->access$500(Lcom/google/protobuf/interface;)Lcom/google/protobuf/volatile;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->default(Lcom/google/protobuf/volatile;)V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$for;->class()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet$if;->for(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public final throw(Lcom/google/protobuf/volatile;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/volatile<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$for;->import(Lcom/google/protobuf/interface;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;

    move-result-object p1

    return-object p1
.end method

.method public try(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$else;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$for;->throws(Lcom/google/protobuf/Descriptors$else;)V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$for;->class()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$for;->do:Lcom/google/protobuf/FieldSet$if;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet$if;->do(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessageV3$for;

    return-object p1
.end method

.method public final while(Lcom/google/protobuf/volatile;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/volatile<",
            "TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$for;->native(Lcom/google/protobuf/interface;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$for;

    move-result-object p1

    return-object p1
.end method
