.class public abstract Lcom/google/protobuf/GeneratedMessage$case;
.super Lcom/google/protobuf/AbstractMessage$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "case"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMessage$case$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lcom/google/protobuf/GeneratedMessage$case<",
        "TBuilderType;>;>",
        "Lcom/google/protobuf/AbstractMessage$do<",
        "TBuilderType;>;"
    }
.end annotation


# instance fields
.field private do:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

.field private for:Z

.field private if:Lcom/google/protobuf/GeneratedMessage$case$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$case<",
            "TBuilderType;>.do;"
        }
    .end annotation
.end field

.field private new:Lcom/google/protobuf/t1;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessage$case;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessage$do;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/protobuf/t1;->for()Lcom/google/protobuf/t1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$case;->new:Lcom/google/protobuf/t1;

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$case;->do:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    return-void
.end method

.method public static synthetic do(Lcom/google/protobuf/GeneratedMessage$case;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$case;->getAllFieldsMutable()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private getAllFieldsMutable()Ljava/util/Map;
    .locals 6
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
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->goto()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->do(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/Descriptors$if;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$if;->super()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$else;

    .line 6
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$else;->catch()Lcom/google/protobuf/Descriptors$break;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$break;->class()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    .line 8
    invoke-virtual {p0, v4}, Lcom/google/protobuf/GeneratedMessage$case;->hasOneof(Lcom/google/protobuf/Descriptors$break;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/protobuf/GeneratedMessage$case;->getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Descriptors$else;

    move-result-object v3

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {p0, v3}, Lcom/google/protobuf/GeneratedMessage$case;->getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 12
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 13
    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/protobuf/GeneratedMessage$case;->hasField(Lcom/google/protobuf/Descriptors$else;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/protobuf/GeneratedMessage$case;->getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$case;->if(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object p1

    return-object p1
.end method

.method public break(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/t1$if;Lcom/google/protobuf/implements;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p4, p1}, Lcom/google/protobuf/t1$if;->final(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p1

    return p1
.end method

.method public case()Lcom/google/protobuf/GeneratedMessage$case;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/MessageOrBuilder;->getDefaultInstanceForType()Lcom/google/protobuf/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessage$case;

    .line 2
    invoke-interface {p0}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    return-object v0
.end method

.method public catch(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$case;
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
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->goto()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->new(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->set(Lcom/google/protobuf/GeneratedMessage$case;Ljava/lang/Object;)V

    return-object p0
.end method

.method public class(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$case;
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
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->goto()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->new(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    .line 2
    invoke-interface {p1, p0, p2, p3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->setRepeated(Lcom/google/protobuf/GeneratedMessage$case;ILjava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->for()Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->for()Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->for()Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$case;->new(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$case;->try(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$case;->try(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->case()Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->case()Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->case()Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->case()Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->case()Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object v0

    return-object v0
.end method

.method public const(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessage$case;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t1;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$case;->new:Lcom/google/protobuf/t1;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->onChanged()V

    return-object p0
.end method

.method dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$case;->do:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    return-void
.end method

.method public else()Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$case;->if:Lcom/google/protobuf/GeneratedMessage$case$do;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$case$do;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/GeneratedMessage$case$do;-><init>(Lcom/google/protobuf/GeneratedMessage$case;Lcom/google/protobuf/GeneratedMessage$do;)V

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$case;->if:Lcom/google/protobuf/GeneratedMessage$case$do;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$case;->if:Lcom/google/protobuf/GeneratedMessage$case$do;

    return-object v0
.end method

.method public for()Lcom/google/protobuf/GeneratedMessage$case;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/t1;->for()Lcom/google/protobuf/t1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$case;->new:Lcom/google/protobuf/t1;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->onChanged()V

    return-object p0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 1
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
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$case;->getAllFieldsMutable()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->goto()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->do(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->goto()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->new(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->get(Lcom/google/protobuf/GeneratedMessage$case;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public getFieldBuilder(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->goto()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->new(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->getBuilder(Lcom/google/protobuf/GeneratedMessage$case;)Lcom/google/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Descriptors$else;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->goto()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->if(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$if;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$if;->if(Lcom/google/protobuf/GeneratedMessage$case;)Lcom/google/protobuf/Descriptors$else;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedField(Lcom/google/protobuf/Descriptors$else;I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->goto()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->new(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    .line 2
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->getRepeated(Lcom/google/protobuf/GeneratedMessage$case;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldBuilder(Lcom/google/protobuf/Descriptors$else;I)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->goto()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->new(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->getRepeatedBuilder(Lcom/google/protobuf/GeneratedMessage$case;I)Lcom/google/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$else;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->goto()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->new(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    .line 2
    invoke-interface {p1, p0}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->getRepeatedCount(Lcom/google/protobuf/GeneratedMessage$case;)I

    move-result p1

    return p1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/t1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$case;->new:Lcom/google/protobuf/t1;

    return-object v0
.end method

.method public abstract goto()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$else;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->goto()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->new(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->has(Lcom/google/protobuf/GeneratedMessage$case;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/google/protobuf/Descriptors$break;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->goto()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->if(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$if;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$if;->new(Lcom/google/protobuf/GeneratedMessage$case;)Z

    move-result p1

    return p1
.end method

.method public if(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$case;
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
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->goto()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->new(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->addRepeated(Lcom/google/protobuf/GeneratedMessage$case;Ljava/lang/Object;)V

    return-object p0
.end method

.method public internalGetMapField(I)Lcom/google/protobuf/MapField;
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "No map fields found in "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public internalGetMutableMapField(I)Lcom/google/protobuf/MapField;
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "No map fields found in "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isClean()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessage$case;->for:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->super()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$else;

    .line 2
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$else;->abstract()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessage$case;->hasField(Lcom/google/protobuf/Descriptors$else;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    .line 4
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v2

    sget-object v4, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v2, v4, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessage$case;->getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Message;

    .line 8
    invoke-interface {v2}, Lcom/google/protobuf/MessageLiteOrBuilder;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    .line 9
    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessage$case;->hasField(Lcom/google/protobuf/Descriptors$else;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessage$case;->getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Message;

    invoke-interface {v1}, Lcom/google/protobuf/MessageLiteOrBuilder;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public markClean()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/protobuf/GeneratedMessage$case;->for:Z

    return-void
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$case;->this(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$case;->this(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object p1

    return-object p1
.end method

.method public new(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessage$case;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$else;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->goto()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->new(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->clear(Lcom/google/protobuf/GeneratedMessage$case;)V

    return-object p0
.end method

.method public newBuilderForField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->goto()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->new(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->newBuilder()Lcom/google/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method public onBuilt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$case;->do:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->markClean()V

    :cond_0
    return-void
.end method

.method public final onChanged()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessage$case;->for:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$case;->do:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/AbstractMessage$BuilderParent;->markDirty()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/protobuf/GeneratedMessage$case;->for:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$case;->catch(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessage$case;->class(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$case;->const(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object p1

    return-object p1
.end method

.method public this(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessage$case;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t1;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$case;->new:Lcom/google/protobuf/t1;

    .line 2
    invoke-static {v0}, Lcom/google/protobuf/t1;->break(Lcom/google/protobuf/t1;)Lcom/google/protobuf/t1$if;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/t1$if;->public(Lcom/google/protobuf/t1;)Lcom/google/protobuf/t1$if;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$case;->new:Lcom/google/protobuf/t1;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->onChanged()V

    return-object p0
.end method

.method public try(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessage$case;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$break;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->goto()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->if(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$if;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$if;->do(Lcom/google/protobuf/GeneratedMessage$case;)V

    return-object p0
.end method
