.class public abstract Lcom/google/protobuf/GeneratedMessage$goto;
.super Lcom/google/protobuf/GeneratedMessage$case;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessage$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "goto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/GeneratedMessage$this;",
        "BuilderType:",
        "Lcom/google/protobuf/GeneratedMessage$goto<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/protobuf/GeneratedMessage$case<",
        "TBuilderType;>;",
        "Lcom/google/protobuf/GeneratedMessage$ExtendableMessageOrBuilder<",
        "TMessageType;>;"
    }
.end annotation


# instance fields
.field private try:Lcom/google/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/Descriptors$else;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$case;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/protobuf/FieldSet;->native()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$case;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 4
    invoke-static {}, Lcom/google/protobuf/FieldSet;->native()Lcom/google/protobuf/FieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    return-void
.end method

.method private extends()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->abstract()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->catch()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    :cond_0
    return-void
.end method

.method public static synthetic final(Lcom/google/protobuf/GeneratedMessage$goto;)Lcom/google/protobuf/FieldSet;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$goto;->native()Lcom/google/protobuf/FieldSet;

    move-result-object p0

    return-object p0
.end method

.method private instanceof(Lcom/google/protobuf/Descriptors$else;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

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

.method private native()Lcom/google/protobuf/FieldSet;
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
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->protected()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    return-object v0
.end method

.method private synchronized(Lcom/google/protobuf/volatile;)V
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
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

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
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

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


# virtual methods
.method public final abstract(Lcom/google/protobuf/volatile;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessage$goto;->strictfp(Lcom/google/protobuf/interface;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$goto;->import(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object p1

    return-object p1
.end method

.method public break(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/t1$if;Lcom/google/protobuf/implements;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

    move-result-object v3

    new-instance v4, Lcom/google/protobuf/MessageReflection$if;

    invoke-direct {v4, p0}, Lcom/google/protobuf/MessageReflection$if;-><init>(Lcom/google/protobuf/Message$Builder;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v5, p4

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/MessageReflection;->else(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/t1$if;Lcom/google/protobuf/implements;Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/MessageReflection$MergeTarget;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic case()Lcom/google/protobuf/GeneratedMessage$case;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$goto;->default()Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic catch(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$case;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$goto;->transient(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic class(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$case;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessage$goto;->implements(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$goto;->public()Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$goto;->public()Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$goto;->public()Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->throws(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$goto;->default()Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$goto;->default()Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$goto;->default()Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$goto;->default()Lcom/google/protobuf/GeneratedMessage$goto;

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
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$goto;->default()Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object v0

    return-object v0
.end method

.method public final continue(Lcom/google/protobuf/volatile;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;
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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$goto;->volatile(Lcom/google/protobuf/interface;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object p1

    return-object p1
.end method

.method public default()Lcom/google/protobuf/GeneratedMessage$goto;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$case;->case()Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessage$goto;

    return-object v0
.end method

.method public finally()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->continue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic for()Lcom/google/protobuf/GeneratedMessage$case;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$goto;->public()Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object v0

    return-object v0
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
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessage$case;->do(Lcom/google/protobuf/GeneratedMessage$case;)Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/FieldSet;->public()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3
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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->getExtension(Lcom/google/protobuf/interface;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$goto;->getExtension(Lcom/google/protobuf/interface;I)Ljava/lang/Object;

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
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessage;->access$500(Lcom/google/protobuf/interface;)Lcom/google/protobuf/volatile;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->synchronized(Lcom/google/protobuf/volatile;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/FieldSet;->return(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v1, v2, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->break()Lcom/google/protobuf/Message;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->const()Ljava/lang/Object;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/protobuf/volatile;->else(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :cond_2
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
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessage;->access$500(Lcom/google/protobuf/interface;)Lcom/google/protobuf/volatile;

    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->synchronized(Lcom/google/protobuf/volatile;)V

    .line 14
    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    .line 16
    invoke-virtual {v1, v0, p2}, Lcom/google/protobuf/FieldSet;->throws(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Lcom/google/protobuf/volatile;->class(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->getExtension(Lcom/google/protobuf/interface;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$goto;->getExtension(Lcom/google/protobuf/interface;I)Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->getExtensionCount(Lcom/google/protobuf/interface;)I

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
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessage;->access$500(Lcom/google/protobuf/interface;)Lcom/google/protobuf/volatile;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->synchronized(Lcom/google/protobuf/volatile;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->default(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->getExtensionCount(Lcom/google/protobuf/interface;)I

    move-result p1

    return p1
.end method

.method public getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->instanceof(Lcom/google/protobuf/Descriptors$else;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->return(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/finally;->try(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->const()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    .line 7
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$case;->getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedField(Lcom/google/protobuf/Descriptors$else;I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->instanceof(Lcom/google/protobuf/Descriptors$else;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->throws(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$case;->getRepeatedField(Lcom/google/protobuf/Descriptors$else;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$else;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->instanceof(Lcom/google/protobuf/Descriptors$else;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->default(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$case;->getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$else;)I

    move-result p1

    return p1
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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->hasExtension(Lcom/google/protobuf/interface;)Z

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
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessage;->access$500(Lcom/google/protobuf/interface;)Lcom/google/protobuf/volatile;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->synchronized(Lcom/google/protobuf/volatile;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->package(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->hasExtension(Lcom/google/protobuf/interface;)Z

    move-result p1

    return p1
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$else;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->instanceof(Lcom/google/protobuf/Descriptors$else;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->package(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$case;->hasField(Lcom/google/protobuf/Descriptors$else;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic if(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$case;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$goto;->import(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object p1

    return-object p1
.end method

.method public implements(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;
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
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->instanceof(Lcom/google/protobuf/Descriptors$else;)V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$goto;->extends()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/FieldSet;->c(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->onChanged()V

    return-object p0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessage$case;->class(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessage$goto;

    return-object p1
.end method

.method public import(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;
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
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->instanceof(Lcom/google/protobuf/Descriptors$else;)V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$goto;->extends()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->goto(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->onChanged()V

    return-object p0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$case;->if(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessage$goto;

    return-object p1
.end method

.method public interface(Lcom/google/protobuf/GeneratedMessage$break;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessage$goto;->strictfp(Lcom/google/protobuf/interface;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object p1

    return-object p1
.end method

.method public isInitialized()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$case;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$goto;->finally()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic new(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessage$case;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->throws(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object p1

    return-object p1
.end method

.method public package(Lcom/google/protobuf/FieldSet;)V
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
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    return-void
.end method

.method public final private(Lcom/google/protobuf/GeneratedMessage$this;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$goto;->extends()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessage$this;->access$600(Lcom/google/protobuf/GeneratedMessage$this;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->transient(Lcom/google/protobuf/FieldSet;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->onChanged()V

    return-void
.end method

.method public protected(Lcom/google/protobuf/GeneratedMessage$break;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;
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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$goto;->volatile(Lcom/google/protobuf/interface;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object p1

    return-object p1
.end method

.method public public()Lcom/google/protobuf/GeneratedMessage$goto;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/FieldSet;->native()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    .line 2
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$case;->for()Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessage$goto;

    return-object v0
.end method

.method public final return(Lcom/google/protobuf/volatile;)Lcom/google/protobuf/GeneratedMessage$goto;
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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->static(Lcom/google/protobuf/interface;)Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$goto;->transient(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessage$goto;->implements(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object p1

    return-object p1
.end method

.method public final static(Lcom/google/protobuf/interface;)Lcom/google/protobuf/GeneratedMessage$goto;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/interface<",
            "TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessage;->access$500(Lcom/google/protobuf/interface;)Lcom/google/protobuf/volatile;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->synchronized(Lcom/google/protobuf/volatile;)V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$goto;->extends()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->break(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->onChanged()V

    return-object p0
.end method

.method public final strictfp(Lcom/google/protobuf/interface;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;
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
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessage;->access$500(Lcom/google/protobuf/interface;)Lcom/google/protobuf/volatile;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->synchronized(Lcom/google/protobuf/volatile;)V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$goto;->extends()V

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/protobuf/volatile;->const(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    invoke-virtual {v1, v0, p2, p1}, Lcom/google/protobuf/FieldSet;->c(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->onChanged()V

    return-object p0
.end method

.method public final super(Lcom/google/protobuf/volatile;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;
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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$goto;->throw(Lcom/google/protobuf/interface;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object p1

    return-object p1
.end method

.method public switch(Lcom/google/protobuf/GeneratedMessage$break;)Lcom/google/protobuf/GeneratedMessage$goto;
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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->static(Lcom/google/protobuf/interface;)Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object p1

    return-object p1
.end method

.method public final throw(Lcom/google/protobuf/interface;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;
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
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessage;->access$500(Lcom/google/protobuf/interface;)Lcom/google/protobuf/volatile;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->synchronized(Lcom/google/protobuf/volatile;)V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$goto;->extends()V

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/protobuf/volatile;->const(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/FieldSet;->goto(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->onChanged()V

    return-object p0
.end method

.method public throws(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessage$goto;
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
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->instanceof(Lcom/google/protobuf/Descriptors$else;)V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$goto;->extends()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->break(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->onChanged()V

    return-object p0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$case;->new(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessage$goto;

    return-object p1
.end method

.method public transient(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;
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
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->instanceof(Lcom/google/protobuf/Descriptors$else;)V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$goto;->extends()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->b(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->onChanged()V

    return-object p0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$case;->catch(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessage$goto;

    return-object p1
.end method

.method public final volatile(Lcom/google/protobuf/interface;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;
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
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessage;->access$500(Lcom/google/protobuf/interface;)Lcom/google/protobuf/volatile;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$goto;->synchronized(Lcom/google/protobuf/volatile;)V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$goto;->extends()V

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessage$goto;->try:Lcom/google/protobuf/FieldSet;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/volatile;->final(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/FieldSet;->b(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$case;->onChanged()V

    return-object p0
.end method

.method public while(Lcom/google/protobuf/GeneratedMessage$break;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;
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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$goto;->throw(Lcom/google/protobuf/interface;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$goto;

    move-result-object p1

    return-object p1
.end method
