.class public final Lcom/google/protobuf/finally;
.super Lcom/google/protobuf/AbstractMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/finally$if;
    }
.end annotation


# instance fields
.field private final do:Lcom/google/protobuf/Descriptors$if;

.field private final for:[Lcom/google/protobuf/Descriptors$else;

.field private final if:Lcom/google/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/Descriptors$else;",
            ">;"
        }
    .end annotation
.end field

.field private final new:Lcom/google/protobuf/t1;

.field private try:I


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/FieldSet;[Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/t1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$if;",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/Descriptors$else;",
            ">;[",
            "Lcom/google/protobuf/Descriptors$else;",
            "Lcom/google/protobuf/t1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/protobuf/finally;->try:I

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/finally;->do:Lcom/google/protobuf/Descriptors$if;

    .line 4
    iput-object p2, p0, Lcom/google/protobuf/finally;->if:Lcom/google/protobuf/FieldSet;

    .line 5
    iput-object p3, p0, Lcom/google/protobuf/finally;->for:[Lcom/google/protobuf/Descriptors$else;

    .line 6
    iput-object p4, p0, Lcom/google/protobuf/finally;->new:Lcom/google/protobuf/t1;

    return-void
.end method

.method public static catch(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/finally;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/finally;->goto(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally$if;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/finally$if;

    invoke-static {p0}, Lcom/google/protobuf/finally$if;->do(Lcom/google/protobuf/finally$if;)Lcom/google/protobuf/finally;

    move-result-object p0

    return-object p0
.end method

.method public static class(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/protected;)Lcom/google/protobuf/finally;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/finally;->goto(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally$if;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/finally$if;

    invoke-static {p0}, Lcom/google/protobuf/finally$if;->do(Lcom/google/protobuf/finally$if;)Lcom/google/protobuf/finally;

    move-result-object p0

    return-object p0
.end method

.method public static const(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/finally;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/finally;->goto(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally$if;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/finally$if;

    invoke-static {p0}, Lcom/google/protobuf/finally$if;->do(Lcom/google/protobuf/finally$if;)Lcom/google/protobuf/finally;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic do(Lcom/google/protobuf/finally;)Lcom/google/protobuf/Descriptors$if;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/finally;->do:Lcom/google/protobuf/Descriptors$if;

    return-object p0
.end method

.method public static else(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/FieldSet;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$if;",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/Descriptors$else;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$if;->super()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$else;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->abstract()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/protobuf/FieldSet;->package(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->continue()Z

    move-result p0

    return p0
.end method

.method public static final(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/protected;)Lcom/google/protobuf/finally;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/finally;->goto(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally$if;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/finally$if;

    invoke-static {p0}, Lcom/google/protobuf/finally$if;->do(Lcom/google/protobuf/finally$if;)Lcom/google/protobuf/finally;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic for(Lcom/google/protobuf/finally;)Lcom/google/protobuf/t1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/finally;->new:Lcom/google/protobuf/t1;

    return-object p0
.end method

.method public static goto(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally$if;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/finally$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/finally$if;-><init>(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/finally$do;)V

    return-object v0
.end method

.method public static synthetic if(Lcom/google/protobuf/finally;)Lcom/google/protobuf/FieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/finally;->if:Lcom/google/protobuf/FieldSet;

    return-object p0
.end method

.method public static import(Lcom/google/protobuf/Descriptors$if;[BLcom/google/protobuf/protected;)Lcom/google/protobuf/finally;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/finally;->goto(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally$if;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom([BLcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/finally$if;

    invoke-static {p0}, Lcom/google/protobuf/finally$if;->do(Lcom/google/protobuf/finally$if;)Lcom/google/protobuf/finally;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic new(Lcom/google/protobuf/finally;)[Lcom/google/protobuf/Descriptors$else;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/finally;->for:[Lcom/google/protobuf/Descriptors$else;

    return-object p0
.end method

.method private public(Lcom/google/protobuf/Descriptors$else;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/finally;->do:Lcom/google/protobuf/Descriptors$if;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private return(Lcom/google/protobuf/Descriptors$break;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$break;->break()Lcom/google/protobuf/Descriptors$if;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/finally;->do:Lcom/google/protobuf/Descriptors$if;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OneofDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static super(Lcom/google/protobuf/Descriptors$if;Ljava/io/InputStream;)Lcom/google/protobuf/finally;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/finally;->goto(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally$if;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/finally$if;

    invoke-static {p0}, Lcom/google/protobuf/finally$if;->do(Lcom/google/protobuf/finally$if;)Lcom/google/protobuf/finally;

    move-result-object p0

    return-object p0
.end method

.method public static this(Lcom/google/protobuf/Message;)Lcom/google/protobuf/finally$if;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/protobuf/finally$if;

    invoke-interface {p0}, Lcom/google/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/finally$if;-><init>(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/finally$do;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/finally$if;->final(Lcom/google/protobuf/Message;)Lcom/google/protobuf/finally$if;

    move-result-object p0

    return-object p0
.end method

.method public static throw(Lcom/google/protobuf/Descriptors$if;Ljava/io/InputStream;Lcom/google/protobuf/protected;)Lcom/google/protobuf/finally;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/finally;->goto(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally$if;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/finally$if;

    invoke-static {p0}, Lcom/google/protobuf/finally$if;->do(Lcom/google/protobuf/finally$if;)Lcom/google/protobuf/finally;

    move-result-object p0

    return-object p0
.end method

.method public static try(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$if;->extends()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result v0

    .line 2
    new-array v0, v0, [Lcom/google/protobuf/Descriptors$else;

    .line 3
    new-instance v1, Lcom/google/protobuf/finally;

    .line 4
    invoke-static {}, Lcom/google/protobuf/FieldSet;->native()Lcom/google/protobuf/FieldSet;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/google/protobuf/t1;->for()Lcom/google/protobuf/t1;

    move-result-object v3

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/google/protobuf/finally;-><init>(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/FieldSet;[Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/t1;)V

    return-object v1
.end method

.method public static while(Lcom/google/protobuf/Descriptors$if;[B)Lcom/google/protobuf/finally;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/finally;->goto(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally$if;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/finally$if;

    invoke-static {p0}, Lcom/google/protobuf/finally$if;->do(Lcom/google/protobuf/finally$if;)Lcom/google/protobuf/finally;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public break()Lcom/google/protobuf/finally$if;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/protobuf/finally$if;

    iget-object v1, p0, Lcom/google/protobuf/finally;->do:Lcom/google/protobuf/Descriptors$if;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/finally$if;-><init>(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/finally$do;)V

    return-object v0
.end method

.method public case()Lcom/google/protobuf/finally;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/finally;->do:Lcom/google/protobuf/Descriptors$if;

    invoke-static {v0}, Lcom/google/protobuf/finally;->try(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally;

    move-result-object v0

    return-object v0
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
    iget-object v0, p0, Lcom/google/protobuf/finally;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->public()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/finally;->case()Lcom/google/protobuf/finally;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/finally;->case()Lcom/google/protobuf/finally;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/finally;->do:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/finally;->public(Lcom/google/protobuf/Descriptors$else;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/finally;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->return(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/finally;->try(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->const()Ljava/lang/Object;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Descriptors$else;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/finally;->return(Lcom/google/protobuf/Descriptors$break;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/finally;->for:[Lcom/google/protobuf/Descriptors$else;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$break;->final()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/finally;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/finally$do;

    invoke-direct {v0, p0}, Lcom/google/protobuf/finally$do;-><init>(Lcom/google/protobuf/finally;)V

    return-object v0
.end method

.method public getRepeatedField(Lcom/google/protobuf/Descriptors$else;I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/finally;->public(Lcom/google/protobuf/Descriptors$else;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/finally;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->throws(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$else;)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/finally;->public(Lcom/google/protobuf/Descriptors$else;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/finally;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->default(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    return p1
.end method

.method public getSerializedSize()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/finally;->try:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/finally;->do:Lcom/google/protobuf/Descriptors$if;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->native()Lcom/google/protobuf/DescriptorProtos$catch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$catch;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/finally;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->static()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/finally;->new:Lcom/google/protobuf/t1;

    invoke-virtual {v1}, Lcom/google/protobuf/t1;->else()I

    move-result v1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/finally;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->extends()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/google/protobuf/finally;->new:Lcom/google/protobuf/t1;

    invoke-virtual {v1}, Lcom/google/protobuf/t1;->getSerializedSize()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/google/protobuf/finally;->try:I

    return v0
.end method

.method public getUnknownFields()Lcom/google/protobuf/t1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/finally;->new:Lcom/google/protobuf/t1;

    return-object v0
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$else;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/finally;->public(Lcom/google/protobuf/Descriptors$else;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/finally;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->package(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/google/protobuf/Descriptors$break;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/finally;->return(Lcom/google/protobuf/Descriptors$break;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/finally;->for:[Lcom/google/protobuf/Descriptors$else;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$break;->final()I

    move-result p1

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isInitialized()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/finally;->do:Lcom/google/protobuf/Descriptors$if;

    iget-object v1, p0, Lcom/google/protobuf/finally;->if:Lcom/google/protobuf/FieldSet;

    invoke-static {v0, v1}, Lcom/google/protobuf/finally;->else(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/FieldSet;)Z

    move-result v0

    return v0
.end method

.method public native()Lcom/google/protobuf/finally$if;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/finally;->break()Lcom/google/protobuf/finally$if;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/finally$if;->final(Lcom/google/protobuf/Message;)Lcom/google/protobuf/finally$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/finally;->break()Lcom/google/protobuf/finally$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/finally;->break()Lcom/google/protobuf/finally$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/finally;->native()Lcom/google/protobuf/finally$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/finally;->native()Lcom/google/protobuf/finally$if;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/native;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/finally;->do:Lcom/google/protobuf/Descriptors$if;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->native()Lcom/google/protobuf/DescriptorProtos$catch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$catch;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/finally;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->h(Lcom/google/protobuf/native;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/finally;->new:Lcom/google/protobuf/t1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/t1;->while(Lcom/google/protobuf/native;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/finally;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->j(Lcom/google/protobuf/native;)V

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/finally;->new:Lcom/google/protobuf/t1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/t1;->writeTo(Lcom/google/protobuf/native;)V

    :goto_0
    return-void
.end method
